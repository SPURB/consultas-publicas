<template>
	<div class="admin">
	<p v-if="successMessage">{{ successMessage }}</p>
	<p v-if="errorMessage">{{ successMessage }}</p>
	<AdminLogin v-if="!isadmin"></AdminLogin>
	<div id="isadmin" v-if="isadmin">
		<div class="row">
			<div class="col s12 section">
				<h3>Moderação pendente</h3>

				<div 
					class="card hoverable" 
					v-for="comment in members" 
					v-if="comment.public == false && comment.trash == false">
					<div class="card-content">
						<p class="date-time">{{ comment.date }}</p>
						<p>Autor: {{ comment.name }}</p>
						<p>Email: {{ comment.email }}</p>
						<p>Comentário: {{ comment.content }}</p>
						<p>Capítulo: {{ comment.postid }}</p>
						<div class="card-action">
							<a 
								class="btn-large approve" 
								@click="changeApproval(comment.memid, comment.public)">Aprovar</a>
							<a 
								class="btn-flat trash red-text text-lighten-1" 
								@click="changeTrashState(comment.memid, comment.trash)">Lixeira</a>

						</div>
					</div>
				</div> 
			</div>
		</div>
		<div class="divider"></div>
		<div class="row">
			<div id="approved" class="col s12 section">
				<h3>Aprovados</h3>
				<div 
					class="card hoverable" 
					v-for="comment in members" 
					v-if="comment.public == true" >
					<div class="card-content">
						<p class="date-time">{{ comment.date }}</p>
						<p>Autor: {{ comment.name }}</p>
						<p>Email: {{ comment.email }}</p>
						<p>Comentário: {{ comment.content }}</p>
						<p>Capítulo: {{ comment.postid }}</p>
						<div class="card-action">
							<a 
								class="btn-flat remove red-text text-lighten-1" 
								@click="changeApproval(comment.memid, comment.public)">Moderar novamente</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="divider"></div>
		<div class="row">
			<div id="trash" class="col s12 section">
				<h3>Lixeira</h3>
				<div 
					class="card hoverable" 
					v-for="comment in members" 
					v-if="comment.trash == true" >
					<div class="card-content">
						<p class="date-time">{{ comment.date }}</p>
						<p>Autor: {{ comment.name }}</p>
						<p>Email: {{ comment.email }}</p>
						<p>Comentário: {{ comment.content }}</p>
						<p>Capítulo: {{ comment.postid }}</p>
						<div class="card-action">
							<a 
								class="btn-flat remove red-text text-lighten-1" 
								@click="changeTrashState(comment.memid, comment.trash)">Moderar novamente</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</template>

<script>
import AdminLogin from '@/components/pages/admin/AdminLogin'
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
	computed:	{ isadmin(){ return this.$store.state.isadmin } },
	watch: 		{ isadmin(){ this.getAll() } },
	methods: {
		getAll() {
			const tkn = this.createToken()
			const app = this

			let memForm = app.toFormData({token: tkn})

			axios.post('consultas.php?crud='+tkn, memForm)
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
		changeApproval(id, approval) {
			const tkn = this.createToken()
			const app = this

			if (approval == 0 ) { approval = 1 }
			else if (approval == 1) { approval = 0 }

			let memForm = app.toFormData({token: tkn, memid : id, public: approval})

			axios.post('consultas.php?crud=approve/'+tkn, memForm)
				.then(function(response){
					// console.log(response);
					if(response.data.error){
						app.errorMessage = response.data.message;
					}
					else{
						app.successMessage = response.data.message
						app.getAll();
					}
				}
			);
		},
		changeTrashState(id, approval) {
			const tkn = this.createToken()
			const app = this

			if (approval == 0 ) { approval = 1 }
			else if (approval == 1) { approval = 0 }

			let memForm = app.toFormData({token: tkn, memid : id, trash: approval})

			axios.post('consultas.php?crud=trash/'+tkn, memForm)
				.then(function(response){
					// console.log(response);
					if(response.data.error){
						app.errorMessage = response.data.message;
					}
					else{
						app.successMessage = response.data.message
						app.getAll();
					}
				}
			);
		},
		toFormData(obj) {
			var form_data = new FormData()
			for(var key in obj){
				form_data.append(key, obj[key])
			}
			return form_data
		},
		createToken(){
			let rand1 = Math.random().toString(36).substr(2)
			let rand2 = Math.random().toString(36).substr(2)
			return rand1 + rand2
		}
	},
	components: {
		AdminLogin
	}
}
</script>

<style lang="scss" scoped>
@import "../../../assets/variables.scss";

h3{
	font-size: 36px;
	font-weight:500
}

#approved,
#trash{
	h3{ margin-top: 1rem }
	margin-top: 1rem;
	border-left: solid 3px;
}

#approved{ border-left-color: #26a69a; }
#trash {border-left-color: #dd2c00}

div.card {
	background-color:#FAFAFA;
	p.date-time{
		margin-top:0;
		font-size: 14px;
		color:$primary-dark-grey
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
		a.btn-flat.remove,
		a.btn-flat.trash {
			// color:#EB5757;
			padding-right:0;
			padding-left:0;
		}
		a.btn-flat.trash{
			position:absolute;
			left:0
		}
	}	
}


</style>