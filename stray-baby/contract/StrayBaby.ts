import { Contract } from 'ultrain-ts-lib/src/contract';
import { Asset, StringToSymbol } from 'ultrain-ts-lib/src/asset';
import { TransferParams } from 'ultrain-ts-lib/src/action';
import { PermissionLevel } from 'ultrain-ts-lib/src/permission-level';
import { env as action } from 'ultrain-ts-lib/internal/action.d';
import { CurrencyStats, CurrencyAccount } from 'ultrain-ts-lib/lib/balance';
import { NAME, Account } from 'ultrain-ts-lib/src/account';
import { NEX, NameEx } from 'ultrain-ts-lib/lib/name_ex';
import { Action } from 'ultrain-ts-lib/src/action';
import { UIP06 } from 'ultrain-ts-lib/uips/uip06';


class DogInfo implements Serializable, Returnable {
  @primaryid
  id: u64;
  number: string;
  account: string;
  name: string;
  sort: string;
  sex: string;
  age: string;
  weight: string;
  photo: string[];
  brief: string;
  guardian: string;
  contact: string;

  toString(): string {
    var rst = '{';
    rst += '"number":"' + this.number;
    rst += ',"name":"' + this.name;
    rst += ',"account":"' + this.account;
    rst += ',"sort":"' + this.sort;
    rst += ',"sex":"' + this.sex;
    rst += ',"age":"' + this.age;
    rst += ',"weight":"' + this.weight;
    rst += ',"photo":[';
    rst += this.photo.join(',');
    rst += '],"brief":"' + this.brief;
    rst += ',"guardian":"' + this.guardian;
    rst += ',"contact":"' + this.contact;
    rst += '"}';
    return rst;
  }
}

function charcode_to_int(code: i32): u64 {
  // '0' - '9'
  if (code >= 0x30 && code <= 0x39) return <u64>(code - 0x30);
  // 'a'- 'z'
  if (code >= 0x61 && code <= 0x7a) return <u64>(10 + code - 0x61);
  // 'A' - 'Z'
  if (code >= 0x41 && code <= 0x5a) return <u64>(36 + code - 0x41);
  // leading pad character
  if (code == 0x20) return <u64>62;

  ultrain_assert(false, 'unsupport charcode to convert to int, must be alphabet and digitals.');
  return 0;
}

const StatsTable: string = 'stat';
const AccountTable: string = 'accounts';
const DogInfoTable: string = 'dogs.info1';

@database(CurrencyStats, StatsTable)
@database(CurrencyAccount, AccountTable)
@database(DogInfo, DogInfoTable)
export class StrayBaby extends Contract implements UIP06 {

  dogsDb: DBManager<DogInfo>;

  constructor(code: u64) {
    super(code);
    this.dogsDb = new DBManager<DogInfo>(NAME(DogInfoTable), NAME(DogInfoTable));
  }

  private str_to_u64(str: string): u64 {
    var val: u64 = 0;
    for (let i = 0; i < str.length; ++i) {
      let s = charcode_to_int(str.charCodeAt(i));
      val += s * (2 << (6 * i));
    }
    return val;
  }

  @action
  saveOrUpdate(number: string, name: string, account: string, sort: string, sex: string, age: string, weight: string, photo: string[], brief: string, guardian: string, contact: string): void {
    Action.requireAuth(this.receiver);
    let id = this.str_to_u64(number);
    let p = new DogInfo();
    let existing = this.dogsDb.get(id, p);

    p.number = number;
    p.name = name;
    p.account = account;
    p.sort = sort;
    p.sex = sex;
    p.age = age;
    p.weight = weight;
    p.photo = photo;
    p.brief = brief;
    p.guardian = guardian;
    p.contact = contact;

    if (existing) {
      this.dogsDb.modify(p);
    } else {
      p.id = id;
      this.dogsDb.emplace(p);
    }
  }

  @action('pureview')
  queryByNumber(number: string): DogInfo {
    let dog = new DogInfo();
    let id = this.str_to_u64(number);
    let existing = this.dogsDb.get(id, dog);
    ultrain_assert(existing, 'this dog has not existed in db yet');
    return dog;
  }

