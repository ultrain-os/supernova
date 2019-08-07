<template>
  <div>
    <h1>Farmer</h1>
    UPC
    <input type="number" id="upc" name="upc" v-model="upc" number><br>
    SKU
    <input type="number" id="sku" name="sku" v-model="sku" number><br>
    Product Type
    <select v-model="productType">
      <option disabled value="">请选择</option>
      <option>tea</option>
      <option>milk</option>
      <option>cassava</option>
    </select>
    <br>
    Product Information
    <input id="productInfo" name="productInfo" v-model="productInfo"><br> 
    Price
    <input type="number" id="price" v-model.number="price" number><br>
    <br>
    <el-button @click="harvest" type="primary">Harvest</el-button><br>
    <br>
    <el-button @click="process" type="primary">Process</el-button><br>
    <br>
    <el-button @click="pack" type="primary">Pack</el-button><br>
    <br>
    <el-button @click="sell" type="primary">Sell</el-button>
  </div>
</template>

<script>
const { createU3, U3Utils } = require("u3.js");
const config = require("../../config");
export default {
  methods: {
    data() {
      return {
        upc: 0,
        sku: 0,
        productType: '',
        productInfo: '',
        price: 0
      };
    },

    async harvest () {
      console.log("harvest")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK"; // alice
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
		  await contract.harvest(this.upc, this.sku, this.productType, this.productInfo, Date.now(), {authorization: [`alice@active`]})
      // 查询状态
      const farmerstable = "state";
		  const farmerscope = "s.state";
		  let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers.rows)
    },

    async process () {
      console.log("process")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK"; // alice
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
		  await contract.process(this.upc, {authorization: [`alice@active`]})
      // 查询状态
      // TODO: 改成正确的命名，上同
      const farmerstable = "state";
		 const farmerscope = "s.state";
		 let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers.rows)
    },

    async pack () {
      console.log("Pakc")
      config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK"; // alice
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
		  await contract.pack(this.upc, {authorization: [`alice@active`]})
      // 查询状态
      const farmerstable = "state";
		  const farmerscope = "s.state";
		  let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		  });
		  console.log(farmers.rows)
    },

    async sell () {
      console.log("sell")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      config.keyProvider = "5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK"; // alice
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
      // TODO: 添加price
		  await contract.sell(this.upc, 1, {authorization: [`alice@active`]})
      // 查询状态
      const farmerstable = "state";
		 const farmerscope = "s.state";
		 let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers.rows)
    }

  }
}
</script>
