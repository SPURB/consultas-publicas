<template>
<div class="Quadros">
	<hr>

	<h6>Quadro 1 -  Parâmetros de Ocupação, exceto Quota Ambiental</h6>
	<table class="borda">
		<tr id="head">
			<td rowspan="3" width="10%">ZONA</td>
			<td colspan="3">Coeficiente de Aproveitamento</td>
			<td rowspan="3" width="10%">Taxa de Ocupação Máxima</td>
			<td rowspan="3" width="10%">Gabarito de altura máxima</td>
			<td colspan="3">Recuos Mínimos</td>
			<td rowspan="3" width="10%">Cota parte máxima de terreno por unidade (m²)</td>
		</tr>
		<tr id="head">
			<td rowspan="2" width="10%">C.A. mínimo</td>
			<td rowspan="2" width="10%">C.A. básico</td>
			<td rowspan="2" width="10%">C.A. máximo</td>
			<td rowspan="2" width="10%">Frente</td>
			<td colspan="2">Fundos e laterais</td>
		</tr>
		<tr id="head">
			<td width="10%">Altura da edificação menor ou igual a 10 m</td>
			<td width="10%">Altura da edificação superior a 10 m</td>
		</tr>
		<tr>
			<td>ZOE Pacaembu</td>
			<td>0,3</td>
			<td>1</td>
			<td>2</td>
			<td>0,5</td>
			<td>28 m (*)</td>
			<td>NA</td>
			<td>NA</td>
			<td>NA</td>
			<td>NA</td>
		</tr>
	</table>
	<div class="notas">(*) Prevalecerão as disposições dos órgãos de preservação relativas ao gabarito de altura máxima de novas</div>

	<hr>

	<h6>Quadro 2 - Quota Ambiental: Pontuação Mínima, Taxa de Permeabilidade Mínima e Fatores</h6>
	<table class="borda">
		<tr id="head">
			<td rowspan="2" width="20%">ZONA</td>
			<td colspan="2">Lote > 10.000 m²</td>
			<td colspan="2">Fatores</td>
		</tr>
		<tr id="head">
			<td width="20%">Taxa de Permeabilidade</td>
			<td width="20%">Pontuação QA Mínima</td>
			<td width="20%">Cobertura vegetal (ALFA)</td>
			<td width="20%">Drenagem (BETA)</td>
		</tr>
		<tr>
			<td>ZOE Pacaembu</td>
			<td>22% (*)</td>
			<td>0,57</td>
			<td>0,4</td>
			<td>0,6</td>		
		</tr>
	</table>

	<hr>

	<h6>Quadro 3 - Parâmetros de incomodidade</h6>
	<table class="borda">
		<tr id="head">
			<td rowspan="2" width="12.5%">ZONA</td>
			<td colspan="3">Nível Critério de Avaliação (NCA) para ambiente externo dB (a) (c) (d) (f)</td>
			<td width="12.5%" rowspan="2">Vibração associada</td>
			<td width="12.5%" rowspan="2">Emissão de radiação Faixa de frequência (0Hz à 300GHz)</td>
			<td width="12.5%" rowspan="2">Emissão de odores</td>
			<td width="12.5%" rowspan="2">Emissão de gases, vapores e material particulado (e)</td>
		</tr>
		<tr id="head">
			<td width="12.5%">Emissão de ruído das 7h às 19h</td>
			<td width="12.5%">Emissão de ruído das 19h às 22h</td>
			<td width="12.5%">Emissão de ruído das 22h às 7h</td>
		</tr>
		<tr>
			<td>ZOE Pacaembu</td>
			<td>50</td>
			<td>45</td>
			<td>40</td>
			<td>(a)</td>
			<td>(b)</td>
			<td>(a)</td>
			<td>(a)</td>
		</tr>			
	</table>
	<div class="notas">
		(a) Aplicam-se a legislação pertinente e as normas técnicas brasileiras – ABNT em vigor.<br />
		(b) Aplicam-se a legislação pertinente e as normas técnicas em vigor, sendo que o Executivo poderá estabelecer parâmetros mais restritivos de radiação eletromagnéticas não ionizantes.<br />
		(c) No caso dos aeroportos aplica-se o nível de ruído conforme norma técnica específica.<br />
		(d) Poderão incidir parâmetros especiais e mais restritivos nos termos §2º do artigo 113 da Lei nº 16.402 de 22 de março de 2016.<br />
		(e) Quando necessário a CETESB recomenda instalar e operar sistema de controle de poluição do ar baseado na melhor tecnologia.<br />
		(f) Para atividade de local de culto, nos feriados, sábados a partir das 14h e nos domingos, os parâmetros relativos a ruídos referentes ao período das 7h às 19h passam a valer também para os períodos das 6h às  7h e das 19h às 22h, permanecendo inalterados os parâmetros referentes ao período das 7h às 19h  e das 22h às 7h.<br />
	</div>

	<hr>

	<h6>Quadro 4 - Usos Permitidos na ZOE Pacaembu (*)</h6>
	<table class="borda" id="usos">
		<tr id="head">
			<td width="13%" style="font-size: small;">SUBCATEGORIA DE USO</td>
			<td colspan="2">nR1</td>
			<td colspan="2">nR2</td>
			<td colspan="2">nR3</td>
		</tr>
		<tr>
			<td rowspan="13" class="rotate">GRUPOS DE ATIVIDADES</td>
		</tr>
		<tr>
			<td width="7%">nR1-1</td>
			<td width="22%">comércio de abastecimento de âmbito local com dimensão de até 500m² (quinhentos metros quadrados) de área construída computável</td>
			<td width="7%">nR2-1</td>
			<td width="22%">comércio de alimentação de médio porte, com lotação de mais de 100 (cem) e até 500 (quinhentos) lugares, englobando comércio associado a diversão</td>
			<td width="7%">nR3-3</td>
			<td width="22%">serviço público social especial</td>
		</tr>
		<tr>
			<td>nR1-2</td>
			<td>comércio de alimentação de pequeno porte, com lotação de até 100 (cem) lugares</td>
			<td>nR2-2</td>
			<td>comércio especializado</td>
			<td>nR3-4</td>
			<td> local de reunião ou evento de grande porte localizado na zona urbana com lotação superior a 500 (quinhentas) pessoas</td>
		</tr>
		<tr>
			<td>nR1-3</td>
			<td>comércio diversificado de âmbito local</td>
			<td>nR2-7</td>
			<td>estabelecimentos de ensino não seriado</td>
			<td colspan="2" rowspan="10" id="vazio"></td>
		</tr>
		<tr>
			<td>nR1-4</td>
			<td>comércio diversificado de âmbito local</td>
			<td>nR2-10</td>
			<td>serviços de lazer, cultura e esportes</td>
		</tr>
		<tr>
			<td>nR1-5</td>
			<td>serviços pessoais</td>
			<td>nR2-11</td>
			<td>local de reunião ou eventos de médio porte localizado na zona urbana com lotação máxima superior a 100 (cem) e até 500 (quinhentas) pessoas</td>
		</tr>
		<tr>
			<td>nR1-6</td>
			<td>serviços profissionais</td>
			<td>nR2-13</td>
			<td>edifícios-garagem</td>
		</tr>
		<tr>
			<td>nR1-8</td>
			<td>serviços de educação</td>
			<td>nR2-14</td>
			<td>associações comunitárias, culturais e esportivas de caráter local, com lotação superior a 100 (cem) e até 500 (quinhentas) pessoas</td>
		</tr>
		<tr>
			<td>nR1-9</td>
			<td>associações comunitárias, culturais e esportivas de caráter local, com lotação de até 100 (cem) pessoas</td>
			<td colspan="2" rowspan="5" id="vazio"></td>
		</tr>
		<tr>
			<td>nR1-10</td>
			<td>serviço público social de pequeno porte</td>
		</tr>
		<tr>
			<td>nR1-11</td>
			<td>serviços da administração e serviços públicos de pequeno porte</td>
		</tr>
		<tr>
			<td>nR1-12</td>
			<td>serviços de hospedagem ou moradia</td>
		</tr>
		<tr>
			<td>nR1-13</td>
			<td>local de reunião ou de eventos de pequeno porte localizado na zona urbana com lotação de até 100 (cem) pessoas</td>
		</tr>
	</table>
	<div class="notas">(*) O Complexo se enquadra na subcategoria de uso nR3, grupo de atividade nR3-3 - Serviço Público Social Especial - Equipamentos de esporte e lazer de referência municipal, com lotação superior a 2000 lugares, tais como: - Clubes Desportivos com Estádios - Autódromo - Ginásios esportivos. Os demais grupos de atividade autorizados aplicam-se aos empreendimentos associados passíveis de serem incorporados ao programa original do Complexo.</div>

</div>
</template>

<script>
export default {
	name: 'Quadros',
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

hr {
	margin: 2em 0;
	border-color: $primary-light-grey;
}

table.borda {
	border: 1px solid #CCCCCC;
	width: 100%;
	tr td {
		border: 1px solid #CCCCCC;
		padding: 0.5em;
	}
	tr#head td {
		text-align: center;
		color: #212121;
		vertical-align: middle;
	}
}

td.rotate {
	-ms-writing-mode: tb-rl;
	-webkit-writing-mode: vertical-rl;
	writing-mode: vertical-rl;
	transform: rotate(180deg);
    transform-origin: 34%;
    vertical-align: middle !important;
}

table#usos tr {
	td {
		vertical-align: top;
	}
	td#vazio {
		background-color: #EEEEEE;
		border: 0px;
	}
}

.notas {
	margin-top: 1em;
}
</style>