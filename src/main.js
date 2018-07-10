// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import { store } from './store/store'
import VeeValidate from 'vee-validate'
import VueLazyload from 'vue-lazyload'

Vue.use(VeeValidate)

Vue.use(VueLazyload, {
	// lazyComponent: true,
	preLoad: 1.3,
	loading: './static/galeria/carregando.gif',
})

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})