  @action
  public create(issuer: account_name, maximum_supply: Asset): void {
    Action.requireAuth(this.receiver);
    let sym = maximum_supply.symbolName();
    ultrain_assert(maximum_supply.isSymbolValid(), 'token.create: invalid symbol name.');
    ultrain_assert(maximum_supply.isValid(), 'token.create: invalid supply.');

    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), sym);
    let cs: CurrencyStats = new CurrencyStats();

    let existing = statstable.get(sym, cs);
    ultrain_assert(!existing, 'token with symbol already exists.');

    cs.supply.setSymbol(maximum_supply.getSymbol());
    cs.max_supply = maximum_supply;
    cs.issuer = issuer;
    statstable.emplace(cs);
  }

  @action
  public issue(to: account_name, quantity: Asset, memo: string): void {
    ultrain_assert(quantity.isSymbolValid(), 'token.issue: invalid symbol name');
    ultrain_assert(memo.length <= 256, 'token.issue: memo has more than 256 bytes.');

    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), quantity.symbolName());
    let st: CurrencyStats = new CurrencyStats();
    let existing = statstable.get(quantity.symbolName(), st);

    ultrain_assert(existing, 'token.issue: symbol name is not exist.');

    Action.requireAuth(st.issuer);
    ultrain_assert(quantity.isValid(), 'token.issue: invalid quantity.');
    ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), 'token.issue: symbol precision mismatch.');
    ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), 'token.issue: quantity exceeds available supply.');

    let amount = st.supply.getAmount() + quantity.getAmount();
    st.supply.setAmount(amount);
    statstable.modify(st);
    this.addBalance(st.issuer, quantity);
    if (to != st.issuer) {
      let pl: PermissionLevel = new PermissionLevel();
      pl.actor = st.issuer;
      pl.permission = NAME('active');
      let params = new TransferParams(0, 0, new Asset(), '');
      params.from = st.issuer;
      params.to = to;
      params.quantity = quantity;
      params.memo = memo;
      let name: NameEx = NEX('transfer');
      Action.sendInline([pl], this.receiver, name, params);
    }
  }

  @action
  public transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {
    ultrain_assert(from != to, 'token.transfer: cannot transfer to self.');
    Action.requireAuth(from);
    ultrain_assert(Account.isValid(to), 'token.transfer: to account does not exist.');

    // let symname: SymbolName = quantity.symbolName();
    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), quantity.symbolName());
    let st: CurrencyStats = new CurrencyStats();
    let existing = statstable.get(quantity.symbolName(), st);

    ultrain_assert(existing, 'token.transfer symbol name is not exist.');

    Action.requireRecipient(from);
    Action.requireRecipient(to);

    ultrain_assert(quantity.isValid(), 'token.transfer: invalid quantity.');
    ultrain_assert(quantity.getSymbol() == st.supply.getSymbol(), 'token.transfer: symbol precision mismatch.');
    ultrain_assert(memo.length <= 256, 'token.transfer: memo has more than 256 bytes.');

    this.subBalance(from, quantity);
    this.addBalance(to, quantity);
  }

  @action('pureview')
  public totalSupply(sym_name: string): Asset {
    let symname = StringToSymbol(0, sym_name) >> 8;
    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), symname);
    let st = new CurrencyStats();
    let existing = statstable.get(symname, st);
    ultrain_assert(existing, 'totalSupply failed, stats is not existed.');
    return st.max_supply;
  }

  @action('pureview')
  public getSupply(sym_name: string): Asset {
    let symname = StringToSymbol(0, sym_name) >> 8;
    let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), symname);
    let st = new CurrencyStats();
    let existing = statstable.get(symname, st);
    ultrain_assert(existing, 'getSupply failed, stats is not existed.');
    return st.supply;
  }

  @action('pureview')
  public balanceOf(owner: account_name, sym_name: string): Asset {
    let symname: u64 = StringToSymbol(0, sym_name) >> 8;
    let accounts: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner);
    let account = new CurrencyAccount(new Asset());
    let existing = accounts.get(symname, account);
    ultrain_assert(existing, 'balanceOf failed, account is not existed.');

    return account.balance;
  }

  private subBalance(owner: account_name, value: Asset): void {
    let ats: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner);
    let from: CurrencyAccount = new CurrencyAccount(new Asset());
    let existing = ats.get(value.symbolName(), from);

    ultrain_assert(existing, 'token.subBalance: from account is not exist.');
    ultrain_assert(from.balance.getAmount() >= value.getAmount(), 'token.subBalance: overdrawing balance.');

    if (from.balance.getAmount() == value.getAmount()) {
      ats.erase(from.primaryKey());
    } else {
      let amount = from.balance.getAmount() - value.getAmount();
      from.balance.setAmount(amount);
      ats.modify(from);
    }
  }

  private addBalance(owner: u64, value: Asset): void {
    let toaccount: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner);
    let to: CurrencyAccount = new CurrencyAccount(new Asset());
    let existing = toaccount.get(value.symbolName(), to);

    if (!existing) {
      let a: CurrencyAccount = new CurrencyAccount(value);
      toaccount.emplace(a);
    } else {
      let amount = to.balance.getAmount() + value.getAmount();
      to.balance.setAmount(amount);
      toaccount.modify(to);
    }
  }

  totalSupplies(): Asset[] {
    return [];
  }
}
