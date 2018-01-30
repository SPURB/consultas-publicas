<template>
	<div class="admin">

<!-- <p v-if="successMessage">{{ successMessage }}</p>
<p v-if="errorMessage">{{ successMessage }}</p> -->

	<div class="row">
		<div class="col s12 section">
			<h3>Aprovações pendentes</h3>
			<div 
				class="card hoverable" 
				v-for="comment in members" 
				v-if="comment.public == false" >
				<div class="card-content">
					<p class="date-time">{{ comment.date }}</p>
					<p>Autor: {{ comment.name }}</p>
					<p>Email: {{ comment.email }}</p>
					<p>Comentário: {{ comment.content }}</p>
					<p>Capítulo: {{ comment.postid }}</p>
					<div class="card-action">
						<a 
							class="btn-large approve" 
							@click="changeApproval(comment.memid, comment.public)">Aprovar Comentário</a>
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
				class="card hoverable" 
				v-for="comment in members" 
				v-if="comment.public == true" >
				<div class="card-content">
					<p class="date-time">{{ comment.date }}</p>
					<p>Autor: {{ comment.name }}</p>
					<p>Email: {{ comment.email }}</p>
					<p>Capítulo: {{ comment.postid }}</p>
					<div class="card-action">
						<a 
							class="btn-flat remove red-text text-lighten-1" 
							@click="changeApproval(comment.memid, comment.public)">Remover comentário</a>
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
		members: [],
		errorMessage: '',
		successMessage: '',
	}
	},
	mounted: function(){
	this.getAllcomments()
	},
	methods: {
	getAllcomments: function(){
		let app = this
		axios.get('consultas.php')
			.then(function(response){
				// console.log(response);
				if(response.data.error){
					app.errorMessage = response.data.message;
				}
				else{
					app.members = response.data.members;
				}
		});
	},
	changeApproval: function(id, approval){
		const app = this

		let invertApproval = function (){
			if (approval == 0 ) {
				approval = 1
			}
			else if(approval == 1){
				approval = 0
			}
		}()

		let memForm = app.toFormData({memid : id, public: approval})

		axios.post('consultas.php?crud=update', memForm)
			.then(function(response){
				// console.log(response);
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
		var form_data = new FormData()
		for(var key in obj){
			form_data.append(key, obj[key])
		}
		return form_data
	},

	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

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