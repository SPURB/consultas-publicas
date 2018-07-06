<template>
	<div class="Indice">
		<ul ref="nav_indice">
			<li><a href="#apresentacao" @click="ativaEvento">
				Apresentação
			</a></li>
			<li><a href="#motivacao" @click="ativaEvento">
				Motivação
			</a></li>
			<li><a href="#diagnostico" @click="ativaEvento">
				Diagnóstico
			</a></li>
			<li class="sub"><a href="#perimetro" @click="ativaEvento">
				Perímetro
			</a></li>
			<li class="sub"><a href="#diagnostico2" @click="ativaEvento">
				Diagnóstico
			</a></li>
			<li><a href="#interesse_pub" @click="ativaEvento">
				Interesse público
			</a></li>
			<li class="sub"><a href="#principios" @click="ativaEvento">
				Princípios
			</a></li>
			<li class="sub"><a href="#objetivos" @click="ativaEvento">
				Objetivos
			</a></li>
			<li class="sub"><a href="#diretrizes" @click="ativaEvento">
				Diretrizes
			</a></li>
			<li><a href="#viabilidade" @click="ativaEvento">
				Viabilidade
			</a></li>
			<li><a href="#adensamento" @click="ativaEvento">
				Adensamento
			</a></li>
			<li><a href="#impactos" @click="ativaEvento">
				Impactos
			</a></li>
			<li><a href="#gestao" @click="ativaEvento">
				Gestão
			</a></li>
			<li><a href="#ficha" @click="ativaEvento">
				Ficha técnica
			</a></li>
		</ul>
	</div>
</template>
<script>

export default {
	name: 'Indice',
	methods: {
		ativaEvento(event){
			for (var i = 0; i <= this.$refs.nav_indice.children.length; i++) {
				// console.log(this.$refs.nav_indice.children[i].childNodes[0]) // TODO: iterar elementos da lista e remover class "ativo"
				this.$refs.nav_indice.children[i].childNodes[0].style.borderLeftColor = 'transparent';
				event.target.style.borderLeftColor = '#4F4F4F';
			};
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
	flex-direction: row;
	justify-content: space-around;
	top: 0;
	ul {
		padding-left: 0;
		width: 140px;
		align-self: center;
		li {
			margin: .5rem 0;
			a {
				padding-left: .5rem;
				display: block;
				font-size: small;
				color: $primary-grey;
				transition: all .25s;
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
		li.sub a {
			padding-left: 1rem;
		}
	}
}
</style>