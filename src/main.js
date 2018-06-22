// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import { store } from './store/store'

import VeeValidate from 'vee-validate'
Vue.use(VeeValidate)

// import VueScrollTo from 'vue-scrollto'
// Vue.use(VueScrollTo, {
//      duration: 250,
//      easing: "ease",
//  })

// import ol from 'ol'

// import VueLazyload from 'vue-lazyload'
// Vue.use(VueLazyload, {
// 	lazyComponent: true
// })

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})