<template>
	<header class="header">
		<div class="navbar-fixed">
			<nav>
				<div class="nav-wrapper">
					<a class="title" href="http://gestaourbana.prefeitura.sp.gov.br/">gestão<span class="urbana">urbana</span><span class="sp">SP</span></a><router-link to='/consulta'> | {{ projectTitle }}</router-link>
					<a id="menu" class="right waves-effect" href="#">Menu</a>
					<ul id="routes-list" class="right">
						<li v-for="navitem in navitems">
							<router-link :to='navitem.path' >{{navitem.name}}</router-link>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
</template>

<script>
export default {
	name: 'Header',
	data () {
		return {
			navitems: [],
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
		app.firstview = true;

		// change class at scroll
		window.addEventListener('scroll', this.foo);
	},
	destroyed(){
		window.removeEventListener('scroll', this.foo);
	},
	methods:{
		foo(){

		}
	},
	computed:{
		projectTitle(){
			return this.$store.state.projecttitle ;
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/main.scss";

$small-screen-up: 601px !default;
$medium-screen-up: 993px !default;
$large-screen-up: 1201px !default;
$small-screen: 600px !default;
$medium-screen: 992px !default;
$large-screen: 1200px !default;

$medium-and-up: "only screen and (min-width : #{$small-screen-up})" !default;
$large-and-up: "only screen and (min-width : #{$medium-screen-up})" !default;
$extra-large-and-up: "only screen and (min-width : #{$large-screen-up})" !default;
$small-and-down: "only screen and (max-width : #{$small-screen})" !default;
$medium-and-down: "only screen and (max-width : #{$medium-screen})" !default;


span.sp {color: #EB5757}
span.urbana{color: black}
nav{
	min-width: 100%;
	padding: 0 1em;
	color: $primary-dark-grey;
	background-color: white;
	a{
		font-size: 1.5rem;
		color:#BDBDBD;
	}
	li {
		a {
			font-size: 1em;
			color:$primary-dark-grey;
		};
		a.router-link-active{background-color: rgba(0,0,0,0.05);}
		a.router-link-active:hover{background-color: rgba(0,0,0,0.05); };
	}
	#menu{
		display: none;
	}

	@media #{$medium-and-down} {
		a, #routes-list li a {font-size: 1rem;}
	}

	@media #{$small-and-down} {
		#routes-list {display: none }
		#menu{ display: block };
	}
	@media only screen and (max-width: 385px){
	 a.router-link-active{ display: none}
	}

}

</style>

