<template>
  <div>
    <h1>Distributor</h1><br>
    UPC
    <input type="number" id="upc" name="upc" v-model="upc" number><br><br>  
    <el-button @click="buy" type="primary">Buy</el-button><br><br>
    <el-button @click="ship" type="primary">Ship</el-button>
  </div>
</template>

<script>
const { createU3, U3Utils } = require("u3.js");
const config = require("../../config");
/*
let statestable = "state"
let statesscope = "s.state"
let states = u3.getTableRecords({
	"json": true,
	"code": creator,
	"scope": statesscope,
	"table": statestable
})

let len = states.length
let upcs = new Array()
let i = 0
while(i < len) {
  upcs.push(states[i].upc)
  i = i + 1
}
*/

export default {
  methods: {
    data() {
      return {
        upc: 0,
        upcs: [
          {value: '1'},
          {value: '2'},
          {value: '3'}
        ]
      };
    },
    
    async buy () {
      console.log(" *************** Buy ***************")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      /*
      config.keyProvider = "5JFz7EbcsCNHrDLuf9VpHtnLdepL4CcAEXu7AtSUYfcoiszursr"; // jerry
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);

      await contract.buy(this.upc, Date.now(), {authorization: [`jerry@active`]})
      */

      const u3 = createU3(config);
      const contract = 'dremofly1'
      const action = 'buy'
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
    },

    async ship () {
      console.log("*************** Ship ***************")
      // TODO: 读取upc的值
      // TODO: 发起harvest的交易
      /*
      config.keyProvider = "5JFz7EbcsCNHrDLuf9VpHtnLdepL4CcAEXu7AtSUYfcoiszursr"; // jerry
      let creator = "ben";
      const u3 = createU3(config);
      let contract = await u3.contract(creator);
      await contract.ship(this.upc, Date.now(), {authorization: [`jerry@active`]})
      */

      const u3 = createU3(config);
      const contract = 'dremofly1'
      const action = 'ship'
      const params = [this.upc, Date.now()]
      const result = await window.Cona.getCurrentNetworkChains()
      if(result.success) {
        const tx = await window.Cona.callContract({ contract, action, params, chainId: result.data[1]._id });
        console.log(tx)
      } else {
        console.log(reuslt.msg)
      }

      // 查询状态
      // TODO: 改成正确的命名，上同
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
