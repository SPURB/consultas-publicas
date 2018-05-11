<template>
<div class="admin">
	<AdminLogin v-if="!isadmin"></AdminLogin>

	<div class="container">
		<template v-if="userinfo">
			<p>Olá {{ userinfo.firstname }}!</p>
			<h5>Selecione uma consulta para moderar: </h5>
			<template v-if="!userinfo.role.total">
				<ul>
					<li v-for="consulta in userinfo.role.projects">
						<button @click="getMembers(consulta)">{{ sliceConsultaStringTitle(consulta) }}</button>
					</li>
				</ul>
			</template>
			<ul v-if="userinfo.role.total">
				<li v-for="consulta in consultas">
					<button @click="getMembers(consulta.nome)">{{ sliceConsultaStringTitle(consulta.nome) }}</button>
				</li>
			</ul>
		</template>
		<p v-if="!userinfo.status"> {{ userinfo.message }}.</p>

		<h5 v-if="selectedConsulta"> Você está moderando: {{ sliceConsultaStringTitle(selectedConsulta) }} </h5>

		<div id="isadmin" v-if="isadmin && selectedConsulta">
			<div class="row">
				<div class="col s12 section">
					<h3>Moderação pendente</h3>
					<div class="card hoverable" 
						 v-for="comment in members" 
						 v-if="comment.public == false && comment.trash == false">
						<div class="card-content">
							<p>{{ comment.memid }}</p>
							<p class="date-time">{{ comment.commentdate }}</p>
							<p class="card-title">Seção: {{ comment.postid }}</p>

								<blockquote><p><span>Contexto: </span>{{ comment.commentcontext }}</p></blockquote>
							<p><span>Autor:</span> {{ comment.name }} | <a v-bind:href=" `mailto:${comment.email}` ">{{ comment.email }}</a></p>
							<div>
								<p><span>Comentário: </span>{{ comment.content }}</p>
							</div>
							<div class="card-action public">
								<a class="btn-large approve" 
									@click="changeApproval(comment.memid, comment.public)">Aprovar
								</a>
								<a class="btn-flat trash red-text text-lighten-1" 
									@click="changeTrashState(comment.memid, comment.trash)"><i class="material-icons left"> delete</i>Lixeira
								</a>
							</div>
						</div>
					</div> 
				</div>
			</div>

			<div class="row">
				<div id="approved" class="col s12 section">
					<h3>Aprovados</h3>
					<div class="card hoverable" 
						 v-for="comment in members" 
						 v-if="comment.public == true" >
						<div class="card-content">
							<p>{{ comment.memid }}</p>
							<p class="date-time">{{ comment.commentdate }}</p>
							<p class="card-title">Seção: {{ comment.postid }}</p>
								<blockquote><p><span>Contexto: </span>{{ comment.commentcontext }}</p></blockquote>
							<p><span>Autor:</span> {{ comment.name }} | <a v-bind:href=" `mailto:${comment.email}` ">{{ comment.email }}</a></p>
							<div>
								<p><span>Comentário: </span>{{ comment.content }}</p>
							</div>
							<div class="card-action public">
								<a class="btn-flat trash red-text text-lighten-1" 
								   @click="changeApproval(comment.memid, comment.public)"><i class="material-icons left"> undo</i>Moderar novamente
								</a>
							</div>
						</div>
					</div> 
				</div>
			</div>
			<div class="divider"></div>

			<div class="row">
				<div id="trash" class="col s12 section">
					<h3>Lixeira</h3>
					<div class="card hoverable" 
						 v-for="comment in members" 
						 v-if="comment.trash == true" >
						<div class="card-content">
							<p>{{ comment.memid }}</p>
							<p class="date-time">{{ comment.commentdate }}</p>
							<p class="card-title">Seção: {{ comment.postid }}</p>
								<blockquote><p><span>Contexto: </span>{{ comment.commentcontext }}</p></blockquote>
							<p><span>Autor:</span> {{ comment.name }} | <a v-bind:href=" `mailto:${comment.email}` ">{{ comment.email }}</a></p>
							<div>
								<p><span>Comentário: </span>{{ comment.content }}</p>
							</div>
							<div class="card-action public">
								<a class="btn-flat trash red-text text-lighten-1" 
								   @click="changeApproval(comment.memid, comment.public)"><i class="material-icons left"> undo</i>Moderar novamente
								</a>
							</div>
						</div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</div>
