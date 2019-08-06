import "allocator/arena";

import {Contract} from "../node_modules/ultrain-ts-lib/src/contract";
import {Asset, StringToSymbol} from "../node_modules/ultrain-ts-lib/src/asset";
import {PermissionLevel} from "../node_modules/ultrain-ts-lib/src/permission-level";
import {env as action} from "../node_modules/ultrain-ts-lib/internal/action.d";
import {CurrencyStats, CurrencyAccount} from "../node_modules/ultrain-ts-lib/lib/balance";
import {NAME, RNAME, Account} from "../node_modules/ultrain-ts-lib/src/account";
import {NEX, RNEX, NameEx} from "../node_modules/ultrain-ts-lib/lib/name_ex";
import {Action} from "../node_modules/ultrain-ts-lib/src/action";
import {SafeMath} from "../node_modules/ultrain-ts-lib/src/safemath";
import {Log} from "../node_modules/ultrain-ts-lib/src/log";

class PreAsset implements Serializable {
    id: account_name;
    ugasPool: u64;
    tokenPool: u64;
    tokenAddress: account_name;

    primaryKey(): id_type {
        return this.id;
    }
}

class Exchange implements Serializable {
    id: account_name;
    ugasPool: u64;
    tokenPool: u64;
    invariant: u64;
    totalShares: u64;
    tokenAddress: account_name;
    factoryAddress: string;
    fee: u64;

    primaryKey(): id_type {
        return this.id;
    }

    constructor() {
        this.fee = 500;
    }
}

class Shares implements Serializable {
    account: account_name;
    tokenAddress: account_name;
    share: u64;

    primaryKey(): id_type {
        return this.tokenAddress + this.account;
    }
}

class TokenParams implements Serializable {
    from: account_name;
    to: account_name;
    quantity: Asset;
    memo: string;
}

const sharestable = "ds.shares";
const exchangetable = "ds.exchange";
const preassettable = "ds.preasset";

@database(Shares, "ds.shares")
@database(Exchange, "ds.exchange")
@database(PreAsset, "ds.preasset")
class DeSwap extends Contract {

    exchangedb: DBManager<Exchange>;
    sharesdb: DBManager<Shares>;
    preassetdb: DBManager<PreAsset>;
    originalReceiver: u64

    constructor(code: u64) {
        super(code);
        this.exchangedb = new DBManager<Exchange>(NAME(exchangetable), NAME(exchangetable));
        this.sharesdb = new DBManager<Shares>(NAME(sharestable), NAME(sharestable));
        this.preassetdb = new DBManager<PreAsset>(NAME(preassettable), NAME(preassettable));
        this.originalReceiver;
    }

    // arg[3] === 3 tokenToUgas --------- 3 token_account minUgasOut
    // arg[0] === 0 initializeExchange --------- 0 token_account ugasAmount
    // arg[0] === 1 addLiquidity --------- 1 token_account ugasAmount minShares
    // arg[0] === 2 removeLiquidity --------- 2 token_account sharesBurned minUgas minTokens
    // arg[0] === 4 ugasToToken --------- 4 token_account ugasIn mintTokensOut

    private _arg(memo: string): Array<string> {
        return memo.split(' ')
    }

    @action("pureview")
    public getShares(token_account: account_name): Array<u64> {
        let e = new Exchange();
        let existing_exchange = this.exchangedb.get(token_account, e);

        return [e.ugasPool, e.tokenPool];
    }

    // @action
    // public dropAll(): void {
    //     this.preassetdb.dropAll();
    //     this.exchangedb.dropAll();
    //     this.sharesdb.dropAll();
    // }

    /**
     * action filter - just allow not transfer function directly
     * @param originalReceiver
     */
    public filterAction(originalReceiver: account_name): boolean {
        //TODO check
        // return (originalReceiver == this.receiver && this.action != NEX("transfer"));
        this.originalReceiver = originalReceiver;
        return true;
    }

