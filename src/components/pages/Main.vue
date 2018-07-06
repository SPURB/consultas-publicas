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
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="apresentacao">
						<h4 class="title is-4">Apresentação</h4>
						<p>A Prefeitura Municipal, por meio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL), vem disponibilizar os estudos introdutórios que vão subsidiar o desenvolvimento do Projeto de Intervenção Urbana do Setor Central.</p>
						<p>Esse projeto responde à exigência do Plano Diretor Estratégico de revisão da Lei da Operação Urbana Centro e para tanto abrange um perímetro ampliado que abarca a área da OU Centro e distritos vizinhos compreendidos no anel central.</p>
						<p>O Projeto de Intervenção Urbana, disciplinado pelo Decreto nº 56.901 de 29 de março de 2016, tornou-se uma importante ferramenta de estruturação de projetos de interesse público, ao estabelecer conteúdos associados a etapas sucessivas de desenvolvimento, sempre concluídas com a sua divulgação à população. Ainda que a ferramenta demande aperfeiçoamentos, através do regramento ali estabelecido instituiu-se uma forma de comunicação entre a Prefeitura e os munícipes até então inexistente.</p>
						<p>Neste momento que precede a elaboração do PIU Setor Central, são apresentados o diagnóstico socioterritorial e o programa de interesse público resultante dessa análise.</p>
						<p>Trata-se de uma publicação extensa, como requer a complexa Área Central, que pode ser comentada no seu todo ou apenas nas partes mais significativas para cada munícipe.</p>
						<p>Além de comentários a respeito do material divulgado, são bem-vindas as manifestações que expressem as expectativas dos munícipes em relação ao futuro dos bairros do anel central que, segundo esta proposta, deve ser preparado para receber muitos moradores a mais.</p>
					</section>
				</div>
			</div>
		</div>
	</div>

	<Processo></Processo>
	<Gallery :gallery_attrs="gallery_attrs"></Gallery>
	
	<Comments :commentid="1"></Comments>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="motivacao">
						<h4 class="title is-4">Motivação</h4>
						<p>A Operação Urbana Centro foi instituída pela Lei Municipal 12.349 de 06 de junho de 1997 - anos antes da aprovação do Estatuto da Cidade, Lei Federal nº 10.257 de 10 de julho de 2001, que veio regulamentar o capítulo de política urbana da Constituição Brasileira de 1988.</p>
						<p>Entre os muitos instrumentos urbanísticos propostos no Estatuto da Cidade, regulamentados no Plano Diretor Estratégico (PDE) de 2002, Lei Municipal nº 13.430 de 13 de setembro de 2002, e novamente tratados no PDE vigente, Lei Municipal nº 16.050 de 31 de julho de 2014, está a Operação Urbana Consorciada, assim definida:</p>
						<blockquote><i>“Considera-se operação urbana consorciada o conjunto de intervenções e medidas coordenadas pelo Poder Público municipal, com a participação dos proprietários, moradores, usuários permanentes e investidores privados, com o objetivo de alcançar em uma área transformações urbanísticas estruturais, melhorias sociais e a valorização ambiental.”</i> [art. 32 § 1º]</blockquote>
						<p>O Estatuto da Cidade estabelece um conteúdo mínimo para o instrumento - definição da área a ser atingida, programa básico de ocupação da área, programa de atendimento econômico e social para a população diretamente afetada pela operação, finalidades da operação, contrapartida a ser exigida em função da utilização dos benefícios previstos - não inteiramente contemplado na OU Centro.</p>
						<p>O PDE de 2014 amplia o rol de exigências, estabelecendo entre outros pontos a obrigatoriedade de definição de um perímetro expandido e de destinação de uma parcela dos recursos captados para atendimento habitacional. E, para adaptação da Operação Urbana Centro à nova disciplina das operações urbanas consorciadas, impõe em seu Artigo 382 a revisão da lei que a instituiu.</p>
						<p>Na oportunidade de apresentação da etapa introdutória dos estudos que embasam essa revisão, vale destacar as contribuições inovadoras da Lei da Operação Urbana Centro, passados vinte anos de sua aprovação:</p>
						<ul>
							<li>Incentivo à preservação de bens tombados, pela atribuição de potencial construtivo transferível proporcional à área construída do imóvel;</li>
							<li>Incentivo à produção imobiliária habitacional, com gratuidade de potencial construtivo adicional e aprovação direta pela Secretaria de Urbanismo e Licenciamento;</li>
							<li>Incentivos construtivos para usos educacionais, de entretenimento e hospedagem;</li>
							<li>Dispensa de vagas de garagem em edifícios residenciais;</li>
							<li>Manutenção dos índices urbanísticos dos imóveis demolidos no novo empreendimento;</li>
							<li>Gestão compartilhada com a sociedade civil, através da Comissão Executiva da Operação Urbana Centro.</li>
						</ul>
						<p>A grande crítica a ser feita à Operação Urbana Centro, entendendo-se como o ponto principal a ser revisado, é ausência de um projeto estruturante para área central.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Comments :commentid="2"></Comments>

	<Mapa :mapa_attrs="mapa_attrs" id="perimetro"></Mapa>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="diagnostico">
						<h4 class="title is-4">Diagnóstico</h4>
						<h5 class="title is-5">Perímetro de Estudo</h5>
						<p>Na abordagem inicial, o estudo que subsidia a revisão da Operação Urbana Centro abrangeu os distritos da Prefeitura Regional da Sé - Cambuci, Liberdade, Bela Vista, Consolação, Santa Cecília, Bom Retiro, República e Sé - mais os distritos do Brás e do Pari, da Prefeitura Regional da Mooca.</p>
						<p>Porém, elaborado o Diagnóstico Sócio-Territorial, foram descartados Consolação, Bela Vista e Liberdade, distritos contidos na Macroárea de Urbanização Consolidada, que já possuem densidade populacional e construtiva característicos de áreas consolidadas, com baixa possibilidade de transformação.</p>
						<p>O Perímetro proposto avança sobre algumas quadras limítrofes dos distritos da Consolação e Liberdade, onde se observa a continuidade da dinâmica urbana ou da paisagem dos distritos abarcados no projeto. Pela mesma razão, foram incluídas parcelas dos distritos do Belém e da Mooca, que além de similaridades com os distritos centrais parecem apresentar grande possibilidade de transformação urbana positiva por meio dos instrumentos viabilizadores do PIU.</p>
						<p>Essa abrangência foi estabelecida para a maior e melhor compreensão da dinâmica do centro de São Paulo e das relações que se estabelecem entre os distritos, podendo resultar na proposição de instrumentos de intervenção diversos, para problemáticas ou setores específicos, integrados no objetivo central desse projeto  que é ter mais pessoas morando no Anel Central de São Paulo.</p>
	
						<figure>
							<img src="../../assets/img/image4.png"  title="PIU Setor Central - Diagnóstico">
						</figure>
	
						<h6 class="title is-6" id="diagnostico2">Diagnóstico</h6>
						<h6 class="subtitle is-6">PIU do Setor Central em Resumo</h6>
					</section>
				</div>
			</div>
		</div>
	</div>

	<Dados></Dados>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<div class="contPdf">
							<a href="http://minuta.gestaourbana.prefeitura.sp.gov.br/piu-setor-central/anexos/Diagnostico_Socio-Territorial.pdf" class="box" download>
								<i class="small material-icons">picture_as_pdf</i>
								Diagnóstico Sócio-Territorial <span> 126mb</span>
							</a>
							<a href="http://minuta.gestaourbana.prefeitura.sp.gov.br/piu-setor-central/anexos/Diagnostico_Ambiental.pdf" class="box" download>
								<i class="small material-icons">picture_as_pdf</i>
								Diagnóstico Ambiental <span> 220mb</span>
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
					<section id="interesse_pub">
						<h4 class="title is-4">Programa de Interesse Público</h4>
						<h5 class="title is-5" id="principios">Princípios norteadores</h5>
						<p>A Organização das Nações Unidas - ONU tem promovido a cada 20 anos desde 1976 encontros denominados HABITAT para discutir questões globais do desenvolvimento urbano.</p>
						<p>O último encontro, HABITAT III - Conferência sobre Habitação e Desenvolvimento Urbano Sustentável  (Quito - 2016) traz uma <strong>Nova Agenda</strong> estruturada em três grandes princípios:</p>
						<ul>
							<li><strong>Cidade universal</strong>: erradicação da extrema pobreza, direitos e oportunidades iguais a todos, diversidade cultural e econômica, integração social no espaço urbano,</li>
							<li><strong>Economia urbana inclusiva e sustentável</strong>: aproveitamento dos benefícios da urbanização planejada por todos, prevenção contra a especulação imobiliária, e adensamento populacional adequado;</li>
							<li><strong>Sustentabilidade ambiental</strong>: promoção de energia limpa e uso do solo e recursos sustentáveis no desenvolvimento urbano, proteção de ecossistemas e biodiversidade.</li>
						</ul>
						<p>O <a href="http://gestaourbana.prefeitura.sp.gov.br/marco-regulatorio/plano-diretor/" title="Plano Diretor Estratégico do Município de São Paulo" target="_blank">Plano Diretor Estratégico do Município de São Paulo</a> (Lei Municipal nº 16.050 de 31 de julho de 2014) nasce alinhado a essa Nova Agenda Urbana instituída pela ONU-HABITAT, trazendo como estruturadores os mesmos temas ali discutidos. São eles:</p>
						<ol style="list-style-type: upper-roman">
							<li>Socializar os ganhos da produção da cidade, combater a terra ociosa que não cumpre a função social;</li>
							<li>Assegurar o direito à moradia digna para quem precisa, priorizar a população com renda até 3 salários mínimos;</li>
							<li>Melhorar a mobilidade urbana, priorizar o transporte público e desestimular o uso de transporte individual motorizado;</li>
							<li>Qualificar a vida dos bairros;</li>
							<li>Orientar o crescimento da cidade nas proximidades do transporte público; </li>
							<li>Reorganizar as dinâmicas metropolitanas definir incentivos urbanísticos e fiscais para levar emprego aos perímetros de incentivo ao desenvolvimento econômico;</li>
							<li>Promover o desenvolvimento econômico da cidade, proteger áreas industriais; atrair investimentos em atividades produtivas; potencializar a capacidade criativa e o conhecimento científico e tecnológico;</li>
							<li>Incorporar a agenda ambiental ao desenvolvimento da cidade;</li>
							<li>Preservar o patrimônio e valorizar as iniciativas culturais;</li>
							<li>Fortalecer a participação popular nas decisões dos rumos da cidade.</li>
						</ol>
						<p>Os <strong>Planos Regionais das Subprefeituras</strong> (atuais Prefeituras Regionais) desenvolvidos entre 2015 e 2016, resultaram de um processo participativo que reuniu técnicos das várias secretarias e sociedade civil em encontros propositivos e de coleta de demandas locais.</p>
						<p>As principais diretrizes urbanísticas apresentadas nos Planos Regionais elaborados para as Prefeituras Regionais da Sé e da Mooca da Sé são as seguintes:</p>
						<ol style="list-style-type: upper-roman">
							<li>Promoção do uso habitacional para todas as faixas de renda, com destaque para o atendimento da população residente em áreas de precariedade habitacional;</li>
							<li>Atendimento à população em situação de vulnerabilidade social, com destaque para o atendimento da população em situação de rua e usuária de drogas;</li>
							<li>Ampliação do acesso aos equipamentos públicos de assistência social, educação e cultura;</li>
							<li>Compatibilização dos fluxos de pedestres, ciclistas, ônibus, veículos de passeio e veículos de carga, esses últimos necessários aos usos comerciais, industriais e logísticos existentes no território.</li>
							<li>Qualificação de espaços públicos e melhoria da gestão, com destaque para ações de melhoria da segurança pública;</li>
							<li>Preservação dos imóveis tombados e estímulo ao aproveitamento e ao <i>“retrofit”</i> de imóveis subutilizados ou não edificados;</li>
							<li>Melhoria das condições ambientais através da ampliação de áreas permeáveis e de áreas verdes, da recuperação de áreas contaminadas e da manutenção das áreas verdes existentes; </li>
							<li>Indução ao desenvolvimento econômico dos polos comerciais e estímulo às atividades industriais.</li>
						</ol>
						<div class="contPdf">
							<a href="http://gestaourbana.prefeitura.sp.gov.br/wp-content/uploads/2018/02/PA-MO.pdf" class="box" download>
								<i class="small material-icons">picture_as_pdf</i>
								Caderno de Propostas dos Planos Regionais das Subprefeituras Perímetros de Ação Mooca
							</a>
							<a href="http://gestaourbana.prefeitura.sp.gov.br/wp-content/uploads/2018/02/PA-SE.pdf" class="box" download>
								<i class="small material-icons">picture_as_pdf</i>
								Caderno de Propostas dos Planos Regionais das Subprefeituras Perímetros de Ação Sé
							</a>
						</div>
						<h5 class="title is-5" id="objetivos">Objetivos para o Setor Central da MEM</h5>
						<p>A maior parte da área de estudo está compreendida na Macroárea de Estruturação Metropolitana (MEM), caracterizada, na formulação do PDE, pela robusta infraestrutura de mobilidade, suprida pela rede viária estrutural, pela rede ferroviária e pelo conjunto de rodovias que servem a cidade, articulando-a aos “diferentes municípios e polos de empregos da Região Metropolitana de São Paulo”.</p>
						<p>Nesse âmbito extenso que abrange 228 km² estão ativos processos “de transformação econômica e de padrões de uso e ocupação do solo”, cujo direcionamento demanda a elaboração de projetos de intervenção urbana específicos, como o que aqui se introduz.</p>
						<p>A área atualmente abrangida pela Operação Urbana Centro corresponde ao Setor Central da MEM, para o qual o PDE propõe:</p>
						<ol style="list-style-type: upper-roman">
							<li>fortalecimento do caráter de centralidade municipal,</li>
							<li>valorização das áreas de patrimônio cultural; </li>
							<li>qualificação da oferta de diferentes sistemas de transporte coletivo;</li>
							<li>estímulo a provisão habitacional de interesse social;</li>
							<li>requalificação e reabilitação das áreas deterioradas e subutilizadas;</li>
							<li>estímulo à diversidade de renda, aproximando grupos de baixa, media e alta renda;</li>
							<li>revisão e atualização da Operação Urbana Centro.</li>
						</ol>
						<h5 class="title is-5" id="diretrizes">Hipótese e Diretrizes Urbanísticas</h5>
						<p>A Hipótese Urbanística corresponde ao conjunto dos propósitos que conformam o cenário ideal que inspira o projeto. São eles:</p>
						<ol style="list-style-type: upper-roman">
							<li>Incremento populacional nos distritos do Anel Central, suportado pela oferta de emprego e serviços existentes na região;</li>
							<li>Redução da Vulnerabilidade Social e qualificação da moradia;</li>
							<li>Preservação dos imóveis de interesse histórico;</li>
							<li>Desenvolvimento Orientado pelo Transporte Sustentável – DOTS: adensamento populacional e construtivo junto aos meios de transporte público de média e alta capacidade;</li>
							<li>Melhoria da mobilidade veicular e da acessibilidade a pé;</li>
							<li>Fortalecimento dos polos econômicos;</li>
							<li>Qualificação dos espaços públicos.</li>
						</ol>
						<p>Esses temas se organizam em diretrizes urbanísticas que, em graus diversos, podem ser implementadas através do projeto de intervenção urbana.</p>
						<h6 class="title is-6">1. Orientar o adensamento construtivo e populacional</h6>
						<h6 class="subtitle is-6">Densidade de referência</h6>
						<p>Como mencionado no documento <a href="#diagnostico">Diagnóstico - Análise Territorial</a>, segundo dados da RAIS de 2014, os dez distritos centrais concentram 19% dos empregos formais do município - isso ainda sem contabilizar os empregos ofertados pela administração pública, numerosos nessa região.</p>
						<p>Esses mais de 800 mil empregos que promovem a grande diversidade de serviços ofertados fundamentam a diretriz específica do PDE de fortalecer a polaridade de alcance municipal, aumentando a densidade demográfica e a oferta habitacional da região central.</p>
						<p>Os distritos da Liberdade, Bela Vista e Consolação e parcelas dos distritos do Cambuci e de Santa Cecília que já sofreram um processo de transformação e verticalização e apresentam padrão de urbanização elevado e alta concentração de empregos e de serviços referenciam a proposta de adensamento populacional e construtivo pretendido no projeto.</p>
						<p>Consideradas as densidades populacionais dos três distritos mais populosos, destacam-se os índices de Santa Cecília, República e Bela Vista, todos acima de 200 hab/ha, densidade compatível com o modelo de cidade compacta que vem sendo adotado em projetos urbanos recentes.</p>
						<p>A partir desses dados e da diretriz de adensamento populacional do Setor Central da Macroárea de Estruturação Metropolitana, a densidade populacional média futura do projeto foi fixada em 200  hab/ha, contra a média atual de 130 hab/ha, o que corresponde a um incremento populacional da ordem de 140.000 novos moradores para área de 1.990 ha compreendida no perímetro de intervenção.</p>
						<h6 class="subtitle is-6">Territórios de adensamento</h6>
						<p>A tabela abaixo mostra a distribuição de usos residenciais e não residenciais nos distritos centrais, em relação à área construída total e ao coeficiente de aproveitamento médio dos terrenos:</p>
						<table>
							<caption>Áreas construídas totais e Coeficiente de Aproveitamento médio residencial e não-residencial</caption>
							<thead valign="">
								<td width="10%">Distrito</td>
								<td width="22.5%">Coeficiente Aproveitamento residencial</td>
								<td width="22.5%">% Área construída residencial</td>
								<td width="22.5%">Coeficiente de Aproveitamento não-residencial</td>
								<td width="22.5%">% Área construída não-residencial</td>
							</thead>
							<tr>
								<td>Santa Cecília</td>
								<td>5,3</td>
								<td>64%</td>
								<td>1,7</td>
								<td>34%</td>
							</tr>
							<tr>
								<td>Bela Vista</td>
								<td>5,3</td>
								<td>51%</td>
								<td>3,4</td>
								<td>48%</td>
							</tr>
							<tr>
								<td>República</td>
								<td>8,4</td>
								<td>31%</td>
								<td>5,0</td>
								<td>64%</td>
							</tr>
							<tr>
								<td>Bom Retiro</td>
								<td>2,5</td>
								<td>27%</td>
								<td>1,2</td>
								<td>70%</td>
							</tr>
							<tr>
								<td>Brás</td>
								<td>2,0</td>
								<td>16%</td>
								<td>1,6</td>
								<td>79%</td>
							</tr>
							<tr>
								<td>Pari</td>
								<td>1,3</td>
								<td>24%</td>
								<td>1,3</td>
								<td>74%</td>
							</tr>
						</table>
						<div class="table_notes"><p>Fonte: Infocidade. Elaboração: São Paulo Urbanismo 2017.</p></div>
						<p>Partes significativas dos distritos do Bom Retiro, Pari e Brás mais próximas dos dois distritos centrais estão contidas em perímetros de ZDE-1 – <em>Zona de Desenvolvimento Econômico 1</em>, abrangendo áreas de grande concentração comercial e de atividades industriais de pequeno e médio porte.</p>
						<p>Nessas zonas, ainda que os usos residenciais verticais sejam admitidos pelo Zoneamento, estima-se um baixo potencial de transformação dos polos comerciais de vestuário e de utilidades consolidados, potencial inversamente proporcional à vitalidade econômica de alcance estadual dessa região.</p>
						<p>O vigor dos polos comerciais combinado aos números apresentados acima indicam que o adensamento construtivo da área de projeto estará distribuído principalmente na faixa norte dos distritos do Bom Retiro e do Pari, próxima da marginal Tietê, e na parcela do distrito de Santa Cecília situada acima da ferrovia, onde se verifica menor densidade construtiva.</p>
						<p>A oferta de área edificada nessa região pode explorar as conexões facilitadas com municípios vizinhos, em convergência com o <strong>Projeto Estratégico Centralidade da Metrópole</strong>, desenvolvido no âmbito dos estudos do Arco Tietê e que abrange a área destacada na figura abaixo.</p>
						</section>
				</div>
			</div>
		</div>
	</div>	
	<MapaZoneamento></MapaZoneamento>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<p>Nessa parcela, com terrenos de grandes dimensões subaproveitados e extensões de terras públicas passíveis de transformação, poderão ser propostos novos padrões de ocupação do solo e incentivos que impulsionem a renovação da área.</p>
						<p>Nessa faixa, também está prevista a implantação do Apoio Urbano Sul, melhoramento viário previsto na Lei Municipal nº 16.401/2016 cuja implantação cria a oportunidade de renovação das quadras lindeiras em toda a sua extensão.</p>
						</section>
				</div>
			</div>
		</div>
	</div>	
	<ApoioSul></ApoioSul>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<p>Nos distritos de Sé, República e Santa Cecília já são observados altos índices de aproveitamento dos terrenos. O incremento construtivo/populacional nesses distritos deve acontecer por empreendimentos dispersos, complementando a volumetria de quadras já densamente edificadas. A exemplo das zonas comerciais ao norte da ferrovia, também se atribui baixo potencial de transformação aos polos comerciais de Santa Ifigênia – eletroeletrônicos – e Vinte e Cinco de Março – variedades.</p>
						<p>O mapa abaixo destaca as áreas com maiores percentuais de transformação - segundo o estudo de viabilidade da intervenção resumido adiante - para as quais, com o avanço do projeto, serão propostos regramentos específicos para adequação do incremento construtivo e populacional esperado.</p>
					</section>
				</div>
			</div>
		</div>
	</div>	
	<MapaAdensamento></MapaAdensamento>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<h6 class="subtitle is-6">Áreas de Projeto Estratégicos</h6>
						<p>Imóveis há muito tempo vagos ou subutilizados, áreas públicas em processo de transformação, vizinhanças fisicamente degradadas, potencialidades de aproveitamento inexploradas são situações que justificam a inclusão dessas áreas no rol dos <em>Projetos Estratégicos</em>.</p>
						<p>Apesar das condições distintas dessas áreas, a proposta é conformar uma rede de intervenções estratégicas para as quais se estabeleçam diretrizes e parâmetros urbanísticos, procedimentos de intervenção e acompanhamento dirigido que possam deflagrar a sua transformação.</p>
						<p>A lista de imóveis indicados na figura seguinte é apenas referencial, para subsidiar a estruturação de um plano de intervenção em imóveis ou contextos urbanos em condição estacionária, aquém de suas possibilidades de aproveitamento.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<ProjetosEstrategicos></ProjetosEstrategicos>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<h6 class="title is-6">2. Garantir a moradia digna</h6>
						<h6 class="subtitle is-6">Manutenção dos vetores em atividade</h6>
						<p>A produção voltada para mercado tem explorado com eficiência a compactação da unidade residencial nos distritos Sé e República, voltada para moradores que se valem da diversidade da oferta de serviços da região e dispõem-se ao compartilhamento condominial de ambientes  antes privativos da unidades. Esse vetor será incentivado nesses dois distritos e a produção de unidades maiores, voltadas às famílias com filhos, será direcionada para o arco norte do âmbito estudado.</p>
						<h6 class="subtitle is-6">Incentivo ao retrofit de edifícios </h6>
						<p>Outra ação específica desse território é o melhor aproveitamento do estoque construído, parte significativa constituída de edificações tombadas, cuja utilização requer alternativas de atendimento às normas de licenciamento de projetos.</p>
						<p>Equacionadas as questões do licenciamento de edifícios antigos em ações de reconversão, reforma ou restauração, trata-se de estabelecer facilidades para que investidores privados participem do financiamento dessas ações.</p>
						<h6 class="subtitle is-6">Aproveitamento de imóveis públicos</h6>
						<p>Outro estoque que ainda não ganhou visibilidade corresponde à massa de edifícios e propriedades públicas, dos três níveis da administração, que vêm se mantendo fora do mercado imobiliário. Trata-se de relacionar o conjunto dessas propriedades, aferir sua utilidade para finalidades públicas e convertê-las em ativos para a estruturação de parcerias público privadas voltadas para a produção habitacional de rendas combinadas – interesse social + renda média –, à semelhança dos projetos estruturados pelo Governo do Estado no programa Casa Paulista.</p>
						<h6 class="subtitle is-6">Integração dos perímetros de ZEIS 3 e o anel habitacional popular qualificado</h6>
						<p>Para atendimento da população moradora em condições subnormais no centro, impõe-se a concepção de um anel habitacional popular qualificado em torno dos dois distritos centrais, acompanhado de soluções de transposição da ferrovia e dos eixos viários estruturais, da qualificação de espaços públicos e de provisão integrada de equipamentos públicos.</p>
						</section>
				</div>
			</div>
		</div>
	</div>
	<ZEIS></ZEIS>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<p>Nas áreas em ZEIS, serão priorizados os empreendimentos propostos para imóveis vagos, subutilizados e de uso não residencial e, especialmente, para os imóveis notificados para o parcelamento, edificação e urbanização compulsórios.</p>
						<p>Propõe-se também estimular a participação de empreendedores privados na implantação dos programas públicos de provisão habitacional, hoje sujeitos às restrições orçamentárias do Município.</p>
						<h6 class="subtitle is-6">Diversificação das tipologias habitacionais e das modalidades de atendimento</h6>
						<p>As modalidades de atendimento deverão considerar a diversidade da conformação familiar, ampliando o leque de tipologias habitacionais; a diversidade da situação de atendimento – temporária, transitória ou definitiva e as formas de acesso à moradia – aquisição ou aluguel social.</p>
						<h6 class="subtitle is-6">Subsídio a programas públicos de atendimento à população moradora de rua</h6>
						<p>A concentração de moradores de rua nos distritos centrais justific, no âmbito do projeto proposto, a adoção de medidas de abrigamento voltadas para esse público. Trata-se também de condicionar o espaço público para atendimento dessa população, com a oferta de sanitários e banhos públicos que contribuam para mitigar a condição de indignidade em que vivem pessoas desalojadas.</p>
						<p>As políticas e os programas de atendimento habitacional e de acolhimento de população de rua são definidos pelas Secretarias Municipais da Habitação e da Assistência e Desenvolvimento Social. Os instrumentos viabilizadores do Projeto de Intervenção Urbana do Setor Central visam captar recursos para o financiamento de ações coordenadas por essas secretarias.</p>

						<h6 class="title is-6">3. Preservar o Patrimônio Arquitetônico e Ambiental</h6>
						<h6 class="subtitle is-6">Definição Perímetros de Requalificação de Integrada de Imóveis Tombados (PRIT)</h6>
						<p>A estratégia principal de preservação dos bens tombados no PIU do Setor Central será a sua integração num projeto urbanístico, onde as possibilidades de transformação de sua vizinhança estejam parametrizadas pela  valorização e destaque dessas edificações. Trata-se de estabelecer <i>Perímetros de Requalificação Integrada de Imóveis Tombados (PRIT)</i>, para os quais serão elaborados Planos de Ordenamento da Paisagem Urbana, abrangendo propostas de regramento da volumetria, melhorias urbanísticas, incentivo à transferência de potencial construtivo e benefícios estabelecidos pelo PDE para os Territórios de Interesse da Cultura e da Paisagem (TICP).</p>
						<h6 class="subtitle is-6">Incentivos à reconversão</h6>
						<p>Também serão exploradas possibilidades de facilitação de ações de reconversão, restauro e reforma desses imóveis, quase sempre distantes dos padrões propostos pelo regramento edilício atual.</p>
						<h6 class="subtitle is-6">Adequação dos procedimentos de Transferência de Potencial Construtivo </h6>
						<p>A lei da OU Centro atribuiu um elevado Potencial Construtivo Passível de Transferência (PCpt) aos imóveis tombados, em razão da magnitude da obra de restauração dessas edificações, que têm, na área central, áreas edificadas muito superiores àquelas atualmente permitidas pela legislação.</p>
						<p>Passados vinte anos da Lei da Operação Urbana Centro e sob a vigência de novos marcos regulatórios, impõe-se a reavaliação da fórmula de cálculo, da precificação do potencial de construção passível de transferência de imóveis tombados e das formas de controle da aplicação dos recursos captados.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Patrimonio></Patrimonio>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<h6 class="title is-6">4. Fortalecer a Base Econômica local</h6>
						<p>O PDE define Economia Criativa como o ciclo de criação, produção e distribuição de bens e serviços tangíveis e intangíveis que utilizam a criatividade, a habilidade e o talento de indivíduos ou grupos como insumos primários, sendo composta por atividades econômicas baseadas no conhecimento e capazes de produzir riqueza, gerar emprego e distribuir renda. Dentro desse contexto, o PDE instituiu os <em>PEC</em> (Polos de Economia Criativa) – territórios destinados ao fomento e desenvolvimento de atividades relacionadas a essa nova economia, mediante a possibilidade de concessão de incentivos fiscais.</p> 
						<p>A figura seguinte destaca polos de economia criativa já tradicionais da área central – ligados à atividade teatral, à gastronomia, à produção de vídeo, ao entretenimento em geral – e os vigorosos polos comerciais de Brás, Pari e Bom Retiro.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<PolosEconomicos></PolosEconomicos>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<h6 class="subtitle is-6">Circuitos de Mobilidades</h6>
						<p>No âmbito da intervenção urbanística, as propostas voltadas ao fortalecimento econômico da região estão ligadas aos temas da mobilidade e da qualificação dos espaços públicos.</p>
						<p>O escritório Jaime Lerner, num estudo apresentado à Prefeitura de São Paulo, propôs a implantação da <a href="http://www.capital.sp.gov.br/noticia/prefeitura-recebe-o-projeto-centro-novo" target="_blank">Linha Circular Centro</a>, conectando diversos pontos de interesse na região central através de um veículo inovador e amigável ao pedestre.</p>
						<p>São dois circuitos propostos, em sentidos opostos, que conectam equipamentos culturais, monumentos históricos, polos de comércio, galerias especializadas, centros de ensino e pesquisa, espaços de lazer, entretenimento e gastronomia. A Linha também se conecta às infraestruturas de transporte fartas no centro – estações de metrô, terminais de ônibus, estações de trem, linhas de superfície – facilitando a troca entre modais e aproximando as pessoas de seu destino final. Associada à intervenção, foi proposta a requalificação das áreas lindeiras ao seu itinerário e dos Bulevares Centrais.</p>

						<figure>
							<img src="../../assets/img/circular.jpg" title="Proposta e elaboração Jaime Lerner Associados - 2017">
						</figure>
	

						<p>Esse estudo fundamentou a proposta de multiplicação dos Circuitos de Mobilidade possíveis conectando os polos comerciais e produtivos do anel central às demais estruturas representativas da região e às redes de transporte coletivo.</p>
						<!--imagem10 circuitos de mob-->
						<figure>
							<img src="../../assets/img/circuitos-de-mobilidade.jpg" title="Circuitos de mobilidade 
