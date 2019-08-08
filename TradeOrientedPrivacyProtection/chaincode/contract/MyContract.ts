import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { NAME, Account } from "ultrain-ts-lib/src/account";

class Person implements Serializable {
  //@primaryid
  id  : string;
  pk: string;
  category: u32;
  subcategory: u32;
  timestamp : string;

  primaryKey(): u64 {
  return NAME(this.id);
  }
}

class Transaction implements Serializable {
  //@primaryid
  transid  : string;
  buyerPK: string;
  expressPK: string;
  buyerENCInfo: string;  //快递公司公钥加密的本人信息(地址及手机号)
  goodsENCInfo : string;
  timestamp : string;

  primaryKey(): u64 {
  return NAME(this.transid);
  }

  prints(): void {
        Log.s("transid = ").s(this.transid).s(", buyerPK = ").i(this.buyerPK).s(", expressPK = ").i(this.expressPK).s(", buyerENCInfo = ").i(this.buyerENCInfo).s(", goodsENCInfo = ").i(this.goodsENCInfo).s(", timestamp = ").i(this.timestamp).flush();
    }
}

class Goods implements Serializable {
  //@primaryid
  name  : string;
  amount: u32;
  receiver : string;
  phone : string;
  receiverADDR : string;
  buyerPK : string;
  expressPK : string;
  sellerPK : string;
  transid : string;

  primaryKey(): u64 {
  return NAME(this.name);
  }
}

class BuyerInfo implements Serializable {
  //@primaryid
  name  : string;
  phone : string;
  address : string;
  buyerPK : string;

  primaryKey(): u64 {
  return NAME(this.name);
  }
}

const persontable = "persons";
const transtable = "transactions";
const goodstable = "goods";

@database(Person,"persons")
@database(Transaction,"transactions")
@database(Goods,"goods")

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

    //let existing = this.persondb.exists(id);
    //ultrain_assert(!existing, "this person has existed in db yet.");
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

  transdb: DBManager<Transaction>;
  constructor(code: u64) {
    super(code);
    this.transdb = new DBManager<Transaction>(NAME(transtable), NAME(transtable));
  }

  @action
  addTrans(transid: string, buyerPK: string, expressPK: string, buyerENCInfo: string, goodsENCInfo: string, timestamp: string): void {
    let t = new Transaction();
    t.transid = transid;
    t.buyerPK = buyerPK;
    t.expressPK = expressPK;
    t.buyerENCInfo = buyerENCInfo;
    t.goodsENCInfo = goodsENCInfo;
    t.timestamp = timestamp;

    let existing = this.transdb.exists(t.primaryKey());
    ultrain_assert(!existing, "this transaction has existed in db yet.");
    this.transdb.emplace(t);
  }

  @action
  searchTransE(transid: string): void {
    let t = new Transaction();
    let existing = this.transdb.get(NAME(transid), t);
    ultrain_assert(existing, "the transaction does not exist.");
    //Return<string>("hello");
    Log.s(" TransactionID: ").s(t.transid).s(" buyerENCInfo: ").s(t.buyerENCInfo).s(" timestamp: ").s(t.timestamp).flush();

    //let cursor = this.transdb.cursor();
    //Log.s("cursor.count =").i(cursor.count).flush();
    //while(cursor.hasNext()) {
    //   let t: Transaction = cursor.get();
    //    if(t.transid==transid){
    //        t.prints();
    //    }
    //    cursor.next();
    //}
  }

  @action
  searchTransS(transid: string): void {
    let t = new Transaction();
    let existing = this.transdb.get(NAME(transid), t);
    ultrain_assert(existing, "the transaction does not exist.");
    //Return<string>("hello");
    Log.s(" TransactionID: ").s(t.transid).s(" goodsENCInfo: ").s(t.goodsENCInfo).s(" timestamp: ").s(t.timestamp).flush();

    //let cursor = this.transdb.cursor();
    //Log.s("cursor.count =").i(cursor.count).flush();
    //while(cursor.hasNext()) {
    //   let t: Transaction = cursor.get();
    //    if(t.transid==transid){
    //        t.prints();
    //    }
    //    cursor.next();
    //}
  }

}

class GoodsInfo extends Contract {

  goodsdb: DBManager<Goods>;
  constructor(code: u64) {
    super(code);
    this.goodsdb = new DBManager<Goods>(NAME(goodstable), NAME(goodstable));
  }

  @action
  addGoods(name: string, amount: u32, receiver: string, phone: string, receiverADDR: string, buyerPK: string, expressPK: string, sellerPK: string, transid: string): void {
    let g = new Goods();
    g.name = name;
    g.amount = amount;
    g.receiver = receiver;
    g.phone = phone;
    g.receiverADDR = receiverADDR;
    g.buyerPK = buyerPK;
    g.expressPK = expressPK;
    g.sellerPK = sellerPK;
    g.transid = transid;

    //let existing = this.goodsdb.exists(name);
    //ultrain_assert(!existing, "this goods has existed in db yet.");
    this.goodsdb.emplace(g);
  }

}
