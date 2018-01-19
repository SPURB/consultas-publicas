<template>
	<header class="header">
		<div class="row">
			<div class="col s12">
			  <h1 class="logo-header">gestão<span>urbana</span><span>SP</span><span> | {{ title }}</span> </h1>
			</div>
		</div>
		<div class="divider"></div>
	</header>
</template>

<script>
export default {
  name: 'Header',
  data () {
	return {
	  title: 'Consulta Pública PIU Terminais'
	}
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped>
@import "../../assets/variables.scss";

	header{
		div.row{
			margin-bottom: 0;
			h1.logo-header{
				font-size: 36px;
				color:#BDBDBD;
				span:nth-of-type(1) {color:#000000};
				span:nth-of-type(2n){color:#EB5757};
				span:nth-of-type(3n){font-weight:100}
			}
		}
	}
</style>