    /**
     * query token to ugas
     * @param quantity - token amount
     * @param memo - specification memo
     */
    @action("pureview")
    tokenToUgasQuery(quantity: Asset, memo: string): u64 {
        let arg = this._arg(memo);

        let token_account = NAME(arg[1]);
        let minUgasOut = <u64>parseI64(arg[2])
        let e = new Exchange();
        let existing_exchange = this.exchangedb.get(token_account, e);

        ultrain_assert(existing_exchange, "error: exchange not exist");
        ultrain_assert(Account.isValid(token_account), "token.transfer: to account does not exist.");

        let fee = quantity.getAmount() / e.fee;
        let newTokenPool = e.tokenPool + quantity.getAmount();
        let tempTokenPool = newTokenPool - fee;
        let newUgasPool = e.invariant / tempTokenPool;
        let ugasOut = e.ugasPool - newUgasPool;

        ultrain_assert(ugasOut >= minUgasOut, "error: less than the minimum ugas out(user)");
        ultrain_assert(ugasOut <= e.ugasPool, "error: more than the ugas pool");

        e.tokenPool = newTokenPool;
        e.ugasPool = newUgasPool;
        e.invariant = newUgasPool * newTokenPool;

        return ugasOut;
    }

    /**
     * query ugas to token
     * @param quantity - ugas amount
     * @param memo - specification memo
     */
    @action("pureview")
    ugasToTokenQuery(quantity: Asset, memo: string): u64 {
        let arg = this._arg(memo);

        let token_account = NAME(arg[1]);

        let ugasIn = quantity.getAmount();

        let minTokensOut = <u64>parseI64(arg[2])

        ultrain_assert(ugasIn > 0, "error: ugas is zero");

        let e = new Exchange();
        let existing_exchange = this.exchangedb.get(token_account, e);

        ultrain_assert(existing_exchange, "error: exchange not exist");
        let fee = ugasIn / e.fee;
        let newUgasPool = e.ugasPool + ugasIn;
        let tempUgasPool = newUgasPool - fee;
        let newTokenPool = e.invariant / tempUgasPool;
        let tokensOut = e.tokenPool - newTokenPool;

        ultrain_assert(tokensOut >= minTokensOut, "error: less than the minimum token out(user)");
        ultrain_assert(tokensOut <= e.tokenPool, "error: more than the ugas pool");

        return tokensOut;
    }

    /**
     * check params account name is trust
     * @param paramsAccountName
     */
    checkReceiver(paramsAccountName: account_name): void {
        if(this.originalReceiver != NAME('utrio.token')) {
            ultrain_assert(this.originalReceiver == paramsAccountName,'error: error params')
        }
    }

