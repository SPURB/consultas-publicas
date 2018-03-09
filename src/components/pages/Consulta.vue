<template>
<div class="consulta">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">Consulta Pública PIU Nações Unidas</h2>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<section id="1_objeto">
					<h5>1. OBJETO</h5>
					<p class="commentable" @click="defineCommentId" id="0001"> A presente Consulta Pública, promovida pela Prefeitura do Município de São Paulo por intermédio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da São Paulo Urbanismo (SP-URBANISMO), tem como objeto desencadear o processo administrativo tendente a instaurar o Projeto de Intervenção Urbana (PIU) Nações Unidas, a ser realizada entre os dias 09 e 30 de março de 2018, apresentando os elementos preliminares ao desenvolvimento do PIU, com vistas a colher contribuições da sociedade civil ao desenvolvimento posterior do projeto. A consulta tem por base a legislação em vigor e os instrumentos urbanísticos que permitem ações específicas no território da cidade. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 1"></Comments>

					<p class="commentable" @click="defineCommentId" id="0002">
					De acordo com o Art. 2º do <a href="http://gestaourbana.prefeitura.sp.gov.br/estruturacao-territorial/piu/decreto/">Decreto nº 56.901/2016</a>, o processo de instrução do PIU se inicia pela publicação dos elementos preliminares a seu desenvolvimento, constituídos <strong>de um diagnóstico socioterritorial</strong> da área estudada e de um <strong>programa de interesse público</strong>, trazendo as questões a serem enfrentadas no contexto urbano em que está inserido. Esses documentos são então submetidos à consulta pública para receber subsídios ao seu posterior desenvolvimento, após prévia autorização da Secretaria Municipal de Urbanismo e Licenciamento – SMUL. Num segundo momento, são apresentados os elementos constituintes do PIU (definidos no Art. 4º do mesmo decreto) para nova consulta pública, de forma que possa ser avaliado e ajustado até a publicação de sua versão final, que servirá como base para a definição de parâmetros de parcelamento, uso e ocupação do solo a serem instituídos por Decreto do Executivo ou por intermédio de lei regularmente aprovada pela Câmara Municipal de São Paulo.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 2"></Comments>
				</section>

				<section id="2_motivacao">
					<h5>2. MOTIVAÇÃO</h5>
					<p class="commentable" @click="defineCommentId" id="0003">
						O PIU Nações Unidas tem como motivação básica a definição dos parâmetros de parcelamento, uso e ocupação do solo da Zona de Ocupação Especial – ZOE Nações Unidas, localizada no território da Prefeitura Regional de Pinheiros. A definição dos referidos parâmetros urbanísticos deverá considerar as características específicas desta ZOE, a ZEPAM correspondente à Praça Victor Civita, o marco regulatório da política urbana municipal (PDE, LPUOS, PRS<sup><a href="#consulta01">1</a></sup>) e a Operação Urbana Consorciada Faria Lima.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 3"></Comments>

					<p class="commentable" @click="defineCommentId" id="0004">
						A Praça Victor Civita é um equipamento público referencial para a região e um caso inovador no país de parceria entre os setores público e privado, que possibilitou a reabilitação de uma área contaminada com novos atributos urbanos, programáticos e pedagógicos e novo modelo de gestão. A parceria vigorou entre 2007 e 2016, possibilitando, além da implantação do projeto e da zeladoria do espaço, o funcionamento do Espaço Aberto da Sustentabilidade, de um centro de atividades para a terceira idade e de uma intensa agenda de eventos, cursos e apresentações. Com o fim da parceria, a praça vem sofrendo um processo de deterioração e de perda de frequentadores, prejudicando sua utilização como área de lazer e polo cultural e educativo. O PIU Nações Unidas pretende resgatar a Praça Victor Civita como equipamento público, recuperando suas instalações e melhorando sua integração física e programática com o entorno, potencializando sua apropriação pelos moradores e trabalhadores locais.
						<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 4"></Comments>

					<p class="commentable" @click="defineCommentId" id="0005">
						O PIU Nações Unidas está vinculado à implantação do Parque Augusta, em função de uma proposta de permuta<sup><a href="#footnote02">2</a></sup> de terrenos com entre os proprietários da área onde se deseja implantar o futuro parque e o Município de São Paulo, que cederá em contrapartida uma porção da área municipal correspondente aos lotes 0001 e 0002 da Quadra 223 do Setor Fiscal 083, inseridos na ZOE Nações Unidas. 
						<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 5"></Comments>

					<p class="commentable" @click="defineCommentId" id="0006">
						Conforme Protocolo de Intenções firmado entre a Prefeitura e os proprietários do referido imóvel da Rua Augusta, a efetivação da permuta de terrenos poderá viabilizar, entre outras ações, a transferência de propriedade da área privada para a Prefeitura e a implantação e gestão (por dois anos) do Parque Augusta, às custas dos atuais proprietários. Por outro lado, a transferência de propriedade de porção da área municipal inserida na ZOE Nações Unidas para os atuais proprietários do imóvel da Rua Augusta possibilitará seu desenvolvimento imobiliário de forma compatível com as diretrizes do Plano Diretor Estratégico – PDE, mantendo nas áreas públicas remanescentes as atuais atividades e serviços e podendo agregar novos equipamentos públicos à região.
						<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 6"></Comments>

					<p class="commentable" @click="defineCommentId" id="0007">
						Assim, na hipótese de concretização da permuta entre os imóveis acima referidos, a definição dos parâmetros urbanísticos por intermédio deste PIU presta-se, inclusive, à regulação de potenciais empreendimentos privados no local. 
						<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 7"></Comments>

					<p class="commentable" @click="defineCommentId" id="0008">
						Neste contexto, o programa de interesse público do PIU Nações Unidas contém um elemento externo ao perímetro do projeto, mas de reconhecido interesse público, constituído pelo histórico de mobilização de moradores, associações e coletivos atuantes na cena da região central da cidade nos últimos anos, mobilizados pela viabilização do Parque Augusta junto à Prefeitura de São Paulo.
						<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 8"></Comments>

					<div class="footnote">
						<p><sup id="footnote01">1 </sup>Planos Regionais das Subprefeituras, Decreto Nº 57.537/16</p>
						<p><sup id="consulta02">2 </sup>A permuta consiste em troca de área pública municipal por área de terceiro. Conforme o artigo 112, §1º, inciso II, d e o artigo 113 da Lei Orgânica do Município (LOM), após a instauração de processo administrativo específico no qual reste comprovado que há interesse público na permuta, é necessário que haja autorização legislativa e avaliação do imóvel.</p>
					</div>
				</section>

				<section id="3_quadro-normativo">
					<h5>3. Quadro normativo</h5>
					<p class="commentable" @click="defineCommentId" id="0009">
						O Plano Diretor Estratégico, de acordo com o texto expresso pelo Art. 182 da Constituição Federal de 1988, e, posteriormente, pelo Art. 40 do <a href="http://www.planalto.gov.br/ccivil_03/leis/LEIS_2001/L10257.htm" target="_blank">Estatuto da Cidade (Lei Federal nº 10.257/2001)</a>, é o instrumento básico das políticas públicas referentes ao desenvolvimento e à expansão urbana, caracterizando-se como o índice de aferição do cumprimento da função social da propriedade. É o diploma que apresenta as diretrizes de condutas a serem seguidas pelo Poder Público Municipal visando ordenar o desenvolvimento das funções sociais da cidade e da propriedade urbana.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 9"></Comments>


					<p class="commentable" @click="defineCommentId" id="0010">
						<a href="http://gestaourbana.prefeitura.sp.gov.br/arquivos/PDE_lei_final_aprovada/TEXTO/2014-07-31%20-%20LEI%2016050%20-%20PLANO%20DIRETOR%20ESTRAT%C3%89GICO.pdf" target="_blank">O Plano Diretor Estratégico do Município de São Paulo – PDE (Lei nº 16.050/2014)</a>, por sua vez, tem entre seus objetivos a busca pelo desenvolvimento urbano sustentável e equilibrado do Município, buscando promover a aproximação do emprego e moradia, o acesso à mobilidade e a reestruturação e qualificação das centralidades urbanas, considerando em seu ordenamento as dimensões social, ambiental, imobiliária, econômica e cultural. Tais diretrizes estão expressas, sobretudo, na instituição dos Eixos de Estruturação da Transformação Urbana e nos territórios estratégicos que compõem a Macroárea de Estruturação Metropolitana.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 10"></Comments>


					<p class="commentable" @click="defineCommentId" id="0011">
						A <a href="http://gestaourbana.prefeitura.sp.gov.br/marco-regulatorio/zoneamento/texto-da-lei/" target="_blank">Lei de Parcelamento, Uso e Ocupação do Solo - LPUOS (Lei nº 16.402/ 2016)</a>, veio regulamentar o PDE, detalhando as zonas de uso no território, seus parâmetros urbanísticos e condições de instalação, dentre outros instrumentos. Nos termos do §1º do art. 15 desta lei, as áreas classificadas como ZOE – Zona de Ocupação Especial devem necessariamente ser objeto de PIU – Projetos de Intervenção Urbana, contemplando a definição de parâmetros específicos de parcelamento, uso e ocupação do solo adequados às suas especificidades.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 11"></Comments>


					<p class="commentable" @click="defineCommentId" id="0012">
						Dentre os instrumentos urbanísticos trazidos pelo PDE, está previsto no seu artigo 134 o PIU, que pode ser promovido pelo poder público para articular medidas de financiamento, gestão, aquisição de terras (reordenamento urbano) e ações intersetoriais para desenvolver e implementar as especificidades de cada intervenção proposta, com processos adequados de gestão e participação social. O PIU tem por finalidade reunir e articular os estudos técnicos objetivando promover o ordenamento e a reestruturação urbana em áreas subutilizadas e com potencial de transformação, tendo sua regulamentação estabelecida pelo <a href="http://gestaourbana.prefeitura.sp.gov.br/estruturacao-territorial/piu/decreto/" target="_blank">Decreto n° 56.901/2016.</a>
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 12"></Comments>


					<p class="commentable" @click="defineCommentId" id="0013">
						<a href="http://gestaourbana.prefeitura.sp.gov.br/legislacao/decreto-no-57-537-de-16-de-dezembro-de-2016/">Os Planos Regionais das Subprefeituras – PRS (Decreto nº 57.537/ 2016)</a> são elementos de planejamento complementares ao PDE e à LPUOS, enfatizando os espaços públicos e a articulação de políticas setoriais no território e com as peças orçamentárias, contendo propostas para a Rede de Estruturação Local. A Rede de Estruturação Local, por sua vez, é composta por Perímetros de Ação, que são porções do território com demandas e ações setoriais que necessitam de projetos coordenados de intervenção destinados ao desenvolvimento urbano local, mediante integração de políticas e investimentos públicos.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 13"></Comments>


					<p class="commentable" @click="defineCommentId" id="0014">
						<a href="http://www.prefeitura.sp.gov.br/cidade/secretarias/upload/infraestrutura/sp_obras/arquivos/lei_13769_26_01_04.pdf" target="_blank">A Operação Urbana Consorciada Faria Lima – OUCFL (Lei nº 13.769/ 2004)</a> compreende um conjunto integrado de intervenções coordenadas pela Prefeitura, por intermédio da SP Urbanismo, com a participação dos proprietários, moradores, usuários e investidores em geral, visando a melhoria e a valorização ambiental da área de influência definida em função da implantação do sistema viário de interligação da Avenida Brigadeiro Faria Lima e a Avenida Pedroso de Moraes e com as Avenidas Presidente Juscelino Kubitschek, Hélio Pellegrino e Cidade Jardim. Esta lei contém objetivos e diretrizes de desenvolvimento urbano, bem como parâmetros urbanísticos e regulação específicos para os lotes inseridos em seu perímetro.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 14"></Comments>
				</section>

				<section id="4_quadro-normativo">
					<h5>4. DIAGNÓSTICO SOCIOTERRITORIAL E AMBIENTAL</h5>
					<p class="commentable" @click="defineCommentId" id="0015">
						O Diagnóstico Socioterritorial e Ambiental - <router-link to='/anexo1'>Anexo I</router-link> - foi realizado a partir de dados disponíveis nos sítios GeoSampa  e Gestão Urbana SP, administrados pela Secretaria Municipal de Urbanismo e Licenciamento da Prefeitura de São Paulo, contendo dados e análises suficientes para, numa primeira aproximação, dar a conhecer o contexto urbano onde se encontra o PIU Nações Unidas.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 15"></Comments>
				</section>

				<section id="5_programa-de-interesse-publico">
					<h5>5. PROGRAMA DE INTERESSE PÚBLICO</h5>
					<p class="commentable" @click="defineCommentId" id="0016">
						O Programa de Interesse Público - <router-link to='/anexo2'>Anexo II</router-link> - corresponde ao programa urbanístico do projeto de Intervenção Urbana, inserido no contexto socioeconômico e ambiental da cidade e do entorno. Este programa deve expressar o conjunto de aspectos urbanísticos a que o projeto a ser desenvolvido pretende dar respostas, associadas ou não a políticas públicas de competência diversa da política urbana municipal. 
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 16"></Comments>

					<p class="commentable" @click="defineCommentId" id="0017">
						Ainda que os parâmetros urbanísticos a serem definidos no PIU possam vir a regular empreendimentos privados, o programa de interesse público deverá esclarecer por que tal iniciativa interessa à sociedade e contribui para o desenvolvimento urbano da cidade.
					<i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 17"></Comments>
				</section>

			</div>
		</div>
	</div>		
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				id: null,
				context: null
			},
			allCommentableIds: null,
		}
	},
	computed:{ allcomments() { return this.$store.state.allcomments	}
	},
	mounted(){
		let commentables = document.getElementsByClassName('commentable');
		let commentablesArr = Object.keys(commentables).map(function (key) { return commentables[key]; });
		this.allCommentableIds = commentablesArr.map(function(elem) { return parseInt(elem.attributes.id.value) });
	},
	methods: {
		defineCommentId(event){ 
			this.toggleActiveComments(event);
			this.commentid.id = Number.parseInt(event.target.id); 
			this.commentid.context = event.target.innerText;
		},
		toggleActiveComments(event){
			// remove a classe 'active' a todos os comentáveis ativos
			let elements = document.getElementsByClassName('active');
			let elementsArr = Object.keys(elements).map(function (key) { return elements[key]; }); //converte obj para array
			elementsArr.map(function(elem) { elem.classList.remove('active') })

			// adiciona a classe 'active' neste elemento clicado
			event.target.classList.add('active');
		},
		consoleAllcomments(){ 
			let allcomm = this.allcomments;
			console.log(allcomm.map(function(elem) { return parseInt(elem.commentid) }))
		},

	},
	components:{ Comments }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";
.material-icons {
	font-size: 1rem; 
	color:#039be5;
	padding-right: 0.25em;
}
</style>