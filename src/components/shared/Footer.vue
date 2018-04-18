<template>
<div class="Footer">
	<nav id="goTop" class="navbar is-fixed-bottom is-transparent">
		<div class="nabar-item">
			<button 
				class="button is-fixed-bottom"
				v-scroll-to="{
					el: 'body',
 				}"
 				>TOPO</button>
		</div>
	</nav>

	<nav class="navbar is-light is-fixed-bottom is-desktop">
	  <div class="navbar-menu">
	  	<div class="navbar-start">
			<p class="navbar-item is-text">Caso surjam dúvidas ou problemas técnicos, envie um e-mail para<a v-bind:href=" `mailto:${ projectTitle }` "><span>:</span> imprensasmul@prefeitura.sp.gov.br</a></p>
		</div>

		<div class="navbar-end">
			<div class="navbar-item has-dropdown has-dropdown-up" v-bind:class="{ 'is-active': isActive }">
				<a class="navbar-link" @click="activate">
					Seções
				</a>

				<div class="navbar-dropdown">
					<div v-for="navitem in navitems">
						<router-link 
							:to='navitem.path' 
							class="navbar-item" 
							v-scroll-to="{
								el: 'body',
								duration: 1,
 						}">{{navitem.name}}</router-link>
					</div>
				</div>
			</div>
			<div class="navbar-item">
				<!-- <a @click="scrollToBootom" class="button is-primary is-active"> -->
				<a 
					v-scroll-to="'.comments'" 
					class="button is-primary is-active">
					<span>Comente {{ currentRoute }}</span>
				</a>
			</div>
		</div>
	  </div>
	</nav>
</div>
</template>

<script type="text/javascript">
export default {	
	name:'Footer',
	data () {
		return {
			isActive: false,
			navitems:[]
		}
	},
	computed:{ 
		projectTitle(){ 
			let projectTitle = this.$store.state.projecttitle; 
			return 'imprensasmul@prefeitura.sp.gov.br?subject='+this.$store.state.projecttitle;
		},
		currentRoute(){ return this.$route.name }
	},
	methods:{
		scrollToBootom(){window.scrollTo(0,document.body.scrollHeight)},
		activate(){ this.isActive = !this.isActive} },
	created(){
			const app = this
			const routes = app.$router.options.routes
			routes.filter(function(index) {
				if('name' in index){
					app.navitems.push(index)
				}
			})
		},
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.Footer{
	nav#goTop{
		background-color: unset;
		display:none
	}

	padding: .5em 0;
	p {
		font-size: .85em
	}
	.is-text{
		span{
			color:grey
		}
	}
	.router-link-exact-active{
		background-color: $primary-light-grey
	}
}
</style>