    /**
     * arg[0] === 0 initializeExchange --------- 0 token_account ugasAmount
     * arg[0] === 1 addLiquidity --------- 1 token_account ugasAmount minShares
     * arg[0] === 2 removeLiquidity --------- 2 token_account sharesBurned minUgas minTokens
     * arg[0] === 3 tokenToUgas --------- 3 token_account minUgasOut
     * arg[0] === 4 ugasToToken --------- 4 token_account ugasIn mintTokensOut*
     * @param from
     * @param to
     * @param quantity
     * @param memo
     */
    @action
    transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {
        let arg = this._arg(memo);

        // arg[0] === 0 initializeExchange --------- 0 token_account ugasAmount
        if (arg[0] == '0') {
            //check from auth
            Action.requireAuth(from);

            let token_account = NAME(arg[1]);
            this.checkReceiver(token_account);

            // ultrain_assert((this.originalReceiver == token_account), 'error: error token original');
            ultrain_assert(to == this.receiver, "error: to != this.receiver");
            ultrain_assert(quantity.getAmount() > 0, "error: token asset is empty");
            ultrain_assert(Account.isValid(token_account), "error: token_account is invalid");

            let e = new Exchange();
            let s = new Shares();
            let p = new PreAsset();
            let existing_exchange = this.exchangedb.get(token_account, e);
            ultrain_assert(!existing_exchange, "error: exchange is existed");
            //Todo - 根据合约账户和发送者账户，合成唯一的primary Key，偏移？
            let existing_shares = this.sharesdb.get(token_account + from, s);
            let existing_preasset = this.preassetdb.get(from, p);

            if (existing_preasset) {
                if (quantity.getSymbol() === StringToSymbol(4, 'UGAS')) {
                    p.ugasPool = (p.ugasPool || 0) + quantity.getAmount();
                    Action.requireRecipient(NAME("utrio.token"));
                } else {
                    p.tokenAddress = token_account;
                    p.tokenPool = (p.tokenPool || 0) + quantity.getAmount();
                    Action.requireRecipient(token_account);
                }

                if (p.tokenPool > 0 && p.ugasPool > 0) {
                    e.id = token_account;
                    e.tokenAddress = token_account;
                    e.ugasPool = p.ugasPool;
                    e.tokenPool = p.tokenPool;
                    e.invariant = SafeMath.mul(e.ugasPool, e.tokenPool);
                    e.totalShares = 1000;
                    this.exchangedb.emplace(e);
                    s.account = from;
                    s.tokenAddress = token_account;
                    s.share = 1000;
                    this.sharesdb.emplace(s);
                    this.preassetdb.erase(from)
                } else {
                    this.preassetdb.modify(p);
                }
            } else {
                p.id = from;
                if (quantity.getSymbol() === StringToSymbol(4, 'UGAS')) {
                    p.ugasPool = quantity.getAmount();
                    Action.requireRecipient(NAME("utrio.token"));
                } else {
                    p.tokenAddress = token_account;
                    p.tokenPool = quantity.getAmount();
                    Action.requireRecipient(token_account);
                }

                this.preassetdb.emplace(p);
                return;
            }
        }

        // 0 token_account
        if (arg[0] == '1') {
            Action.requireAuth(from);

            let token_account = NAME(arg[1]);
            this.checkReceiver(token_account);

            let minShares = <u64>parseI64(arg[2]);

            // ultrain_assert(this.originalReceiver == token_account, 'error: error token original');
            ultrain_assert(to == this.receiver, "error: to != this.receiver");
            ultrain_assert(quantity.getAmount() > 0, "error: token asset is empty");
            ultrain_assert(Account.isValid(token_account), "error: token_account is invalid");

            let e = new Exchange();
            let s = new Shares();
            let p = new PreAsset();

            let existing_exchange = this.exchangedb.get(token_account, e);
            ultrain_assert(existing_exchange, "error: exchange not exist");

            let existing_preasset = this.preassetdb.get(from, p);
            if (existing_preasset) {
                if (quantity.getSymbol() === StringToSymbol(4, 'UGAS')) {
                    p.ugasPool = SafeMath.add((p.ugasPool || 0), quantity.getAmount());
                    Action.requireRecipient(NAME("utrio.token"));
                } else {
                    p.tokenAddress = token_account;
                    p.tokenPool = SafeMath.add((p.tokenPool || 0), quantity.getAmount());
                    Action.requireRecipient(token_account);
                }

                if (p.tokenPool > 0 && p.ugasPool > 0) {
                    //Todo - 根据合约账户和发送者账户，合成唯一的primary Key
                    let existing_shares = this.sharesdb.get(token_account + from, s);

                    ultrain_assert(existing_shares, "error: shares not exist");

                    let ugasPerShare: u64 = SafeMath.div(e.ugasPool, e.totalShares);
                    ultrain_assert(p.ugasPool > ugasPerShare, "error: less than the minimum ugas per share");

                    let sharesPurchased = SafeMath.div(p.ugasPool, ugasPerShare);
                    ultrain_assert(sharesPurchased > minShares, "error: less than the minshares(user)");

                    let tokensPerShare: u64 = SafeMath.div(e.tokenPool, e.totalShares);
                    let tokensRequired: u64 = SafeMath.mul(sharesPurchased, tokensPerShare);

                    s.share = SafeMath.add(s.share, sharesPurchased);
                    e.totalShares = SafeMath.add(e.totalShares, sharesPurchased);
                    e.ugasPool = SafeMath.add(e.ugasPool, p.ugasPool);
                    e.tokenPool = SafeMath.add(e.tokenPool, tokensRequired);

                    e.invariant = SafeMath.mul(e.ugasPool, e.tokenPool);

                    this.exchangedb.modify(e);
                    this.sharesdb.modify(s);

                    // 转多余的token给用户
                    let pl = new PermissionLevel(this.receiver, NAME("active"));
                    let params = new TokenParams();
                    params.from = this.receiver;
                    params.to = from;
                    params.quantity = new Asset(SafeMath.sub(quantity.getAmount(), tokensRequired), quantity.getSymbol());
                    params.memo = "send tokens back";
                    Action.sendInline([pl], token_account, <NameEx>NEX("transfer"), params);

                    this.preassetdb.erase(from)

                    return;
                } else {
                    this.preassetdb.modify(p);
                }
            } else {
                p.id = from;
                ultrain_assert(this.originalReceiver == NAME("utrio.token"), 'error: must first add ugas liquidity')
                if (quantity.getSymbol() == StringToSymbol(4, 'UGAS')) {
                    p.ugasPool = quantity.getAmount();
                    Action.requireRecipient(NAME("utrio.token"));
                } else {
                    p.tokenAddress = token_account;
                    p.tokenPool = quantity.getAmount();
                    Action.requireRecipient(token_account);
                }

                this.preassetdb.emplace(p);
                return;
            }
            return;
        }

        if (arg[0] == '2') {
            Action.requireAuth(from);

            let token_account = NAME(arg[1]);

            let sharesBurned = <u64>parseI64(arg[2]);
            let minUgas = <u64>parseI64(arg[3]);
            let minTokens = <u64>parseI64(arg[4]);

            ultrain_assert(sharesBurned > 0, "error: shares burned is zero");
            let e = new Exchange();
            let s = new Shares();
            let existing_exchange = this.exchangedb.get(token_account, e);
            //Todo - 根据合约账户和发送者账户，合成唯一的primary Key 偏移？
            let existing_shares = this.sharesdb.get(token_account + from, s);

            ultrain_assert(existing_exchange, "error: exchange not exist");
            ultrain_assert(existing_shares, "error: shares not exist");
            ultrain_assert(s.share >= sharesBurned, "error: user share is not enough");

            s.share = s.share - sharesBurned;

            let ugasPerShare: u64 = SafeMath.div(e.ugasPool, e.totalShares);
            let tokensPerShare: u64 = SafeMath.div(e.tokenPool, e.totalShares);

            let ugasDivested = SafeMath.mul(ugasPerShare, sharesBurned);
            let tokensDivested = SafeMath.mul(tokensPerShare, sharesBurned);

            ultrain_assert(ugasDivested > minUgas, "error: less than the minUgas(user)");
            ultrain_assert(tokensDivested > minTokens, "error: less than the minTokens(user)");

            e.totalShares = SafeMath.sub(e.totalShares, sharesBurned);
            e.ugasPool = SafeMath.sub(e.ugasPool, ugasDivested);
            e.tokenPool = SafeMath.sub(e.tokenPool, tokensDivested);

            if (e.totalShares == 0) {
                e.invariant = 0;
            } else {
                e.invariant = SafeMath.mul(e.ugasPool, e.tokenPool);
            }

            // Asset.transfer(Action.receiver, from, new Asset(tokensDivested, minTokens.getSymbol()), '');
            Asset.transfer(Action.receiver, from, new Asset(ugasDivested), 'remove liquidity');

            let pl = new PermissionLevel(this.receiver, NAME("active"));
            let params = new TokenParams();
            params.from = this.receiver;
            params.to = from;
            // 这里构造的Asset
            params.quantity = new Asset(tokensDivested, quantity.getSymbol());
            params.memo = "remove liquidity";
            Action.sendInline([pl], token_account, <NameEx>NEX("transfer"), params);

            this.exchangedb.modify(e);
            this.sharesdb.modify(s);
            return;
        }

        // arg[3] === 3 tokenToUgas --------- 3 token_account minUgasOut
        if (arg[0] == '3') {
            Action.requireAuth(from);
            ultrain_assert(to == this.receiver, "error: to != this.receiver");
            ultrain_assert(quantity.getAmount() > 0, "");

            let token_account = NAME(arg[1]);
            this.checkReceiver(token_account);

            let minUgasOut = <u64>parseI64(arg[2])
            let e = new Exchange();
            let existing_exchange = this.exchangedb.get(token_account, e);

            // ultrain_assert(this.originalReceiver == token_account, 'error: error token original');
            ultrain_assert(existing_exchange, "error: exchange not exist");
            ultrain_assert(Account.isValid(token_account), "token.transfer: to account does not exist.");

            let fee = SafeMath.div(quantity.getAmount(), e.fee);
            let newTokenPool = SafeMath.add(e.tokenPool, quantity.getAmount());
            let tempTokenPool = SafeMath.sub(newTokenPool, fee);
            let newUgasPool = SafeMath.div(e.invariant, tempTokenPool);
            let ugasOut = SafeMath.sub(e.ugasPool, newUgasPool);

            ultrain_assert(ugasOut >= minUgasOut, "error: less than the minimum ugas out(user)");
            ultrain_assert(ugasOut <= e.ugasPool, "error: more than the ugas pool");

            e.tokenPool = newTokenPool;
            e.ugasPool = newUgasPool;
            e.invariant = SafeMath.mul(newUgasPool, newTokenPool);

            Asset.transfer(this.receiver, from, new Asset(ugasOut), 'token to ugas');
            this.exchangedb.modify(e);
            Action.requireRecipient(token_account);
            return;
        }

        // arg[0] === 4 ugasToToken --------- 4 token_account mintTokensOut tokenSymbol
        if (arg[0] == '4') {
            Action.requireAuth(from);

            let token_account = NAME(arg[1]);
            this.checkReceiver(token_account);
            let ugasIn = quantity.getAmount();

            let minTokensOut = <u64>parseI64(arg[2])
            let tokenSymbol = arg[3]

            // ultrain_assert(this.originalReceiver == token_account, 'error: error token original');
            ultrain_assert(ugasIn > 0, "error: ");
            ultrain_assert(to == this.receiver, "error: to != this.receiver");
            // ultrain_assert(quantity.getSymbol() == NAME('UGAS'), "error: is true ugas?");
            // ultrain_assert(Account.isValid(token_account), "token.transfer: to account does not exist.");
            let e = new Exchange();
            let existing_exchange = this.exchangedb.get(token_account, e);

            ultrain_assert(existing_exchange, "error: exchange not exist");
            let fee = SafeMath.div(ugasIn, e.fee);
            let newUgasPool = SafeMath.add(e.ugasPool, ugasIn);
            let tempUgasPool = SafeMath.sub(newUgasPool, fee);
            let newTokenPool = SafeMath.div(e.invariant, tempUgasPool);
            let tokensOut = SafeMath.sub(e.tokenPool, newTokenPool);

            ultrain_assert(tokensOut >= minTokensOut, "error: less than the minimum token out(user)");
            ultrain_assert(tokensOut <= e.tokenPool, "error: more than the ugas pool");
            e.ugasPool = newUgasPool;
            e.tokenPool = newTokenPool;
            e.invariant = SafeMath.mul(newUgasPool, newTokenPool);
            // transfer ugas
            Action.requireRecipient(NAME("utrio.token"));
            // transfer token
            let pl = new PermissionLevel(this.receiver, NAME("active"));
            let params = new TokenParams();
            params.from = this.receiver;
            params.to = from;

            params.quantity = new Asset(tokensOut, StringToSymbol(4, tokenSymbol));
            params.memo = "send tokens back";
            Action.sendInline([pl], token_account, <NameEx>NEX("transfer"), params);
            this.exchangedb.modify(e);
            return;
        }
    }
}