Elaboração: São Paulo Urbanismo – 2017">
						</figure>


						<p>Outra ação de estímulo à economia da área central é a melhoria da circulação veicular atraída por e gerada nos polos comerciais, mediante a organização da oferta de vagas de estacionamento, baseada nas seguintes medidas:</p>
						<ul>
							<li>restrição de estacionamento junto ao meio-fio na área interna à rótula;</li>
							<li>ampliação das áreas regulamentadas de desembarque e de carga e descarga intra-rótula e na área de influência dos polos comerciais;</li>
							<li>viabilidade da oferta privada de vagas de estacionamento em edifícios-garagem; estrategicamente localizados para atendimento aos polos econômicos da área central;</li>
							<li>qualificação dos espaços públicos e melhoria das condições de circulação de pedestres nas rotas comerciais.</li>
						</ul>
						<h6 class="title is-6"></h6>

						<h6 class="title is-6">5. Melhorar a mobilidade e a acessibilidade</h6>
						<h6 class="subtitle is-6">Mobilidade Ativa</h6>
						<p>A mobilidade ativa - modos a pé e bicicleta – corresponde a mais de 70% das viagens internas à região central enquanto a média da região metropolitana é de 32%.</p>
						<p>Viabilizar a qualificação de percursos no âmbito dos polos comerciais, nos calçadões e nos bulevares, principais eixos de deslocamento e de conexão dos pontos de interesse da Região Central, é tarefa continuada da Municipalidade. Presentemente, no âmbito do plano de concessão de terminais à iniciativa privada, conduzido pela Secretaria Municipal de Desestatização e Parcerias, estão em desenvolvimento planos de requalificação de logradouros no entorno dos terminais de ônibus da área central, cuja implantação será compartilhada entre a Prefeitura e o concessionário privado.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Bulevares></Bulevares>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<h6 class="subtitle is-6">Melhoria e ampliação dos pontos de transposição de barreiras</h6>
						<p>O mapa a seguir destaca estruturas de mobilidade de longas distâncias que têm impacto negativo na acessibilidade local.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Barreiras></Barreiras>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<p>As transposições das linhas da CPTM, do Corredor Norte-Sul, do Parque Dom Pedro II, da Avenida do Estado e da Ligação Leste-Oeste são muito espaçadas. Os longos viadutos (muitos deles com passeio de largura exígua) e as passarelas mal conservadas que atravessam essas estruturas dificultam o deslocamento de pedestres.</p>
						<p>A melhoria dessa condição envolve a multiplicação dos pontos de transposição e a requalificação dos existentes, para pedestres e ciclistas, prioritariamente. A segurança viária deve ser tratada de maneira especial na formulação das diretrizes urbanísticas, pois é um componente essencial para o sucesso de qualquer política de estímulo à Mobilidade Ativa, especialmente na região central da capital.</p>
						<h6 class="subtitle is-6">Desestímulo ao transporte individual</h6>
						<p>A medida estudada para a qualificação dos polos comerciais – reorganização da oferta de vagas de estacionamento, eliminação de vagas no meio-fio combinada à ampliação dos pontos de embarque e desembarque e de carga e descarga – será avaliada no âmbito da rótula, dentro da política de desestímulo ao transporte individual e priorização da circulação de ônibus, táxis e veículos de carga na área central.</p>
						<h6 class="subtitle is-6">Implantação do Apoio Sul à Marginal Tietê</h6>
						<p>A implantação dos melhoramentos correspondentes ao Apoio Urbano Sul, previstos no inciso XXVIII do Artigo 1º da Lei nº 16.541, de 8 de setembro de 2016, tem por objetivo a melhoria do deslocamento entre bairros ao sul da Marginal Tietê. Na sessão proposta, trata-se de uma avenida com quatro faixas de rolamento por sentido, sendo uma para transporte público em calha exclusiva, calçadas largas, paradas de ônibus em canteiro central arborizado e ciclovias.</p>
						<h6 class="title is-6">6. Qualificar os espaços públicos e promover a agenda ambiental</h6>
						<h6 class="subtitle is-6">Consolidação do Sistema de Espaços Públicos</h6>
						<p>A proposta contempla a interligação dos bulevares, largos e praças da área central em um circuito claro, legível, seguro e confortável para passantes, usuários e moradores da região. Compreende a requalificação de percursos, recomposição de massas arbóreas, melhoria da iluminação e a implantação de mobiliário urbano adequado à massa significativa de usuários do centro.</p>
						<p>Trata-se de intervenção vultosa, tanto em extensão quanto em custos, cuja viabilidade será estudada nas etapas subsequentes do projeto. 
						As medidas de incentivo aos empreendimentos nos lotes privados lindeiros são parte indissociável da ação pública sobre esses espaços, na medida em que a vitalidade dos usos lindeiros aumenta a longevidade do investimento público.</p>
						<h6 class="subtitle is-6">Qualificação das orlas fluvias</h6>
						<p>As orlas fluviais devem receber um regramento específico vinculado às questões ambientais, com ênfase na Área de Preservação Permanente, na paisagem urbana e nos corredores verdes, que propiciam à avifauna a conectividade entre as parcelas de seu habitat.</p>
						<p>O Projeto de Lei nº 723/2015, que trata da Operação Urbana Consorciada Bairros do Tamanduateí, propõe uma disciplina específica para a orla do Rio Tamanduateí, transposta aos estudos do Arco Tietê que também propõe um regramento específico para orla do Rio Tietê.</p>
						<p>Estão previstos recuos especiais ajardinados integrados às calçadas como medida de desocupação das faixas remanescentes das áreas de preservação permanente desses dois rios, medida que só será implementada mediante a renovação das edificações das orlas fluviais. A efetivação dessa diretriz depende da eficácia dos incentivos propostos para esse território.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<OrlasFluviais></OrlasFluviais>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section>
						<h6 class="subtitle is-6">Promoção de Adensamento Construtivo e Populacional Qualificado</h6>
						<p>A proposta de adensamento populacional e construtivo será acompanhada de ações de qualificação do habitat.</p>
						<p>Adicionalmente aos parâmetros qualificadores da edificação estabelecidos no Artigo 57 da Lei de Zoneamento, Lei Municipal nº 16.402/2016, são diretrizes ambientais do projeto:</p>
						<ul>
							<li>reservar parcelas de terrenos vagos para implantação de praças;</li>
							<li>incentivar a reutilização de edificações;</li>
							<li>incentivar a arborização das áreas de várzea;</li>
							<li>acompanhar a remediação de áreas contaminadas;</li>
							<li>incentivar a utilização de áreas públicas para o lazer coletivo ao ar livre.</li>
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
					<section id="viabilidade">
						<h4 class="title is-4">Viabilidade da Transformação</h4>
						<p>Os componentes essenciais da viabilidade da transformação do PIU do Setor Central são os seguintes:</p>
						<ul>
							<li>Programa habitacional, que deve garantir a utilização do patrimônio edificado existente, assim como incentivar a produção imobiliária na área da atual OU Centro e nos distritos incorporados;</li>
							<li>Patrimônio histórico-cultural, a ser utilizado como ativo convergente com objetivos e intenções do projeto e para fomento das atividades da área central;</li>
							<li>Estoque de áreas públicas, através da implementação de projetos e programas de interesse publico (municipais e de outros entes).</li>
						</ul>
						<p>Na última década foi possível verificar um aumento significativo da produção imobiliária na região, que teve entre seus motivadores: a estruturação econômica do setor da produção imobiliária, mediante a disponibilidade de crédito, abertura de capital e segmentação empresarial das incorporadoras e surgimento de investidores no mercado de aluguéis; a segmentação produto/consumidor, pelo surgimento de nichos específicos voltados ao atendimento de novos consumidores e pela ausência de controle de tipologia mínima; o esgotamento de estoques de potencial construtivo estabelecidos pela lei 13.885/04, em alguns distritos do município; e, por fim, a disponibilidade de CA=6 para uso residencial na OU Centro.</p>
						<p>Foram quase 12.000 unidades habitacionais produzidas na Operação Urbana Centro nos últimos 15 anos, sendo mais de 9.000 nos últimos 5 anos. Nesse período, na área correspondente ao PIU Área Central, este número se aproxima de 15.000.</p>
						<p>Na comercialização das unidades habitacionais foram observadas áreas úteis bem reduzidas, sem a presença de vagas de garagem e com atributos agregados tais como áreas de lazer e serviços de suporte pay per use, etc. Esse vetor de produção continua ativo e sua manutenção será incentivada nos distritos centrais, Sé e República.</p>
						<p>Foi constatado que mais da metade dos empreendimentos foi erguida em terrenos ocupados por estacionamentos e pouco edificados, sem ponto comercial agregado. Como primeiros resultados da aplicação do PEUC – Parcelamento, Edificação e Urbanização Compulsórios - imóveis vazios e ociosos têm sido recolocados no circuito da produção imobiliária, impulsionando a renovação do estoque edificado.</p>
						<p>A viabilidade da transformação de edificações existentes começa a ser comprovada pelo surgimento desses empreendimentos no âmbito de projeto. Os estudos econômicos que subsidiam a elaboração do PIU Setor Central avançam em medidas que tragam maior agilidade ao processo de aprovação de projetos de <i>retrofit</i> e de incentivos econômicos para aumento da escala de produção nesse segmento.</p>
						<p>Em relação à produção habitacional de interesse social, verifica-se interesse e viabilidade em empreender para as classes de baixa renda, mediante as possibilidades de financiamento público -principalmente pelo Programa Minha Casa Minha Vida do Governo Federal. Estão em desenvolvimento propostas de concessão de incentivos a empreendedores que já atuam nesse segmento para viabilizar sua participação na produção de unidades habitacionais direcionadas para a faixa de renda 1, nas ZEIS   contidas no perímetro do projeto.</p>
						<p>Cabe também uma análise mais aprofundada do mercado de aluguéis, modalidade que já aparece nas motivações de negócios imobiliários futuros e que pode beneficiar-se da alta demanda por habitações na área central.</p>
						<p>Em relação à viabilidade da transformação das áreas públicas, é necessário completar o diagnóstico das áreas municipais, incluindo levantamento da origem do bem público (desapropriação, remanescente, terras devolutas, etc), documentação existente, termos de cessão de uso, utilização fática, interesse público, regional, social, cultural e ambiental), assim como consulta às demais esferas públicas, estadual e federal. O ponto de partida será a proposta de aproveitamento de áreas públicas estudada no projeto do Arco Tietê.</p>
						<p>Outra questão a ser enfrentada é a situação registraria das propriedades da área central, em sua maioria, pendentes de partilhas e processos judiciais, situações por vezes só equacionadas mediante interveniência da Prefeitura.
						Amparam as medidas de incentivo à produção imobiliária as propostas de melhoria de acessibilidade e de qualificação ambiental a serem detalhadas em etapas subsequentes do projeto.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Comments :commentid="5"></Comments>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="adensamento">
						<h4 class="title is-4">Adensamento Populacional e Construtivo</h4>
						<p>Os incentivos à produção imobiliária no Setor Central devem associar adensamento construtivo a adensamento populacional. Devem promover o convívio entre pessoas de faixas de renda distintas e o uso misto nas edificações, diversidade entendida como elemento qualificador da vida urbana.</p>
						<p>A produção habitacional de mercado dos últimos anos foi dirigida a segmentos bem específicos de consumidores, expandindo o padrão <i>uma unidade-uma pessoa</i> há muito presente no centro. Empresas lançaram produtos direcionados a um público jovem ou com um estilo de vida jovem, ao menos.</p>
						<p>Essa tendência pode ser mantida, mas pretende-se ampliar a oferta de tipologias adequadas a outras conformações familiares.</p>
						<p>Para além de pensar a densidade medida por habitante por hectare, é preciso aferir outros índices, tais como habitantes por domicílio, habitantes por m² de área construída, de modo a enriquecer estudos e projeções sobre as múltiplas formas de morar demandadas na atualidade.</p>
						<p>O projeto deve abarcar a variedade da oferta habitacional na região - produção imobiliária formal, cortiços, ocupações -, as alternativas de acesso – aquisição ou aluguel -, finalidade - domicílio permanente, transitório ou temporário -, e as formas de compartilhamento domiciliar - entre familiares, repúblicas para estudantes, lar de idosos, etc.</p>
						<p>Conforme dados disponíveis na SINOPSE do CENSO 2010, observa-se a existência de 33.149 domicílios vagos na região de projeto, cerca 14,6% do total de domicílios. Em números absolutos, 8mil domicílios foram ocupados desde 1991, quando o índice de vacância atingia 18,5%. Esse é um estoque de reserva a ser ativado no projeto.</p>
						<p>A estimativa da possível transformação territorial a ser alcançada por um projeto urbano recorre à metodologia conhecida como <i>AMPT Área Mais Provável de Transformação</i>.</p>
						<p>Em linhas gerais, a AMPT avalia o potencial de transformação dos diferentes usos do solo combinados às tipologias construtivas, caracterizados pelo TPCL, a partir da observação das dinâmicas urbanas. Para cada uso-tipologia é atribuído um índice de probabilidade de transformação, ponderado conforme a distribuição das diferentes áreas construídas em uma mesma quadra.</p>
						<p>A legislação vigente e a legislação proposta nos projetos influenciam diretamente o interesse do setor imobiliário em determinadas regiões. A permissão de usos pode garantir ou dizimar tipologias-atividades presentes. Nos setores da Macroárea de Estruturação Metropolitana, por exemplo, sabe-se que o uso industrial é altamente pressionado para permissão/transformação para usos residenciais verticais (seja pela localização, disponibilidade de grandes estruturaas fundiárias, etc).</p>
						<p>A capacidade de consumo de <i>Área Construída computável Adicional - ACCA</i> é também fator a ser considerado na modelagem, posto que de acordo com as tipologias do entorno (pré existências morfológicas), dimensões e formatos dos lotes, condições topográficas, pode ou não haver demanda pela a ACCA disponível estimada.</p>
						<p>A análise dos usos transformáveis pelos setores do projeto revela que a porção ao norte da ferrovia tem em torno de 540 mil metros quadrados de terreno passíveis de transformação e as áreas lindeiras aos bulevares, externas à rótula, comparecem com outros quase 500 mil metros quadrados.</p>
						<p>Analisadas as demais áreas abrangidas no projeto, a modelagem preliminar estima a possibilidade de transformação de 2,1 milhões de metros quadrados de terrenos, cuja utilização será parametrizada por índices urbanísticos ajustados a cada setor do projeto, pela adoção da cota máxima de terreno por unidade habitacional e por incentivos construtivos e parâmetros qualificadores da edificação.</p>
						<p>A área para transformação disponível é muito superior à demandada para o atingimento da densidade meta do projeto de 140.000 novos habitantes na região, meta que poderá ser ultrapassada e determinar o ajuste da proposta em anos futuros.</p>
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
					<section id="impacto">
						<h4 class="title is-4">Impacto Esperado da Intervenção</h4>
						<p>A implantação do Programa Habitacional nos perímetros de ZEIS, o incentivo ao <i>retrofit</i> nas áreas consolidadas e a priorização aos projetos públicos para atendimento à população moradora em condições subnormais e à população de rua irão proporcionar melhoria de vida para a população de baixa renda, aumento da densidade da população residente com consequente melhoria das condições de segurança.</p>
						<p>O fortalecimento da base econômica local, através da potencialização turística dos ícones do patrimônio histórico existentes e da integração das estações do transporte de massa aos centros comerciais, irão gerar, além de mudança da paisagem, novos empregos, melhoria da qualidade de vida da população e aumento da arrecadação tributária.</p>
						<p>A renovação dos padrões de ocupação através da recuperação urbanística de bulevares e a implantação de áreas verdes irão contribuir para a melhoria do microclima da região, redução das áreas de inundação, maior disponibilidade de micro habitats para a avifauna e aumentar as áreas verdes de lazer.</p>
						<p>A implantação das transposições às barreiras formadas pelos rios, ferrovia, parques, avenidas e grandes quadras irá ampliar a conectividade local e promover a melhoria da qualidade de vida da população.</p>
						<p>A facilitação da transferência de potencial construtivo irá incentivar a recuperação e preservação de imóveis tombados.</p>
						<p>Todo projeto urbanístico tem em vista a melhoria do território de intervenção. Está claro que transformações propostas impactam a vida da população, seja pela alteração de cenários conhecidos, seja pela necessária alteração de hábitos – como, por exemplo, a substituição do automóvel particular nas incursões  à rótula central.</p>
						<p>A possibilidade de desapropriações em áreas de intervenção pública também causa comoção nas populações afetadas, impacto que deve ser mitigado pela justa compensação e pela manutenção de um canal de comunicação com desapropriados e desalojados.</p>
						<p>De toda forma, a adoção de programas de monitoramento e de mitigação de impactos já faz parte da prática administrativa municipal na implantação de obras e projetos.</p>
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
					<section id="gestao">
						<h4 class="title is-4">Modelo de gestão democrática</h4>
						<p>Dentre as estratégias do Plano Diretor Estratégico (PDE), tem destaque o fortalecimento da participação popular nas decisões dos rumos da cidade, considerando as diversas instâncias e por meio de diferentes instrumentos de participação e controle social. Tais estratégias garantem a participação de representantes dos diferentes segmentos da população de forma direta ou por intermédio de associações representativas, nos processos de planejamento e gestão da cidade, de realização de investimentos públicos e na elaboração, implementação e avaliação de planos, programas e projetos de desenvolvimento.</p>
						<p>O PDE definiu, no artigo 136, que os PIU elaborados pelo Poder Público deverão apresentar propostas de transformações urbanísticas, econômicas e ambientais no perímetro onde for aplicado o instrumento, cabendo ao PIU indicar os objetivos prioritários da intervenção, as propostas relativas a aspectos urbanísticos, ambientais, sociais, econômico-financeiros e modelo de gestão democrática que contemple mecanismos de participação e controle social e instrumentos para monitoramento e avaliação das ações.</p>
						<p>O <a href="http://www.prefeitura.sp.gov.br/cidade/secretarias/upload/desenvolvimento_urbano/decreto56901.pdf" title="Decreto nº 56.901 de 29 de março de 2016" target="_blank">Decreto nº 56.901 de 29 de março de 2016</a> que disciplina a elaboração dos Projetos de Intervenção Urbana assegura a realização de consultas públicas em etapas definidas de sua elaboração, para discussão e aperfeiçoamento das propostas.</p>
						<p>Para a gestão participativa do PIU, na sua etapa de implantação, propõe-se o recurso aos órgãos colegiados já constituídos para composição do respectivo <strong>Grupo Gestor</strong>.</p>
						<p>Cada Prefeitura Regional conta com um <strong>Núcleo Regional de Planejamento</strong>, constituído por técnicos das diversas Secretarias Municipais, que, nos termos do § 1º do Artigo 324 do PDE, atua “como um colegiado intersetorial e interdisciplinar, responsável pela integração e articulação das políticas setoriais bem como pelo acompanhamento das ações voltadas à concretização dos princípios diretrizes e ações do Plano Diretor, dos Planos Regionais e dos Planos de Desenvolvimento de Bairro”.</p>
						<p>Os NRP foram constituídos e seus integrantes designados pela Portaria SMPR Nº 31 de 7 de Julho de 2017, publicada pela Secretaria Municipal das Prefeituras Regionais. 
						<p>O <a href="http://gestaourbana.prefeitura.sp.gov.br/legislacao/decreto-no-57-537-de-16-de-dezembro-de-2016/" title="Decreto nº 57.537 de 16 de dezembro de 2016" target="_blank">Decreto nº 57.537, de 16 de dezembro de 2016</a>, dispõe em seu Artigo 7º, inciso V, que os Núcleos Regionais de Planejamento – NRP, entre outras atribuições, devem “constituir subgrupos para acompanhamento de intervenções específicas”.</p>
						<p>Para a participação dos munícipes, os artigos 34 e 35 da <a href="http://www.prefeitura.sp.gov.br/cidade/secretarias/desestatizacao/legislacao/index.php?p=170844" title="Lei nº 15.764 de 27 de maio de 2013" target="_blank">Lei nº 15.764 de 27 de maio de 2013</a> dispõem sobre a constituição e atribuições dos <strong>Conselhos Participativos Municipais</strong>, dentre as quais “III – zelar para que os direitos da população e os interesses públicos sejam atendidos nos serviços, programas e projetos públicos da região e comunicar oficialmente aos órgãos competentes em caso de deficiências neste atendimento”.</p>
						<p>Adicionalmente aos representantes desses órgãos constituídos, a gestão participativa de projetos de maiores dimensões pode demandar a ampliação do leque de representações, a serem definidas durante a construção do projeto.</p>
						<p>A atuação do <strong>Grupo Gestor</strong> deverá ser articulada aos <strong>Conselhos de ZEIS</strong>, cuja constituição é exigida na etapa de elaboração dos projetos de intervenção, em momento futuro, quando regulamentada a intervenção.</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<ConselhoGestor></ConselhoGestor>
	<Comments :commentid="8"></Comments>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<section id="ficha">
						<h4 class="title is-4">Ficha Técnica</h4>
						<h5 class="title is-5">SP Urbanismo – São Paulo Urbanismo</h5>

						<p><strong>José Armênio de Brito Cruz</strong><br>
						Presidente</p>

						<p><strong>Leonardo Amaral Castro</strong><br>
						Diretor de Intervenções Urbanas</p>

						<p><strong>Vladimir Ávila</strong><br>
						Diretor de Gestão das Operações Urbanas</p>

						<p><strong>Marilena Fajersztajn</strong><br>
						Gerente de Gestão Operacional</p>

						<p><strong>Arquitetos urbanistas</strong><br>
						Eduardo Tavares de Carvalho<br>
						Eneida R. Belluzzo Godoy Heck <br>
						Joyce Reis<br>
						Juliana Cipolletta<br>
						Katia Canova<br>
						Luciana Loureiro<br>
						Marcos Alexandre Moraes Mastropaulo<br>
						Melina Giannoni de Araujo<br>
						Patrícia Saran<br>
						Rafael Henrique de Oliveira<br>
						Rita Cassia G. S. Gonçalves <br>
						Thiago Francisco L. Carneiro</p>
						
						<p><strong>Economista</strong><br>
						Matias Chambouleyron</p>

						<p><strong>Procurador do Município</strong><br>
						José Antônio Apparecido Junior</p>
					</section>
				</div>
			</div>
		</div>
	</div>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';
