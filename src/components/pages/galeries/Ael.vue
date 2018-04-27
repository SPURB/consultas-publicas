<template>
	<div class="Ael">

	<div class="container">
	<div class="content">
		

	<div class="gallery">
			<template v-for="image in images">	
				<figure class="item" v-show="image.state">
					<h3>
						<img v-if="image.icon" class="image is-64x64" :src="image.icon">
						<span>{{ image.title }}</span>
					</h3>
					<img v-lazy="image.url" width="992" height="557">
					<p class="legenda"> {{ image.legenda }} </p>
				</figure>
			</template>
		</div>
<!-- 		<nav class="pagination" role="navigation" aria-label="pagination">
			<a class="pagination-previous" disabled>Anterior</a>
			<ul class="pagination-list">
				<li>
					<a class="pagination-link is-current" aria-label="Page 1" aria-current="page">1</a>
				</li>
				<li>
					<a class="pagination-link" aria-label="Goto page 2">2</a>
				</li>
				<li>
					<a class="pagination-link" aria-label="Goto page 3">3</a>
				</li>
			</ul>
			<a class="pagination-next">Próximo</a>
		</nav>
 -->

		<nav class="pagination is-small" role="navigation" aria-label="pagination">
			<ul class="pagination-list">
				<li v-for="(image, index) in images"> 
					<a class="pagination-link">{{index}}</a> 
				</li>
			</ul>
			<a class="pagination-previous" disabled>Anterior</a>
			<a class="pagination-next">Próximo</a>
		</nav>





		</div>	<!-- container -->
		</div>	<!-- content -->


	</div> <!-- Ael  -->
</template>

<script>
import VueLazyload from 'vue-lazyload';
 
