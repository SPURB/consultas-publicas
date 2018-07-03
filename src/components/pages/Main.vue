<template>
<div class="consulta">
	<section class="hero is-light is-medium">
		<div class="hero-body">
			<div class="container">
				<figure>
					<img src="../../assets/img/loga.png" title="PIU Setor Central">
				</figure>
			</div>
		</div>
	</section>

	<!-- <Diagrama></Diagrama> -->
	<!-- <Mapa :mapa_attrs="mapa_attrs"></Mapa> -->

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="apresentacao">
						<h4 class="title is-4">Apresentação</h4>
						<p>A Prefeitura Municipal, por meio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL), vem disponibilizar os estudos introdutórios que vão subsidiar o desenvolvimento do Projeto de Intervenção Urbana do Setor Central.</p>
						<p>Esse projeto responde à exigência do Plano Diretor Estratégico de revisão da Lei da Operação Urbana Centro e para tanto abrange um perímetro ampliado que abarca a área da OU Centro e distritos vizinhos que também podem ser designados como distritos centrais.</p>
						<p>O Projeto de Intervenção Urbana, disciplinado pelo Decreto nº 56.901 de 29 de março de 2016, tornou-se uma importante ferramenta de estruturação de projetos de interesse público, ao estabelecer conteúdos associados a etapas sucessivas de desenvolvimento, sempre concluídas com a sua divulgação à população. Ainda que a ferramenta demande aperfeiçoamentos, através do regramento ali estabelecido instituiu-se uma forma de comunicação entre a Prefeitura e os munícipes até então inexistente.</p>
						<p>Neste momento que precede a elaboração do PIU Setor Central, são apresentados o diagnóstico sócioterritorial e o programa de interesse público resultante dessa análise.</p>
						<p>Trata-se de uma publicação extensa, como requer a complexa Área Central, que pode ser comentada no seu todo ou apenas nas partes mais significativas para cada munícipe.</p>
						<p>Além de comentários a respeito do material divulgado, são bem-vindas as manifestações que expressem as expectativas dos munícipes em relação ao futuro dos bairros do anel central que, segundo esta proposta, dever ser preparado para receber muitos mais moradores.
						</p>
						<!-- <figure>
							<img src="../../assets/img/logo.png" title="Figure title">
							<figcaption>Figure cation</figcaption>
						</figure>
						<p>Lorem</p> -->
					</section>
					<section id="motivacao">
						<h4 class="title is-4">Motivação</h4>
						<p>A Operação Urbana Centro foi instituída pela Lei Municipal 12.349 de 06 de junho de 1997 - anos antes da aprovação do Estatuto da Cidade, Lei Federal nº 10.257 de 10 de julho de 2001, que veio regulamentar o capítulo de política urbana da Constituição Brasileira de 1988.
						<p>Entre os muitos instrumentos urbanísticos propostos no Estatuto da Cidade, regulamentados no Plano Diretor Estratégico (PDE) de 2002, Lei Municipal nº 13.430 de 13 de setembro de 2002, e novamente tratados no PDE vigente, Lei Municipal nº 16.050 de 31 de julho de 2014, está a Operação Urbana Consorciada, assim definida:</p>
						<blockquote>Considera-se operação urbana consorciada o conjunto de intervenções e medidas coordenadas pelo Poder Público municipal, com a participação dos proprietários, moradores, usuários permanentes e investidores privados, com o objetivo de alcançar em uma área transformações urbanísticas estruturais, melhorias sociais e a valorização ambiental.” [art. 32 § 1º]</blockquote>
					</section>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="diagnostico">
						<h4 class="title is-4">Diagnóstico Socioterritorial</h4>
						<div>
							<a href="./static/pdf/#" class="box" download="SomeTitle.pdf">
								<i class="small material-icons">picture_as_pdf</i>
								Some Title
							</a>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Comments :commentid="10"></Comments>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';
import Diagrama from '@/components/pages/Diagrama';
import Mapa from '@/components/reusable/Mapa';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				postid: 1,
				id: 1
			},
			mapa_attrs:{
				center: [ -5191200.816167192, -2697150.9570380395 ],
				zoom: 13.5,
				layers:[
					{
						title: "Perímetro de adesão", 
						path:'./static/kml/perimetro_piu_setor_central.kml',
						stroke_color: 'rgba(208, 100, 35, 1)',
						fill_color: 'rgba(208, 100, 35, 0.25)',
						stroke_width: 3,
					}
				]
			}
		}
	},
	computed: { projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ 
		Comments, 
		// Diagrama, 
		Mapa }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";
@import "../../assets/main.scss";

.consulta {
	// margin: 1em auto 0 auto;
	width: 100%;
}

.content {
	max-width: 992px;
	padding: .5rem;
	section{
		margin-bottom: 2rem
	}
}

h4.title {
	padding-top: 1rem;
}
.hero {
	figure{
		display: flex;
		align-items: center;
		justify-content: center;
	}
}

#diagnostico {
	div {		
		padding: .5rem 2rem;
		a {
			display: block;
			padding: 1rem;
			i {
				vertical-align: bottom;
				margin-right: 12px;
			}
		}
	}
}
</style>