import Processo from '@/components/pages/Processo';
import Dados from '@/components/pages/Dados';
import MapaAdensamento from '@/components/pages/MapaAdensamento';
import MapaZoneamento from '@/components/pages/MapaZoneamento';
import ApoioSul from '@/components/pages/ApoioSul';
import Mapa from '@/components/reusable/Mapa';
import Barreiras from '@/components/pages/Barreiras';
import Bulevares from '@/components/pages/Bulevares';
import OrlasFluviais from '@/components/pages/OrlasFluviais';
import Patrimonio from '@/components/pages/Patrimonio';
import PolosEconomicos from '@/components/pages/PolosEconomicos';
import PossibilidadeTransformacao from '@/components/pages/PossibilidadeTransformacao';
import ProjetosEstrategicos from '@/components/pages/ProjetosEstrategicos';
import ZEIS from '@/components/pages/ZEIS';
import ConselhoGestor from '@/components/pages/ConselhoGestor';
import Gallery from '@/components/reusable/Gallery';

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
						title: "Perímetro do PIU Setor Central", 
						path:'./static/kml/perimetro_piu_setor_central.kml',
						stroke_color: 'rgba(208, 100, 35, 1)',
						fill_color: 'rgba(208, 100, 35, 0.25)',
						stroke_width: 3,
					}
				],
			},
			gallery_attrs: {
				width: 1134,  // largura das imagens
				height: 850, // altura das imagens
				images:[
					{
						url:"./static/galeria/1_Estrategias_PIU_Setor_Central.jpg", 
						state: true,
						title: 'Image 1',
						icon: false,
						legenda: 'Lorem 1'
					},
					{
						url:"./static/galeria/2_Estrategias_PIU_Setor_Central.jpg", 
						state: false, 
						icon: false,
						title: 'Image 2',
						legenda: 'Lorem 2'
					},
					{
						url:"./static/galeria/3_Estrategias_PIU_Setor_Central.jpg", 
						state: false, 
						icon: false,
						title: 'Image 3',
						legenda: 'Lorem 3'
					},
					{
						url:"./static/galeria/4_Estrategias_PIU_Setor_Central.jpg", 
						state: false, 
						icon: false,
						title: 'Image 4',
						legenda: 'Lorem 4'
					},
					{
						url:"./static/galeria/5_Estrategias_PIU_Setor_Central.jpg", 
						state: false, 
						icon: false,
						title: 'Image 5',
						legenda: 'Lorem 5'
					}
				]
			}			
		}
	},
	computed: { projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ 
		Comments, 
		Processo, 
		Dados,
		Mapa,
		MapaAdensamento,
		MapaZoneamento,
		ApoioSul,
		Barreiras,
		Bulevares,
		OrlasFluviais,
		Patrimonio,
		PolosEconomicos,
		PossibilidadeTransformacao,
		ProjetosEstrategicos,
		ZEIS,
		ConselhoGestor,
		Gallery
		}
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
	max-width: 700px;
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
section#diagnostico{
	img { border: 1px solid $primary-light-grey}
}
div.contPdf {
	padding: 2rem;
	margin: 2rem 0;
	background: #f5f5f5;
	border-radius: 2px;
	a {
		display: flex;
		align-items: baseline;
		padding: 1rem;
		span{
			font-size: .75em;
			margin-left: .25em
		}
		i { 
			margin-right: 1rem; 
			align-self:center
		}
	}
}
</style>