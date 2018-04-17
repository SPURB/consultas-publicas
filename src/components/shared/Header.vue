<template>
	<div class="Header">
		<nav class="navbar is-white">
			<div>
			<a class="title" href="http://gestaourbana.prefeitura.sp.gov.br/">gestão<span class="urbana">urbana</span><span class="sp">SP</span></a><router-link id="tohome" to='/consulta'> | {{ projectTitle }}</router-link>
			<a id="menu-icon" class="sidenav-trigger right" @click="showNavItems = !showNavItems"><i class="material-icons">menu</i></a>
			<ul id="routes-list" v-bind:class="{ menuDisplay: showNavItems }">
				<li v-for="navitem in navitems">
					<router-link :to='navitem.path'>{{navitem.name}}</router-link>
				</li>
			</ul>
			</div>
		</nav>

<div class="tabs">
  <ul>
    <li class="is-active"><a>Pictures</a></li>
    <li><a>Music</a></li>
    <li><a>Videos</a></li>
    <li><a>Documents</a></li>
  </ul>
</div>

	</div>
</template>

<script>
export default {
	name: 'Header',
	data () {
		return {
			navitems: [],
			firstview: false,
			toggleNav: true,
			lastYposition: 0,
			showNavItems: false,
			window_width: '100%'
		}
	},
	mounted(){
		this.window_width = window.screen.width
	},
	created(){
		let app = this
		const routes = app.$router.options.routes
		routes.filter(function(index) {
			if('name' in index){
				app.navitems.push(index)
			}
		})
		app.firstview = true;

		// watch for scroll
		window.addEventListener('scroll', this.scrolling);
	},
	destroyed(){ window.removeEventListener('scroll', this.scrolling); },
	methods:{
		scrolling(){
			this.lastYposition > window.scrollY ? this.toggleNav = true : this.toggleNav = false;
			this.lastYposition = window.scrollY;
		},
	},
	computed:{ projectTitle(){ return this.$store.state.projecttitle; }
	},
	watch:{
		showNavItems(){
			this.showNavItems ? document.getElementById("menu-icon").firstChild.textContent = "close" : document.getElementById("menu-icon").firstChild.textContent = "menu"
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

span.sp {color: #EB5757}
span.urbana{color: black}

.column{
	background-color: yellow
}

</style>

