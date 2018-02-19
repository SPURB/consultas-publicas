<template>
	<div class="footernav">
		<div class="container">
			<div class="row">
				<div class="col s12">
					<div v-for="navitem in navpreviousnext" class="links">
						<router-link :to="navitem.path" tag="a" class="btn-flat first" v-if="firstpost == true"></router-link>
						<router-link :to="navitem.path" tag="a" class="btn-flat both"  v-if="firstpost == false && lastpost == false" ></router-link>
						<router-link :to="navitem.path" tag="a" class="btn-flat last"  v-if="lastpost == true" ></router-link>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'Footernav',
	data(){
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
		postid: 		function(){ return this.$route.meta.postid },
		firstpost:		function(){ return this.$route.meta.postid == 1 ? true : false },
		lastpost: 		function(){ return this.$route.meta.postid == this.navitems.length ? true : false },
		numchapters: 	function(){ return this.$store.state.numchapters }
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
	},
	methods:{
		commentEnable: function(){
			this.$store.state.comments = true;
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/main.scss";

div.divider.bottom{ margin: 1rem}

// two buttons displayed
div.links:first-of-type{ float: left }
div.links:last-of-type{ float: right }

div.links:nth-child(1) a:after{ content: 'Voltar'; }
div.links:nth-child(1) a.first:after,
div.links:nth-child(2) a:after { content: 'Próximo'}

a { background-color: $primary-light-grey; }
a.last { 
	background-color: $primary-light-grey;
	margin-right:100%;
} // last route

a.first, // first route 
div.links:nth-child(2) a { // two buttons displayed route
	background-color: $primary-grey;
	color: $font-white-dark-bkg
}


</style>