<template>
<div class="consulta">
	<div class="container">
		<div class="content">
			<h1 class="title"> {{projectTitle}} </h1>
			<div class="columns">
				<div class="column">
					<p>A presente Consulta Pública, promovida pela Prefeitura do Município de São Paulo por intermédio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da São Paulo Urbanismo (SP-URBANISMO), tem como objeto dar publicidade ao Projeto de Intervenção Urbana (PIU) Vila Leopoldina-Villa Lobos, a ser realizada entre os dias 26 de abril e 16 de maio de 2018, apresentando o <strong>conteúdo preliminar do PIU</strong>, com vistas a colher contribuições da sociedade civil ao aperfeiçoamento e consolidação do projeto. A consulta tem por base a legislação em vigor e os instrumentos urbanísticos que permitem ações específicas no território da cidade.</p>
					<p>De acordo com o Art. 4º do <a href="http://gestaourbana.prefeitura.sp.gov.br/estruturacao-territorial/piu/decreto/" target="_blank" alt="Decreto nº 56.901/2016">Decreto nº 56.901/2016</a>, o PIU é composto por <strong>Proposta de Ordenamento Urbanístico, Modelagem Econômica e Modelo de Gestão Democrática</strong>, trazendo as propostas urbanísticas de enfrentamento aos desafios identificados no Programa de Interesse Público do projeto, compatíveis com as possibilidades de financiamento e com a governança democrática de sua implantação. A presente consulta traz ainda uma <strong>Modelagem Jurídica</strong>, que enseja a estruturação legal do projeto no contexto do quadro normativo vigente, e que servirá como base para a formulação posterior do Projeto de Lei de regulamentação do PIU Vila Leopoldina-Villa Lobos.</p>
					<p>Os produtos aqui expostos apresentam graus de profundidade e complexidade adequados à compreensão global da proposta, podendo conter aspectos a serem aperfeiçoados ou lacunas que deverão ser preenchidas até sua versão final. Além dos produtos específicos desta consulta, está disponível o Caderno do PIU Vila Leopoldina-Villa Lobos, que reúne o conteúdo desenvolvido deste o início do processo de tramitação do PIU VL-VL.</p>
				</div>
				<div class="column is-one-third">
					<div class="box">
						<h4>Capítulos</h4>
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/02_diagnostico-socio-territorial.pdf" download>Diagnóstico Sócio-Territorial</a>
						</div>
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/03_programa-de-interesse-publico.pdf" download>Programa de Interesse Público</a>
						</div>
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/04_proposta-de-ordenamento-urbanistico.pdf" download>Proposta de Ordenamento Urbanístico</a>
						</div>
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/05_modelagem-economica-da-intervencao.pdf" download>Modelagem Econômica da Intervenção</a>
						</div>
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/06_modelo-de-gestao.pdf" download>Modelo de Gestão</a>
						</div>
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/07_modelo-juridico.pdf" download>Modelo Jurídico</a>
						</div>
					</div>
					<div class="box">
						<div class="sumario-linha">
							<i class="material-icons">picture_as_pdf</i>
							<a href="./static/pdf/00_caderno-completo.pdf" download>Caderno Completo</a>
						</div>						
					</div>
				</div>
			</div>

		</div>
	</div>
	<Comments :commentid="commentid"></Comments>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				postid: 1,
				id: 1
			},
			png: './static/img/slider/960x450_1.png',
			loadingGif:'./static/img/loading.gif'
		}
	},
	computed: {projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ Comments }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.btn-terminais{
	margin-top: 2em; 
	margin-bottom: 2em;
	flex-flow: row wrap;
	justify-content: space-around;
	.button{
		margin-left:1em;
		margin-top:.75em; 
		transition: background-color 0.25s ease;
	}
	.first.button{
		margin-left: 0
	}
}

.sumario-linha {
	display: flex;
	align-items: center;
	border-bottom: 1px solid $primary-light-grey;
	padding: 1em 0;
	i { margin-right: .5em; }
}
.sumario-linha:first-child { padding-top: 0; }
.sumario-linha:last-child { border-bottom-width: 0px; padding-bottom: 0; }

@media only screen and (max-width: 769px) {
	.btn-terminais{
		.button{
			margin-left:0;
		}
	}
}
</style>