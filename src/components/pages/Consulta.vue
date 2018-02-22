<template>
<div class="consulta">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">Título da consulta</h2>
		</div>
	</div>
	<img :src="require('../../assets/img/1920x800.png')" class="responsive-img" alt="Imagem principal"/>
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<p class="commentable" @click="defineCommentId" id="00001"> <strong >Artigo 1</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam et. Ad fugit quodsi perfecto sit, nam Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>
				<Comments :commentid="commentid" v-if="commentid.id == 1"></Comments>
				<blockquote>
					Exemplo de bloco de citação.
				</blockquote>

				<p class="commentable" @click="defineCommentId" id="00002"> <strong>Artigo 2</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam et. Ad fugit quodsi perfecto sit, nam Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>
				<Comments :commentid="commentid" v-if="commentid.id == 2"></Comments>

				<img :src="require('../../assets/img/1920x1080.png')" class="responsive-img" data-caption="Um retângulo cinza"/>

				<p class="commentable" @click="defineCommentId" id="00003"> <strong>Artigo 3</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam et. Ad fugit quodsi perfecto sit, nam Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>
				<Comments :commentid="commentid" v-if="commentid.id == 3"></Comments>
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
		}
	},
	methods:{
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
	},
	components:{ Comments }
}
</script>

<style lang="scss" scoped>

@import "../../assets/main.scss";
</style>