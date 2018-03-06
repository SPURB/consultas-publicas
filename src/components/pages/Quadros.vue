<template>
<div class="quadros">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">Quadros</h2>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<ul>
					<li><a href="./static/pdf/#" download>Quadro 1A ‐ Eixos estratégicos e ambientais</a></li>
					<li><a href="./static/pdf/#" download>Quadro 1B ‐ Melhoramentos viários</a></li>
					<li><a href="./static/pdf/#" download>Quadro 1C ‐ Áreas públicas destinadas para áreas verdes, parques e equipamentos públicos</a></li>
					<li><a href="./static/pdf/#" download>Quadro 1D ‐ Favelas existentes no perímetro do PIU ACJ</a></li>
					<li><a href="./static/pdf/#" download>Quadro 2 ‐ Parâmetros de ocupação exceto cota ambiental</a></li>
					<li><a href="./static/pdf/#" download>Quadro 2A ‐ Fatores de planejamento</a></li>
					<li><a href="./static/pdf/#" download>Quadro 3 ‐ Programa de intervenções</a></li>
				</ul>

				<a class="waves-effect waves-light btn-large" href=".	/static/kml/PL-ARCO-JURUBATUBA_QUADROS.zip" download><i class="material-icons right">insert_chart</i>Baixe aqui todos os quadros</a>

				<div id="bottom-comments">
					<h5>Comente quadros</h5>
					<Comments :commentid="commentid"></Comments>
				</div>
			</div>
		</div>
	</div>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';

export default {
	name: 'quadros',
	data () {
		return {
			commentid: {
				id: 2000,
				context: "quadros"
			},
		}
	},
	components:{ Comments }
}
</script>

<style lang="scss" scoped>
@import "../../assets/main.scss";


.chapter-content{
	line-height: 2;
	li{
		font-size: 1.2em
	}
	h5, h6 {
		font-weight: 700;
	}
	a.btn-large{ margin-top: 4em }

	#bottom-comments{
		border-top: solid 1px $primary-grey;
		margin-top: 6em;
		padding: 0.65em 0;
	}
}


</style>