import { Contract } from "ultrain-ts-lib/src/contract";
import { RNAME, NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";
import { Log } from "ultrain-ts-lib/src/log";
import { Asset } from "ultrain-ts-lib/src/asset";

import { env as action} from "ultrain-ts-lib/internal/action.d";
// ==========================
//	State的各种状态
// ==========================
//    Harvested,  // 0
//    Processed,  // 1
//    Packed,     // 2
//    ForSale,    // 3
//    Sold,       // 4
//    Shipped,    // 5
//    Received,   // 6
//    Purchased   // 7

class States implements Serializable {
	@primaryid
	upc: id_type;	// universal product code
	sku: u64;
	//sku: u64;	// Stock keeping unit
	state: u32;
	price: u32 = 0;
	productID: u64;	// sku + upc
	owner: account_name;
	productType: string; // tea, milk, or cassava
	harvestTime: u64;	// unix timestamp
	productInfo: string;	// 备注之类的
	originFarmer: account_name = 0;
	distributor: account_name = 0;
	buyTime: u64;
	shipTime: u64;
	retailer: account_name = 0;
	receiveTime: u64;
	consumer: account_name = 0;
	purchaseTime: u64;
}

// 评价
class Evaluate implements Serializable {
	@primaryid
	name: account_name = 0;
	rank: u32;
}
// Farmer
class Farmers implements Serializable {
	@primaryid
	name: account_name = 0;
	eval: Array<Evaluate>;
	index: u32;
}
// Distributor
class Distributors implements Serializable {
	@primaryid
	name: account_name = 0;
	eval: Evaluate[];
	index: u32;
}
// Retailer
class Retailers implements Serializable {
	@primaryid
	name: account_name = 0;
	eval: Evaluate[];
	index: u32;
}
// Consumer
class Consumers implements Serializable {
	@primaryid
	name: account_name = 0;
	eval: Evaluate[];
	index: u32;
}

const farmerstable = "farmer";
const farmersscope = "s.farmer";

//const distributorstable = "distributor";
//const distributorsscope = "s.distributor";
const distributorstable = "dist";
const distributorsscope = "s.dist";

const retailerstable = "retailer";
const retailersscope = "s.retailer";

const consumerstable = "consumer";
const consumersscope = "s.consumer";

const statestable = "state";
const statesscope = "s.state";


@database(Farmers, farmerstable)
@database(Distributors, distributorstable)
@database(Retailers, retailerstable)
@database(Consumers, consumerstable)
@database(States, statestable)

class SupplyChain extends Contract {
  farmersDB: DBManager<Farmers>;
  distributorsDB: DBManager<Distributors>;
  retailersDB: DBManager<Retailers>;
  consumersDB: DBManager<Consumers>;
  statesDB: DBManager<States>;

  constructor(code: u64) {
	  super(code);
	  this.farmersDB = new DBManager<Farmers>(NAME(farmerstable), NAME(farmersscope));
	  this.statesDB = new DBManager<States>(NAME(statestable), NAME(statesscope));
	  this.distributorsDB = new DBManager<Distributors>(NAME(distributorstable), NAME(distributorsscope));
	  this.retailersDB = new DBManager<Retailers>(NAME(retailerstable), NAME(retailersscope));
	  this.consumersDB = new DBManager<Consumers>(NAME(consumerstable), NAME(consumersscope));
  }

  //TODO: 可以加入farmer的信息
  @action
  addFarmer(farmer: account_name): void {
	  ultrain_assert(Action.sender == this.receiver, "Only contract owner can add farmer");

	  let c = new Farmers();
	  c.name = farmer;
	  c.eval = [];
	  c.index = 0;
	  let existing = this.farmersDB.exists(farmer);
	  if(!existing) {
		  this.farmersDB.emplace(c);
	  } else {
		  ultrain_assert(false, "You have already added this account as farmer ");
	  }
  }

  @action
  addDistributor(distributor: account_name): void {
	ultrain_assert(Action.sender == this.receiver, "Only contract owner can add distributor");

	let c = new Distributors();
	c.name = distributor;
	c.eval = [];
	c.index = 0;
	let existing = this.distributorsDB.exists(distributor);
	if(!existing) {
		this.distributorsDB.emplace(c);
	} else {
		ultrain_assert(false, "You have already added this account as distributor");
	}
  }

  @action
  addRetailer(retailer: account_name): void {
	ultrain_assert(Action.sender == this.receiver, "Only contract owner can add retailer");

	let c = new Retailers();
	c.name = retailer;
	c.eval = [];
	c.index = 0;
	let existing = this.retailersDB.exists(retailer);
	if(!existing) {
		this.retailersDB.emplace(c);
	} else {
		ultrain_assert(false, "You have already added this account as retailer");
	}
  }

  @action
  addConsumer(consumer: account_name): void {
	ultrain_assert(Action.sender == this.receiver, "Only contract owner can add consumer");

	let c = new Consumers();
	c.name = consumer;
	c.eval = [];
	c.index = 0;
	let existing = this.consumersDB.exists(consumer);
	if(!existing) {
		this.consumersDB.emplace(c);
	} else {
		ultrain_assert(false, "You have already added this account as consumer");
	}
  }

  // 需要读取的输入有：
  // upc, sku, productType, originFarmer, harvestTime, productInfo
  @action
  harvest(upc: id_type, sku: u64, productType: string, productInfo: string, harvestTime: u64): void {
	  // 判断是不是farmer
	  //ultrain_assert(!this.farmersDB.exists(Action.sender), "Only farmers are allowed to call this action");
	  ultrain_assert(!this.statesDB.exists(upc), "This upc has exist");
	  // 修改upc，state，sku, productID, owner, productType,
	  // harvestTime, productInfo
	  let c = new States();
	  c.upc = upc;
	  c.state = 0;
	  c.sku = sku;
	  c.originFarmer = Action.sender;
	  // TODO: 添加其他的改变
	  c.harvestTime = harvestTime;
	  c.owner = c.originFarmer;
	  c.productType = productType;
	  c.productInfo = productInfo;
	  c.productID = sku + upc;

	  this.statesDB.emplace(c);
  }

  @action
  process(upc: id_type): void {
	  		let temp = new States();
		 	let ready = this.statesDB.get(upc, temp);
		  	ultrain_assert(ready, "This upc does not exist");
			ultrain_assert(temp.state == 0, "This item have not been harvested");
			// process的人是否是harvest的人，也就是originFarmer
			ultrain_assert(temp.originFarmer == Action.sender, "Not the original Farmer");
			temp.state = 1;

			this.statesDB.modify(temp);
  }

  @action
  pack(upc: id_type): void {
		let temp = new States();
		let ready = this.statesDB.get(upc, temp);
		ultrain_assert(ready, "This upc does not exist");
		ultrain_assert(temp.state == 1, "This item have not been processed");
		// process的人是否是harvest的人，也就是originFarmer
		ultrain_assert(temp.originFarmer == Action.sender, "Not the original Farmer");		
		temp.state = 2;

		this.statesDB.modify(temp);	
  }

  @action
  sell(upc: id_type, price: u32): void {
	let temp = new States();
	let ready = this.statesDB.get(upc, temp);
	 ultrain_assert(ready, "This upc does not exist");
   ultrain_assert(temp.state == 2, "The item have not been packed");
   // process的人是否是harvest的人，也就是originFarmer
	ultrain_assert(temp.originFarmer == Action.sender, "Not the original Farmer");
   temp.state = 3;
	temp.price = price;
   this.statesDB.modify(temp);	
  }

  // 改变owner, 添加buyTime
  @action
  buy(upc: id_type, buyTime: u64): void {
	 // 判断是否是distributor 
	 //ultrain_assert(!this.distributorsDB.exists(Action.sender), "Only distributors are allowed to call this action");
	let temp = new States();
	let ready = this.statesDB.get(upc, temp);
	ultrain_assert(ready, "This upc does not exist");
   	ultrain_assert(temp.state == 3, "The item have not been for sale");
   	temp.state = 4;
   	temp.distributor = Action.sender;
   	temp.owner = temp.distributor;
   	temp.buyTime = buyTime;
   	this.statesDB.modify(temp);
   /*
   this.statesDB.modify(temp);	
	//TODO: 如何传输货币
	let from = Action.sender;
	let to = temp.originFarmer;
	//let bet: Asset = temp.price;
	let bet = new Asset(temp.price);
	let balance = Asset.balanceOf(from);
	action.require_auth(from);
	//Log.s("Test: ").s(RNAME(from)).flush();
	ultrain_assert(balance.gte(bet), "your balance is not enough.");
	balance.prints("balance from: ")
	Asset.transfer(from, to, bet, "Buy the item.");
	*/
  }

  // ship
  @action
  ship(upc: id_type, shipTime: u64): void {
	let temp = new States();
	let ready = this.statesDB.get(upc, temp);
	ultrain_assert(ready, "This upc does not exist");
   	ultrain_assert(temp.state == 4, "The item have not been sold");
   	ultrain_assert(temp.distributor == Action.sender, "Not the distributor");
   	temp.state = 5;
	temp.shipTime = shipTime;
   	this.statesDB.modify(temp);	
  }

  // retailer
  // 修改owner，添加receiveTime
  @action
  receive(upc: id_type, receiveTime: u64): void {
	let temp = new States();
	let ready = this.statesDB.get(upc, temp);
	ultrain_assert(ready, "This upc does not exist");
   	ultrain_assert(temp.state == 5, "The item have not been shipped:");
   	temp.state = 6;
	temp.retailer = Action.sender;
	temp.owner = temp.retailer;
	temp.receiveTime = receiveTime;

   	this.statesDB.modify(temp);	
  }

  @action
  purchase(upc: id_type, purchaseTime: u64): void {
	let temp = new States();
	let ready = this.statesDB.get(upc, temp);
	ultrain_assert(ready, "This upc does not exist");
   	ultrain_assert(temp.state == 6, "The item have not been received");
   	temp.consumer = Action.sender;
   	temp.state = 7;
   	temp.owner = temp.consumer;
   	temp.purchaseTime = purchaseTime;

   	this.statesDB.modify(temp);	
  }

  // 测试用
  @action
  empty(): void {
	  ultrain_assert(Action.sender == this.receiver, "Only the contract creator can call this");
		this.farmersDB.erase(NAME("alice"));
		Log.s("successful1").flush();
		this.distributorsDB.erase(NAME("jerry"));
		this.retailersDB.erase(NAME("tom"));
		this.consumersDB.erase(NAME("bob"));
  }

  // rank
  @action
  rankFarmer(name: account_name, rank: u32): void {
	let c = new Farmers();
	let ready = this.farmersDB.get(name, c);
	/*
	let e = new Evaluate();
	e.name = Action.sender;
	e.rank = rank;
	c.eval[c.index].name = Action.sender;
	c.eval[c.index].rank = rank;
	*/
	let e = new Evaluate();
	e.name = Action.sender;
	e.rank = rank;
	c.eval.push(e);
	c.index = c.index + 1;
	this.farmersDB.emplace(c);
  }
}
