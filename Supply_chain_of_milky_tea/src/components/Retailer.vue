<template>
  <div>
    <h1>Retailer</h1><br>
    UPC
    <input type="number" id="upc" name="upc" v-model="upc" number><br><br>
    <el-button @click="receive" type="primary">Receive</el-button>
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

    async receive () {
      console.log("harvest")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      /*
      config.keyProvider = "5KXYYEWSFRWfNVrMPaVcxiRTjD9PzHjBSzxhA9MeQKHPMxWP8kU"; // tom
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
      await contract.receive(this.upc, Date.now(), {authorization: [`tom@active`]})
      */

      const u3 = createU3(config);
      const contract = 'dremofly1'
      const action = 'receive'
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
			 "code": creator,
			 "scope": farmerscope,
			 "table": farmerstable
		 });
		 console.log(farmers.rows)
    }
}
}
</script>
