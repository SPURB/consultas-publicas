<template>
	<div class="Ael">
	<div class="gallery items-3">
		<div id="item-1" class="control-operator"></div>
		<div id="item-2" class="control-operator"></div>
		<div id="item-3" class="control-operator"></div>

		<figure class="item">
			<h3><img class="image is-64x64" src="http://placehold.it/64x64"><span>1</span></h3>
			<img v-lazy="jpg0" width="992" height="557">
			<p class="legenda">O PDE introduz como um de seus objetivos básicos acomodar o crescimento urbano nas áreas subutilizadas dotadas de infraestrutura e no entorno da rede de transporte coletivo de alta e média capacidade.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="http://placehold.it/64x64">2</h3>
			<img v-lazy="jpg1" width="992" height="557">
			<p class="legenda">Legenda2</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="http://placehold.it/64x64">3</h3>
			<img v-lazy="jpg2" width="992" height="557">
			<p class="legenda">Legenda3</p>
		</figure>

		<div class="controls">
			<a href="#item-1" class="control-button">•</a>
			<a href="#item-2" class="control-button">•</a>
			<a href="#item-3" class="control-button">•</a>
		</div>
	</div>


	</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
 
export default {
	name: 'Ael',
	data() {
	return {
			jpg0: '/static/img/ael/Diagramas_Terminais_AEL_0003_Folha_5.jpg',
			jpg1: '/static/img/ael/Diagramas_Terminais_AEL_0001_Folha_3.jpg',
			jpg2: '/static/img/ael/Diagramas_Terminais_AEL_0004_Folha_6.jpg',
		}
	},
}
</script>

<style lang="scss" scoped>
@import "../../../assets/vendor/gallery.theme.css";
@import "../../../assets/vendor/gallery.min.css";
@import "../../../assets/variables.scss";

.Ael{
	.gallery{
		figure.item{
			background-color: $primary-dark-grey;
			margin: auto 0;
			h3, p{
				text-align: left;
				margin-bottom: .15em;
				color:white
			}
			h3{
				display: flex;
				align-items:center;
				img.is-64x64{ margin: .15em }
				span {padding-left:.5em;} 
			}
			p.legenda{
				padding: 1.5em .5em .5em
			}
		}
		.controls{
			bottom: 1.85em;
		}
		.control-operator:target ~ .controls .control-button{
			// color:red
		}
	}
}
</style>