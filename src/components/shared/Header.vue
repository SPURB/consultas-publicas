<template>
	<header class="header">
		<div class="navbar-fixed">
			<transition name="fade">
				<nav v-show="toggleNav">
					<div class="nav-wrapper">
						<div class="container">
						<a class="title" href="http://gestaourbana.prefeitura.sp.gov.br/">gestão<span class="urbana">urbana</span><span class="sp">SP</span></a><router-link id="tohome" to='/consulta'> | {{ projectTitle }}</router-link>
						<a id="menu-icon" class="sidenav-trigger right" @click="showNavItems = !showNavItems"><i class="material-icons">menu</i></a>
						<ul id="routes-list"  class ="right" v-bind:class="{ menuDisplay: showNavItems }">
							<li v-for="navitem in navitems">
								<router-link :to='navitem.path'>{{navitem.name}}</router-link>
							</li>
							<li><a href="./static/pdf/NOTA_TECNICA_PLANO_URBANISTICO.pdf" class="router-link-exact router-link" download><i class="material-icons right">picture_as_pdf</i>Nota Técnica</a></li>
						</ul>
						</div>
					</div>
				</nav>
			</transition>
		</div>
	</header>
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
			showNavItems: false
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
	computed:{
		projectTitle(){ return this.$store.state.projecttitle; }
	},
	watch:{
		showNavItems(){
			// console.log('clicked')
			this.showNavItems ? document.getElementById("menu-icon").firstChild.textContent = "close" : document.getElementById("menu-icon").firstChild.textContent = "menu"
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";


span.sp {color: #EB5757}
span.urbana{color: black}

.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
  opacity: 0;
}

nav {
	min-width: 100%;
	padding: 0;
	color: $primary-dark-grey;
	background-color: white;
	.nav-wrapper{
		border-bottom-width: 1px;
		.title {margin: 0}
		a {
			font-size: 1.25rem;
			color:#BDBDBD;
		}
		li {
			padding: 0;
			background-color:white;
			border-bottom: solid 1px $primary-dark-grey;
			a {
				font-size: 1em;
				color:$primary-dark-grey;
			};
			a.router-link-active{
				background-color: rgba(0,0,0,0.05);
			}
			a.router-link-active:hover{
				background-color: rgba(0,0,0,0.05); 
			};
		}
		li:last-child {
			a.router-link-exact.router-link{
				padding-right: 0;
				i{
					margin-left: .5rem
				}
			}
		}

		#menu-icon{ display: none; }
		@media #{$medium-and-down} {
			a, #routes-list li a { font-size: 1rem };
			li:last-child {
				a.router-link-exact.router-link{
					i.material-icons.right{
						margin-right: 1rem
					}
				}
			}
		}
		@media only screen and (max-width : 715px){ #routes-list li a { padding: 0 .38rem } }

		@media #{$small-and-down} {
			#routes-list { 
				width: 100%;
				cursor: none;
				display: none;
				box-shadow: 1px 2px 4px 4px rgba(150,150,150, .25);
				li{
					width: inherit;
					a.router-link-active {
						color: $main-color;
						border-left: solid .5em $primary-dark-grey;
						transition: boder-color 0.1s ease;
					}
					a { 
						border-left: solid 0 ;
						transition: border-width 0.1s ease-out;
					};
					a:hover {
						color: $main-color;
						border-left: solid .5em $primary-grey;
						transition: border-width 0.1s ease-in;
					};
				};
				li:first-child { border-top: 1px solid $primary-grey}

			};
			#routes-list.menuDisplay{  display: block };
			#menu-icon { display: block };
			#menu-icon:hover { cursor: pointer };
		}

		@media #{$extrasmall-and-down} {
			a#tohome{ display: none}
		}
	}
}

</style>

