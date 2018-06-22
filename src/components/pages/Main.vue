<template>
<div class="consulta">
<div class="container">	
	<div class="content">
		<h1 class="title is-1">PIU Anhembi</h1>
		<h4 class="subtitle is-4">Consulta Pública</h4>
	</div>
</div>
<Mapa :attr="ol_attributes"></Mapa>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="apresentacao">
						<h4 class="title is-4">Apresentação</h4>
						<p>A Prefeitura Municipal, por meio da Secretaria de Desestatização e Parcerias (SMDP) e da Secretaria Municipal de Urbanismo e Licenciamento (SMUL), comunica que foi autorizada a elaboração de Projeto de Intervenção Urbana (PIU) para a Zona de Ocupação Especial (ZOE) do Anhembi, pela São Paulo Urbanismo.</p>
						<p>O referido PIU parte dos índices e parâmetros de parcelamento, uso e ocupação do solo e disposições especificas estabelecidas pela Lei Municipal n° 16.886 de 2018 para o perímetro da ZOE Anhembi, composta pelos setores Sambódromo e Centro de Convenções e Exposições descritos nos incisos I e II, do Art. 2° da referida lei, propriedades hoje da São Paulo Turismo S.A. (SPTuris).</p>
						<p>A seguir, a São Paulo Urbanismo, em cumprimento ao Decreto Municipal n° 56.901 de 2016, que define o procedimento dos PIU, apresenta os trabalhos realizados para a primeira consulta pública. Esta etapa reúne informações e dados sobre o Centro de Convenções e Exposições Anhembi e o Polo Cultural e Esportivo Grande Otelo (Sambódromo), tendo como base o diagnóstico socioterritorial e o respectivo programa de interesse público do PIU. A publicação de tais informações tem por objetivo contextualizar a discussão, permitindo ao munícipe maior compreensão do tema.</p>
					</section>
				</div>
			</div>
		</div>
	</div>

	<Diagrama></Diagrama>
	<Comments :commentid="1"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="contextualizacao">
						<h4 class="title is-4">Contextualização</h4>
						<p>Produzido pela <i>Alcântara Machado Comércio e Empreendimentos</i> e projetado na década de 1960 como “Centro Interamericano de Feiras e Salões” (posteriormente denominado “Parque Anhembi”) pelo arquiteto e urbanista Jorge Wilheim, o complexo de exposições e convenções do Anhembi teve íntima relação com o processo de urbanização paulistano, se consolidando como importante referencial na paisagem da várzea do rio Tietê e da Zona Norte de São Paulo.</p>
						<p>A ocupação dos bairros no entorno do Anhembi demarca um dos primeiros prolongamentos da área urbanizada a partir do Centro em direção ao norte do rio Tietê, eixo de grande importância para compreensão da estrutura radioconcêntrica que organizou o crescimento da cidade ao longo do século vinte. Da mesma forma, sua presença junto a Marginal Tietê, principal via estrutural que margeia o complexo, e a proximidade de importantes equipamentos de transporte público de massa, como o metrô e o terminal rodoviário, conferiu uma dimensão metropolitana ao complexo, confirmando a vocação do Anhembi como equipamento de relevância regional.</p>

						<figure class="">
							<img src="../../../static/img/1.1.jpg" title="Figura 1.1. Remo no rio Tietê e construção do hotel do complexo Anhenbi na década de 1970. Fonte: Acervo Clube Espéria" alt="Figura 1.1. Remo no rio Tietê e construção do hotel do complexo Anhenbi na década de 1970. Fonte: Acervo Clube Espéria">
							<figcaption>Figura 1.1. Remo no rio Tietê e construção do hotel do complexo Anhenbi na década de 1970. Fonte: Acervo Clube Espéria</figcaption>
						</figure>

						<p>A história de sua concepção e implantação coincide não só com o período de grande expansão da metrópole, mas também o fato de ter se firmado como principal centro de eventos e feiras da cidade demarca seu alinhamento com as transformações da cidade de São Paulo nas décadas seguintes, passando de cidade industrial para o polo de negócios, comércio e serviços do país.</p>
						<p>O vínculo entre o Anhembi e sua dimensão urbana esteve presente desde o desenvolvimento do projeto do complexo, incorporando as visões de Wilheim para a cidade, sobretudo sua preocupação com as formas de ocupação e desenvolvimento urbano das áreas de várzea. Para Pereira (2016)<sup class="nota">1</sup>, Wilheim teve papel fundamental na transformação do programa inicial do complexo, por ampliar o escopo original de feiras e eventos, visando agregar novos usos complementares e suprir demandas e carências programáticas do entorno. Mais do que isso, o complexo deveria afirmar-se, para além de um equipamento, como uma importante centralidade, sublinhando a necessidade de romper a dependência dos bairros da Zona Norte em relação ao Centro. Como pano de fundo, residia o debate em torno de uma cidade <i>policêntrica</i>, presente nos textos e falas do arquiteto e urbanista, o que reverberava sua preocupação com a inserção urbana do Anhembi.</p>
						<p>O projeto original imaginado por Wilheim baseava-se na conjunção entre o Pavilhão de Exposições, o Palácio de Convenções e o hotel, articulados por meio de uma praça e dispostos na paisagem da várzea do rio Tietê a partir de uma esplanada pública. Desse conjunto, o Pavilhão de Exposições Norte e Sul foi inaugurado em 1970 e o Auditório Celso Furtado, parte do Palácio de Convenções, em 1972. Já o hotel, apesar da execução da estrutura, permaneceu incompleto até os anos 2000, quando a construção foi retomada e concluída.</p>
						
						<figure class="">
							<img src="../../../static/img/1.2.jpg" title="Figura 1.2. Maquete do projeto Parque Anhembi. (1) Pavilhão de Exposições, (2) Palácio de Convenções, (3) Hotel, (4) Praça. Fonte: PEREIRA (2016; Instituto Moreira Salles" alt="Figura 1.2. Maquete do projeto Parque Anhembi. (1) Pavilhão de Exposições, (2) Palácio de Convenções, (3) Hotel, (4) Praça. Fonte: PEREIRA (2016; Instituto Moreira Salles">
							<figcaption>Figura 1.2. Maquete do projeto Parque Anhembi. (1) Pavilhão de Exposições, (2) Palácio de Convenções, (3) Hotel, (4) Praça. Fonte: PEREIRA (2016) Instituto Moreira Salles</figcaption>
						</figure>

						<p>O edifício do Pavilhão de Exposições, elemento arquitetônico marcante do conjunto, constitui um amplo ambiente contínuo, com estrutura espacial pré-fabricada vencendo vãos de 60m. Seu processo de montagem representou uma inovação técnica no período, contando com operação singular de elevação de toda a treliça metálica de uma só vez a partir de guindastes, como relatado por Wilheim:</p>
						<blockquote>
							<p>“Elaborado o programa e contratado meu escritório, tivemos que enfrentar um problema estrutural: como cobrir vasta área com cerca de 15 metros de altura livre? Na construção de galpões industriais era então habitual usar arcos estruturais ou “sheds”, com o inconveniente de encherem o espaço de colunas ou de alcançarem uma altura livre desnecessária.</p>
							<p>Queria uma estrutura metálica leve que pudesse nascer e descer feito árvore...E que pudesse ser montada no solo pra evitar a construção provisória de um vasto emaranhado de andaimes, possivelmente mais caro do que a própria estrutura de cobertura.</p>
							<p>(…)</p>
							<p>Após exame da previsão do tempo, temerosos de que o vento fizesse a estrutura no ar entrar em movimento pendular fatal, fixou-se a data para a operação de levantamento. Em somente oito horas ergueram-se, por meio de guindastes manuais, 70 mil m² de estrutura, os quais logo receberiam as colunas definitivas, que jaziam no solo aguardando a vez de serem levantadas.”</p>
							<cite>(WILHEIM, J. Folha de São Paulo, 2013)</cite>
						</blockquote>
						<p>Já a praça, cujo projeto paisagístico teve autoria de Roberto Burle Marx, tinha a função de estabelecer uma unidade ao conjunto por meio da continuidade dos planos de piso que permeavam os edifícios do complexo, e o desenho dos espelhos d’água que estabeleciam um limite ao Pavilhão de Exposições, configurando uma varanda e um terraço com restaurantes. Contudo, ao longo dos anos essa leitura original do conjunto não se concretizou e parte das intervenções realizadas no complexo, visando ampliação das atividades, descaracterizou a relação original entre os volumes construídos, além de demolir parte dos jardins de Burle Marx. Já a esplanada pública, que aproximaria o complexo do rio Tietê, inviabilizou-se, dentre outras razões, a partir da alienação de parte do terreno na esquina entre a Marginal Tietê e a Rua Prof. Milton Rodrigues.</p>
						<p>As alterações mais relevantes no complexo ao longo dos anos foram: a inauguração do Sambódromo na década de 1990, projeto de Oscar Niemeyer, que ocupou um dos estacionamentos; a expansão do Palácio de Convenções por meio de uma área administrativa e do Auditório Elis Regina em 1985; a expansão do Pavilhão de Exposições a partir da implantação do Pavilhão Oeste e, por fim, a conclusão do hotel em 2004.</p>

						<div class="tile is-ancestor">
							<div class="tile is-vertical is-12">
									<div class="tile is-parent">
										<figure>
											<img src="../../../static/img/1.3.jpeg" alt="Figura 1.3. Levantamento da estrutura do Pavilhão de Exposições. Fonte: SPTuris" title="Figura 1.3. Levantamento da estrutura do Pavilhão de Exposições. Fonte: SPTuris">
											<figcaption>Figura 1.3. Levantamento da estrutura do Pavilhão de Exposições. Fonte: SPTuris</figcaption>
										</figure>
									</div>
									<div class="tile">
										<div class="tile is-parent">
											<figure>
												<img src="../../../static/img/1.4.jpg" alt="Figura 1.4. Auditório Celso Furtado. Fonte: Wilheim" title="Figura 1.4. Auditório Celso Furtado. Fonte: Wilheim">
												<figcaption>Figura 1.4. Auditório Celso Furtado. Fonte: Wilheim</figcaption>
											</figure>
										</div>
										<div class="tile is-parent">
											<figure>
												<img src="../../../static/img/1.5.jpg" alt="Figura 1.3. Foto geral do complexo. Fonte: SPTuris" title="Figura 1.3. Foto geral do complexo. Fonte: SPTuris">
												<figcaption>Figura 1.3. Foto geral do complexo. Fonte: SPTuris</figcaption>
											</figure>
										</div>
									</div>
							</div>
						</div>

						<p>A importância do complexo no processo de urbanização de São Paulo e a relevância do seu uso como espaço de eventos leva a necessidade de se ponderar duas questões fundamentais nos projetos futuros para a área: primeiro, a sequência de intervenções realizadas ao longo dos anos não só descaracterizaram o conjunto original, mas também os edifícios principais (Pavilhão de Exposições e Palácio de Convenções) ainda carecem de atualizações técnicas necessárias em suas instalações, visando adequar o complexo às demandas contemporâneas, que envolvem maior flexibilidade no uso dos edifícios, modularidade, climatização, além da eventual possibilidade de implantação de novos espaços, a depender de outras demandas previstas pelos operadores do Anhembi. Segundo, a relação do Anhembi com a ocupação do entorno, caracterizada atualmente pela presença de grandes lotes e usos extensivos do solo, que desestimulam a apropriação do pedestre e levam ao isolamento do complexo.</p>
						<p>Os múltiplos vínculos estabelecidos entre o Anhembi e o entorno reiteram seu importante papel histórico como promotor de atividades intimamente ligadas ao desenvolvimento urbano e econômico da cidade. Sua atualização requer, portanto, uma visão sensível sobre a relação do conjunto com o entorno, sobretudo se considerada a oportunidade de converter-se novamente em protagonista de um emergente processo de qualificação dos territórios da várzea do rio Tietê.</p>
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="2"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="diagnostico">
						<h4 class="title is-4">Diagnóstico Socioterritorial</h4>
						<div>
							<a href="./static/pdf/1-Analise-Territorial.pdf" class="box" download="Diagnóstico_socioterritorial-Analise_territorial.pdf">
								<i class="small material-icons">picture_as_pdf</i>
								Análise territorial
							</a>
							<a href="./static/pdf/2-Analise-Ambiental.pdf" class="box"download="Diagnóstico_socioterritorial-Analise_ambiental.pdf">
								<i class="small material-icons">picture_as_pdf</i>
								Análiste ambiental
							</a>
						</div>
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="3"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="finalidade">
						<h4 class="title is-4">A finalidade do PIU Anhembi</h4>
						<p>Em 2015 a SPTuris realizou chamamento público (DPR 01/2015) para os interessados em realizar estudos técnicos de modelagem de projeto e estudos de viabilidade para a revitalização, modernização e gestão do complexo do Anhembi, englobando somente a quadra 284, do setor fiscal 073.</p>
						<p>O chamamento já considerava que o complexo apresenta necessidade de atualização e reformulação, visto que desde a sua inauguração, na década de 1970, não recebeu reformas estruturais significativas, resultando em processo de obsolescência da infraestrutura e precariedade de suas instalações. A atualização, portanto, visava tanto manter a liderança em exposições e convenções na cidade, quanto atender as demandas do atual mercado de eventos, equiparando o Anhembi com modernos equipamentos internacionais em termos de conforto ao usuário, flexibilidade, modularidade e tecnologia. Como resultado do chamamento, foram apresentadas três propostas desenvolvidas pelos consórcios URBEM-GL, GLOBAL ACE-OPUS e SEM-ATHIE WOHNRATH-ARAP, NISHI &amp; UYEDA.</p>
						<p>A necessidade de atualização e renovação do complexo traz a oportunidade de desenvolvimento de projetos associados às atividades expositivas e culturais existentes, otimizando a vocação de feiras, eventos e negócios da região por meio da implantação de novas atividades econômicas, revertendo a subutilização de grande parte das áreas públicas ali existentes.</p>
						<p>O Anhembi é hoje um dos principais centros de convenções e exposições da cidade de São Paulo, sendo administrado pela SPTuris, empresa de turismo e eventos controlada pela Prefeitura de São Paulo, que detém quase 97% de suas ações. Compreende imóvel com área bruta de aproximadamente 400 mil m&sup2;, que recebe público superior a 6 milhões de visitantes do Brasil e do mundo, em cerca de 300 eventos de todos os portes e gêneros realizados anualmente em seus espaços. O complexo sedia ainda 1 em cada 8 grandes feiras do país, segundo dados da dados Ubrafe/Fipe (2015).</p>
						<p>Além de abrigar as principais feiras de negócios e congressos do país, o Anhembi é utilizado para realização de grandes shows nacionais e internacionais, assim como apresentações esportivas – a exemplo da edição brasileira da Fórmula Indy, que aconteceu de 2010 a 2013 e foi transmitida para mais de 150 países. Não por acaso, uma das mais importantes festas da cultura paulistana – o Carnaval – é realizada no Sambódromo. Situado em local privilegiado, de fácil acesso, o complexo fica próximo de aeroportos, hotéis e das principais vias expressas, além de contar com estacionamento com capacidade para receber até 9 mil veículos por dia.</p>
						<p>Considerando a importância do complexo e a necessidade de modernização, o Anhembi passou a integrar a lista de serviços e ativos do Plano Municipal de Desestatização, a cargo da Secretaria Municipal de Desestatização e Parcerias (SMDP), passíveis de serem geridos pela iniciativa privada, por meio de concessão, Parceria Público-Privada ou mesmo privatização, desonerando assim o poder público.</p>
						<p>Para garantir que a receita das desestatizações tenha destino certo e seja de fato utilizada em áreas prioritárias e não no custeio da máquina pública, foi criado o Fundo Municipal de Desenvolvimento Social (FMD) pela Lei nº 16.651, de 16 de maio de 2017. Nele ficarão depositadas as receitas oriundas das concessões e privatizações que, futuramente, serão empregadas nas áreas mais sensíveis da administração, como saúde, educação, habitação, mobilidade urbana, segurança e assistência social.</p>
						<p>A alienação da participação societária detida pelo Município de São Paulo na SPTuris foi autorizada pela Lei n°16.766 de 20 de dezembro de 2017, sendo que o §4° definiu que os recursos auferidos com a alienação da participação societária referida no “caput” serão destinados exclusivamente ao FMD, com destinação obrigatória de no mínimo 20% dos recursos para investimentos na Zona Norte da cidade de São Paulo, e orientados para as áreas prioritárias, nos termos do art. 6º da Lei nº 16.651, de 16 de maio de 2017.</p>
						<p>Nesse sentido, PIU Anhembi tem como finalidade:</p>
						<ul>
							<li>elevar o potencial do equipamento de exposições e convenções e recolocar São Paulo na disputa com outras cidades por grandes eventos;</li>
							<li>sociabilizar os ganhos da produção da cidade por meio da venda de potencial construtivo;</li>
							<li>incentivar o  desenvolvimento urbano, por meio do adensamento populacional e construtivo  compatível com a infraestrutura existente;</li>
							<li>qualificar a centralidade a norte do Rio Tietê, pautada pela diversidade de usos, promovendo maior equilíbrio entre emprego e moradia;</li>
							<li>implantar programa de intervenções que qualifique o território em consonância com o desenvolvimento pretendido.</li>
						</ul>
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="4"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="diretrizes">
						<h4 class="title is-4">Levantamento das diretrizes</h4>
						<p>O Programa de Interesse Público do PIU Anhembi fundamenta-se a partir de diretrizes urbanísticas que foram elaboradas a partir das análises territorial e ambiental na etapa de diagnóstico. Tanto os levantamentos realizados no diagnóstico quanto as diretrizes aqui expostas deverão ser debatidos com a sociedade, de maneira a conformar a base para a definição das propostas específicas nas próximas etapas de desenvolvimento do PIU.</p>
						<p>Para este levantamento preliminar de diretrizes urbanísticas, foram consideradas duas escalas de atuação já previstas para o PIU Anhembi na Lei n° 16.866 de 2018: o Perímetro de Abrangência e o Perímetro Expandido.</p>

						<figure>
							<img src="../../../static/img/mapa-5.1.jpg" alt="Mapa 5.1. Perímetro de Abrangência e Setores" title="Mapa 5.1. Perímetro de Abrangência e Setores">
							<figcaption>Mapa 1. Perímetro de Abrangência e Setores</figcaption>
						</figure>
						<figure>
							<img src="../../../static/img/mapa-5.2.jpg" alt="Mapa 5.2. Perímetro Expandido" title="Mapa 5.2. Perímetro Expandido">
							<figcaption>Mapa 2. Perímetro Expandido</figcaption>
						</figure> 

						<p>Conforme expresso no Art. nº 5 da referida lei, os recursos arrecadados com o pagamento de Outorga Onerosa do Direito de Construir dos empreendimentos futuros no Perímetro de Abrangência deverão ser destinados ao financiamento de investimentos tanto no Perímetro de Abrangência quanto no Expandido. Soma-se a isso a determinação da Lei nº 16.766 de 2017 que 20% dos recursos provenientes da alienação da SPTuris deverão também ser aplicados na Zona Norte e destinados para investimentos em saúde, educação, segurança, habitação, transporte, mobilidade urbana e assistência social, conforme já exposto.</p>
						<p>Portanto, ponderando o horizonte dos recursos e investimentos que poderão ser realizados a partir PIU Anhembi, considerou-se importante diferenciar as diretrizes urbanísticas em função das especificidades dos Perímetros de Abrangência e Expandido. Ainda assim, as diretrizes poderão ser aplicadas conjuntamente ou de forma isolada ao longo dos anos e, em determinados casos, complementam ações que se desdobram em ambos os perímetros do PIU.</p>

						<h5 class="title is-5">Diretrizes Urbanísticas para o perímetro de abrangência</h5>
						<ul>
							<li>Articular o complexo do Anhembi com o entorno, sobretudo o sistema estrutural de transporte público, as áreas livres públicas e grandes equipamentos, de forma a configurar uma centralidade de abrangência metropolitana;</li>
							<li>Priorizar a ocupação das áreas residuais com usos associados ao Centro de Convenções e Exposições, ampliando a oferta de empregos e potencializando assim a densidade construtiva e populacional em uma área com boa oferta de infraestrutura;</li>
							<li>Modernização do Palácio de Convenções e do Pavilhão de Exposições Norte-Sul, por meio da atualização técnica de suas instalações, garantindo a adequação às demandas contemporâneas necessárias a um Centro de Convenções e Exposições de abrangência metropolitana;</li>
							<li>Garantir a existência de áreas na quadra do Sambódromo e no entorno de forma a viabilizar a execução futura de um plano logístico para o Carnaval.</li>
							<li>Qualificar o eixo da Av. Olavo Fontoura por meio da diversificação dos usos no complexo do Anhembi, criando uma nova frente urbana que promova a dinamização da avenida;</li>
							<li>Qualificação paisagística e recuperação ambiental das áreas livres na gleba do Anhembi, contribuindo para a construção de um sistema de espaços livres públicos do entorno;</li>
							<li>Promoção da microacessibilidade do pedestre e do ciclista na gleba do Anhembi, por meio da permeabilidade urbana das quadras com as vias do entorno;</li>
							<li>Estabelecer novas travessias para o pedestre e o ciclista sobre o rio Tietê e as avenidas marginais, garantindo maior acessibilidade ao complexo do Anhembi;</li>
							<li>Tratamento urbanístico do lote público situado junto a Av. Olavo Fontoura e a Praça Campo de Bagatelle, de forma a facilitar a travessia do pedestre sobre a Av. Santos Dumont e a conectividade do Anhembi com o Terminal Rodoviário do Tietê/Estação Portuguesa Tietê do Metrô;</li>
						</ul>

						<h5 class="title is-5">Diretrizes Urbanísticas para o perímetro expandido</h5>
						<ul>
							<li>Prover o equilíbrio da oferta e demanda por equipamentos públicos, sobretudo de educação infantil, cultura e esporte, bem como equipamentos de assistência social voltados ao idoso. As demandas do Perímetro Expandido deverão ser ponderadas também em relação às principais carências das Prefeituras Regionais de Santana/Tucuruvi e Casa Verde;</li>
							<li>Promover a urbanização, regularização fundiária e recuperação ambiental dos assentamentos precários localizados dentro e fora das ZEIS 1, considerando os trechos de maior vulnerabilidade social, bem como a qualificação urbanística e paisagística dos conjuntos habitacionais existentes;</li>
							<li>Provisão de Habitação de Interesse Social, considerando a presença de áreas classificadas como ZEIS 2 e 3, e a possibilidade de aplicação de instrumentos que induzam a transformação de terrenos ociosos;</li>
							<li>Por meio da utilização da Cota de Solidariedade, priorizar a implantação de Habitação de Interesse Social e a efetivação de um parque público de locação social no Perímetro Expandido;</li>
							<li>Ampliação da conectividade da área por meio da implantação dos melhoramentos viários previstos;</li>
							<li>Implantação dos corredores de ônibus previstos no Plano Diretor Estratégico, tendo como premissa a necessária intermodalidade entre o ônibus e as estações de metrô no Perímetro Expandido;</li>
							<li>Promover conexão do Terminal do Rodoviário do Tietê/Estação Portuguesa-Tietê com a Praça Campo de Bagatelle e a Av. Olavo Fontoura, considerando o melhoramento viário incidente e a área prevista pelo Decreto de Utilidade Pública nº 56.260 de 2015, ampliando assim a acessibilidade ao complexo do Anhembi;</li>
							<li>Incentivo à mobilidade do pedestre e do ciclista por meio da qualificação dos passeios públicos e da complementação da malha cicloviária, da implantação de bicicletários e paraciclos integrados aos terminais e estações do sistema estrutural de transporte público, e da oferta de novas travessias sobre vias estruturais e em grandes lotes;</li>
							<li>Implantação de praças, parques e alamedas estudados para a área, consolidando assim o necessário sistema de áreas verdes nesse trecho da planície fluvial do rio Tietê, contribuindo para a diminuição dos pontos de alagamento existentes e para redução da ilha de calor;</li>
							<li>Promover o saneamento dos córregos Carandirú/Carajás, Tenente Rocha, Mandaqui, José Papaterra Limongi, Cabuçu de Baixo, recuperando suas Áreas de Preservação Permanente (APP) associadas à implantação de parques lineares, considerando as necessidades e condições ambientais específicas de cada córrego;</li>
							<li>Garantir o modelo de gestão democrática, por meio da criação de um conselho gestor ou participativo de implantação das ações urbanísticas no Perímetro Expandido do PIU Anhembi, composto paritariamente pelo poder público e pela sociedade que, a depender da escala de intervenção e o tipo de validação a ser apresentado pelos estudos, poderá compartilhar responsabilidades com o Conselho Municipal de Política Urbana, nos termos do Art. 329 da Lei nº 16.050 de 2014.</li>
						</ul>
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="6"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="viabilidade">
						<h4 class="title is-4">Viabilidade da transformação</h4>
						<p>A transferência do controle acionário da SPTuris estabelecerá um importante passo para viabilizar as transformações urbanas pretendidas pelo PIU, dado que a empresa, com a estrutura societária atual, vinha apresentando dificuldades de investimento e, portanto, limitações para promover a manutenção e a adaptação adequadas ao funcionamento e a modernização do complexo. Com uma nova gestão, abre-se a possibilidade de desencadear a promoção do conjunto de diretrizes urbanísticas tanto no Perímetro de Abrangência, quanto no Perímetro Expandido, por meio da distribuição dos investimentos provenientes na alienação e também pelo potencial construtivo adicional.</p>
						<p>O conjunto de diretrizes urbanísticas que compõe o programa de interesse público do PIU Anhembi busca orientar o desenvolvimento urbano do Perímetro de Abrangência e do Perímetro Expandido de forma mais equilibrada nos aspectos social, econômico e ambiental. Tais premissas guiaram as análises e leituras territoriais realizadas na etapa de diagnóstico que, por sua vez, indicaram uma série de problemas e potencialidades que torna necessárias as transformações pretendidas.</p>
						<p>Um dado fundamental para o PIU é a presença significativa de redes de transporte público de alta capacidade e vias estruturais no Perímetro Expandido, o que denota a alta acessibilidade urbana da área, bem como grandes equipamentos públicos e privados no entorno, dos quais o complexo do Anhembi é uma âncora evidente. Os desequilíbrios hoje verificados entre a Zona Norte e a área central de São Paulo decorrem, sobretudo, da incapacidade de articulação desses usos e equipamentos ao norte do rio Tietê, que poderiam conformar uma centralidade de alcance metropolitano.</p>
						<p>Para viabilizar essa transformação, o primeiro ponto diz respeito ao necessário adensamento populacional no Perímetro Expandido. No diagnóstico, verificou-se o predomínio de áreas com menos de 25 hab/ha, coincidentes com trechos de grandes lotes e usos extensivos do solo. Considerando que distritos com alta densidade e boa oferta de infraestrutura apresentam densidades acima de 250 hab/ha, existe margem para franca ampliação de usos residenciais tanto no Perímetro de Abrangência, quanto to Perímetro Expandido.</p>
						<p>Sobre a disponibilidade de área para suportar esse incremento populacional, o diagnóstico evidenciou que a estrutura fundiária do Perímetro Expandido é marcada por grandes lotes que poderão ser parcelados para receber novos usos residenciais e não residenciais. Viabiliza-se assim, por meio do parcelamento do solo, a ampliação da oferta de áreas livres públicas, que poderá suprir a demanda de áreas verdes e a qualificação ambiental indicadas nas diretrizes.</p>
						<p>Em relação às diretrizes que buscam valorizar a microacessibilidade e ampliar a permeabilidade urbana nos Perímetros de Abrangência e Expandido, podemos dizer que sua viabilidade está diretamente relacionada, primeiro, também à possibilidade de parcelamento dos grandes lotes e, segundo, à sua vinculação às ações de mobilidade urbana, como a implantação dos melhoramentos viários. Tais transformações são facilitadas pela aprovação recente da Lei nº 16.541 de 2016, resultado de estudos para todo o perímetro do Arco Tietê. Nesse contexto, uma diretriz essencial para viabilizar novos empreendimentos nas glebas do Anhembi é a conexão da Av. Olavo Fontoura com o Terminal Tietê, por meio do prolongamento da Rua Marechal Odylio Denys, entre a Av. Cruzeiro do Sul e a Praça Campo de Bagatelle.</p>
						<p>O aumento da densidade populacional e das dinâmicas na área necessitará da ampliação da conectividade entre os bairros na direção leste-oeste, garantida também pela implantação dos novos melhoramentos viários e pela proposta de novos corredores de ônibus previstos no PDE. A articulação desses modais com as três estações de metrô no Perímetro Expandido, concentradas na Av. Cruzeiro do Sul, também levará ao aumento significativo da acessibilidade à rede de transporte público coletivo de alta capacidade.</p>
						<p>Em relação à provisão de habitação de interesse social e a urbanização dos assentamentos precários, verifica-se que poderão ser viabilizadas as transformações por intermédio das seguintes condições: primeiro, a Lei n° 16.866 de 2018 indica a necessidade de aplicação da Cota de Solidariedade preferencialmente no Perímetro Expandido; segundo, os recursos provenientes da alienação e da Outorga Onerosa do Direito de Construir terão percentuais diretamente vinculados à área habitacional; e terceiro, a presença de terrenos ociosos abre a oportunidade para ampliação da oferta de moradias.</p>
						<p>Por fim, uma questão importante para a Zona Norte e que foi um dos focos dos parâmetros recém-aprovados para a ZOE Anhembi, diz respeito ao incentivo à ampliação de empregos, em linha com as determinações de aproximação entre trabalho e moradia. Tal proposta poderá ser viabilizada, no Perímetro de Abrangência, a partir do desenvolvimento imobiliário e à implantação de usos correlatos ao complexo do Anhembi, garantidos pelo potencial construtivo e pelos fatores de planejamento já definidos na Lei n° 16.866 de 2018. Já no Perímetro Expandido, a presença significativa de Zonas de Desenvolvimento Econômico (ZDE-2) busca promover a instalação de novas atividades de alta intensidade de conhecimento e tecnologia, além de usos residenciais e comerciais.</p>						
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="7"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="adensamento">
						<h4 class="title is-4">Adensamento populacional e construtivo</h4>
						<p>O potencial construtivo do Perímetro de Abrangência foi definido pela Lei nº 16.886 de 2018, consolidando assim parâmetros importantes que eram requeridos pela ZOE e resultando em um total de 1.400.000 m², sendo 1.000.000 m² no Setor Centro de Convenções e Exposições e 400.000 m² no Setor Sambódromo. Importante lembrar, que o potencial construtivo do Setor Centro de Convenções e Exposições havia sido definido no Art. nº 169 da Lei de Parcelamento, Uso e Ocupação do Solo (LPUOS, Lei nº 16.402 de 2016), aproximando-se de um coeficiente de aproveitamento igual a 4,0, bem como os 20% de destinação mínima obrigatória de área pública. Já o potencial construtivo referente ao Setor Sambódromo teve como base a mesma proporção do Anhembi e, em virtude das atividades de carnaval que deverão ser mantidas com vistas à garantia do interesse público, foi permitida a transferência dos 400.000 m² para o Setor Centro de Convenções e Exposições, na quadra 284.</p>
						<p>Em relação ao Perímetro Expandido, o adensamento mais significativo previsto na LPUOS são a Zona Eixo de Estruturação da Transformação Metropolitana (ZEM), concentrada ao longo da Av. Cruzeiro do Sul, e a Zona Eixo de Estruturação da Transformação Metropolitana Previsto (ZEMP), ao longo do futuro Apoio Urbano Norte (melhoramento viário aprovado pela Lei nº 16.541 de 2016).</p>
						<p>Como apresentado no diagnóstico, ambas as Zonas (ZEM e ZEMP) preveem coeficiente de aproveitamento máximo igual a 4,0 e a dispensa de gabarito. Tal proposta justifica, portanto, que a ampliação do número de empregos e a provisão habitacional no Perímetro Expandido são ações de grande relevância para configurar uma centralidade urbana equilibrada. Além do mais, ainda que uma parcela significativa do território de ZEMP do Perímetro Expandido esteja sujeito às restrições de gabarito, por conta das superfícies definidas no Plano Básico de Zona de Proteção de Aeródromo do Campo de Marte, a implantação dos corredores, em um cenário de longo prazo, ampliará significativamente a densidade construtiva nos trechos situados nos distritos de Casa Verde e Limão, dado o grande número de lotes e glebas com potenciais de transformação.</p>
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="8"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="impactos">
						<h4 class="title is-4">Impactos esperados</h4>
						<p>A articulação entre as diretrizes previstas para o Perímetro Expandido e para o Perímetro de Abrangência é fundamental para a mitigação dos impactos na área. A série de propostas de qualificação urbana que serão indicadas no Perímetro Expandido não só dependem, em parte, dos recursos provenientes do Perímetro de Abrangência, mas também garantem a capacidade de suporte necessária para o adensamento e a potencialização das atividades do complexo do Anhembi.</p>
						<p>Nesse sentido, a ampliação do número de empregos proveniente da ativação do potencial construtivo dos eixos (ZEM e ZEMP) e do complexo do Anhembi levará à redução parcial de deslocamentos que alimentam os movimentos pendulares entre a Zona Norte e o Centro. Desta forma, a implantação de corredores de ônibus, integrados à rede metroviária, de conexões viárias e de ciclovias, irão contribuir para mitigar os impactos decorrentes do aumento da densidade demográfica e promoverão a melhoria da qualidade de vida na região.</p>
						<p>Do ponto de vista ambiental, a implantação de áreas verdes e a recuperação de APP dos córregos indicados no diagnóstico irão contribuir para a melhoria do microclima da área, para a redução das áreas de inundação, e para maior disponibilidade de áreas de lazer.</p>
						<p>No período de obras das melhorias previstas no Perímetro Expandido, há a necessidade da implantação de medidas de prevenção para mitigação tanto dos impactos que atingem os arredores das obras (alterações no trânsito, poeira, ruído e remoção de indivíduos arbóreos), quanto dos impactos que podem contaminar o solo e áreas das sub-bacias hidrográficas fora do perímetro (implantação dos canteiros, serviços de bota-fora, terraplenagem, fundações, manutenção e abastecimento de equipamentos). </p>
						<p>Por fim, deverá ser equacionada a logística das atividades do carnaval, em função de alterações possíveis nas quadras do complexo Anhembi, garantindo assim um importante uso que permanecerá na área. Ademais, a área do PIU do Anhembi intersecciona a Zona de Ocupação Especial do Campo de Marte, que possuirá Parque Municipal com áreas de lazer e cultura. A dinâmica gerada pela relação entre essas áreas deverá impulsionar uma nova dinâmica regional, que deverá desenvolver novas relações urbanas e sociais positivas para a população local.</p>
					</section>

				</div>
			</div>
		</div>
	</div>

	<Comments :commentid="9"></Comments>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="gestao">
						<h4 class="title is-4">Modelo de gestão democrática</h4>
						<p>Dentre as estratégias do Plano Diretor Estratégico (PDE), tem destaque o fortalecimento da participação popular nas decisões dos rumos da cidade, considerando as diversas instâncias e por meio de diferentes instrumentos de participação e controle social. Tais estratégias garantem a participação de representantes dos diferentes segmentos da população de forma direta ou por intermédio de associações representativas, nos processos de planejamento e gestão da cidade, de realização de investimentos públicos e na elaboração, implementação e avaliação de planos, programas e projetos de desenvolvimento.</p>
						<p>O PDE definiu, no artigo 136, que os PIU elaborados pelo Poder Público deverão apresentar propostas de transformações urbanísticas, econômicas e ambientais no perímetro onde for aplicado o instrumento, cabendo ao PIU indicar os objetivos prioritários da intervenção, as propostas relativas a aspectos urbanísticos, ambientais, sociais, econômico-financeiros e modelo de gestão democrática que contemple mecanismos de participação e controle social e instrumentos para monitoramento e avaliação das ações.</p>
						<p>Neste sentido, o PIU Anhembi deverá instituir Conselho Gestor sob a coordenação à Secretaria de Urbanismo e Licenciamento (SMUL), com a participação de órgãos municipais e de entidades representativas da sociedade civil, tendo a competência de instruir e auxiliar a implantação do Programa de Intervenções no Perímetro Expandido, monitorar o desenvolvimento e propor programas e estratégias que possam aprimorar o projeto, enquanto que a São Paulo Urbanismo ficará a cargo de promover a implantação dos projetos no Perímetro Expandido e avaliar a evolução dos processos, podendo contar com a colaboração dos órgãos e entidades municipais para o desempenho de suas funções específicas.</p>

						<figure>
							<img src="../../../static/img/diagrama-gestao.png" alt="Diagrama do Conselho Gestor" title="Diagrama do Conselho Gestor">
						</figure>
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
import Mapa from '@/components/pages/Mapa';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				postid: 1,
				id: 1
			},
			png: './static/img/slider/960x450_1.png',
			loadingGif:'./static/img/loading.gif',
			ol_attributes:{
				name:'olar mapa',
				center: [0,0], 
				zoom: 2
			}
		}
	},
	computed: { projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ Comments, Diagrama, Mapa }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";
@import "../../assets/main.scss";

.consulta {
	margin: 1em auto 0 auto;
	width: 100%;
}

.content {
	max-width: 992px;
	padding: .5rem;
}

h4.title {
	margin-bottom: 0;
	margin-top: 2rem;
	text-transform: uppercase;
	background: $primary-light-grey;
	padding: 0.5rem;
	color: $primary-grey;
	border-radius: 4px;
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