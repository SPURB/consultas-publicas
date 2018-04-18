<template>
<div class="Footer">
	<nav class="navbar is-light is-fixed-bottom">
	  <div class="navbar-menu">
		<p class="navbar-item is-text">Caso surjam dúvidas ou problemas técnicos, envie um e-mail para<a v-bind:href=" `mailto:${ projectTitle }` "><span>:</span> imprensasmul@prefeitura.sp.gov.br</a></p>
	    <div class="navbar-end">
	      <div class="navbar-item">
	            <a @click="scrollToBootom"class="button is-primary is-active">
	              <span>Comente esta consulta</span>
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
	computed:{ 
		projectTitle(){ 
			let projectTitle = this.$store.state.projecttitle; 
			return 'imprensasmul@prefeitura.sp.gov.br?subject='+this.$store.state.projecttitle;
		} 
	},
	methods:{
		scrollToBootom(){window.scrollTo(0,document.body.scrollHeight);}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.Footer{
		padding: .5em 0;
		p {
			font-size: .85em
		}
		.is-text{
			span{
				color:grey
			}
		}
}
</style>


