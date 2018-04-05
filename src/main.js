// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import App from './App';
import router from './router';
import axios from 'axios';
import { store } from './store/store';
import VeeValidate from 'vee-validate';
import VueLazyload from 'vue-lazyload';
import VueAwesomeSwiper from 'vue-awesome-swiper';

import 'swiper/dist/css/swiper.css'

Vue.use(VeeValidate);
Vue.use(VueLazyload);
// Vue.use(VueLazyload, {
//     preLoad: 1.3,
//     error: 'http://placehold.it/50x50.png',
//     loading: 'http://placehold.it/50x50.png',
// })
Vue.use(VueAwesomeSwiper);
Vue.config.productionTip = false;

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})

