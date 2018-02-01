<template>
	<header class="header">
		<div class="row">
			<div class="col s12">
				<h1 class="logo-header">
					<a href="#">gestão<span class="urbana">urbana</span><span class="sp">SP</span></a>
					<span class="title"> | {{ title }}</span>
				</h1>
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

<style lang="scss" scoped>
@import "../../assets/variables.scss";

	header{
		div.row{
			margin-bottom: 0;
			a,
			h1.logo-header{
				font-size: 2rem;
				color:#BDBDBD;
			}
			span.sp {color: #EB5757}
			span.urbana{color: #000000}
			span.title{
				font-weight:300;
				color:#BDBDBD
			}
		}
	}
</style>