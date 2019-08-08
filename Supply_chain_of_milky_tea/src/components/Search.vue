<template>
  <div>
    <h1>Search</h1><br>
    UPC
    <input type="number" id="upc" name="upc" v-model="upc" number><br><br>
    <el-button @click="search" type="primary">Purchase</el-button>
    <div ref="state"></div>
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
      };
    },

    async search () {

      console.log("Purchase")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      /*
      config.keyProvider = "5JoQtsKQuH8hC9MyvfJAqo6qmKLm8ePYNucs7tPu2YxG12trzBt"; // bob
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
      await contract.purchase(this.upc, Date.now(), {authorization: [`bob@active`]})
      */

      const u3 = createU3(config);
      const contract = 'dremofly1'

      // 查询状态
      const farmerstable = "state";
		 const farmerscope = "s.state";
		 let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": contract,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
     console.log(farmers.rows[0])
     console.log(this.$refs)

     let len = farmers.rows.length
      let i = 0
     while(i<len) {
       if(farmers.rows[i].upc == this.upc){
         break
       }
       i++
     }
     let thisState = farmers.rows[i] 
     this.$refs.state.innerHTML = "<dl><dt>UPC: "+thisState.upc + "</dt><dt>sku:" + thisState.sku + "</dt><dt>state:" + thisState.state + "</dt><dt>owner:" + thisState.owner + "</dt><dt>originFarmer:" + thisState.originFarmer + "</dt><dt>distributor: " + thisState.distributor + "</dt><dt>retailer: " + thisState.retailer + "</dt><dt>Consumer: "+ thisState.consumer + "</dt><dt>Product ID: "+ thisState.productID + "</dt><dt>Product Info: " + thisState.productInfo + "</dt><dt>Product Type:" + thisState.productType + "</dt><dt>Price:" + "</dt><dt>sku:" + "</dt><dt>Harvest Time:" + this.harvestTime + "</dt><dt>Receive Time: " + thisState.receiveTime + "</dt><dt>Purchase Time: " + thisState.purchaseTime + "</dt><dt>Ship Time: " + thisState.shipTime + "</dt></dl>"


      buyTime: 0
consumer: ""
distributor: ""
harvestTime: "1563519124287"
originFarmer: "dremofly1"
owner: "dremofly1"
price: 0
productID: 2
productInfo: "hello"
productType: "tea"
purchaseTime: 0
receiveTime: 0
retailer: ""
shipTime: 0
sku: 1
state: 0
upc: 1


    }
}
}
</script>
