<template>
	<header class="header">
		<div class="container">
			<div class="row">
					<nav>
						<div class="nav-wrapper">
						<a class="title" href="http://gestaourbana.prefeitura.sp.gov.br/">gestão<span class="urbana">urbana</span><span class="sp">SP</span></a>
							<ul id="nav-mobile" class="right hide-on-med-and-down">
								<li class="active"><a href="#/1">Capítulo 1</a></li>
								<li><a href="#/2">Capítulo 2</a></li>
								<li><a href="#/3">Capítulo 3</a></li>
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
		title: 'Título de consulta'
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
				font-size: 2rem;
				color:#BDBDBD;
			}
			li {
				a {
					font-size: 1em;
					color:$primary-dark-grey;
				};
				a:hover{ 
					background-color: rgba(0,0,0,0.05); 
				};
			}
			li.active{ background-color: rgba(0,0,0,0.05); }
		}
	}
}
</style>