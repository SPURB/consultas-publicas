<template>
	<div class="Ael">
	<div class="gallery items-4">
		<div id="item-1" class="control-operator"></div>
		<div id="item-2" class="control-operator"></div>
		<div id="item-3" class="control-operator"></div>
		<div id="item-4" class="control-operator"></div>
		<div id="item-5" class="control-operator"></div>
		<div id="item-6" class="control-operator"></div>
		<div id="item-7" class="control-operator"></div>
		<div id="item-8" class="control-operator"></div>
		<div id="item-9" class="control-operator"></div>
		<div id="item-10" class="control-operator"></div>
		<div id="item-11" class="control-operator"></div>
		<div id="item-12" class="control-operator"></div>
		<div id="item-13" class="control-operator"></div>
		<div id="item-14" class="control-operator"></div>
		<div id="item-15" class="control-operator"></div>
		<div id="item-16" class="control-operator"></div>
		<div id="item-17" class="control-operator"></div>
		<div id="item-18" class="control-operator"></div>
		<div id="item-19" class="control-operator"></div>
		<div id="item-20" class="control-operator"></div>
		<div id="item-21" class="control-operator"></div>
		<div id="item-22" class="control-operator"></div>
		<div id="item-23" class="control-operator"></div>
		<div id="item-24" class="control-operator"></div>

		<figure class="item">
			<h3></h3>
			<img v-lazy="jpg0" width="992" height="557">
			<p class="legenda"></p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-1.png"><span>Rede de Estruturação da Transformação Urbana - Sistema estrutural de transporte coletivo</span></h3>
			<img v-lazy="jpg1" width="992" height="557">
			<p class="legenda">O PDE introduz como um de seus objetivos básicos acomodar o crescimento urbano nas áreas subutilizadas dotadas de infraestrutura e no entorno da rede de transporte coletivo de alta e média capacidade.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-2.png"><span>Polos de Estruturação Local - Centralidades</span></h3>
			<img v-lazy="jpg2" width="992" height="557">
			<p class="legenda">Estímulo à criação de novas centralidades e a dinamização das existentes através da exploração de terminais como elementos catalisadores do desenvolvimento urbano.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-3.png"><span>Definição do Perímetro da área de estudo</span></h3>
			<img v-lazy="jpg3" width="992" height="557">
			<p class="legenda">Traça-se um raio inicial para o estudo da área de abrangência.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-4.png"><span>Definição do Perímetro da área de estudo</span></h3>
			<img v-lazy="jpg4" width="992" height="557">
			<p class="legenda">Delimita-se as quadras atingidas pelo raio de abrangência.</p>
		</figure>

		<figure class="item">
			<h3></h3>
			<img v-lazy="jpg5" width="992" height="557">
			<p class="legenda"></p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-5.png"><span>Rede de equipamento públicos</span></h3>
			<img v-lazy="jpg6" width="992" height="557">
			<p class="legenda"> Reconhecimento da concentração de equipamentos públicos localizados na centralidade.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-6.png"><span>Usos comerciais</span></h3>
			<img v-lazy="jpg7" width="992" height="557">
			<p class="legenda">Reconhecimento da concentração comercial localizada na centralidade.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-7.png"><span>Áreas Verdes</span></h3>
			<img v-lazy="jpg8" width="992" height="557">
			<p class="legenda">Reconhecimento do sistema de áreas verdes.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-8.png"><span>Hidrografia</span></h3>
			<img v-lazy="jpg9" width="992" height="557">
			<p class="legenda">Reconhecimento dos rios e córregos.</p>
		</figure>

		<figure class="item">
			<h3><span style="margin-left:1em">Diagnóstico</span></h3>
			<img v-lazy="jpg10" width="992" height="557">
			<p class="legenda">Diagnóstico que apresenta a somatória dos sistemas que compõem a centralidade: equipamentos, usos comerciais e sistemas ambientais.</p>
		</figure>

		<figure class="item">
			<h3></h3>
			<img v-lazy="jpg11" width="992" height="557">
			<p class="legenda"></p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-9.png"><span>Conexões: Eixos de Transporte Público</span></h3>
			<img v-lazy="jpg12" width="992" height="557">
			<p class="legenda">Identificação das rotas de transporte pública irradiadas do Terminal de Ônibus. Este mapeamento permite a leitura das principais rotas e fluxos.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-10.png"><span>Conexões: Entre equipamentos Públicos</span></h3>
			<img v-lazy="jpg13" width="992" height="557">
			<p class="legenda">Identificação das principais rotas pedonais que interligam os equipamentos públicos.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-11.png"><span>Conexões: Entre Parques e Praças Públicas</span></h3>
			<img v-lazy="jpg14" width="992" height="557">
			<p class="legenda">Identificação das principais rotas pedonais que interligam os sistemas ambientais.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-12.png"><span>Conexões: Principais percursos a pé</span></h3>
			<img v-lazy="jpg15" width="992" height="557">
			<p class="legenda">A somatória dos mapeamentos dos principais percursos pedonais permite a indicação das ruas a serem prioritariamente requalificadas.</p>
		</figure>

		<figure class="item">
			<h3></h3>
			<img v-lazy="jpg16" width="992" height="557">
			<p class="legenda"></p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-13.png"><span>Requalificação dos principais Eixos</span></h3>
			<img v-lazy="jpg17" width="992" height="557">
			<p class="legenda">O projeto propõe a requalificação dos principais eixos pedonais, de modo a garantir maior segurança, qualidade paisagística e acessibilidade.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-14.png"><span>Requalificação e ampliação de áreas verdes</span></h3>
			<img v-lazy="jpg18" width="992" height="557">
			<p class="legenda">Requalificação e ampliação das áreas verdes, priorizando as conexões entre as Praças, Parques e Áreas de Lazer, estruturando um sistema de corredores verdes.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-15.png"><span>Requalificação da ocupação das Orlas Fluviais</span></h3>
			<img v-lazy="jpg19" width="992" height="557">
			<p class="legenda">Requalificação ambiental das orlas fluviais, que objetiva favorecer a retenção pluvial, minimizar o despejo de esgoto e proteger a fauna e flora nativa.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-16.png"><span>Qualificação da oferta habitacional</span></h3>
			<img v-lazy="jpg20" width="992" height="557">
			<p class="legenda">Qualificação da oferta habitacional, seja pela regularização urbanística e fundiária de assentamentos precários ou pela provisão de Habitações de Interesse Social em suas diversas modalidades.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-17.png"><span>Ampliar a oferta de Equipamentos de Saúde</span></h3>
			<img v-lazy="jpg21" width="992" height="557">
			<p class="legenda">Ampliar a oferta de equipamentos de saúde, articulando-os à rede existente.</p>
		</figure>

		<figure class="item">
			<h3><img class="image is-64x64" src="static/img/ael/icone-18.png"><span>Ampliar a oferta de Equipamentos de Educação</span></h3>
			<img v-lazy="jpg22" width="992" height="557">
			<p class="legenda">Ampliar a oferta de equipamentos de educação, articulando-os à rede existente.</p>
		</figure>

		<figure class="item">
			<h3><span style="margin-left:1em">Consolidação da Área de Estruturação Local</span></h3>
			<img v-lazy="jpg23" width="992" height="557">
			<p class="legenda">Consolidação da Área de Estruturação Local através da integração de políticas públicas setoriais, associada à Rede de Estruturação da Transformação Urbana.</p>
		</figure>

		<div class="controls">
			<a href="#item-1" class="control-button">•</a>
			<a href="#item-2" class="control-button">•</a>
			<a href="#item-3" class="control-button">•</a>
			<a href="#item-4" class="control-button">•</a>
			<a href="#item-5" class="control-button">•</a>
			<a href="#item-6" class="control-button">•</a>
			<a href="#item-7" class="control-button">•</a>
			<a href="#item-8" class="control-button">•</a>
			<a href="#item-9" class="control-button">•</a>
			<a href="#item-10" class="control-button">•</a>
			<a href="#item-11" class="control-button">•</a>
			<a href="#item-12" class="control-button">•</a>
			<a href="#item-13" class="control-button">•</a>
			<a href="#item-14" class="control-button">•</a>
			<a href="#item-15" class="control-button">•</a>
			<a href="#item-16" class="control-button">•</a>
			<a href="#item-17" class="control-button">•</a>
			<a href="#item-18" class="control-button">•</a>
			<a href="#item-19" class="control-button">•</a>
			<a href="#item-20" class="control-button">•</a>
			<a href="#item-21" class="control-button">•</a>
			<a href="#item-22" class="control-button">•</a>
			<a href="#item-23" class="control-button">•</a>
			<a href="#item-24" class="control-button">•</a>
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
			jpg0: './static/img/ael/Diagramas_Terminais_AEL_0000_img2-txt.jpg',
			jpg1: './static/img/ael/Diagramas_Terminais_AEL_0001_Folha_3.jpg',
			jpg2: './static/img/ael/Diagramas_Terminais_AEL_0002_Folha_4.jpg',
			jpg3: './static/img/ael/Diagramas_Terminais_AEL_0003_Folha_5.jpg',
			jpg4: './static/img/ael/Diagramas_Terminais_AEL_0004_Folha_6.jpg',
			jpg5: './static/img/ael/Diagramas_Terminais_AEL_0005_Capa_Folha_7-txt.jpg',
			jpg6: './static/img/ael/Diagramas_Terminais_AEL_0006_Folha_8.jpg',
			jpg7: './static/img/ael/Diagramas_Terminais_AEL_0007_Folha_9.jpg',
			jpg8: './static/img/ael/Diagramas_Terminais_AEL_0008_Folha_10.jpg',
			jpg9: './static/img/ael/Diagramas_Terminais_AEL_0009_Folha_11.jpg',
			jpg10: './static/img/ael/Diagramas_Terminais_AEL_0010_Folha_12.jpg',
			jpg11: './static/img/ael/Diagramas_Terminais_AEL_0011_Capa_Folha_13-txt.jpg',
			jpg12: './static/img/ael/Diagramas_Terminais_AEL_0012_Folha_14.jpg',
			jpg13: './static/img/ael/Diagramas_Terminais_AEL_0013_Folha_15.jpg',
			jpg14: './static/img/ael/Diagramas_Terminais_AEL_0014_Folha_16.jpg',
			jpg15: './static/img/ael/Diagramas_Terminais_AEL_0015_Folha_17.jpg',
			jpg16: './static/img/ael/Diagramas_Terminais_AEL_0016_Capa_Folha_18-txt.jpg',
			jpg17: './static/img/ael/Diagramas_Terminais_AEL_0017_Folha_19.jpg',
			jpg18: './static/img/ael/Diagramas_Terminais_AEL_0018_Folha_20.jpg',
			jpg19: './static/img/ael/Diagramas_Terminais_AEL_0019_Folha_21.jpg',
			jpg20: './static/img/ael/Diagramas_Terminais_AEL_0020_Folha_22.jpg',
			jpg21: './static/img/ael/Diagramas_Terminais_AEL_0021_Folha_23.jpg',
			jpg22: './static/img/ael/Diagramas_Terminais_AEL_0022_Folha_24.jpg',
			jpg23: './static/img/ael/Diagramas_Terminais_AEL_0023_folha_25.jpg',
		}
	},
}
</script>

<style lang="scss" scoped>
@import "../../../assets/vendor/gallery.theme.css";
@import "../../../assets/vendor/gallery.css";
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
				padding: 1.5em 1em 1em 1em;
				margin-top: 1em;
			}
		}
		.controls{
			bottom: 3em;
		}
		.control-operator:target ~ .controls .control-button{
			// color:red
		}
	}
}
</style>