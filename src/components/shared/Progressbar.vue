<template>
	<div class="progressbar">

		<p>Cap {{postid}}/{{numchapters}}</p>
		 <svg width="100%" height="5">
			<rect width="100%" height="6" style="fill:rgb(224,224,224)" />
			<rect v-bind:width="svgwidth" height="6" style="fill:rgb(79,79,79)" />
		</svg> 

    <ul>
				<li v-for="navitem in navitems" class="">
						<router-link :to="navitem.path">
								{{navitem.name}} 
						</router-link>
				</li>
		</ul>

	</div>
</template>

<script>

export default {
		name: 'Progressbar',
		data () {
			return {
				navitems: [],
				barwidth: 0
			}
		},
		created(){
			let app = this
			const routes = app.$router.options.routes
			// create nav links
			routes.filter(function(index) {
					if('name' in index){
							app.navitems.push(index)
					}
			})
		},
		computed: {
				numchapters: function(){
						const navitems = this.navitems.length 
						this.$store.state.numchapters = navitems // send to vuex
						return navitems
				}, 
				postid: function(){
						return this.$route.meta.postid
				},
				svgwidth: function(){
						return  (this.$route.meta.postid / this.navitems.length)*100  + '%'
				}
		}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

</style>