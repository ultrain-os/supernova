import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { NAME, Account } from "ultrain-ts-lib/src/account";

class Person implements Serializable {
  @primaryid
  id  : string;
  pk: string;
  category: u32;
  subcategory: u32;
  timestamp : string;

}

class Transaction implements Serializable {
  @primaryid
  transid  : string;
  QRhash: string;
  timestamp : string;
}



const persontable = "persons";
const transtable = "transactions";

@database(Person,"persons")
@database(Transaction,"transactions")

class PersonInfo extends Contract {

  persondb: DBManager<Person>;
  constructor(code: u64) {
    super(code);
    this.persondb = new DBManager<Person>(NAME(persontable), NAME(persontable));
  }


  @action
  addPersons(id: string, pk: string, category: u32, subcategory: u32, timestamp: string): void {
    let p = new Person();
    p.id = id;
    p.pk = pk;
    p.category = category;
    p.subcategory = subcategory;
    p.timestamp = timestamp;

    let existing = this.persondb.exists(id);
    ultrain_assert(!existing, "this person has existed in db yet.");
    this.persondb.emplace(p);
  }


  @action
  pubkeyOf(account: account_name): void {
    let key = Account.publicKeyOf(account, 'wif');
    Log.s("public key with WIF is : " ).s(key).flush();
    key = Account.publicKeyOf(account, 'hex');
    Log.s("public key with HEX is : " ).s(key).flush();

  }
}

class TransInfo extends Contract {

  transdb: DBManager<Person>;
  constructor(code: u64) {
    super(code);
    this.transdb = new DBManager<Person>(NAME(transtable), NAME(transtable));
  }


  @action
  addTrans(transid: string, QRhash: string, timestamp: string): void {
    let t = new Transaction();
    t.transid = transid;
    t.QRhash = QRhash;
    t.timestamp = timestamp;

    let existing = this.transdb.exists(id);
    ultrain_assert(!existing, "this transaction has existed in db yet.");
    this.transdb.emplace(p);
  }

}