// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import App from './App';
import router from './router';
import axios from 'axios';
import { store } from './store/store';

import VeeValidate from 'vee-validate';
Vue.use(VeeValidate);

import VueLazyload from 'vue-lazyload';
import Buefy from 'buefy';

// import VueAwesomeSwiper from 'vue-awesome-swiper';
// import 'swiper/dist/css/swiper.css'
// Vue.use(VueAwesomeSwiper);

Vue.use(Buefy);
Vue.use(VueLazyload, {
	lazyComponent: true
})
Vue.config.productionTip = false;

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})