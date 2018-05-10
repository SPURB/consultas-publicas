import Vue from 'vue';
import Vuex from 'vuex';
import axios from 'axios';

Vue.use(Vuex);

export const store = new Vuex.Store({
	state: {
		projecttitle:'Admin consultas',
		isadmin: false,
		usercheck: false,
		userinfo: undefined
	}, 
	// actions:{
	// 	LOAD_COMMENTS_LIST: function({ commit }) {
	// 		axios.get('consultas.php?crud=read').then((response) => {
	// 				// console.log(response.data.members);
	// 				commit('SET_COMMENTS_LIST', { list: response.data.members })
	// 			}, (err) => {
	// 				console.log(err)
	// 			})
	// 	},
	// }, 
	// mutations:{	
	// 	SET_COMMENTS_LIST: (state, { list }) => {
	// 		state.allcomments = list;
	// 	},
	// },
	// getters:{
	// 	openProjects: state => {
	// 		return state.allcomments;
	// 	}
	// }
});