export default {
	name: 'Ael',
	data() {
		return {
			images:[
				{
					url: './static/img/ael/Diagramas_Terminais_AEL_0001_Folha_3.jpg', 
					state: true, 
					order: 0,
					title: 'Área de Estruturação Local - AEL: Diagrama explicativo',
					icon: './static/img/ael/icone-1.png',
					legenda: 'O PDE introduz como um de seus objetivos básicos acomodar o crescimento urbano nas áreas subutilizadas dotadas de infraestrutura e no entorno da rede de transporte coletivo de alta e média capacidade.'
				},
				{
					url:'./static/img/ael/Diagramas_Terminais_AEL_0002_Folha_4.jpg', 
					state: true, 
					order: 1,
					icon: './static/img/ael/icone-2.png',
					title: 'Áreas de Estruturação Local - Centralidades',
					legenda: 'Estímulo à criação de novas centralidades e a dinamização das existentes através da exploração de terminais como elementos catalisadores do desenvolvimento urbano.'

				},
				{
					url:'./static/img/ael/Diagramas_Terminais_AEL_0003_Folha_5.jpg', 
					state: true, 
					order: 2,
					icon: './static/img/ael/icone-3.png',
					title: 'Definição do Perímetro da área de estudo',
					legenda: 'Traça-se um raio inicial de 600 m para o estudo da área de abrangência.'

				},
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0004_Folha_6.jpg', 
					state: true, 
					order: 3,
					icon: './static/img/ael/icone-4.png',
					title: 'Definição do Perímetro da área de estudo',
					legenda: 'Delimitam-se as quadras atingidas pelo raio de abrangência.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0005_Capa_Folha_7-txt.jpg', 
					state: true, 
					order: 4,
					icon: false,
					title: 'Rede de equipamento públicos',
					legenda: ' Reconhecimento da concentração de equipamentos públicos localizados na centralidade.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0006_Folha_8.jpg', 
					state: true, 
					order: 5,
					icon: './static/img/ael/icone-6.png',
					title: 'Usos comerciais',
					legenda: 'Reconhecimento da concentração comercial localizada na centralidade.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0007_Folha_9.jpg', 
					state: true, 
					order: 6,
					icon: './static/img/ael/icone-7.png',
					title: 'Áreas Verdes',
					legenda: 'Reconhecimento do sistema de áreas verdes.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0008_Folha_10.jpg', 
					state: true, 
					order: 7,
					icon: './static/img/ael/icone-8.png',
					title: 'Hidrografia',
					legenda: 'Reconhecimento dos rios e córregos.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0009_Folha_11.jpg', 
					state: true, 
					order: 8,
					icon: './static/img/ael/icone-8.png',
					title: 'Hidrografia',
					legenda: 'Reconhecimento dos rios e córregos.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0010_Folha_12.jpg', 
					state: true, 
					order: 9,
					icon: false,
					title: 'Diagnóstico',
					legenda: 'Diagnóstico que apresenta a somatória dos sistemas que compõem a centralidade: equipamentos, usos comerciais e sistemas ambientais.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0011_Capa_Folha_13-txt.jpg', 
					state: true, 
					order: 10,
					icon: './static/img/ael/icone-9.png',
					title: 'Conexões: Eixos de Transporte Público',
					legenda: 'Identificação das rotas de transporte pública irradiadas do Terminal de Ônibus. Este mapeamento permite a leitura das principais rotas e fluxos.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0012_Folha_14.jpg', 
					state: true, 
					order: 11,
					icon: './static/img/ael/icone-10.png',
					title: 'Conexões: Eixos de Transporte Público',
					legenda: 'Identificação das rotas de transporte pública irradiadas do Terminal de Ônibus. Este mapeamento permite a leitura das principais rotas e fluxos.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0013_Folha_15.jpg', 
					state: true, 
					order: 12,
					icon: './static/img/ael/icone-10.png',
					title: 'Conexões: Entre equipamentos Públicos',
					legenda: 'Identificação das principais rotas pedonais que interligam os equipamentos públicos.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0014_Folha_16.jpg', 
					state: true, 
					order: 13,
					icon: './static/img/ael/icone-11.png',
					title: 'Conexões: Entre Parques e Praças Públicas',
					legenda: 'Identificação das principais rotas pedonais que interligam os sistemas ambientais.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0015_Folha_17.jpg', 
					state: true, 
					order: 14,
					icon: './static/img/ael/icone-12.png',
					title: 'Conexões: Principais percursos a pé',
					legenda: 'A somatória dos mapeamentos dos principais percursos pedonais permite a indicação das ruas a serem prioritariamente requalificadas.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0017_Folha_19.jpg', 
					state: true, 
					order: 15,
					icon: './static/img/ael/icone-13.png',
					title: 'Requalificação dos principais Eixos',
					legenda: 'O projeto propõe a requalificação dos principais eixos pedonais, de modo a garantir maior segurança, qualidade paisagística e acessibilidade.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0018_Folha_20.jpg', 
					state: true, 
					order: 16,
					icon: './static/img/ael/icone-14.png',
					title: 'Requalificação e ampliação de áreas verdes',
					legenda: 'Requalificação e ampliação das áreas verdes, priorizando as conexões entre as Praças, Parques e Áreas de Lazer, estruturando um sistema de corredores verdes.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0019_Folha_21.jpg', 
					state: true, 
					order: 17,
					icon: './static/img/ael/icone-15.png',
					title: 'Requalificação da ocupação das Orlas Fluviais',
					legenda: 'Requalificação ambiental das orlas fluviais, que objetiva favorecer a retenção pluvial, minimizar o despejo de esgoto e proteger a fauna e flora nativa.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0020_Folha_22.jpg', 
					state: true, 
					order: 18,
					icon: './static/img/ael/icone-16.png',
					title: 'Qualificação da oferta habitacional',
					legenda: 'Qualificação da oferta habitacional, seja pela regularização urbanística e fundiária de assentamentos precários ou pela provisão de Habitações de Interesse Social em suas diversas modalidades.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0021_Folha_23.jpg', 
					state: true, 
					order: 19,
					icon: './static/img/ael/icone-17.png',
					title: 'Ampliar a oferta de Equipamentos de Saúde',
					legenda: 'Ampliar a oferta de equipamentos de saúde, articulando-os à rede existente.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0022_Folha_24.jpg', 
					state: true, 
					order: 20,
					icon: './static/img/ael/icone-18.png',
					title: 'Ampliar a oferta de Equipamentos de Educação',
					legenda: 'Ampliar a oferta de equipamentos de educação, articulando-os à rede existente.'
				 },
				 {
					url:'./static/img/ael/Diagramas_Terminais_AEL_0023_folha_25.jpg', 
					state: true, 
					order: 21,
					icon: false,
					title: 'Consolidação da Área de Estruturação Local',
					legenda: 'Consolidação da Área de Estruturação Local através da integração de políticas públicas setoriais, associada à Rede de Estruturação da Transformação Urbana.'
				},
			]
		}
	},
}
</script>

<style lang="scss" scoped>
@import "../../../assets/variables.scss";

.Ael{
	.gallery{
		figure.item{
			background-color: $primary-dark-grey;
			margin: auto 0;
			h3, p{
				text-align: left;
				margin-bottom: 0em;
				color:white
			}
			h3{
				display: flex;
				align-items:center;
				min-height:80px;
				img.is-64x64{ margin: .3em }
				span {padding-left:0;} 
			}
			p {
				display: block;
				min-height: 90px;
			}
			p.legenda{
				padding: 1em;
			}
		}
	}
	nav	{
		ul.pagination-list{
			list-style: none;
			li{
				margin-left: 0.5em
			}
		}	
	}
}
</style>