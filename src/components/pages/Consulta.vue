<template>
<div class="consulta">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">Consulta Pública PL Acro Jurubatuba</h2>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<h5>PROJETO DE LEI Nº … </h5>
				<p class="commentable" @click="defineCommentId" id="0001">Estabelece objetivos, diretrizes, estratégias e mecanismos para a implantação do Projeto de Intervenção Urbana para o perímetro do Arco Jurubatuba e cria as Áreas de Intervenção Urbana Vila Andrade, Jurubatuba e Interlagos <i class="small material-icons"> insert_comment</i></p>
				<Comments :commentid="commentid" v-if="commentid.id == 1"></Comments>

				<section id="capitulo_1">
					<h4>CAPÍTULO I - DISPOSIÇÕES GERAIS</h4>
					<h5>Seção I - Do Conceito</h5>
					<p class="commentable" @click="defineCommentId" id="0002">Art. 1º Fica aprovado o Projeto de Intervenção Urbana do Arco Jurubatuba – PIU-ACJ, compreendendo um conjunto integrado de intervenções e medidas promovidas ou coordenadas pela Prefeitura Municipal de São Paulo, por intermédio da empresa SP-Urbanismo, para articular o ordenamento e a reestruturação urbana em áreas subutilizadas e com potencial de transformação do território do Arco Jurubatuba. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 2"></Comments>

					<p class="commentable" @click="defineCommentId" id="0003">§ 1º Em atendimento ao inciso III do § 3º do artigo 76 da Lei nº 16.050, de 31 de julho de 2014 – Plano Diretor Estratégico (PDE), esta lei estabelece o regramento urbanístico para o território abrangido pelo Arco Jurubatuba - ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 3"></Comments>

					<p class="commentable" @click="defineCommentId" id="0004">§ 2º Integram esta lei os mapas, quadros e plantas abaixo relacionados: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 4"></Comments>

					<p class="commentable" @click="defineCommentId" id="0005">I. Mapa I - Plano Urbanístico; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 5"></Comments>

					<p class="commentable" @click="defineCommentId" id="0006">II. Mapa II - Perímetros de Adesão AIU e Perímetro Expandido – ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 6"></Comments>

					<p class="commentable" @click="defineCommentId" id="0007">III. Mapa III - Parâmetros Urbanísticos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 7"></Comments>

					<p class="commentable" @click="defineCommentId" id="0008">IV. Mapa IV - Compartimento de Várzea  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 8"></Comments>

					<p class="commentable" @click="defineCommentId" id="0009">V. Mapa V - Favelas e ZEIS;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 9"></Comments>

					<p class="commentable" @click="defineCommentId" id="0010">VI. Mapa VI - Áreas Verdes; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 10"></Comments>

					<p class="commentable" @click="defineCommentId" id="0011">VII. Mapa VII - Plano de Melhoramentos Viários; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 11"></Comments>

					<p class="commentable" @click="defineCommentId" id="0012">VIII. Mapa VIII - Programa de Intervenções; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 12"></Comments>

					<p class="commentable" @click="defineCommentId" id="0013">IX. Mapa IX - Projeto Estratégico Interlagos <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 13"></Comments>

					<p class="commentable" @click="defineCommentId" id="0014">X. Quadro 1A - Eixos Estratégicos e Eixos Ambientais; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 14"></Comments>

					<p class="commentable" @click="defineCommentId" id="0015">XI. Quadro 1B - Melhoramentos Viários; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 15"></Comments>

					<p class="commentable" @click="defineCommentId" id="0016">XII. Quadro 1C - Áreas Públicas Destinadas para Áreas Verdes, Parques e Equipamentos Públicos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 16"></Comments>

					<p class="commentable" @click="defineCommentId" id="0017">XIII. Quadro 1D - Favelas Existentes no perímetro do ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 17"></Comments>

					<p class="commentable" @click="defineCommentId" id="0018">XIV. Quadro 2 - Parâmetros de Ocupação, exceto Quota Ambiental;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 18"></Comments>

					<p class="commentable" @click="defineCommentId" id="0019">XV. Quadro 2A - Fatores de Planejamento;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 19"></Comments>

					<p class="commentable" @click="defineCommentId" id="0020">XVI. Quadro 3 - Programa de Intervenções; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 20"></Comments>

					<p class="commentable" @click="defineCommentId" id="0021">XVII. Plantas nº 26.9XX/01 a 26.9XX/24, Classificação J-5XX, do Arquivo da Superintendência de Projetos Viários. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 21"></Comments>

					<p class="commentable" @click="defineCommentId" id="0022">§ 3º Os mapas integrantes desta lei correspondem aos arquivos digitais da Secretaria Municipal de Urbanismo e Licenciamento – SMUL, assinados eletronicamente, disponibilizados pelo Executivo no Portal da Prefeitura do Município de São Paulo na Internet. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 22"></Comments>

					<h5>Seção II - Da Abrangência Territorial</h5>
					<p class="commentable" @click="defineCommentId" id="0023">Art. 2º O PIU-ACJ abrange as áreas do Perímetro de Adesão e Perímetro Expandido, assinalados no Mapa II desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 23"></Comments>

					<p class="commentable" @click="defineCommentId" id="0024">§ 1º O Perímetro de Adesão delimita o território no qual incidirá o regramento urbanístico específico das Áreas de Intervenção Urbana - AIU criadas nesta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 24"></Comments>

					<p class="commentable" @click="defineCommentId" id="0025">§ 2º O Perímetro Expandido é composto pelas demais áreas contidas no subsetor Arco Jurubatuba da Macroárea de Estruturação Metropolitana. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 25"></Comments>
					<h5>Seção III - Das Definições</h5>
					<p class="commentable" @click="defineCommentId" id="0026">Art. 3º Para fins do disposto nesta lei, consideram-se as seguintes definições: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 26"></Comments>

					<p class="commentable" @click="defineCommentId" id="0027">I. Áreas de Transformação: áreas demarcadas no Mapa III desta lei, subdivididas nas categorias T1 e T2 destinadas a abrigar densidades construtivas e demográficas altas e onde se concentram as ações voltadas a promover as transformações estratégicas que tem por objetivo a implantação do uso misto associado à qualificação dos espaços públicos propostas pelo PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 27"></Comments>

					<p class="commentable" @click="defineCommentId" id="0028">II. Áreas de Qualificação: áreas demarcadas no Mapa III desta lei, subdivididas nas categorias Q1, Q2, Q3 e Q4, destinadas a abrigar densidades construtivas e demográficas médias, nas quais se concentram as ações voltadas à promoção da qualificação dos espaços públicos e à manutenção das atividades comerciais, de serviços, residenciais e industriais; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 28"></Comments>

					<p class="commentable" @click="defineCommentId" id="0029">III. Compartimento Ambiental de Várzea: porção da planície aluvial dos rios Pinheiros, Jurubatuba e Guarapiranga, contida no território do ACJ, com baixa capacidade de infiltração de águas pluviais, demarcada no Mapa IV desta lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 29"></Comments>

					<p class="commentable" @click="defineCommentId" id="0030">IV. Eixos Estratégicos: trechos de logradouros, destacados no Mapa III desta lei e descritos em seu Quadro 1A, que compõem uma rede de mobilidade motorizada e não motorizada e promovem a estruturação dos espaços públicos, e cujos lotes confrontantes têm atividades não residenciais incentivadas; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 30"></Comments>

					<p class="commentable" @click="defineCommentId" id="0031">V. Eixos Ambientais: trechos de logradouros, demarcados no Mapa VI e descritos em seu Quadro 1A, que complementam a rede de espaços públicos e interligam bairros, praças, parques, equipamentos públicos e nos quais serão implementadas medidas específicas de qualificação urbanístico-ambiental; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 31"></Comments>

					<p class="commentable" @click="defineCommentId" id="0032">VI. Faixas de Indução: trechos de lotes, demarcados no Mapa III desta lei, que têm frente para os Eixos Estratégicos e estão contidos integral ou parcialmente na faixa de 100m (cem metros) contada a partir do alinhamento dos lotes na frente para tais vias, sobre as quais não incide limite de gabarito de altura máxima para as edificações;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 32"></Comments>

					<p class="commentable" @click="defineCommentId" id="0033">VII. Perímetro de Adesão: territórios das Áreas de Intervenção Urbana do ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 33"></Comments>

					<p class="commentable" @click="defineCommentId" id="0034">VIII. Perímetro Expandido: território do ACJ, demarcado no Mapa II, excetuado o território do Perímetro de Adesão;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 34"></Comments>

					<p class="commentable" @click="defineCommentId" id="0035">IX. Planos de Ação Integrada: conjuntos de intervenções públicas, selecionadas do Programa de Intervenções do ACJ, estruturados de forma consolidada e hierarquizada, mediante processos públicos participativos, direcionados a uma parcela definida do território ou à solução de um problema específico no âmbito do ACJ;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 35"></Comments>

					<p class="commentable" @click="defineCommentId" id="0036">X. Programa de Intervenções: conjunto de intervenções físico-territoriais de interesse público, indicadas no Mapa VIII desta lei e descritas em seu Quadro 4, necessárias à obtenção das melhorias urbanísticas, socioeconômicas e ambientais das AIU e do ACJ considerado como um todo;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 36"></Comments>

					<p class="commentable" @click="defineCommentId" id="0037">XI. Projetos Estratégicos: conjuntos de diretrizes, que estabelecem programas de interesse público, e regras de parcelamento, uso e ocupação do solo a serem implantados em áreas consideradas suscetíveis de processos especiais de transformação e qualificação urbanística contidas nos Perímetros de Adesão; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 37"></Comments>

					<p class="commentable" @click="defineCommentId" id="0038">XI. Projetos Estratégicos: conjuntos de diretrizes, que estabelecem programas de interesse público, e regras de parcelamento, uso e ocupação do solo a serem implantados em áreas caracterizadas pela presença de terras públicas e infraestrutura contidas nos Perímetros de Adesão, desenvolvidos mediante processos públicos participativos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 38"></Comments>

					<p class="commentable" @click="defineCommentId" id="0039">Art. 4º Com o objetivo de tratar as particularidades do território abrangido no perímetro do ACJ e considerando a distribuição espacial da população, das atividades econômicas e sociais, da oferta de infraestrutura e de serviços urbanos em sua área de abrangência, ficam criadas as seguintes Áreas de Intervenção Urbana, cujos perímetros estão representados no Mapa II desta lei: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 39"></Comments>

					<p class="commentable" @click="defineCommentId" id="0040">I - Área de Intervenção Urbana Vila Andrade – AIU VA <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 40"></Comments>

					<p class="commentable" @click="defineCommentId" id="0041">II - Área de Intervenção Urbana Jurubatuba – AIU JU <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 41"></Comments>

					<p class="commentable" @click="defineCommentId" id="0042">III - Área de Intervenção Urbana Interlagos – AIU IN <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 42"></Comments>

					<p class="commentable" @click="defineCommentId" id="0043">Parágrafo único. Com a finalidade de promover a transformação e requalificação urbanística prevista no PIU-ACJ, as AIU contêm Áreas de Transformação, Áreas de Qualificação, Faixas de Indução, Projetos Estratégicos, Eixos Estratégicos e Eixos Ambientais específicos para seus territórios, demarcados nos mapas ou descritos nos quadros desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 43"></Comments>
					<h5>Seção IV - Dos Objetivos Gerais, Diretrizes Específicas e das Estratégias de Transformação Urbanística</h5>

					<p class="commentable" @click="defineCommentId" id="0044">Art. 5º O PIU do ACJ considera os objetivos específicos a serem alcançados no Setor Orla Ferroviária e Fluvial da Macroárea de Estruturação Metropolitana, nos termos do § 1º do artigo 12 da Lei nº 16.050, de 2014 – PDE, e tem como objetivos gerais: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 44"></Comments>

					<p class="commentable" @click="defineCommentId" id="0045">I. Qualificar o ambiente urbano, por intermédio da preservação e valorização dos recursos naturais e da proteção e recuperação da Área de Preservação Permanente (APP) dos rios e represas, inclusive mediante seu aproveitamento de forma ecologicamente sustentável;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 45"></Comments>

					<p class="commentable" @click="defineCommentId" id="0046">II. Recuperar a qualidade dos sistemas ambientais existentes, por intermédio da ampliação do sistema de controle de inundações e alagamentos e da mitigação dos efeitos das ilhas de calor, incrementando-se a oferta de áreas verdes públicas; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 46"></Comments>

					<p class="commentable" @click="defineCommentId" id="0047">III. Estimular a produção habitacional, preferencialmente aquela de interesse social e mercado popular voltada à população de baixa e média renda, de forma a proporcionar a permanência da população moradora do perímetro;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 47"></Comments>

					<p class="commentable" @click="defineCommentId" id="0048">IV. Priorizar o atendimento habitacional à população de baixa renda, residente em áreas de risco, áreas insalubres, em Áreas de Preservação Permanente (APP) e de difícil acessibilidade, internas ao perímetro do ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 48"></Comments>

					<p class="commentable" @click="defineCommentId" id="0049">V. Promover a urbanização, regularização fundiária e recuperação ambiental de assentamentos precários;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 49"></Comments>

					<p class="commentable" @click="defineCommentId" id="0050">VI. Direcionar os investimentos públicos e privados para incrementar a oferta de empregos, dinamizar as atividades econômicas existentes, promover o uso diversificado, intensivo e equilibrado do território e racionalizar o uso da infraestrutura;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 50"></Comments>

					<p class="commentable" @click="defineCommentId" id="0051">VII. Incentivar novas atividades produtivas e manter e estimular o emprego industrial de abrangência metropolitana; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 51"></Comments>

					<p class="commentable" @click="defineCommentId" id="0052">VIII. Incrementar e qualificar as condições de mobilidade e acesso à região e no interior do ACJ, em escala local e regional, priorizando o acesso da população à rede de transporte coletivo e a logística dos setores produtivos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 52"></Comments>

					<p class="commentable" @click="defineCommentId" id="0053">IX. Promover modelos de gestão que atendam às diretrizes do Princípio da Gestão Democrática, garantindo o direito da participação dos interessados nos processos de elaboração e implantação da política de desenvolvimento urbano. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 53"></Comments>

					<p class="commentable" @click="defineCommentId" id="0054">Art. 6º A implantação do PIU-ACJ observará, no mínimo, as seguintes estratégias de transformação urbanística: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 54"></Comments>

					<p class="commentable" @click="defineCommentId" id="0055">I – a orientação dos investimentos públicos pelos critérios de maior possibilidade de transformação urbanística associada à melhor viabilidade econômica da intervenção; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 55"></Comments>

					<p class="commentable" @click="defineCommentId" id="0056">II – a elaboração de Planos de Ação Integrada capazes de desencadear processos de transformação territorial na área objeto de intervenção e em seu entorno imediato, especialmente considerando os aspectos do atendimento habitacional, provisão de equipamentos sociais, requalificação de logradouros e áreas públicas, obras de infraestrutura urbana e implantação dos melhoramentos e espaços públicos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 56"></Comments>

					<p class="commentable" @click="defineCommentId" id="0057">Art. 7º O Projeto de Intervenção Urbana do Arco Jurubatuba – PIU-ACJ tem como diretrizes específicas:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 57"></Comments>

					<p class="commentable" @click="defineCommentId" id="0058">I. Preservação, recuperação e uso ambientalmente sustentável das Áreas de Preservação Ambiental (APP) dos rios Jurubatuba, Pinheiros e Guarapiranga; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 58"></Comments>

					<p class="commentable" @click="defineCommentId" id="0059">II. Promoção do aumento das densidades demográfica e construtiva, buscando o equilíbrio entre emprego e moradia;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 59"></Comments>

					<p class="commentable" @click="defineCommentId" id="0060">III. Incremento da produtividade industrial das ZDE e ZPI do ACJ, estabelecendo medidas tendentes a proporcionar melhorias nas logísticas de entrada e de saída da região e maior eficiência das cadeias produtivas locais e regionais; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 60"></Comments>

					<p class="commentable" @click="defineCommentId" id="0061">IV. Promoção da transformação em porções das ZDE e ZPI próximas à infraestrutura de transporte de passageiros e nas quais a atividade industrial esteja ociosa, incentivando o uso misto; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 61"></Comments>

					<p class="commentable" @click="defineCommentId" id="0062">V. Manutenção dos empregos na atividade industrial e promoção de estratégias para o incremento de novos postos de trabalho no setor, por meio da potencialização das atividades produtivas existentes; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 62"></Comments>

					<p class="commentable" @click="defineCommentId" id="0063">VI. Promoção de equipamentos institucionais voltados à qualificação da mão de obra local e ao incentivo de projetos de inovação tecnológica, com foco nas principais atividades produtivas existentes e desejadas no ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 63"></Comments>

					<p class="commentable" @click="defineCommentId" id="0064">VII. Incentivo à produção de empreendimentos residenciais que incorporem diversidade de usos, atendimento a famílias de diferentes faixas de renda e interação com o entorno imediato, por intermédio de fachadas ativas, fruição pública, ausência de muros no alinhamento do passeio público e previsão de áreas verdes de acesso ao público; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 64"></Comments>

					<p class="commentable" @click="defineCommentId" id="0065">VIII. Fortalecimento da função urbanística das centralidades existentes, por intermédio da qualificação das infraestruturas, do adensamento construtivo e populacional e do incremento de áreas verdes, espaços públicos e equipamentos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 65"></Comments>

					<p class="commentable" @click="defineCommentId" id="0066">IX. Desenvolvimento de novas centralidades em áreas de usos predominantemente residenciais e industriais, por intermédio de incentivo ao uso misto e de melhorias urbanísticas como a ampliação da rede de mobilidade, implantação de sistema ambiental de áreas verdes e de espaços públicos e equipamentos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 66"></Comments>

					<p class="commentable" @click="defineCommentId" id="0067">X. Implantação de corredores de ônibus planejados, conforme previsto pelo PDE, integrados à rede metro-ferroviária existente; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 67"></Comments>

					<p class="commentable" @click="defineCommentId" id="0068">XI. Melhoria da conectividade da região e da mobilidade intra e interbairros, por intermédio da implantação de conexões viárias coletoras ou locais, especialmente na região de Vila Andrade e Campo Grande; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 68"></Comments>

					<p class="commentable" @click="defineCommentId" id="0069">XII. Implantação de sistema viário previsto pelo PDE, com características de via estrutural urbana, integrando-se espaços destinados ao transporte coletivo, ciclovias e pedestres; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 69"></Comments>

					<p class="commentable" @click="defineCommentId" id="0070">XIII. Incentivo à circulação não motorizada, incluindo novas travessias sobre os rios, complementação da malha cicloviária e a implantação de bicicletários e paraciclos integrados aos terminais e estações do sistema estrutural de transporte público; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 70"></Comments>

					<p class="commentable" @click="defineCommentId" id="0071">XIV. Incentivo às construções sustentáveis nos aspectos de gestão integrada do uso e reuso da água, do tratamento de esgoto, da geração complementar de energia elétrica e térmica, nos termos das diretrizes da Política de Mudança do Clima no Município de São Paulo. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 71"></Comments>

					<p class="commentable" @click="defineCommentId" id="0072">XV. Elaboração de programa de desenvolvimento econômico específico para a dinamização das indústrias instaladas ou que vierem a se instalar na Zona Predominantemente Industrial (ZPI - 1) do distrito do Socorro, cuja viabilização se dará por intermédio de implantação de incubadora voltada ao financiamento de projetos de inovação tecnológica. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 72"></Comments>
				</section>

				<section id="capitulo_2">
					<h4>CAPÍTULO II - REGRAS DE USO E OCUPAÇÃO DO SOLO</h4>
					<h5>Seção I - Regras Gerais</h5>
					<p class="commentable" @click="defineCommentId" id="0073">Art. 8º Estão sujeitos ao atendimento das disposições estabelecidas nesta lei os pedidos de licenciamento protocolados para imóveis contidos no Perímetro de Adesão que utilizarem potencial construtivo adicional, e os que tenham por objeto: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 73"></Comments>

					<p class="commentable" @click="defineCommentId" id="0074">I - novas edificações; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 74"></Comments>

					<p class="commentable" @click="defineCommentId" id="0075">II - reformas com mudança de uso em lotes com área superior a 500m² (quinhentos metros quadrados); <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 76"></Comments>

					<p class="commentable" @click="defineCommentId" id="0077">III - reformas com demolição ou ampliação de mais de 50% (cinquenta por cento) da área construída original. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 77"></Comments>

					<p class="commentable" @click="defineCommentId" id="0078">IV - quaisquer empreendimentos que pretendam utilizar os incentivos estabelecidos nesta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 78"></Comments>

					<p class="commentable" @click="defineCommentId" id="0079">Parágrafo único. Os pedidos de mudança de uso para os lotes do PIU-ACJ estão sujeitos às disposições estabelecidas na Lei nº 16.402, de 22 de março de 2016 - LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 79"></Comments>

					<p class="commentable" @click="defineCommentId" id="0080">Art. 9º Aplicam-se na área do Perímetro de Adesão do PIU-ACJ os parâmetros urbanísticos de coeficiente de aproveitamento, gabaritos de altura máxima, fator de planejamento e cota parte de terreno estabelecidos para as Áreas de Transformação e Qualificação, constantes do Quadro 2 desta lei, e, subsidiariamente, o disposto na LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 80"></Comments>

					<p class="commentable" @click="defineCommentId" id="0081">Parágrafo único. Os empreendimentos em ZEIS deverão seguir os parâmetros de gabarito de altura máxima das edificações definidos nesta lei e os demais parâmetros da Lei nº 16.402, de 2016 – LPUOS, devendo também ser observada a disciplina constante de decretos específicos no que não excepcionados por esta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 81"></Comments>

					<p class="commentable" @click="defineCommentId" id="0082">Art. 10. A emissão de alvarás de edificação nova ou de reforma com ampliação de área construída para empreendimentos situados no Compartimento Ambiental de Várzea está condicionada à apresentação, pelo empreendedor, de parecer técnico favorável à execução das obras, considerando: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 82"></Comments>

					<p class="commentable" @click="defineCommentId" id="0083">I - o risco de recalque das fundações; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 83"></Comments>

					<p class="commentable" @click="defineCommentId" id="0084">II - a estabilidade das paredes de escavação e das margens dos cursos d’água; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 84"></Comments>

					<p class="commentable" @click="defineCommentId" id="0085">III - a profundidade do lençol freático; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 85"></Comments>

					<p class="commentable" @click="defineCommentId" id="0086">IV - a capacidade de suporte do solo; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 86"></Comments>

					<p class="commentable" @click="defineCommentId" id="0087">V - a suscetibilidade à ocorrência de alagamentos a partir da solução do projeto apresentado. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 87"></Comments>

					<p class="commentable" @click="defineCommentId" id="0088">§ 1º Para os empreendimentos citados no “caput” deste artigo, os pavimentos em subsolo deverão ser implantados, no mínimo, a 1m (um metro) acima do nível do lençol freático existente. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 88"></Comments>

					<p class="commentable" @click="defineCommentId" id="0089">§ 2º O Executivo regulamentará a forma de apresentação do parecer técnico citado no “caput” deste artigo, bem como os órgãos responsáveis pela sua análise. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 89"></Comments>

					<p class="commentable" @click="defineCommentId" id="0090">Art. 11. Nos empreendimentos em lotes com frente aos Eixos Estratégicos, é obrigatória a adoção dos seguintes parâmetros qualificadores da ocupação: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 90"></Comments>

					<p class="commentable" @click="defineCommentId" id="0091">I - limite máximo de 25% (vinte e cinco por cento) de vedação da testada do lote com muros; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 91"></Comments>

					<p class="commentable" @click="defineCommentId" id="0092">II - largura mínima de 5m (cinco metros) para passeios públicos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 92"></Comments>

					<p class="commentable" @click="defineCommentId" id="0093">III - frente mínima dos lotes igual a 20m (vinte metros). <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 93"></Comments>

					<p class="commentable" @click="defineCommentId" id="0094">Parágrafo único. Em contrapartida à doação de área para alargamento da calçada: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 94"></Comments>

					<p class="commentable" @click="defineCommentId" id="0095">I - fica dispensado o recuo obrigatório de frente; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 95"></Comments>

					<p class="commentable" @click="defineCommentId" id="0096">II - os potenciais construtivos básico e máximo do remanescente do lote serão calculados em função da área original do terreno, não será cobrada outorga onerosa do direito de construir relativa ao potencial construtivo adicional da área doada. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 96"></Comments>

					<p class="commentable" @click="defineCommentId" id="0097">Art. 12. Nas Áreas de Transformação T1 e T2, fica autorizada a instalação dos usos R2v, conforme definidos no art. 94 da Lei nº 16.402, de 2016 – LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 97"></Comments>

					<p class="commentable" @click="defineCommentId" id="0098">Parágrafo único. Os demais usos das Áreas de Transformação T1 e T2 deverão observar o Quadro 4 da Lei nº 16.402, de 2016 – LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 98"></Comments>

					<p class="commentable" @click="defineCommentId" id="0099">Art. 13. As edificações com altura superior a 10m (dez metros) localizadas nas vias com largura inferior a 18m (dezoito metros) situadas nas Áreas de Transformação T1 e T2 terão recuo frontal mínimo de 5m (cinco metros).  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 99"></Comments>

					<p class="commentable" @click="defineCommentId" id="0100">Art. 14. Nas Zonas Eixo de Estruturação da Transformação Metropolitana Previstas - ZEMP das Áreas de Transformação, será observada a disciplina prevista no artigo 83 do PDE.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 100"></Comments>

					<p class="commentable" @click="defineCommentId" id="0101">Art. 15. Nos lotes contidos nas Zonas Eixo de Estruturação da Transformação Metropolitana – ZEM e Zona Eixo de Estruturação da Transformação Urbana - ZEU do Perímetro Expandido do PIU-ACJ, aplicam-se as seguintes disposições: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 101"></Comments>

					<p class="commentable" @click="defineCommentId" id="0102">I - o coeficiente de aproveitamento máximo será igual a 4,0 (quatro); <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 102"></Comments>

					<p class="commentable" @click="defineCommentId" id="0103">II - dispensa de atendimento ao gabarito de altura máxima das edificações; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 103"></Comments>

					<p class="commentable" @click="defineCommentId" id="0104">III - atendimento dos demais parâmetros de ocupação definidos no Quadro 3 da Lei nº 16.402, de 2016 – LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 104"></Comments>

					<p class="commentable" @click="defineCommentId" id="0105"> Art. 16. O atendimento habitacional correspondente às áreas demarcadas como ZEIS nas AIU do ACJ que forem atingidas pelo Plano de Melhoramentos Públicos do Programa de Intervenções desta lei, indicado em seus Mapas V e VII, será realizado em terrenos situados na área de abrangência do PIU–ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 105"></Comments>

					<p class="commentable" @click="defineCommentId" id="0106"> § 1º Em terrenos não demarcados originalmente como ZEIS onde for realizado o atendimento habitacional previsto no “caput” deste artigo, deverão ser mantidos os percentuais de área construída total por usos residenciais e não residenciais do Quadro 4 da Lei nº 16.050, de 2014 – PDE, previstos para as ZEIS de origem. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 106"></Comments>

					<p class="commentable" @click="defineCommentId" id="0107"> § 2º As famílias atingidas pela implantação do Plano de Melhoramentos Públicos nas ZEIS indicadas no “caput” deste artigo serão atendidas nas novas áreas. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 107"></Comments>

					<p class="commentable" @click="defineCommentId" id="0108">
					§ 3º Os estudos técnicos para a indicação dos terrenos destinados ao atendimento habitacional previsto no “caput” deste artigo caberão à SP-Urbanismo, com a aprovação do Conselho Gestor da correspondente AIU e da Secretaria Municipal de Habitação – SEHAB. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 108"></Comments>

					<p class="commentable" @click="defineCommentId" id="0109"> § 4º As obras para a implantação dos empreendimentos previstos neste artigo serão previstas em Planos de Ação Integrada, e poderão ser custeados com recursos advindos de contratos de gestão firmados entre a SP-Urbanismo, a Companhia Metropolitana de Habitação - COHAB e a Prefeitura do Município de São Paulo. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 109"></Comments>

					<p class="commentable" @click="defineCommentId" id="0110"> Art. 17. A delimitação de áreas para o desenvolvimento de novos projetos de intervenção urbana no Perímetro Expandido deverá ser precedida de diagnóstico específico da área objeto de intervenção, com caracterização dos seus aspectos socioterritoriais, bem como de apresentação de programa de interesse público da futura intervenção, observando-se a regulamentação vigente para sua elaboração, os parâmetros de uso e ocupação do solo definidos nos quadros da Lei nº 16.402, de 2016 – LPUOS, e sua compatibilidade com o PIU-ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 110"></Comments>

					<h5>Seção II - Incentivos</h5>
					<p class="commentable" @click="defineCommentId" id="0111"> Art. 18. Na hipótese de doação de parcela de imóvel à Prefeitura do Município de São Paulo para execução de melhoramentos públicos destinados à implantação das áreas verdes, equipamentos públicos e melhoramentos viários indicados nos Mapas VII e VIII desta lei, o potencial construtivo básico e o potencial construtivo máximo do lote remanescente serão calculados em função de sua área original, não sendo cobrada outorga onerosa do direito de construir relativa ao potencial construtivo adicional da área doada. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 111"></Comments>

					<p class="commentable" @click="defineCommentId" id="0112"> § 1º O proprietário do imóvel poderá optar entre o benefício previsto no “caput” deste artigo e a transferência total ou parcial do direito de construir correspondente ao potencial construtivo relativo à área doada, de acordo com as disposições dos artigos 122 e seguintes do PDE. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 112"></Comments>

					<p class="commentable" @click="defineCommentId" id="0113"> § 2º O incentivo previsto neste artigo não se aplica aos lotes e glebas com área superior a 20.000m² (vinte mil metros quadrados).  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 113"></Comments>

					<p class="commentable" @click="defineCommentId" id="0114"> Art. 19. Os lotes localizados em Zona Especial de Proteção Ambiental – ZEPAM poderão utilizar até o coeficiente de aproveitamento máximo para a implantação de Empreendimentos de Habitação de Interesse Social e equipamentos públicos. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 114"></Comments>

					<p class="commentable" @click="defineCommentId" id="0115"> Parágrafo único. A adoção da medida prevista no “caput” somente será possível quando associada à implantação de parque público ou de livre fruição pública na porção remanescente da zona. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 115"></Comments>

					<p class="commentable" @click="defineCommentId" id="0116"> Art. 20. As Zonas Especiais de Preservação Ambiental – ZEPAM, bem como as Áreas Remanescentes do Bioma de Mata Atlântica identificadas no Plano Municipal de Conservação e Recuperação da Mata Atlântica – PMMA, poderão transferir potencial construtivo adicional para lotes integrantes das áreas de intervenção urbana. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 116"></Comments>

					<p class="commentable" @click="defineCommentId" id="0117"> Parágrafo único. O potencial construtivo transferido nos termos do “caput” não será considerado no cálculo do coeficiente de aproveitamento máximo dos lotes receptores, até o limite de correspondente a 20% (vinte por cento) do potencial construtivo total do lote receptor. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 117"></Comments>

					<p class="commentable" @click="defineCommentId" id="0118"> Art. 21. Nos lotes com frente para os Eixos Estratégicos previstos no Quadro 1A desta lei e demarcados em seu Mapa III, respeitados os limites da taxa de ocupação, não são computáveis as áreas construídas ao nível da rua, destinadas a usos classificados na categoria não residencial. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 118"></Comments>

					<p class="commentable" @click="defineCommentId" id="0119"> § 1º Para fins de aplicação do “caput” deste artigo, poderão ser consideradas áreas construídas no pavimento imediatamente superior ou inferior de acesso direto ao logradouro, desde que façam parte do mesmo compartimento edificado. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 119"></Comments>

					<p class="commentable" @click="defineCommentId" id="0120"> § 2º Os lotes adjacentes aos parques da orla do Rio Jurubatuba e Guarapiranga poderão usufruir dos incentivos previstos no "caput" deste artigo, garantido o limite máximo de 25% (vinte e cinco por cento) de vedação da testada do lote com muros. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 120"></Comments>

					<p class="commentable" @click="defineCommentId" id="0121"> § 3º Nas demais áreas aplicam-se as disposições do inciso VII do “caput” do artigo 62 da LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 121"></Comments>

					<p class="commentable" @click="defineCommentId" id="0122"> § 4º Até a respectiva declaração de vigência da disciplina prevista no § 1º do artigo 83 do PDE, aplica-se o disposto no “caput” deste artigo aos lotes que tenham, no momento da entrada em vigor desta lei, frente para logradouros oficiais demarcados como Eixos Estratégicos, previstos no Quadro 1A desta lei e demarcados em seu Mapa III. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 122"></Comments>

					<p class="commentable" @click="defineCommentId" id="0123"> Art. 22. Aos lotes com frente para os Eixos Estratégicos, demarcados no Mapa III desta lei, serão concedidas, de forma gratuita: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 123"></Comments>

					<p class="commentable" @click="defineCommentId" id="0124"> I - área adicional de construção não computável, equivalente a 10% (dez por cento) do potencial construtivo máximo da parcela do lote contida na faixa de 100m, contada a partir do alinhamento frontal do lote; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 124"></Comments>

					<p class="commentable" @click="defineCommentId" id="0125"> II - área adicional de construção não computável equivalente a 10% (dez por cento) do potencial construtivo máximo da área resultante do remembramento dos lotes menores que 1.000m² (mil metros quadrados) que resultarem em um lote de até 2.500m² (dois mil e quinhentos metros quadrados). <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 125"></Comments>

					<p class="commentable" @click="defineCommentId" id="0126"> § 1º Os benefícios previstos nos incisos I e II do “caput” deste artigo poderão ser aplicados cumulativamente. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 126"></Comments>

					<p class="commentable" @click="defineCommentId" id="0127"> § 2º Os lotes adjacentes aos parques da orla do Rio Jurubatuba e Guarapiranga poderão usufruir dos incentivos previstos neste artigo. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 127"></Comments>

					<p class="commentable" @click="defineCommentId" id="0128"> Art. 23. Nos usos residenciais localizados nas Áreas de Transformação T2, nas Áreas de Qualificação Q2, Q3 e Q4, e nas Faixas de indução, demarcadas no Mapa III desta lei, não serão computáveis áreas cobertas em qualquer pavimento destinadas às áreas comuns de circulação, incluindo a circulação vertical, até o limite de 20% da área coberta do pavimento. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 128"></Comments>

					<p class="commentable" @click="defineCommentId" id="0129"> Art. 24. Os proprietários de glebas ou lotes com área acima de 20.000m2 (vinte mil metros quadrados) que protocolarem o projeto de parcelamento no prazo de 5 (cinco) anos a partir da entrada em vigor desta lei terão direito ao incremento de 20% (vinte por cento) do potencial construtivo máximo dos lotes resultantes, tomados como referência os índices estabelecidos no Quadro 3 desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 129"></Comments>

					<p class="commentable" @click="defineCommentId" id="0130"> § 1º A concessão do incentivo previsto no “caput” deste artigo não impede a utilização cumulativa de benefícios previstos na regra geral para projetos de parcelamento vinculados a projetos de edificação. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 130"></Comments>

					<p class="commentable" @click="defineCommentId" id="0131"> § 2º Na hipótese prevista no “caput” deste artigo, a pedido do proprietário, com a aprovação do Conselho Gestor da AIU em que se encontra o imóvel e da Secretaria Municipal de Habitação - SEHAB, as áreas demarcadas como ZEIS poderão ser realocadas dentro do próprio lote ou gleba, sendo a área realocada proporcional à área original, tendo em vista o quadro de áreas resultante do parcelamento. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 131"></Comments>

					<p class="commentable" @click="defineCommentId" id="0132"> § 3º O coeficiente de aproveitamento máximo dos lotes resultantes do parcelamento previsto neste artigo não poderá exceder a 6,0 (seis). <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 132"></Comments>

					<p class="commentable" @click="defineCommentId" id="0133">§ 4º Na hipótese do aproveitamento das glebas ou lotes previstas no “caput” dependerem de elaboração de projeto de intervenção urbana específico, o prazo de 5 anos ficará suspenso durante a sua elaboração, promovida ou coordenada pela empresa SP-Urbanismo.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 133"></Comments>

					<h5>Seção III - Regras Específicas das AIU</h5>
					<p class="commentable" @click="defineCommentId" id="0134">Art. 25. Com o objetivo de incrementar a diversidade de usos, não será considerada computável, nos empreendimentos não residenciais localizados nos lotes da Faixa de Indução, a área coberta ocupada em qualquer pavimento com circulação, manobra e estacionamento de veículos, desde que, cumulativamente: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 134"></Comments>

					<p class="commentable" @click="defineCommentId" id="0135">I - o número de vagas, exceto as especiais, motocicletas e bicicletas, não ultrapasse 1 (uma) vaga para cada 35m² (trinta e cinco metros quadrados) de área construída computável, desprezadas as frações; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 135"></Comments>

					<p class="commentable" @click="defineCommentId" id="0136">II - seja observada a cota de garagem máxima igual a 25 m² (vinte e cinco metros quadrados) por vaga. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 136"></Comments>

					<p class="commentable" @click="defineCommentId" id="0137">Art. 26. Nos lotes lindeiros aos logradouros R. Cap. Thiago Luz, R. Paulo Eiró, Praça Floriano Peixoto, Praça Salim Farah Maluf e R. Ten. Cel. Carlos da Silva Araújo, pertencentes à área histórica de Santo Amaro e integrantes da Zona de Estruturação Urbana – ZEU, Zona de Centralidade – ZC e Zona Especial de Interesse Social – ZEIS, as edificações deverão ser realizadas nos alinhamento dos lotes. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 137"></Comments>

					<h5>Seção IV - Dos Projetos Estratégicos</h5>

					<h6>Subseção I – Disposições Gerais</h6>
					<p class="commentable" @click="defineCommentId" id="0138">Art. 27. Os Projetos Estratégicos serão elaborados diretamente pela SP-Urbanismo ou sob sua coordenação e deverão conter diretrizes que caracterizam seu programa de interesse público contendo regras especificas de parcelamento e uso do solo, respeitando os parâmetros urbanísticos previstos no Quadro 2 desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 138"></Comments>

					<p class="commentable" @click="defineCommentId" id="0139">Parágrafo único. Os Projetos Estratégicos serão implantados por intermédio de Projetos de Intervenção Urbana específicos, podendo ser utilizados para esta finalidade quaisquer dos instrumentos de política urbana ou gestão ambiental previstos na Lei nº 16.050, de 2014 – PDE, ou deles decorrentes.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 139"></Comments>

					<p class="commentable" @click="defineCommentId" id="0140">Art. 28. A identificação dos perímetros de estudo para a implantação de Projetos Estratégicos será realizada pela empresa SP-Urbanismo, mediante justificativa que inclua o diagnóstico da área objeto de intervenção, com caracterização dos seus aspectos socioterritoriais, e exposição do programa de interesse público da futura intervenção.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 140"></Comments>

					<p class="commentable" @click="defineCommentId" id="0141">Art. 29. Os Projetos Estratégicos deverão indicar as áreas públicas que permanecerão de titularidade do Município e as áreas transferíveis aos particulares, inclusive por intermédio de permuta por empreendimentos referentes à implantação do respectivo Projeto Estratégico. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 141"></Comments>

					<p class="commentable" @click="defineCommentId" id="0142">§ 1º Quando implantados nos Projetos Estratégicos, os Empreendimentos de Habitação de Interesse Social – EHIS deverão atender às proporções de atendimento das faixas de HIS e HMP previstas na Lei nº 16.050, de 2014 - PDE e do Decreto 57.377, de 2016, sendo as unidades de Habitação de Interesse Social obrigatoriamente destinadas à formação de parque público, a ser disponibilizado mediante locação social ou ocupação temporária por beneficiários de bolsa-aluguel. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 142"></Comments>

					<p class="commentable" @click="defineCommentId" id="0143">§ 2º O potencial construtivo máximo dos Projetos Estratégicos será calculado pela soma dos potencias construtivos máximos dos lotes ou glebas originais, cabendo ao respectivo Projeto de Intervenção Urbana definir sua distribuição pelos lotes resultantes. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 143"></Comments>

					<p class="commentable" @click="defineCommentId" id="0144">§ 3º Os lotes ou glebas privados, quando contidos nos perímetros dos Projetos Estratégicos, poderão ser objeto de desapropriação para remembramento aos lotes públicos e posterior reparcelamento e revenda. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 144"></Comments>

					<p class="commentable" @click="defineCommentId" id="0145">Art. 30. Nos Projetos Estratégicos, as destinações de áreas públicas para sistema viário deverão considerar os melhoramentos previstos nesta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 145"></Comments>

					<p class="commentable" @click="defineCommentId" id="0146">Art. 31. A contrapartida financeira em outorga onerosa devida para a implantação de empreendimentos privados no âmbito dos Projetos Estratégicos poderá ser substituída pela execução das intervenções contidas nos Quadro 3 desta lei, cujos valores serão calculados segundo critério de equivalência financeira a ser estabelecido quando da elaboração de seus respectivos Projetos de Intervenção Urbana. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 146"></Comments>

					<p class="commentable" @click="defineCommentId" id="0147">Art. 32. Na hipótese de realização de parceria público-privada para o desenvolvimento imobiliário do Pátio do Metrô “Guido Caloi” e da Subestação Xavantes, deverá ser elaborado Projeto de Intervenção urbana específico, observados os parâmetros de ocupação definidos no quadro 2 desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 147"></Comments>

					<h6>Subseção II – Do Projeto Estratégico Interlagos</h6>

					<p class="commentable" @click="defineCommentId" id="0148">Art. 33. Fica instituído o Projeto Estratégico Interlagos, que estabelece a disciplina especial de parcelamento, uso e ocupação do solo do território abrangido pelo perímetro constante do Mapa 9, nos termos do art. 15 da Lei nº 16.402/2016, aplicando-se-lhe os parâmetros urbanísticos constantes do Quadro 2 e as seguintes disposições: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 148"></Comments>

					<p class="commentable" @click="defineCommentId" id="0149">I - o Autódromo de Interlagos será objeto de alienação, com encargo de: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 149"></Comments>

					<p class="commentable" @click="defineCommentId" id="0150">a) realizar a gestão e manutenção da pista e das atividades automobilísticas pelo adquirente, pelo prazo mínimo assinalado em edital de licitação destinado à alienação; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 150"></Comments>

					<p class="commentable" @click="defineCommentId" id="0151">b) promover a implantação, gestão e forma de manutenção do Parque Interlagos, abrangendo área mínima definida no Mapa 9 desta Lei, garantindo-se: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 151"></Comments>

					<p class="commentable" @click="defineCommentId" id="0152">i. a implantação de passagens de acesso ao parque, sobre ou sob a pista, a partir do sistema viário do entorno, contemplando acessibilidade universal e de ciclistas em, no mínimo, 3 pontos de seu perímetro, afastados entre si em, no mínimo 300m. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 152"></Comments>

					<p class="commentable" @click="defineCommentId" id="0153">ii. a recuperação do curso d´água intermitente existente e seu redesenho associado às áreas de lazer e contemplação do parque. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 153"></Comments>

					<p class="commentable" @click="defineCommentId" id="0154">iii. a implantação de área pública de lazer junto ao lago de Interlagos, conforme Mapa 9 desta Lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 154"></Comments>

					<p class="commentable" @click="defineCommentId" id="0155">iv. fruição pública, ressalvada a hipótese de sua utilização para eventos privados na forma prevista em edital de licitação destinado à alienação. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 155"></Comments>

					<p class="commentable" @click="defineCommentId" id="0156">c) reurbanizar as Áreas de ZEIS - 1 do entorno, apontadas no Mapa 9 desta Lei, contemplando 110.500m² (cento e dez mil e quinhentos metros quadrados) de área construída computável para Habitação de Interesse Social, por meio de: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 156"></Comments>

					<p class="commentable" @click="defineCommentId" id="0157"> i. com a construção de, no mínimo, 1.579 (mil, quinhentas e setenta e nove) unidades de habitação de Interesse Social, ou  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 157"></Comments>

					<p class="commentable" @click="defineCommentId" id="0158"> ii. depósito do valor correspondente na conta segregada do FUNDURB da AIU Interlagos. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 158"></Comments>

					<p class="commentable" @click="defineCommentId" id="0159">§ 1º O atendimento nas áreas de ZEIS 1 apontadas na alínea "c" do inciso I deste artigo deve ser prioritário às famílias hoje residentes, devendo as habitações excedentes ser destinadas observando-se a lista de atendimento prioritário do PIU ACJ.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0160">§ 2º A realização do plano de reurbanização das favelas poderá ser delegada à SP-Urbanismo ou à Companhia Metropolitana de Habitação de São Paulo - COHAB. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 160"></Comments>

					<p class="commentable" @click="defineCommentId" id="0161">II. Ficam permitidos todos os usos de categoria R e NR, com exceção dos usos Ind-2 e Ind-3; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 161"></Comments>

					<p class="commentable" @click="defineCommentId" id="0162">III. Não se aplicam os índices de destinação de área pública definidos no Quadro 2 da Lei nº 16.402, de 2016 – LPUOS; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 162"></Comments>

					<p class="commentable" @click="defineCommentId" id="0163">IV. Não se aplicam as disposições dos artigos 111 e ss. da lei 16.050/2014 - PDE; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 163"></Comments>

					<p class="commentable" @click="defineCommentId" id="0164">Art. 34. O Projeto Estratégico Interlagos tem como diretrizes gerais: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 164"></Comments>

					<p class="commentable" @click="defineCommentId" id="0165">I. Garantir a qualidade do Autódromo como equipamento capaz de receber eventos de esporte a motor de classe mundial; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 165"></Comments>

					<p class="commentable" @click="defineCommentId" id="0166">II. Assegurar a integração do autódromo ao contexto urbano envoltório, por intermédio da implantação de praças de acesso qualificadas, com passagens sob ou sobre a pista; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 166"></Comments>

					<p class="commentable" @click="defineCommentId" id="0167">III. Prever a implantação, gestão e forma de manutenção do Parque Manoel de Teffe, definido no Mapa 9 desta Lei, contemplando sua conexão com a área de lazer Parque Interlagos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 167"></Comments>

					<p class="commentable" @click="defineCommentId" id="0168">IV. Promover a interconectividade dos empreendimentos do autódromo por intermédio de passagens acessíveis sobre ou sob a pista. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 168"></Comments>

					<p class="commentable" @click="defineCommentId" id="0169">V. manejar as cotas altimétricas de empreendimentos que venham a se instalar no perímetro do autódromo, a fim de se preservar a visibilidade da pista a partir da perspectiva dos expectadores dos eventos. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 169"></Comments>
				</section>

				<section id="capitulo_3">
					<h4>CAPÍTULO III - DO PROGRAMA DE INTERVENÇÕES</h4>
					<p class="commentable" @click="defineCommentId" id="0170">Art. 35. O Programa de Intervenções do PIU-ACJ compreende:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 170"></Comments>

					<p class="commentable" @click="defineCommentId" id="0171">I - a execução do Plano de Melhoramentos Viários indicado no Mapa VIII desta lei e descrito em seu Quadro 1B; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 171"></Comments>

					<p class="commentable" @click="defineCommentId" id="0172">II - a implantação da rede de parques, praças e áreas públicas indicadas no Mapa VI desta lei e relacionadas em seu Quadro 1C; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 172"></Comments>

					<p class="commentable" @click="defineCommentId" id="0173">III - a requalificação de logradouros, compreendendo melhorias de passeios, de pavimento, de arborização urbana e paisagismo, de acessibilidade e de mobiliário urbano, o reordenamento de sinalização viária horizontal, vertical e semafórica, correções geométricas, ciclovias e ciclofaixas, bem como de soluções não estruturais de drenagem, em especial nos Eixos Estratégicos, Eixos Ambientais e nos logradouros indicados no Mapa VIII desta lei e descritos em seu Quadro 3; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 173"></Comments>

					<p class="commentable" @click="defineCommentId" id="0174">IV - a execução de obras de drenagem para contenção ou mitigação de alagamentos na área do ACJ previstas no Mapa VIII desta lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 174"></Comments>

					<p class="commentable" @click="defineCommentId" id="0175">V - o subsídio à ampliação e melhoria do sistema de transporte coletivo de média capacidade, incluindo a implantação ou reforma de corredores de ônibus; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 175"></Comments>

					<p class="commentable" @click="defineCommentId" id="0176">VI - a provisão habitacional de interesse social, podendo abranger:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 176"></Comments>

					<p class="commentable" @click="defineCommentId" id="0177">a) a aquisição de terrenos para subsidio à produção habitacional de interesse social; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 177"></Comments>

					<p class="commentable" @click="defineCommentId" id="0178">b) a construção de parque público de Empreendimentos de Habitação de Interesse Social – EHIS e Empreendimentos de Habitação de Mercado Popular – EHMP, inclusive com a implantação de uso misto nas edificações, nos termos da legislação de regência; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 178"></Comments>

					<p class="commentable" @click="defineCommentId" id="0179">c) a regularização fundiária; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 179"></Comments>

					<p class="commentable" @click="defineCommentId" id="0180">d) a reurbanização de assentamentos precários e a reforma de edificações existentes; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 180"></Comments>

					<p class="commentable" @click="defineCommentId" id="0181">e) o atendimento habitacional temporário subsidiário às ações promovidas diretamente pelo Poder Público quando impactados pelo Programa de Intervenções do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 181"></Comments>

					<p class="commentable" @click="defineCommentId" id="0182">f) a atualização do Sistema de Informações para Habitação Social - HABISP, da área de abrangência do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 182"></Comments>

					<p class="commentable" @click="defineCommentId" id="0183">g) a realização de parcerias com o setor privado para a provisão de habitação de interesse social; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 183"></Comments>

					<p class="commentable" @click="defineCommentId" id="0184">VII - a implantação e melhorias da rede de equipamentos públicos, incluindo:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 184"></Comments>

					<p class="commentable" @click="defineCommentId" id="0185">a) equipamentos sociais e urbanos necessários ao adensamento e melhoria da qualidade de vida da região; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 185"></Comments>

					<p class="commentable" @click="defineCommentId" id="0186">b) a requalificação dos equipamentos existentes; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 186"></Comments>

					<p class="commentable" @click="defineCommentId" id="0187">c) a aquisição de terrenos para as finalidades previstas neste inciso; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 187"></Comments>

					<p class="commentable" @click="defineCommentId" id="0188">VIII - ações de preservação do patrimônio histórico, ambiental e cultural, incluindo-se subsídios à restauração e à readequação de edificações de interesse histórico públicas ou privadas, neste caso, em parceria com os respectivos proprietários, atendido o interesse público; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 188"></Comments>

					<p class="commentable" @click="defineCommentId" id="0189">IX - a desapropriação de imóveis, inclusive para posterior revenda, necessárias à implantação dos Projetos de Intervenção Urbana, Projetos Estratégicos e ao programa de intervenções previstos nesta lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 189"></Comments>

					<p class="commentable" @click="defineCommentId" id="0190">X - o subsídio ou fomento para transformação ou requalificação do território do ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 190"></Comments>

					<p class="commentable" @click="defineCommentId" id="0200">XI - contratação de projetos de desenvolvimento e detalhamento dos Planos de Ação Integrada e Projetos Estratégicos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 200"></Comments>

					<p class="commentable" @click="defineCommentId" id="0201">XII - a implantação dos Projetos Estratégicos derivados deste PIU, nos termos desta lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 201"></Comments>

					<p class="commentable" @click="defineCommentId" id="0202">XIII - a estruturação do programa de desenvolvimento econômico específico para a dinamização das indústrias instaladas ou que vierem a se instalar na Zona Predominantemente Industrial (ZPI - 1) do distrito do Socorro. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 202"></Comments>

					<p class="commentable" @click="defineCommentId" id="0203">§ 1º A execução das obras previstas no Programa de Intervenções estará sujeita ao detalhamento, por intermédio de Planos de Ação Integrada desenvolvidos pela SP-Urbanismo, e à aprovação dos projetos nos órgãos de licenciamento ambiental e de preservação do patrimônio histórico e cultural, quando exigido pela legislação vigente. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 203"></Comments>

					<p class="commentable" @click="defineCommentId" id="0204">§ 2º A provisão habitacional de interesse social será realizada atendendo-se, preferencialmente, a população moradora do ACJ, observando-se o Quadro 1D desta lei.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 204"></Comments>

					<p class="commentable" @click="defineCommentId" id="0205">Art. 36. Fica aprovado o Plano de Melhoramentos Públicos previsto nesta lei, que engloba o Plano de Melhoramentos Viários indicado em seu Mapa VII e descrito no seu Quadro 1B, e as Áreas Verdes indicadas no seu Mapa VI e relacionadas no seu Quadro 1C. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 205"></Comments>

					<p class="commentable" @click="defineCommentId" id="0206">§ 1º Os melhoramentos viários de que trata o “caput” deste artigo estão configurados nas Plantas nº 26.9XX/01 a 26.9XX/24, Classificação J-5XX, do Arquivo da Superintendência de Projetos Viários.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 206"></Comments>

					<p class="commentable" @click="defineCommentId" id="0207">§ 2º Fica o Poder Público autorizado a receber, a título de doação, as áreas necessárias à implantação do Plano de Melhoramentos Públicos a que se refere o “caput” deste artigo, aplicando-se os incentivos compensatórios previstos nesta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 207"></Comments>

					<p class="commentable" @click="defineCommentId" id="0208">§ 3º Para atendimento das metas do Programa de Intervenções, será admitida a destinação de parcela das áreas assinaladas no Mapa V desta lei para uso institucional, a partir de proposta do órgão ou instituição que demandar essa destinação, mediante parecer favorável da SP-Urbanismo e ouvido o Conselho Gestor da AIU específica onde se encontra o lote. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 208"></Comments>

					<p class="commentable" @click="defineCommentId" id="0209">Art. 37. Ficam aprovadas as seguintes diretrizes viárias: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 209"></Comments>

					<p class="commentable" @click="defineCommentId" id="0210">I. Implantação de via coletora, conforme os parâmetros estabelecidos pelo Quadro 2B da Lei 16.402/2016, conectando a Av. Interlagos (CodLog 09220-7), desde a esquina com a Av. Eng. Eusébio Stevaux (CodLog 06810-1), até a R. Miguel Yunes (CadLog 13035-4); <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 210"></Comments>

					<p class="commentable" @click="defineCommentId" id="0211">II. Implantação de via local, conforme os parâmetros estabelecidos pelo Quadro 2B da Lei 16.402/2016, conectando a Av. Interlagos (CodLog 09220-7) à R. Alessandro Manzoni (CodLog 02529-1), à R. Elydio Rodrigues (CodLog 09217-7), à R. Daniel Defoe (CodLog 13138-5) e à Al. Afonso Bocchiglieri (CodLog 00259-3); <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 211"></Comments>

					<p class="commentable" @click="defineCommentId" id="0212">III. Implantação de via local, conforme os parâmetros estabelecidos pelo Quadro 2B da Lei 16.402/2016, conectando a Av. Guido Caloi (CodLog 35858-4) à via projetada JU-V; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 212"></Comments>

					<p class="commentable" @click="defineCommentId" id="0213">IV. Implantação de via local, conforme os parâmetros estabelecidos pelo Quadro 2B da Lei 16.402/2016, conectando a R. Paulo Hankar (CadLog 64929-5), desde a esquina com a R. Henrique Berlaze (CodLog 74173-6), até a R. Manuel Moreira de Sá (CodLog 12817-1). <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 213"></Comments>

					<p class="commentable" @click="defineCommentId" id="0214">§ 1º As diretrizes viárias listadas no caput poderão ser implantadas por meio do parcelamento dos lotes ou glebas, conforme os parâmetros estabelecidos pelo Título III e pelo Quadro 2 da LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 214"></Comments>

					<p class="commentable" @click="defineCommentId" id="0215">§ 2º Para execução das diretrizes viárias estabelecidas no caput, poderá ser utilizado o incentivo do Art. 81 da LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 215"></Comments>

					<p class="commentable" @click="defineCommentId" id="0216">Art. 38. Ficam aprovadas as seguintes diretrizes viárias para a Via Parque Jurubatuba: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 216"></Comments>

					<p class="commentable" @click="defineCommentId" id="0217">I. Implantação de via estrutural e ponte sobre o Rio Guarapiranga, desde a Av. Guido Caloi (CodLog 35858-4), nas proximidades da Estação Santo Amaro da Linha 5 – Lilás do Metrô, até a Av. Guarapiranga (CodLog 08368-2), junto ao cruzamento com a Av. Atlântica (CodLog 02483-0), com extensão aproximada de 1800m, largura básica de 24m e duas faixas de rolamento por sentido; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 217"></Comments>

					<p class="commentable" @click="defineCommentId" id="0218">II. Implantação de via local, desde a R. Antônio Francisco Franca (CodLog 01725-6), nas proximidades da Pr. Nair Arvani de Medeiros (CodLog 49586-7), até a R. Prof. Oswaldo Quirino Simões (CodLog 70494-6), junto ao cruzamento com a R. Claudino José Branco (CodLog 73743-7), com extensão aproximada de 1600m, largura básica de 15m e uma faixa de rolamento por sentido; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 218"></Comments>

					<p class="commentable" @click="defineCommentId" id="0219">III. Implantação de via local, desde a R. Guaratiba (CodLog08387-9), nas proximidades da Pr. Maldivas (CodLog 35631-0), até a Av. Interlagos (CodLog 09220-7), nas proximidades da Pte. Jurubatuba / Irmã Agostina (CodLog 35608-5), com extensão aproximada de 1300m, largura básica de 15m e uma faixa de rolamento por sentido; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 219"></Comments>

					<p class="commentable" @click="defineCommentId" id="0220">IV. Implantação de via local, desde a Av. Interlagos (CodLog 09220-7), nas proximidades da Pte. Jurubatuba / Irmã Agostina (CodLog 35608-5), até a R. João Paulo da Silva (CodLog 21534-1), com extensão aproximada de 1000m, largura básica de 15m e uma faixa de rolamento por sentido; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 220"></Comments>

					<p class="commentable" @click="defineCommentId" id="0221">V. Implantação de via coletora, desde a R. Manuel de Teffe (CodLog 12802-3) até a rua sem denominação (CodLog 50037-2), com extensão aproximada de 600m, largura básica de 20m e duas faixas de rolamento por sentido. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 221"></Comments>

					<p class="commentable" @click="defineCommentId" id="0222">§ 1º O projeto da Via Parque Jurubatuba deverá prever conexões intermediárias, no mínimo, com as seguintes vias públicas: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 222"></Comments>

					<p class="commentable" @click="defineCommentId" id="0223">I. Com a via projetada JU-VII, com a via projetada JU-VIII e com a R. Periperi (CodLog 16112-8) no primeiro trecho; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 223"></Comments>

					<p class="commentable" @click="defineCommentId" id="0224">II. Com a R. Duarte Coelho, com a via projetada JU-XIV, com a via projetada JU-XV e com a via projetada JU-XVI no segundo trecho; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 224"></Comments>

					<p class="commentable" @click="defineCommentId" id="0225">III. Com a via projetada JU-XVIII, com a via projetada JU-XX, com a via projetada JU-XXI, com a R. Marabá (CodLog 12837-6), com a via projetada JU-XXII, com a R. Tanger (CodLog 32991-6) e com a travessa sem denominação transversal à Tv. Elizete (CodLog 45400-1) no terceiro trecho; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 225"></Comments>

					<p class="commentable" @click="defineCommentId" id="0226">IV. Com a R. Rio Paraiba (CodLog 48606-0) no quarto trecho; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 226"></Comments>

					<p class="commentable" @click="defineCommentId" id="0226">V. Com a via projetada IN-VII, com a via projetada IN-VIII e com a via projetada IN-IX no quinto trecho. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 226"></Comments>

					<p class="commentable" @click="defineCommentId" id="0227">§ 2º Para execução das vias listadas no caput, fica a Prefeitura autorizada a realizar tratativas junto às empresas concessionárias de serviços de infraestrutura visando o compartilhamento da faixa de domínio. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 227"></Comments>

					<p class="commentable" @click="defineCommentId" id="0228">Art. 39. Ficam revalidados para todos os fins, inclusive para aplicação do Art. 103 da Lei 16.642/2017, os alinhamentos aprovados constantes das leis de melhoramento viário: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 228"></Comments>

					<p class="commentable" @click="defineCommentId" id="0229">I. 4.861/1955; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 229"></Comments>

					<p class="commentable" @click="defineCommentId" id="0230">II. 5.880/1961; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 230"></Comments>

					<p class="commentable" @click="defineCommentId" id="0231">III. 9.075/1980; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 231"></Comments>

					<p class="commentable" @click="defineCommentId" id="0232">IV. 9.216/1981; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 232"></Comments>

					<p class="commentable" @click="defineCommentId" id="0233">V. 10.067/1986. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 233"></Comments>

					<p class="commentable" @click="defineCommentId" id="0234">Parágrafo único. Aos alinhamentos viários indicados no caput não se aplica o parágrafo único do Art. 103 da Lei n. 16.642/2017. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 234"></Comments>

					<p class="commentable" @click="defineCommentId" id="0235">Art. 40. Ficam revogados os alinhamentos viários constantes da Lei n. 10.560/1988. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 235"></Comments>
				</section>

				<section id="capitulo_4">
					<h4>CAPÍTULO IV - DA OUTORGA ONEROSA DE POTENCIAL ADICIONAL DE CONSTRUÇÃO, DAS CONTAS SEGREGADAS DO FUNDURB, SUA VINCULAÇÃO E DA DESTINAÇÃO DOS RECURSOS ARRECADADOS</h4>
					<p class="commentable" @click="defineCommentId" id="0236">Art. 41. Fica o Executivo autorizado a efetuar a outorga onerosa de potencial adicional de construção para os lotes contidos nas AIU do ACJ, na conformidade dos valores, critérios e condições estabelecidos nesta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 236"></Comments>

					<p class="commentable" @click="defineCommentId" id="0237">§ 1º Os recursos captados pela aplicação desta lei em cada AIU destinam-se à execução dos elementos do Programa de Intervenções previstos para seus territórios. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 237"></Comments>

					<p class="commentable" @click="defineCommentId" id="0238">§ 2º Cada AIU terá sua própria conta segregada no FUNDURB, cabendo ao seu respectivo Conselho Gestor encaminhar ao Conselho Gestor do FUNDURB, anualmente, uma listagem de intervenções prioritárias para implantação do Programa de Intervenções em seu território, sendo que: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 238"></Comments>

					<p class="commentable" @click="defineCommentId" id="0239">I - encerrado o Programa de Intervenções previsto para uma específica AIU, eventual saldo financeiro da conta segregada será distribuído às contas segregadas das outras AIU, mediante decisão do Conselho Gestor do FUNDURB; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 239"></Comments>

					<p class="commentable" @click="defineCommentId" id="0240">II - encerrados os Programas de Intervenções de todas AIU do ACJ, eventual saldo financeiro existente em contas segregadas será transferido à conta geral do FUNDURB. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 240"></Comments>

					<p class="commentable" @click="defineCommentId" id="0241">§ 3º Caberá ao Conselho Gestor do FUNDURB, elaborar o plano de aplicação de recursos financeiros de cada AIU, nos termos do artigo 342 do PDE. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 241"></Comments>

					<p class="commentable" @click="defineCommentId" id="0242">§ 4º O Perímetro Expandido poderá receber recursos das contas segregadas do FUNDURB das AIU para atendimento habitacional de interesse social e intervenções de drenagem e de mobilidade, desde que previstos no Programa de Intervenções do ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 242"></Comments>

					<p class="commentable" @click="defineCommentId" id="0243">Art. 42. A contrapartida financeira à outorga onerosa de potencial construtivo adicional será calculada segundo a equação definida no artigo 117 do PDE.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 243"></Comments>

					<p class="commentable" @click="defineCommentId" id="0244">§ 1º Aplicam-se no ACJ os Fatores de Planejamento (Fp) definidos no Quadro 2A desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 244"></Comments>

					<p class="commentable" @click="defineCommentId" id="0245">§ 2º O potencial construtivo adicional será alienado nos termos previstos no PDE, ou por intermédio de leilões promovidos pela empresa SP-Urbanismo para a implantação de Planos de Ação Integrada.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 245"></Comments>

					<p class="commentable" @click="defineCommentId" id="0246">§ 3º A modalidade do leilão, a quantidade de potencial construtivo adicional a ser disponibilizada e os respectivos descontos iniciais de seu valor de alienação serão definidos pelo Plano de Ação Integrada, de acordo com as condições de mercado e as necessidades de viabilidade do Programa de Intervenções, devendo cada edital de leilão prever mecanismos que garantam a aplicação dos princípios da justa distribuição dos benefícios e ônus decorrentes do processo de urbanização, da ampla publicidade e da livre concorrência entre os interessados. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 246"></Comments>

					<p class="commentable" @click="defineCommentId" id="0247">§ 4º O potencial construtivo adicional adquirido mediante leilão será imediatamente vinculado ao lote, atendendo-se, no mínimo, às seguintes disposições: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 247"></Comments>

					<p class="commentable" @click="defineCommentId" id="0248">I - o pagamento da contrapartida referente à aquisição de potencial construtivo adicional não dependerá da existência prévia de requerimento de licenciamento edilício; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 248"></Comments>

					<p class="commentable" @click="defineCommentId" id="0249">II - após o pagamento previsto no inciso I deste artigo, a SP-Urbanismo expedirá certidão declarando a quantidade de potencial construtivo adicional incorporada ao lote; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 249"></Comments>

					<p class="commentable" @click="defineCommentId" id="0250">III - não poderá haver desvinculação do potencial construtivo adicional adquirido mediante leilão vinculado ao lote; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 250"></Comments>

					<p class="commentable" @click="defineCommentId" id="0251">IV - a utilização do potencial construtivo adicional já vinculado ao lote será efetivada mediante apresentação da certidão expedida pela SP-Urbanismo no momento do licenciamento edilício.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 251"></Comments>

					<p class="commentable" @click="defineCommentId" id="0252">Art. 43. Tendo em vista os objetivos gerais do PIU-ACJ, os recursos depositados nas contas segredadas do FUNDURB deverão destinar, deduzidas as taxas, emolumentos e custos de administração: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 252"></Comments>

					<p class="commentable" @click="defineCommentId" id="0253">I - ao menos 30% (trinta por cento) dos recursos para a aquisição de terrenos destinados à produção de Habitação de Interesse Social; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 253"></Comments>

					<p class="commentable" @click="defineCommentId" id="0254">II - ao menos 30% (trinta por cento) dos recursos à implantação dos sistemas de transporte público coletivo, cicloviário e de circulação de pedestres. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 254"></Comments>

					<p class="commentable" @click="defineCommentId" id="0255">III – até 4% (quatro por cento) dos recursos à implantação do programa de desenvolvimento econômico voltado à inovação tecnológica na zona predominantemente industrial do Socorro, conforme os termos previstos no Art. 32. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 255"></Comments>
				</section>

				<section id="capitulo_5">
					<h4>CAPÍTULO V - DA GESTÃO</h4>
					<h5>Seção I - Da Atuação Concertada dos Órgãos e Entidades Municipais</h5>
					<p class="commentable" @click="defineCommentId" id="0256">Art. 44. A implantação do PIU-ACJ se dará mediante ação concertada entre os órgãos e entidades municipais, que, para que seja viabilizada a implantação do seu Programa de Intervenções, atenderão, no mínimo, às disposições desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 256"></Comments>

					<p class="commentable" @click="defineCommentId" id="0257">Parágrafo único. A coordenação das ações previstas no “caput” deste artigo caberá à empresa SP-Urbanismo, que contará com a colaboração dos demais órgãos e entidades municipais para o desempenho destas funções. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 257"></Comments>

					<p class="commentable" @click="defineCommentId" id="0258">Art. 45. Caberá à Secretaria Municipal do Verde e do Meio Ambiente: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 258"></Comments>

					<p class="commentable" @click="defineCommentId" id="0259">I - realizar o licenciamento ambiental dos empreendimentos geradores de impacto ambiental e de vizinhança do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 259"></Comments>

					<p class="commentable" @click="defineCommentId" id="0260">II - realizar o monitoramento ambiental da implantação do Programa de Intervenções de cada AIU no tocante a seu impacto ambiental; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 260"></Comments>

					<p class="commentable" @click="defineCommentId" id="0261">III - instruir os critérios de detalhamento dos projetos de espaços públicos e áreas verdes voltadas a qualificação ambiental previstos no Programa de Intervenção de cada AIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 261"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - cooperar com a empresa SP-Urbanismo no desenvolvimento dos Planos de Ação Integrada, no que tange a definição de soluções voltadas a mitigação dos problemas ambientais e da promoção de áreas verdes públicas; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">V - indicar, em consonância com os projetos desenvolvidos da empresa SP-Urbanismo, o enquadramento das áreas verdes propostas pelo PIU-ACJ no Sistema de Áreas Protegidas, Áreas Verdes e Espaços Livres (SAPAVEL). <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 46. Caberá à Secretaria Municipal de Cultura determinar diretrizes para implantação do programa de intervenções em áreas envoltórias e para projetos de recuperação de bens de interesse cultural. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 47. Caberá à Secretaria Municipal de Urbanismo e Licenciamento, além das outras atribuições previstas nesta lei: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - Coordenar o desenvolvimento de novos Projetos de Intervenção Urbana e de Projetos Estratégicos no perímetro do Arco Jurubatuba mediante interação entre órgãos da administração direta e indireta, com outras esferas de governo e com a sociedade civil;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - Coordenar o Conselho Gestor das AIU do Arco Jurubatuba; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - Realizar o controle finalístico da transformação urbana através do acompanhamento das políticas públicas e do monitoramento dos indexadores da transformação territorial; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - avaliar a adequação dos mecanismos e modelos mais adequados para a viabilização e implantação do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">V - fiscalizar os trabalhos realizados pela empresa SP-Urbanismo; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VI - identificar as áreas de propriedade do município no território das AIU e sua atualização proveniente das ações autorizadas por esta lei.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. A Secretaria Municipal de Urbanismo e Licenciamento contratará a empresa SP-Urbanismo para o desenvolvimento e detalhamento dos Planos de Ação Integrada e dos Projetos Estratégicos necessários à implantação do PIU-ACJ.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 48. Caberá a Secretaria Municipal de Habitação: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - operacionalizar o programa de atendimento da população impactada pelo Programa de Intervenções no momento inicial do Projeto, inclusive podendo aportar recursos de fontes diretas do Município; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - realizar, por intermédio da empresa COHAB-SP, a promoção de programas e soluções habitacionais, inclusive produção de unidades de Habitação de Interesse Social, de acordo com as determinações dos respectivos Planos de Ação Integrada; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - realizar, por intermédio da empresa COHAB-SP, a gestão e o monitoramento da pós-ocupação do parque público de Habitação de Interesse Social voltado para a locação social e o atendimento do programa de bolsa-aluguel; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - atender o cadastro de demanda habitacional, garantindo-se atendimento preferencial à população que atualmente residente na área de abrangência do ACJ, observando o disposto no Quadro 1D desta lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">V - realizar o cadastro socioeconômico da população de baixa renda moradora do perímetro do Arco Jurubatuba; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VI - estipular critérios para a realização de parcerias vinculadas a programas habitacionais, atendendo-se as diretrizes do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VII - cooperar com a empresa SP-Urbanismo no desenvolvimento dos Planos de Ação Integrada, no que tange a definição das soluções de Habitação de Interesse Social. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 49. Caberá à Secretaria Municipal de Transportes: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - adequar e compatibilizar a implantação dos melhoramentos viários propostos no Programa de Intervenções do PIU-ACJ com o sistema de mobilidade existente e planejado da Cidade; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - determinar os critérios e procedimentos necessários à realização de parcerias com outras esferas de governo ou privadas para viabilizar a implantação dos corredores viários e de transporte; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - cooperar com a empresa SP-Urbanismo no desenvolvimento dos Planos de Ação Integrada, no que tange a definição das soluções de mobilidade e sistema viário. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 50. Caberá à Secretaria Municipal de Serviços e Obras: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - executar e fiscalizar, por intermédio da empresa SP-Obras e do Departamento de Edificações – EDIF, a implantação do Programa de Intervenções previsto no PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - cooperar com a empresa SP-Urbanismo no desenvolvimento dos Planos de Ação Integrada, no que tange a definição de soluções voltadas ao sistema viário, drenagem e obras de arte. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 51. Caberá à Secretaria Municipal da Saúde monitorar a ocupação de áreas oriundas de processos de descontaminação do solo. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 52. Caberá à Secretaria Municipal de Trabalho e Empreendedorismo coordenar a elaboração de políticas de desenvolvimento econômico do perímetro do ACJ, propondo programas de incentivo ao emprego e renda vinculados a proposta de desenvolvimento urbano e novas infraestruturas propostas pelo PIU. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>
					<h5>Seção II - Da Atuação da Empresa São Paulo Urbanismo</h5>
					<p class="commentable" @click="defineCommentId" id="0000">Art. 53. Caberá à empresa SP-Urbanismo promover a implantação do PIU-ACJ de forma global, avaliando sistematicamente a evolução dos processos de desenvolvimento urbano em cada AIU e em seu perímetro expandido, especialmente sendo-lhe atribuídas, dentre outras constantes nesta lei e em seus estatutos, as seguintes funções: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - promover as medidas necessárias à implantação de infraestruturas urbanas que ultrapassem os limites de cada AIU individualmente considerada, inclusive celebrando ajustes com o setor público e privado com o objetivo de viabilizar a transformação urbanística, social, ambiental e econômica definida no PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - desenvolver e detalhar os Planos de Ação Integrada e os Projetos Estratégicos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - coordenar as formas de financiamento da implantação do Programa de Intervenções do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - apoiar os processos de aquisição e alienação de terras para implantação do PIU-ACJ;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">V - coordenar a execução das obras relativas ao Programa de Intervenções com as empresas SP-Obras, COHAB-SP, São Paulo Transportes – SP-Trans e Companhia de Engenharia de Tráfego - CET; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VI - esclarecer dúvidas sobre a sobreposição de atendimentos de áreas de vulnerabilidade em relação ao perímetro expandido do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VII - implantar sistemática de indicadores para utilização no Sistema Municipal de Informações, inclusive com informações georreferenciadas em meio digital; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VIII - propiciar o adequado acompanhamento da execução do Programa de Intervenções do PIU-ACJ pelo Conselho Gestor e pelos demais órgãos da Administração Direta e Indireta; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IX - secretariar os conselhos criados por esta lei e solicitar informações e esclarecimentos aos demais órgãos municipais envolvidos na implantação do Programa de Intervenções do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">X - promover a interação entre os Conselhos Gestores das AIU do ACJ e destes com a população diretamente afetada pelas intervenções urbanísticas necessárias à implantação do PIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">XI - intermediar a relação entre os órgãos do setor público e entre estes e o setor privado, com a finalidade de facilitar os processos de implantação do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">XII - estruturar as formas de financiamento e modelos jurídicos para a implantação do PIU-ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. A SP-Urbanismo:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - apresentará trimestralmente aos Conselhos Gestores das AIU relatórios que demonstrem o andamento das ações previstas no Programa de Intervenções de seus respectivos territórios; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - publicará semestralmente informações sobre o andamento da implantação de cada AIU, em linguagem acessível à população. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 54. Para a implantação do Programa de Intervenções, a empresa SP-Urbanismo utilizará as seguintes formas de financiamento e controle de recursos, dentre outras previstas na legislação empresarial: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - monitoramento permanente dos valores de mercado do potencial construtivo adicional na área de abrangência do PIU-ACJ, de modo a possibilitar a captura de parte da mais valia oriunda do desenvolvimento imobiliário por parte do Poder Público; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - aquisição e alienação de terras destinadas à produção de Habitação de Interesse Social como forma de preservação do custo da transformação relacionado à valorização territorial, nos termos e condições definidos nesta lei; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - alienação de terrenos remanescentes de processos de desapropriação que não estejam afetos à função pública ou que sejam considerados inadequados ao Programa de Intervenções; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - alienação de terrenos remanescentes de processos de implantação de seu Programa de Intervenções. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 55. A empresa SP-Urbanismo dará anuência às diretrizes urbanísticas para o parcelamento das glebas ou lotes contidos no perímetro do PIU-ACJ, sem prejuízo do atendimento às exigências previstas nos artigos 51 e 52 da LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. A anuência prevista no “caput” deste artigo será prévia e indispensável à expedição de diretrizes dos projetos de parcelamento de glebas ou lotes contidos no perímetro do ACJ, podendo a SP-Urbanismo solicitar ajustes e adaptações de caráter urbanístico nos projetos, para atendimento a disposições do PIU-ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 56. Para promover a implantação do PIU-ACJ, a SP-Urbanismo poderá:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - celebrar, participar ou intervir nos contratos que tenham por objeto a instituição de parcerias público-privadas para a implantação do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - assumir, total ou parcialmente, direitos e obrigações decorrentes dos contratos de que trata o inciso I do “caput” deste artigo; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - prestar garantias reais, fidejussórias e contratar seguros; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - explorar, gravar e alienar onerosamente os bens integrantes de seu patrimônio; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">V - participar do capital de outras empresas controladas por ente público ou privado; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VI - constituir sociedades de propósito específico, fundos de investimento imobiliário e fundos de participação em imóveis; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VII - receber delegação do Poder Executivo para promover processos desapropriatórios, exclusivamente para a implantação do Programa de Intervenções do PIU-ACJ; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">VIII - firmar compromissos de investimento, convênios, termos de parceria e outros ajustes; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IX - firmar contratos de gestão com a Administração Direta, nos termos do artigo 37, § 8º da Constituição Federal; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">X - promover as negociações e firmar ajustes institucionais com a administração direta e indireta de todas as esferas de governo, a fim de implantar o PIU-ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. Os contratos de gestão previstos no inciso IX do “caput” deste artigo poderão prever o aporte de recursos da Administração Direta para obras e intervenções capazes de desencadear e fomentar processos de desenvolvimento urbano pertinentes ao Programa de Intervenções desta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 57. A empresa SP-Urbanismo será remunerada, pela gestão da implantação do Programa de Intervenções previsto nesta lei, com 5% (cinco por cento) dos recursos arrecadados com a outorga de potencial construtivo adicional da área de abrangência de seu perímetro, além da mesma porcentagem de outras receitas eventuais advindas da implantação do PIU-ACJ.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. Sem prejuízo do previsto no “caput” deste artigo, serão devidos à SP-Urbanismo honorários em razão de sua contratação pela Administração Direta ou Indireta do Município para o desenvolvimento de Planos de Ação Integrada, Projetos Estratégicos e quaisquer outros estudos referentes ao detalhamento do PIU-ACJ, remunerados nos termos dispostos em cada avença. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>
					<h5>Seção III - Dos Conselhos Gestores das Áreas de Intervenção Urbana do Arco Jurubatuba</h5>
					<p class="commentable" @click="defineCommentId" id="0000">Art. 58. Cada AIU do ACJ contará com um Conselho Gestor, coordenado pela Secretaria Municipal de Urbanismo e Licenciamento, com participação de órgãos municipais e de entidades representativas da sociedade civil, visando instruir e auxiliar a implantação do respectivo Programa de Intervenções e o monitoramento de seu desenvolvimento. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 1º Os Conselhos Gestores são instrumentos de gestão e participação instituídos para acompanhar a implantação e propor o aperfeiçoamento do Programa de Intervenções das AIU do ACJ. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 2º Os Conselhos Gestores, nos termos do artigo 141, inciso XIV, do PDE, serão designados pelo Executivo e terão a seguinte composição: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - 9 (nove) representantes do Poder Público, designados pelo Prefeito para um período de 2 (dois) anos, com a seguinte distribuição: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">a) 1 (um) representante de cada um dos seguintes órgãos e entidades municipais:  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">i. Secretaria Municipal Urbanismo e Licenciamento;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">ii. Secretaria Municipal de Habitação; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">iii. Secretaria Municipal do Verde e do Meio Ambiente;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">iv. Secretaria do Governo Municipal; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">v. Secretaria Municipal Serviços e Obras;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">vi. Departamento do Patrimônio Histórico, da Secretaria Municipal de Cultura; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">b) 1 (um) representante da SP-Urbanismo; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">c) 2 (dois) representantes indicados entre as Prefeituras Regionais do território da respectiva AIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - 9 (nove) representantes de entidades da sociedade civil, designados para um período de 2 (dois) anos, com a seguinte distribuição: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">a) 1 (um) representante de entidades profissionais com atuação relevante na respectiva AIU;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">b) 1 (um) representante de entidades acadêmicas ou de pesquisa com atuação na respectiva AIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">c) 1 (um) representante de entidades empresariais com reconhecida atuação no Perímetro de Adesão ou nas questões pertinentes à respectiva AIU;  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">d) 1 (um) representante de organizações não governamentais com reconhecida atuação no Perímetro de Adesão da respectiva AIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">e) 2 (dois) representantes do Conselho Participativo Municipal do território de abrangência da respectiva AIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">f) 1 (um) representante do Conselho Municipal de Habitação com atuação na respectiva AIU; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">g) 2 (dois) representantes dos moradores ou trabalhadores da área do Perímetro de Adesão da respectiva AIU. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 3º Os representantes mencionados nas alíneas “a” a "d" do inciso II do § 2º deste artigo serão eleitos por seus pares em eleições diretas, organizadas a partir da inscrição prévia de candidaturas. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 4º Os representantes mencionados nas alíneas "e" e “f” do inciso II do § 2º deste artigo serão indicados por seus respectivos conselhos, na forma de seus regimentos específicos. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 5º Os representantes mencionados na alínea “g” do inciso II do § 2º deste artigo serão definidos por eleição direta com regras definidas em decreto especifico. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 6º Caberá ao representante de cada órgão ou entidade municipal informar ao Conselho Gestor, nas reuniões do respectivo grupo, do andamento das ações e atividades, relacionadas ao órgão ou entidade que representa desenvolvidas no perímetro de cada AIU. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 7º Cada representante contará com um suplente, indicado ou eleito conjuntamente ao representante titular. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 8º Caberá ao representante da SMUL o voto de desempate nas deliberações do colegiado. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">§ 9º Caberá a SP-Urbanismo instituir a Secretaria Executiva Única dos Conselhos Gestores do ACJ, responsável pelos serviços administrativos e burocráticos atribuídos aos colegiados. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 59. Os Conselhos Gestores das AIU do ACJ realizam o controle social da implantação do seu PIU, cabendo-lhes: <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">I - aprovar os Planos de Ação Integrada produzidos pela SP-Urbanismo, providenciando seu encaminhamento ao Conselho Gestor do FUNDURB; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">II - propor programas e estratégias que possam aprimorar os projetos previstos no Programa de Intervenções, nos Planos de Ação Integrada e nos Projetos Estratégicos; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">III - acompanhar o andamento dos projetos e obras relativas ao Programa de Intervenções, por meio da validação dos relatórios apresentados pela SP-Urbanismo; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">IV - acompanhar a aplicação da cota da solidariedade; <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">V - manifestar-se previamente sobre as propostas de implantação e a aplicação dos recursos vinculados à habitação de interesse social, a implantação de equipamentos públicos e a destinação a preservação do patrimônio histórico. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. A SP-Urbanismo fornecerá o apoio técnico aos Conselhos Gestores das AIU do PIU-ACJ, para auxiliar na execução de suas tarefas administrativas e burocráticas, bem como realizará a intermediação entre tais colegiados e o FUNDURB.  <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>
				</section>

				<section id="capitulo_6">
					<h4>CAPÍTULO VI - DISPOSIÇÕES FINAIS E TRANSITORIAS</h4>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 60. Os casos de dúvida e de omissão acerca dos dispositivos desta lei serão dirimidos pela CTLU, ouvida a SP-Urbanismo. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 61. Se houver divergência entre o perímetro delimitado graficamente nos mapas cartográficos integrantes desta lei e seus respectivos textos descritivos, relativos a delimitação dos Projetos Estratégicos, prevalecerá a descrição cartográfica. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 62. Aplicam-se aos imóveis localizados no perímetro do PIU-AJC os instrumentos indutores da função social da propriedade previstos no Capítulo III, Seção I, da Lei nº 16.050, de 2014 – PDE, e os incentivos e parâmetros de ocupação do solo do Título IV da lei nº 16.402, de 2016 – LPUOS. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Parágrafo único. Nas Áreas de Intervenção Urbana - AIUs definidas nesta lei, os instrumentos, incentivos e parâmetros previstos no “caput” aplicam-se quando não conflitantes com esta lei. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>

					<p class="commentable" @click="defineCommentId" id="0000">Art. 63. Esta lei entrará em vigor na data de sua publicação. <i class="small material-icons"> insert_comment</i></p>
					<Comments :commentid="commentid" v-if="commentid.id == 0"></Comments>
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
			allCommentableIds: null
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
		}
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