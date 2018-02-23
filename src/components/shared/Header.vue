<template>
	<header class="header">
		<div class="container">
			<div class="row">
					<nav>
						<div class="nav-wrapper">

						<a class="title" href="http://gestaourbana.prefeitura.sp.gov.br/">gestão<span class="urbana">urbana</span><span class="sp">SP</span></a><router-link to='/consulta'> | {{ projectTitle }}</router-link>
							<ul id="nav-mobile" class="right hide-on-med-and-down">
								<li v-for="navitem in navitems">
									<router-link :to='navitem.path' >{{navitem.name}}</router-link>
								</li>
							</ul>
						</div>
					</nav>

			</div>
			<div class="divider"></div>
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
		app.firstview = true
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

header{
	span.sp {color: #EB5757}
	span.urbana{color: black}
	div.row{
		margin-bottom: 0;
		nav{
			box-shadow: none;
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
		}
	}
}
</style>