import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';

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
		allcomments: false // all comments
	}, 
	actions:{
		LOAD_COMMENTS_LIST: function({ commit }) {
			axios.get('consultas.php?crud=read').then((response) => {
					// console.log(response.data.members);
					commit('SET_COMMENTS_LIST', { list: response.data.members })
				}, (err) => {
					console.log(err)
				})
		},
	}, 
	mutations:{	
		SET_COMMENTS_LIST: (state, { list }) => {
			state.allcomments = list;
		},
	},
	// getters:{
	// 	openProjects: state => {
	// 		return state.allcomments;
	// 	}
	// }
});
