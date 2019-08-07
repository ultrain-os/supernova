const { createU3, U3Utils } = require("u3.js");
const config = require("../config");

const chai = require("chai");
require("chai")
  .use(require("chai-as-promised"))
  .should();

describe("Tests", function() {
	let creator = "ben";
	let upc = 10;
	let sku = 1;


	//初始化
	it("init", async () => {
		const u3 = createU3(config);

		await u3.transaction(creator, c => {
			//c.empty({ authorization: [`ben@active`] });
			c.addFarmer("alice", { authorization: [`ben@active`] });
			c.addFarmer("jack", { authorization: [`ben@active`] });
			c.addFarmer("tony", { authorization: [`ben@active`] });
			c.addDistributor("jerry", { authorization: [`ben@active`] });
			c.addRetailer("tom", { authorization: [`ben@active`] });
			c.addConsumer("bob", { authorization: [`ben@active`] });
		});
	});
/*
 	it("farmer", async () => {
		 const u3 = createU3(config);

		 await u3.transaction(creator, c => {
			c.addFarmer("alice", { authorization: [`ben@active`] });
		 });

		 U3Utils.test.wait(3000);

		 const farmerstable = "farmer";
		 const farmerscope = "s.farmer";
		 let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers)
		 farmers.rows.length.should.equal(1);
	 });
	 */

	 it("getFarmer", async () => {
		 const u3 = createU3(config);
		 const farmerstable = "dist";
		 const farmerscope = "s.dist";
		 let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers.rows)
	 } );
	 
	it("harvest tea", async () => {
		config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK";
		const u3 = createU3(config);
		let contract = await u3.contract(creator);
		await contract.harvest(upc, sku, "tea", "This is the tea test", Date.now(), {authorization: [`alice@active`]})


		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("harvest milk", async () => {
		// jack
		config.keyProvider = "5JC2uWa7Pba5V8Qmn1pQPWKDPgwmRSYeZzAxK48jje6GP5iMqmM";
		const u3 = createU3(config);
		let contract = await u3.contract(creator);
		await contract.harvest(upc+1, sku, "milk", "This is the milk test", Date.now(), {authorization: [`jack@active`]})


		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("harvest cassava", async () => {
		// tony
		config.keyProvider = "5KbHvFfDXovPvo2ACNd23yAE9kJF7Mxaws7srp6VapjMr7TrHZB";
		const u3 = createU3(config);
		let contract = await u3.contract(creator);
		await contract.harvest(upc+2, sku, "cassava", "This is the cassava test", Date.now(), {authorization: [`tony@active`]})

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});
	
	it("process", async () => {
		config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.process(upc, { authorization: [`alice@active`] });
		 });

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});
	U3Utils.test.wait(3000);
	it("pack", async () => {
		config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.pack(upc, { authorization: [`alice@active`] });
		 });

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("sell", async () => {
		config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.sell(upc, 1, { authorization: [`alice@active`] });
		 });

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("buy", async () => {
		config.keyProvider = "5JFz7EbcsCNHrDLuf9VpHtnLdepL4CcAEXu7AtSUYfcoiszursr";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.buy(upc, Date.now(), { authorization: [`jerry@active`] });
		});

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("ship", async () => {
		config.keyProvider = "5JFz7EbcsCNHrDLuf9VpHtnLdepL4CcAEXu7AtSUYfcoiszursr";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.ship(upc, Date.now(), { authorization: [`jerry@active`] });
		 });

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	U3Utils.test.wait(3000);
	it("receive", async () => {
		config.keyProvider = "5KXYYEWSFRWfNVrMPaVcxiRTjD9PzHjBSzxhA9MeQKHPMxWP8kU";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.receive(upc, Date.now(), { authorization: [`tom@active`] });
		 });

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("purchase", async () => {
		config.keyProvider = "5JoQtsKQuH8hC9MyvfJAqo6qmKLm8ePYNucs7tPu2YxG12trzBt";
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.purchase(upc, Date.now(), { authorization: [`bob@active`] });
		 });

		const statestable = "state";
		const statesscope = "s.state";
		let states = await u3.getTableRecords({
			"json": true,
			"code": creator,
			"scope": statesscope,
			"table": statestable
		});
		console.log(states.rows)

	});

	it("RankFarmer", async () => {
		const u3 = createU3(config);
		await u3.transaction(creator, c => {
			c.rankFarmer("alice", 1, { authorization: [`ben@active`] });
		 });
	})
});
