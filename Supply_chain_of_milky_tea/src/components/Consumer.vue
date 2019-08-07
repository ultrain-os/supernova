<template>
  <div>
    <h1>Consumer</h1><br>
    UPC
    <input type="number" id="upc" name="upc" v-model="upc" number><br><br>
    <el-button @click="purchase" type="primary">Purchase</el-button>
  </div>
</template>

<script>
const { createU3, U3Utils } = require("u3.js");
const config = require("../../config");
export default {
  methods: {
    data() {
      return {
        upc: 0
      };
    },

    async purchase () {
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
      const action = 'purchase'
      const params = [this.upc, Date.now()]
      const result = await window.Cona.getCurrentNetworkChains()
      if(result.success) {
        const tx = await window.Cona.callContract({ contract, action, params, chainId: result.data[1]._id });
        console.log(tx)
      } else {
        console.log(reuslt.msg)
      }

      // 查询状态
      const farmerstable = "state";
		 const farmerscope = "s.state";
		 let farmers = await u3.getTableRecords({
			 "json": true,
			 "code": contract,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers.rows)
    }
}
}
</script>
