<template>
<div class="Footer">
	<div class="divider"></div>
	<div class="container">
		<p>Caso surjam dúvidas ou problemas técnicos, envie um e-mail para <a v-bind:href=" `mailto:${ projectTitle }` ">imprensasmul@prefeitura.sp.gov.br</a></p>
	</div>
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
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.Mainfooter{
	.container{
		padding: .5em 0;
		p {
			font-size: .85em
		}
	}
}
</style>