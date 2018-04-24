<template>
	<div class="Header">
		<!-- <div class="container"> -->
			<nav class="navbar">
				<div class="navbar-menu is-active">
					<div class="navbar-start">
						<a class="navbar-item" href="http://gestaourbana.prefeitura.sp.gov.br/"><span class="gestao">gestão</span><span class="urbana">urbana</span><span class="sp">SP</span></a>
						<router-link class="navbar-item" id="tohome" to='/'>{{ projectTitle }}</router-link>
					</div>
					<div class="navbar-end">
						<template v-for="navitem in navitems">
							<router-link class="navbar-item" :to='navitem.path' > {{navitem.name}} </router-link>
						</template>
						<div class="navbar-item">
				        <b-dropdown position="is-bottom-left">
				            <button class="button is-primary" slot="trigger">
				                <span>Arquivos</span>
				            </button>
							<p class="dropdown-subtitle">Masterplan</p>
				            <b-dropdown-item has-link>	<a href="./static/img/mapas/Masterplan_Capelinha_full.jpg" download>Capelinha</a></b-dropdown-item>
				            <b-dropdown-item has-link>	<a href="./static/img/mapas/Masterplan_Campo-Limpo_full.jpg" download>Capelinha</a></b-dropdown-item>
				            <b-dropdown-item has-link>	<a href="./static/img/mapas/Masterplan_Princesa-isabel_full.jpg" download>Princesa Isabel</a></b-dropdown-item>
				        </b-dropdown>
						</div>
					</div>
				</div>
			</nav>
		<!-- </div> -->
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

.dropdown-subtitle{
	padding-left: 1em
}

</style>

