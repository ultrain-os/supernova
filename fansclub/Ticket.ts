import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { NAME, Account } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";

class Accounts implements Serializable {
  @primaryid
  id: u64;
  score: i64;
  owner: account_name;
  flag: i64;

  constructor(_name: account_name = NAME("unknown")) {
    //do something
  }

  prints(): void {
    Log.s(", score = ").i(this.score).flush();
  }
}

const tickettable = "tb.ticket";

@database(Accounts, "tb.ticket")
class Ticket extends Contract {

  ticketdb: DBManager<Accounts>;

  constructor(code: u64) {
    super(code);
    this.ticketdb = new DBManager<Accounts>(NAME(tickettable), NAME(tickettable));
  }


  @action
  setTicket(from: u64, to: u64, score: i64): void {
    Action.requireAuth(NAME("xxxxxxxxxxx1"));  //认证

    for(var id = from; id <= to; id++) {
      let existing = this.ticketdb.exists(id);
      if(existing) {
        let p = new Accounts();
        this.ticketdb.get(id, p);
        p.id = id;
        p.score = score;
        p.owner = NAME("");
        p.flag = 0;
        this.ticketdb.modify(p);
      } else {
        let p = new Accounts();
        p.id = id;
        p.score = score;
        p.owner = NAME("");
        p.flag = 0;
        this.ticketdb.emplace(p);
      }
    }
  }


  @action
  buyTicket(name: account_name, id: u64, tx: string): void {
    Action.requireAuth(name);

    let p = new Accounts();
    let existing = this.ticketdb.get(id, p);
    ultrain_assert(existing, "this id not existed in db yet.");

    ultrain_assert(!(p.flag), "the flag is 1");

    p.flag = 1;
    p.owner = name;

    this.ticketdb.modify(p);
  }

// 先退票后修改积分，没有tx
  @action
  disTicket(id: u64): void {

    let p = new Accounts();
    let existing = this.ticketdb.get(id, p);

    ultrain_assert(existing, "this id not existed in db yet.");

    Action.requireAuth(p.owner);
    p.flag = 0;
    p.owner = NAME("");

    this.ticketdb.modify(p);
  }


  @action
  enumrate(dbname: string): void {
    var tickettable: DBManager<Accounts> = this.getTicketDbManager();
    let cursor: Cursor<Accounts> = tickettable.cursor();
    if (dbname == "ticket") {
      cursor = this.ticketdb.cursor();
    } else {
      ultrain_assert(false, "unknown db name.");
    }
    Log.s("cursor.count =").i(cursor.count).flush();

    while(cursor.hasNext()) {
      let p = cursor.get();
      p.prints();
      cursor.next();
    }
  }

  private getTicketDbManager(): DBManager<Accounts> {
    return new DBManager<Accounts>(NAME(tickettable), NAME(tickettable));
  }

  @action
  drop(dbname: string): void {
    Action.requireAuth(NAME("xxxxxxxxxxx1"));
    if (dbname == "ticket") {
      this.ticketdb.dropAll();
    } else {
      ultrain_assert(false, "unknown db name.");
    }
  }

  @action
  pubkeyOf(account: account_name): void {
    let key = Account.publicKeyOf(account, 'wif');
    Log.s("public key with WIF is : " ).s(key).flush();
    key = Account.publicKeyOf(account, 'hex');
    Log.s("public key with HEX is : " ).s(key).flush();
  }

}
