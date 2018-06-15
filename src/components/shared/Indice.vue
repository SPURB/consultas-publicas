<template>
	<div class="Indice">
		<ul>
			<li><a href="#apresentacao">
				Apresentação
			</a></li>
			<li><a href="#contextualizacao">
				Contextualização
			</a></li>
			<li><a href="#diagnostico">
				Diagnóstico
			</a></li>
			<li><a href="#finalidade">
				Finalidade
			</a></li>
			<li><a href="#diretrizes">
				Diretrizes
			</a></li>
			<li><a href="#viabilidade">
				Viabilidade
			</a></li>
			<li><a href="#adensamento">
				Adensamento
			</a></li>
			<li><a href="#impactos">
				Impactos
			</a></li>
			<li><a href="#gestao">
				Gestão
			</a></li>
		</ul>
	</div>
</template>
<script>
	export default {
		name: 'Indice',
	};
</script>
<style lang="scss" scoped>
@import "../../assets/variables.scss";
@import "../../assets/main.scss";

.Indice {
	position: fixed;
	display: flex;
	height: 100vh;
	flex-direction: column;
	justify-content: space-around;
	margin-left: 0.75rem;
	ul {
		width: 140px;
		li {
			margin: .5rem 0;
			a {
				display: block;
				border-radius: 4px;
				font-size: small;
				color: $primary-grey;
				transition: all .05s;
			};
			a:hover {
				color: rgba(0,0,0,.2);
			};
			a:active {
				font-weight: bold;
			}
		};
	};
}
</style>