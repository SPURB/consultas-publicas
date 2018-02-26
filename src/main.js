// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import App from './App';
import router from './router';
import axios from 'axios';
import { store } from './store/store';
import VeeValidate from 'vee-validate';
import Materialize from "./assets/vendor/materialize-src/js/materialize.min.js";

// onboard
// import VueTour from 'vue-tour';

// onboard
// require('vue-tour/dist/vue-tour.css');

// onboard
// Vue.use(VueTour); 

Vue.use(VeeValidate);
Vue.config.productionTip = false;


/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})