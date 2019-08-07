import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { NAME, RNAME, Account } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";

class Accounts implements Serializable {
  @primaryid
  name: account_name;
  score: i64;
  stars: string;

  constructor() {
    // do something
  }

  prints(): void {
    Log.s("name = ").s(RNAME(this.name)).s(", score = ").i(this.score).s(", stars = ").s(this.stars).flush();
  }
}

const usertable = "tb.user";

@database(Accounts, "tb.user")
class User extends Contract {

  userdb: DBManager<Accounts>;

  constructor(code: u64) {
    super(code);
    this.userdb = new DBManager<Accounts>(NAME(usertable), NAME(usertable));
  }

  @action
  addUser(name: account_name, score: i64, stars: string): void {
    Action.requireAuth(NAME("zzzzzzzzzzz1"));
    let p = new Accounts();
    p.name = name;
    p.score = score;
    p.stars = stars;

    let existing = this.userdb.exists(name);
    ultrain_assert(!existing, "this account has existed in db yet.");
    this.userdb.emplace(p);
  }

  @action
  updateScore(name: account_name, score: i64, info: string, tx: string): void {
    Action.requireAuth(NAME("zzzzzzzzzzz1"));

    let p = new Accounts();
    let existing = this.userdb.get(name, p);
    ultrain_assert(existing, "the account does not exist.");
    p.score += score;

    this.userdb.modify(p);
  }

  @action
  setScore(name: account_name, score: i64, info: string): void {
    Action.requireAuth(NAME("zzzzzzzzzzz1"));

    let p = new Accounts();
    let existing = this.userdb.get(name, p);
    ultrain_assert(existing, "the account does not exist.");
    p.score = score;

    this.userdb.modify(p);
  }

  @action
  updateStars(name: account_name, stars: string): void {
    Action.requireAuth(NAME("zzzzzzzzzzz1"));

    let p = new Accounts();
    let existing = this.userdb.get(name, p);
    ultrain_assert(existing, "the account does not exist.");
    p.stars = stars;

    this.userdb.modify(p);
  }

  @action
  removeUser(name: account_name): void {
    let existing = this.userdb.exists(name);
    ultrain_assert(existing, "this id is not exist.");
    this.userdb.erase(name);
  }

  @action
  enumrate(dbname: string): void {
    var usertable: DBManager<Accounts> = this.getUserDbManager();
    let cursor: Cursor<Accounts> = usertable.cursor();
    if (dbname == "user") {
      cursor = this.userdb.cursor();
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

  private getUserDbManager(): DBManager<Accounts> {
    return new DBManager<Accounts>(NAME(usertable), NAME(usertable));
  }

  @action
  drop(dbname: string): void {
    Action.requireAuth(NAME("zzzzzzzzzzz1"));
    if (dbname == "user") {
      this.userdb.dropAll();
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

  @action
  login(name: string, 
        score: i64,
        time: string): void {
    Log.s("name: ").s(name).s("score: ").i(score).s("time: ").s(time).flush();
  }
  @action
  newReply(topic_tx: string, 
           content: string, 
           author: string, 
           score: i64, 
           deleted: i64): void {
    Log.s("topic_tx: ").s(topic_tx)
       .s("content: ").s(content)
       .s("author: ").s(author)
       .s("score: ").i(score)
       .s("deleted: ").i(deleted).flush();
  }
  @action
  updateReply(topic_tx: string, 
              content: string, 
              author: string, 
              pre_tx: string,
              score: i64, 
              deleted: i64): void {
    Log.s("topic_tx: ").s(topic_tx)
       .s("content: ").s(content)
       .s("author: ").s(author)
       .s("pre_tx: ").s(pre_tx)
       .s("score: ").i(score)
       .s("deleted: ").i(deleted).flush();
  }
  @action
  deleteReply(reply_tx: string, 
              score: i64, 
              deleted: i64): void {
    Log.s("reply_tx: ").s(reply_tx)
       .s("score: ").i(score)
       .s("deleted: ").i(deleted).flush();
  }


  @action
  newTopic(title: string, 
           content: string, 
           author: string, 
           tag: string,
           score: i64, 
           deleted: i64): void {
    Log.s("title: ").s(title)
       .s("content: ").s(content)
       .s("author: ").s(author)
       .s("tag: ").s(tag)
       .s("score: ").i(score)
       .s("deleted: ").i(deleted).flush();
  }
  @action
  updateTopic(title: string, 
              content: string, 
              author: string, 
              tag: string,
              pre_tx: string,
              score: i64, 
              deleted: i64): void {

    Log.s("title: ").s(title)
       .s("content: ").s(content)
       .s("author: ").s(author)
       .s("tag: ").s(tag)
       .s("pre_tx: ").s(pre_tx)
       .s("score: ").i(score)
       .s("deleted: ").i(deleted).flush();
  }
  @action
  deleteTopic(topic_tx: string, 
              score: i64, 
              deleted: i64): void {
    Log.s("topic_tx: ").s(topic_tx)
       .s("score: ").i(score)
       .s("deleted: ").i(deleted).flush();
  }
}