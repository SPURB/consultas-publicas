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
						<a 
							class="btn-large approve" 
							@click="changeApproval(comment.comment_ID, comment.comment_approved)">Aprovar Comentário</a>
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
						<a 
							class="btn-flat remove red-text text-lighten-1" 
							@click="changeApproval()">Remover comentário</a>
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
		apiPath: 'http://spurbcp13343/piu-terminais/static/api.php', 
		comments: [],
		errorMessage: '',
		successMessage: '',
		clickMember: {}
	}
  },
  mounted: function(){
	this.getAllcomments();
  },
  methods: {
	getAllcomments: function(){
		let app = this;
		axios.get(app.apiPath)
			.then(function(response){
				app.comments = response.data.comments;
			});
	},
	changeApproval: function(id, approval){
		let app = this;
		let memForm = app.toFormData(app.clickMember);
		axios.post(app.apiPath + '?crud=update', memForm)
			.then(function(response){
				//console.log(response);
				app.clickMember = {};
				if(response.data.error){
					app.errorMessage = response.data.message;
				}
				else{
					app.successMessage = response.data.message
					app.getAllcomments();
				}
			});
	},
	toFormData: function(obj){
		var form_data = new FormData();
		for(var key in obj){
			form_data.append(key, obj[key]);
		}
		return form_data;
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