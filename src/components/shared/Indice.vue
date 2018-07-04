<template>
	<div class="Indice">
		<ul>
			<li><a href="#apresentacao" @click="ativa(0)">
				Apresentação
			</a></li>
			<li><a href="#motivacao">
				Motivação
			</a></li>
			<li><a href="#diagnostico">
				Diagnóstico</a>
				<ul class="sub">
					<li>
						<a href="#perimetro">Perímetro</a>
					</li>
					<li>
						<a href="#diagnostico2">Diagnóstico</a>
					</li>
				</ul>
			</li>
			<li><a href="#interesse_pub">
				Interesse público</a>
				<ul class="sub">
					<li>
						<a href="#principios">Princípios</a>
					</li>
					<li>
						<a href="#objetivos">Objetivos</a>
					</li>
					<li>
						<a href="#diretrizes">Diretrizes</a>
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
	data () {
		return {
			atv: false,
		}
	},
	methods: {
		isAtivo(cap,capPos) {
			if (window.scrollY >= document.getElementById(cap).offsetTop && window.scrollY < document.getElementById(capPos).offsetTop) {
				return ativo;
			} else {
				return '';
			}
		},
		ativa(n) {
			console.log(document.getElementsByTagName("li")[n]);
			document.getElementsByTagName("li")[n].classList.add("ativo")
		},
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