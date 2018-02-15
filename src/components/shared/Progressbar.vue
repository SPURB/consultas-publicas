<template>
	<div class="progressbar">
	<ul>
		<li>Cap {{postid}}/{{numchapters}}</li>
		<li v-for="navitem in navpreviousnext" class="links">
			<router-link v-if="firstpost == true" :to="navitem.path" class="first"></router-link>
			<router-link v-if="firstpost == false && lastpost == false" :to="navitem.path" ></router-link>
			<router-link v-if="lastpost == true" :to="navitem.path"></router-link>
		</li>
	</ul>

	<svg width="100%" height="5">
		<rect width="100%" height="6" style="fill:rgb(224,224,224)" />
		<rect v-bind:width="svgwidth" height="6" style="fill:rgb(79,79,79)" />
	</svg>

	</div>
</template>

<script>
 
export default {
	name: 'Progressbar',
	data () {
		return {
			navitems: [],
			navpreviousnext:[],
			firstview: false
		}
	},
	created(){
		let app = this
		const routes = app.$router.options.routes
		routes.filter(function(index) {
			if('name' in index){
				app.navitems.push(index)
			}
		})
		app.firstview = true
	},
	computed: {
		numchapters: function(){
			const navitems = this.navitems.length 
			this.$store.state.numchapters = navitems // send total number of chapters to vuex
			return navitems
		}, 
		postid: 		function(){ return this.$route.meta.postid },
		firstpost:		function(){ return this.$route.meta.postid == 1 ? true : false },
		lastpost: 		function(){ return this.$route.meta.postid == this.navitems.length ? true : false },
		svgwidth: 		function(){ return (this.$route.meta.postid / this.navitems.length)*100 + '%'},
	}, 
	watch:{
		'$route' (to, from) {
			let app = this
			app.navpreviousnext = []
			app.navitems.filter(function(index){
				if ((to.meta.postid - 1) ==  index.meta.postid) {
					app.navpreviousnext.push(index)
				}
				else if((to.meta.postid + 1) == index.meta.postid){
					app.navpreviousnext.push(index)
				}
			})
		},
		firstview: function(){
			let app = this
			app.navitems.filter(function(index){
				if ((app.$route.meta.postid - 1) ==  index.meta.postid) {
					app.navpreviousnext.push(index)
				}
				else if((app.$route.meta.postid + 1) == index.meta.postid){
					app.navpreviousnext.push(index)
				}
			})
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/main.scss";

p {
	margin-bottom:0;
	span {
		padding: 0 0.65rem 0 0
	}
}

li {
	float: left;
	padding: 0 0.75em 0 0;
	a { color: $primary-grey }
}


li.links:nth-child(2) a:after{
	content: '<<';

}

li.links:nth-child(2) a.first:after,
li.links:nth-child(3) a:after{
	content: '>>'
}

</style>