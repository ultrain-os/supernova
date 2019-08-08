import { Contract } from "ultrain-ts-lib/src/contract";
import { Random } from "./lib/random.lib";
import { RNAME, NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";

class Character implements Serializable, Returnable {

    realName: string = "";
    hp: u64 = 0;
    mp: u64 = 0;
    str: u64 = 0;
    intelli: u64 = 0;
    san: u64 = 0;
    luck: u64 = 0;
    charm: u64 = 0;
    mt: u64 = 0;
    optionalAttrs: string = "";
    isActive: bool = true;

    toString(): string {
        var output: string = "";
        return output;
    }

}

class Record implements Serializable {
    @primaryid
    total: u64;
    value: u64;
}

class airConfiguration implements Serializable {
    @primaryid
    id: u64;
    value: u64;
}

class User implements Serializable {
    @primaryid
    name: account_name;
    realName: string = "";
    bonus: u64 = 0;
    isActive: bool = true;
}

const CHARACTER_TABLE = "character";
const RECORD_TABLE = "record";
const CONST_TABLE = "airdrop";
const User_TABLE = "user";

const MAX_BCK_NUM_KEY: u64 = 1;
const BONUS_AMOUNT_KEY: u64 = 2;

@database(Character, CHARACTER_TABLE)
@database(Record, RECORD_TABLE)
@database(airConfiguration, CONST_TABLE)
@database(User, User_TABLE)


class GarbageCollection extends Contract {
    hp: u64 = 0;
    mp: u64 = 0;
    str: u64 = 0;
    intelli: u64 = 0;
    san: u64 = 0;
    luck: u64 = 0;
    charm: u64 = 0;
    mt: u64 = 0;
    optionalAttrs: string = "";
    private random: Random;
    private CharacterDB: DBManager<Character>;
    private recordDB: DBManager<Record>;
    private airdropDB: DBManager<airConfiguration>;
    private userDB: DBManager<User>;

    constructor(code: u64) {
        super(code);
        this.random = new Random();
        this.CharacterDB = new DBManager<Character>(NAME(CHARACTER_TABLE), NAME(CHARACTER_TABLE));
        this.recordDB = new DBManager<Record>(NAME(RECORD_TABLE), NAME(RECORD_TABLE));
        this.airdropDB = new DBManager<airConfiguration>(NAME(CONST_TABLE), NAME(CONST_TABLE));
        this.userDB = new DBManager<User>(NAME(User_TABLE), NAME(User_TABLE));
    }

    @action
    insertCharacter(realName: string, hp: u64, mp: u64, str: u64, intelli: u64, san: u64, luck: u64, charm: u64, mt: u64, optionalAttr: string): u64 {
        var character = new Character();
        character.realName = realName;
        character.hp = hp;
        character.mp = mp;
        character.str = str;
        character.intelli = intelli;
        character.san = san;
        character.luck = luck;
        character.charm = charm;
        character.mt = mt;
        character.optionalAttrs = optionalAttr;
        this.CharacterDB.emplace(character);
        var cNum = this.getRecordMaxNum();
        var nCNum = cNum + 1;
        this.updateRecordMaxNum(nCNum);
        return cNum;
    }

    @action
    getAirDropMaxNum(): u64 {
        var airconfig = new airConfiguration();
        if (this.airdropDB.exists(MAX_BCK_NUM_KEY)) {
            this.airdropDB.get(MAX_BCK_NUM_KEY, airconfig);
            return airconfig.value;
        }
        return 0;
    }

    @action
    getCharacter(cid: u64): Character {
        var character = new Character();
        this.CharacterDB.get(cid, character);
        return character;
    }

    @action
    getAirdrop(): u64 {
        if (!this.airdropDB.exists(BONUS_AMOUNT_KEY)) {
            return 1;
        }
        var airdrop = new airConfiguration();
        this.airdropDB.get(BONUS_AMOUNT_KEY, airdrop);
        return airdrop.value;
    }

    @action
    setAirdrop(airdropbonus: u64): void {
        Action.requireAuth(this.receiver);
        var airconfig = new airConfiguration();
        airconfig.id = BONUS_AMOUNT_KEY;
        airconfig.value = airdropbonus;

        if (!this.airdropDB.exists(BONUS_AMOUNT_KEY)) {
            this.airdropDB.emplace(airconfig);
        } else {
            this.airdropDB.modify(airconfig);
        }
    }

    @action
    register(account: account_name, realName: string): void {
        Action.requireAuth(this.receiver);
        ultrain_assert(!this.userDB.exists(account), RNAME(account) + " has registered.");
        var user = new User();
        user.name = account;
        user.realName = realName;
        this.userDB.emplace(user);
    }

    @action
    query(account: account_name): string {
        var user = new User();
        this.userDB.get(account, user);
        var realname = user.realName;
        return realname;
    }

    @action
    unregister(name: account_name): void {
        Action.requireAuth(this.receiver);
        if (this.userDB.exists(name)) {
            this.userDB.erase(name);
        } else {
            ultrain_assert(false, "Account name: " + RNAME(name) + " not existed.");
        }
    }

    private getRecordMaxNum(): u64 {
        var record = new Record();
        if (this.recordDB.exists(MAX_BCK_NUM_KEY)) {
            this.recordDB.get(MAX_BCK_NUM_KEY, record);
            return record.value;
        }
        return 0;

    }

    private updateRecordMaxNum(blockNum: u64): void {
        // Log.s("updateRecordMaxNum: ").i(blockNum).flush();
        var record = new Record();
        record.total = MAX_BCK_NUM_KEY;
        record.value = blockNum;
        if (!this.recordDB.exists(MAX_BCK_NUM_KEY)) {
            this.recordDB.emplace(record);
        } else {
            this.recordDB.modify(record);
        }
    }

    private updateAirDropMaxNum(blockNum: u64): void {

        var config = new airConfiguration();
        config.id = MAX_BCK_NUM_KEY;
        config.value = blockNum;
        if (!this.configDB.exists(MAX_BCK_NUM_KEY)) {
            this.configDB.emplace(config);
        } else {
            this.configDB.modify(config);
        }
    }
}