</template>

<script>
import baseUrls from '../../../static/properties.json'; 
import AdminLogin from '@/components/pages/AdminLogin';
import axios from 'axios';

const requestConsultas = axios.create({
  baseURL: baseUrls.apiconsultas
})

export default {
	name: 'Admin',
	data () {
		return {
			members: false,
			message: '',
			userinfo: false,
			consultas: false, 
			selectedConsulta: false
		}
	},
	computed: { 
		isadmin(){ return this.$store.state.isadmin } 
	},
	watch: {
		isadmin(){ 
			this.userinfo = this.$store.state.userinfo;
			this.getConsultas();
		}
	},
	methods: {
		getConsultas(){
			let app = this

			requestConsultas.get('consultas')
			.then(response => {
				app.consultas = response.data;
			})
			.catch( (error)=>{
				console.log(error)
			})
		},
		getMembers(nome_db){
			this.selectedConsulta = nome_db;
			let app = this

			requestConsultas.get(nome_db)
			.then(response => {
				// console.log(response.data)
				app.members = response.data;
			})
			.catch((error) => {
				console.log(error)
			})
		}, 
		sliceConsultaStringTitle(nome_db){
			if(nome_db!="teste"){ // db em produção para testes
				return nome_db.slice(24)
			}
			else{ return nome_db }
		},
		changeApproval(id, approval) {
			// const tkn = this.createToken()
			const app = this

			if (approval == 0 ) { approval = 1 }
			else if (approval == 1) { approval = 0 }

			let memForm = app.toFormData({
				memid: id,
				public: approval
			})

			requestConsultas.post('member_update/', memForm)
				.then(function(response){
					if(response.data.error){
						console.log(resoponse)
						// alert('deu pau: '+ resoponse.data.message)
					}
					else{
						console.log('post ok')
						console.log(resoponse)
						// alert('sucesso: ' + response.data.message)
						app.getMembers()
					}
				}
			);
		},
		changeTrashState(id, approval) {
			// const tkn = this.createToken()
			// const app = this

			// if (approval == 0 ) { approval = 1 }
			// else if (approval == 1) { approval = 0 }

			// let memForm = app.toFormData({token: tkn, memid : id, trash: approval})

			// axios.post('consultas.php?crud=trash/'+tkn, memForm)
			// 	.then(function(response){
			// 		// console.log(response);
			// 		if(response.data.error){
			// 			app.errorMessage = response.data.message;
			// 		}
			// 		else{
			// 			app.successMessage = response.data.message
			// 			app.getAll();
			// 		}
			// 	}
			// );
		},
		sendAnswer(id, answer){
			// console.log('id: ' + id + '| answer:' + answer)
		},
		toFormData(obj) {
			var form_data = new FormData()
			for(var key in obj){
				form_data.append(key, obj[key])
			}
			return form_data
		}
	},
	components: {
		AdminLogin
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

h3{
	font-size: 36px;
	font-weight:500
}

#approved, #trash{
	h3{ margin-top: 1rem }
	margin-top: 1rem;
	border-left: solid 3px;
}

#approved{ border-left-color: #26a69a; }
#trash {border-left-color: #dd2c00}

div.card {
	background-color:#FAFAFA;
	.card-title{
		margin-top: 1em;
	}
	p.date-time{
		margin-top:0;
		font-size: 14px;
		color:$primary-dark-grey
	}
	p {
		margin: 1.25em 0;
		span { font-weight: 700 }
	}
	blockquote{ 
		font-size: .85em;
		border-left: solid $primary-medium-grey;
		padding-left: 1em;
	}

	div.card-action {
	min-height:90px;
	position:relative;
	margin-right:0;
		a.btn-large {
			position: absolute;
			right: 0
		}
		a.btn-flat.trash {
			padding: 11px 0 0 0;
			position:absolute;
			left:0
		}
		i.material-icons{
			margin: 0 .3rem 0 0;
		}
	}
}
</style>