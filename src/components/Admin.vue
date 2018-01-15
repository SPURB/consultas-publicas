<template>
	<div class="admin">
	<div class="row">
		<div class="col s12 section">
			<h3>Aprovações pendentes</h3>
			<div 
				class="card" 
				v-for="comment in comments" 
				v-if="comment.comment_approved == false" >
				<div class="card-content">
					<p class="date-time">{{ comment.comment_date }}</p>
					<p>Autor: {{ comment.comment_author }}</p>
					<p>Email: {{ comment.comment_author_email }}</p>
					<p>Comentário: {{ comment.comment_content }}</p>
					<div class="card-action">
						<a class="btn-large approve">Aprovar Comentário</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="divider"></div>
	<div class="row">
		<div class="col s12 section">
			<h3>Comentários aprovados</h3>
			<div 
				class="card" 
				v-for="comment in comments" 
				v-if="comment.comment_approved == true" >
				<div class="card-content">
					<p class="date-time">{{ comment.comment_date }}</p>
					<p>Autor: {{ comment.comment_author }}</p>
					<p>Email: {{ comment.comment_author_email }}</p>
					<p>Comentário: {{ comment.comment_content }}</p>
					<div class="card-action">
						<a class="btn-flat remove red-text text-lighten-1">Remover comentário</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'Admin',
  data () {
	return {
		comments: [],
	}
  },
  mounted: function(){
	this.getAllcomments();
  },
  methods: {
	getAllcomments: function(){
		var app = this;
		axios.get("http://spurbcp13343/piu-terminais/api/")
			.then(function(response){
				app.comments = response.data.comments;
			});
	},
  }
}
</script>

<style lang="scss" scoped>
h3{
	font-size: 36px;
	font-weight:500
}
div.card {
	background-color:#FAFAFA;
	p.date-time{
		margin-top:0;
		font-size: 14px;
		color:#828282
	}
	p {margin: 1.25em 0;}
	div.card-action {
	min-height:65px;
	position:relative;
	margin-right:0;
		a.btn-large,
		a.btn-flat.remove {
			position: absolute;
			right: 0
		}
		a.btn-flat.remove{
			color:#EB5757;
			padding-right:0;
		}
	}	
}


</style>