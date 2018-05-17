<template>
	<div class="Header">
		<a class="navbar-item" href="http://gestaourbana.prefeitura.sp.gov.br/">
			<span class="gestao">gestão</span>
			<span class="urbana">urbana</span>
			<span class="sp">SP</span>
		</a>
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
.Header {
	display: inline-block;
}
.fade-enter-active, .fade-leave-active { transition: opacity .5s; }
.fade-enter, .fade-leave-to { opacity: 0; }

.navbar-end{
	.router-link-exact-active{
		background-color: $primary-light-grey
	}
}

span.gestao{color:#BDBDBD}
span.sp {color: #EB5757}
span.urbana{color: black}

</style>

