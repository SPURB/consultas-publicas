<template>
<div class="mapas">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">Mapas</h2>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<ul>
					<li><a href="./static/pdf/1_PLANO_URBANISTICO.pdf" download>Mapa 1 - Plano Urbanístico</a></li>
					<li><a href="./static/pdf/2_PERIMETROS_DE_ADESAO_E_PERIMETRO_EXPANDIDO.pdf" download>Mapa 2 - Perímetro de adesão perímetro expandido</a></li>
					<li><a href="./static/pdf/3_PARAMETROS_URBANISTICOS.pdf" download>Mapa 3 - Parâmetros urbanísticos</a></li>
					<li><a href="./static/pdf/4_COMPARTIMENTOS AMBIENTAIS E SISTEMA DE DRENAGEM.pdf" download>Mapa 4 - Compartimento de várzea</a></li>
					<li><a href="./static/pdf/5_FAVELAS_ZEIS.pdf" download>Mapa 5 - Favelas e ZEIS</a></li>
					<li><a href="./static/pdf/6_AREAS_VERDES.pdf" download>Mapa 6 - Áreas verdes</a></li>
					<li><a href="./static/pdf/7_PLANO_MELHORAMENTOS_VIARIOS.pdf" download>Mapa 7 - Melhoramentos viários</a></li>
					<li><a href="./static/pdf/8_PROGRAMA_DE_INTERVENCOES.pdf" download>Mapa 8 - Programa de intervenções</a></li>
					<li><a href="./static/pdf/9_PROJETO_ESTRATEGICO_INTERLAGOS.pdf" download>Mapa 9 - Projeto Estratégico Interlagos</a></li>
				</ul>

				<a class="waves-effect waves-light btn-large" href=".	/static/kml/PIU_ACJ.kml" download><i class="material-icons right">map</i>KML do Projeto de Intervenção ACJ</a>

				<div id="bottom-comments">
					<h5>Comente mapas</h5>
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
	name: 'mapas',
	data () {
		return {
			commentid: {
				id: 1000,
				context: "mapas"
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