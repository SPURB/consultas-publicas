<template>
	<div class="Indice">
		<ul>
			<li><a href="#apresentacao">
				Apresentação
			</a></li>
			<li><a href="#motivacao">
				Motivação
			</a></li>
			<li><a href="#diagnostico">
				Diagnóstico</a>
				<ul class="sub">
					<li>
						<a>Perímetro</a>
					</li>
					<li>
						<a>Diagnóstico</a>
					</li>
				</ul>
			</li>
			<li><a href="#finalidade">
				Interesse público</a>
				<ul class="sub">
					<li>
						<a>Princípios</a>
					</li>
					<li>
						<a>Objetivos</a>
					</li>
					<li>
						<a>Diretrizes</a>
					</li>
				</ul>
			</li>
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
	methods: {
		isAtivo(cap,capPos) {
			if (window.scrollY >= document.getElementById(cap).offsetTop && window.scrollY < document.getElementById(capPos).offsetTop) {
				return ativo;
			} else {
				return '';
			}
		}
	},
};

</script>
<style lang="scss" scoped>
@import "../../assets/variables.scss";
@import "../../assets/main.scss";

.Indice {
	z-index: 100;
	position: fixed;
	display: flex;
	height: 100vh;
	flex-direction: column;
	justify-content: space-around;
	ul {
		width: 140px;
		li {
			margin: .5rem 0;
			ul.sub li a {
				font-size: small;
				padding-left: 1rem;
			};
			a {
				padding-left: .5rem;
				display: block;
				font-size: small;
				color: $primary-grey;
				transition: all .05s;
				border-left-width: .5rem;
				border-left-style: solid;
				border-color: transparent;
			};
			a:hover {
				color: rgba(0,0,0,.2);
			};
			a:active {
				font-weight: bold;
			}
		};
	};
	.ativo {
		border-left-color: $primary-grey;
	}
}
</style>