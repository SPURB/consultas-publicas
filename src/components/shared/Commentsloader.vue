<template>
	<div  v-if="comments" class="Commentsloader row">
		<h4 class="title is-4">Contribuições</h4>
		<div class="comment"  v-for="comment in comments">
			<h5 class="member-info">{{  comment.name }} em <span>{{ filterDate(comment.commentdate) }} </span> disse:</h5>
			<p> {{comment.content}} 
			<span class="topico">Capítulo comentado: {{ comment.commentcontext }}.</span>
			</p>
		</div>
	</div>
</template>

<script>
import axios from 'axios';
const requestConsultas = axios.create({
  baseURL: 'http://minuta.gestaourbana.prefeitura.sp.gov.br/apiconsultas/',
})

export default {
	props:['commentid'],
	data(){
		return {
			comments: false
		}
	},
	mounted(){
		// this.loadThisComments();
	},
	methods:{
		loadThisComments(){
			let app = this;

			requestConsultas.post('members/search/',{
				"idConsulta":"=7",
				"public":"=1",
			})
			.then(function(response) {
				app.comments = response.data
			})
			.catch(function (error){
				console.log(error)
			})
		},
		filterDate(dataString){
			return dataString.slice(0,10)
		}
	}
}


</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

h4.title.is-4{
	margin-bottom: 0;
	padding-top: .5em;
	border-top: solid .35rem $primary-dark-grey
}

.comment {
	font-family: $font-sec;
	border-bottom: solid 1px $primary-dark-grey;
	padding: 1.15em 0 1.5em;
	h5.member-info{
		margin-top: 0 !important
	}
	p{
		span{
			font-size: .75em
		}
	}
	.member-info{
		font-size: 1em;
		font-weight: 500;
		span { color: $primary-dark-grey;}
	}
	p {  margin-top: 0; }
}

@media #{$extrasmall-and-down} {
	.row{ margin-bottom: 1.25rem}
}
	
</style>