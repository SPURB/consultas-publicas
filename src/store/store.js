import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export const store = new Vuex.Store({
	state: {
        projecttitle:'Consulta pública PIU Sumidouro',
        numchapters: 0, 
		showmodal: false,
		comments: false,
        usercheck: false,
		email: '',
		name: '',
        isadmin: false,
        scrollheight: 0,
	}
});