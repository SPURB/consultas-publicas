import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';

Vue.use(Vuex);

export const store = new Vuex.Store({
	state: {
		projecttitle: 'Consulta Pública - PIU Anhembi',
		isadmin: false,
		usercheck: false,
		isopen: false
	}
});
