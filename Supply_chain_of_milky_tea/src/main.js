import Vue from 'vue'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import App from './App.vue'
// import NormalizeCss from 'normalize.css'


import router from './router'

Vue.config.productionTip = false

Vue.use(ElementUI)

new Vue({
  template: '<App/>',
  router,
  info: 'info',
  render: h => h(App),
}).$mount('#app')
