import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';

Vue.use(Vuex);

export const store = new Vuex.Store({
	state: {
		projecttitle: 'Consulta Pública - PIU Setor Central',
		isadmin: false,
		usercheck: false,
	}
});
