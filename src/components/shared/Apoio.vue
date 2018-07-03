<template>
	<div class="Apoio">
		<h1 class="subtitle is-6">Texto de Apoio</h1>
		<hr>
		<h2 class="title is-5">LEI Nº 16.886, DE 4 DE MAIO DE 2018</h2>
		<h3 class="subtitle is-6">(Projeto de Lei nº 11/18, do Executivo, aprovado na forma de Substitutivo do Legislativo)</h3>
		<p class="caput">Define índices e parâmetros de parcelamento, uso e ocupação do solo a serem observados na elaboração de Projeto de Intervenção Urbana – PIU para a Zona de Ocupação Especial – ZOE do Anhembi, nos termos do art. 9º da Lei nº 16.766, de 20 de dezembro de 2017, altera redação da Lei nº 16.402, de 22 de março de 2016, que disciplina o parcelamento, o uso e a ocupação do solo no Município de São Paulo, e da Lei nº 15.499, de 7 de dezembro de 2011, que institui o Auto de Licença de Funcionamento Condicionado, e dá outras providências.</p>
		<blockquote>
			<p>“Art. 123. ....................................................</p>
			<p>§ 2º A regularização prevista no “caput” poderá ser solicitada até o dia 31 de dezembro de 2021, retroagindo os seus efeitos conforme o caso, desde que respeitada a legislação em vigor.</p>
			<p>Art. 124. ......................................................</p>
			<p>§ 2º A regularização prevista no “caput” poderá ser solicitada até o dia 31 de dezembro de 2021, retroagindo os seus efeitos conforme o caso, desde que respeitada a legislação em vigor.” (NR)</p>
		</blockquote>
		<p class="assinat">PREFEITURA DO MUNICÍPIO DE SÃO PAULO, aos 4 de maio de 2018, 465º da fundação de São Paulo.</p>
		<p class="assinat">
			BRUNO COVAS, PREFEITO<br>
			RUBENS NAMAN RIZEK JUNIOR, Secretário Municipal de Justiça<br>
			JULIO FRANCISCO SEMEGHINI NETO, Secretário do Governo Municipal<br>
			EDUARDO TUMA, Secretário-Chefe da Casa Civil
		</p>
		<p class="assinat">Publicada na Casa Civil, em 4 de maio de 2018.</p>
		<hr>
		<table>
			<caption>Quadro de índices e Parâmetros de Parcelamento, Uso e Ocupação do Solo da ZOE do Anhembi</caption>
			<tbody>
				<tr>
					<td>Potencial construtivo do Setor Centro de Convenções e Exposições</td>
					<td>1.000.000 m&sup2;</td>
				</tr>
				<tr>
					<td>Potencial construtivo do Setor Sambódromo</td>
					<td>400.000m&sup2;</td>
				</tr>
				<tr>
					<td>Coeficiente de Aproveitamento Básico</td>
					<td>1,0</td>
				</tr>
				<tr>
					<td>Coeficiente de Aproveitamento Mínimo</td>
					<td>0,5</td>
				</tr>
				<tr>
					<td>Gabarito de Altura Máxima</td>
					<td>NA</td>
				</tr>
				<tr>
					<td>Taxa de Ocupação Máxima</td>
					<td>70%</td>
				</tr>
				<tr>
					<td>Taxa de Permeabilidade Mínima</td>
					<td>25%</td>
				</tr>
				<tr>
					<td>Destinação (áreas públicas)</td>
					<td>20%</td>
				</tr>
				<tr>
					<td>Fator de Planejamento para fins de cálculo de contrapartida financeira em outorga onerosa</td>
					<td>R = 1,0<br> NR = 0,7</td>
				</tr>
				<tr>
					<td>Usos Permitidos</td>
					<td>Todas as categorias de uso R e nR, exceto a subcategoria lnd-3*</td>
				</tr>
			</tbody>
		</table>
		<div class="table_notes">
			<p>Notas: NA = Não se aplica.</p>
			<p>(a) Os parâmetros urbanísticos não definidos no quadro acima o serão por intermédio do Projeto de Intervenção Urbana - PIU de que trata esta lei, respeitados os limites mínimos e máximos fixados nas Leis n° 16.050/14 e 16.402/16.</p>
		</div>
	</div>
</template>
<script>
	export default {
		name: 'Apoio',
	};
</script>
<style lang="scss" scoped>
@import "../../assets/variables.scss";
@import "../../assets/main.scss";

.Apoio {
	flex: 0 0 auto;
	padding: 1.5rem;
	height: 100%;
	width: $largura_apoio;
	overflow-y: scroll;
	overflow-x: hidden;
	background: #FFF;
	border-left: 1px solid $primary-light-grey;

	p {
		margin: 1rem 0;
	}

	p:first-letter {
		margin-left: 3rem;
	}

	p.caput {
		font-size: 90%;
		margin: 0 0 2rem 6rem;
		&:first-letter { margin-left: 0; };
	}

	p.assinat {
		&:first-letter { margin-left: 0; };
	}

	blockquote {
		background: $primary-light-grey;
		padding: 1.25rem 1.5rem;
		border-left: 5px solid #dbdbdb;
		p { margin: 0.25rem 0; &:first-letter { margin-left: 0; }; };
	}

	table {
		caption {
			font-weight: bold;
			font-size: larger;
			text-align: left;
			margin: .5rem 0;
		};
		tr {
			border-top: 1px solid $primary-medium-grey;
			td {
				padding: .5rem;
				vertical-align: middle;
				&:nth-child(2n) { text-align: center; };
			};
		};
		tr:nth-child(2n) {
			background: $primary-light-grey;
		};
	}

	.table_notes {
		padding-bottom: 1.25rem;
		p {
			font-size: smaller;
			margin: .3rem 0;
			&:first-letter { margin-left: 0; };
		}
	}
}
</style>