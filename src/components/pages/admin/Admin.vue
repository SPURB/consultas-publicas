<template>
<div class="admin">
	<AdminLogin v-if="!isadmin"></AdminLogin>
	<div class="container">
		<p v-if="successMessage">{{ successMessage }}</p>
		<p v-if="errorMessage">{{ successMessage }}</p>
		<div id="isadmin" v-if="isadmin">
		<!-- <div id="isadmin"> -->

<!-- para layout descomentar -->

			<!-- <div class="row">
				<div class="col s12 section">
					<h3>TESTE</h3>
					<div class="card hoverable">
						<div class="card-content"> -->
							<!-- <p class="date-time">23 de fevereiro de 2018 às 10h22</p>
							<p class="card-title">Seção: Consulta</p>
								<blockquote><p><span>Contexto: </span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></blockquote>
							<p><span>Autor:</span> João da Silva | <a href="mailto:t@teste.co">t@teste.co</a></p>
							
							<div>
								<p><span>Comentário: </span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							</div>
							<div class="card-action public">
								<a  class="btn-large approve" 
									@click="changeApproval(comment.memid, comment.public)">Aprovar
								</a>
								<a  class="btn-flat trash red-text text-lighten-1" 
									@click="changeTrashState(comment.memid, comment.trash)"><i class="material-icons left"> delete</i>Lixeira
								</a>
							</div> -->

							<!-- criar área para a resposta do administrador -->
							<!-- 
								<div class="card-action admin-response">
								<div class="row">
								<form>
									<div class="row">
										<textarea class="materialize-textarea"></textarea>
										<label>Resposta ao comentário</label>
									</div>
								</form>
								</div>
							</div> -->

<!-- 						</div>
					</div> 
				</div>
			</div> -->

			<div class="row">
				<div class="col s12 section">
					<h3>Moderação pendente</h3>
					<div class="card hoverable" 
						 v-for="comment in members" 
						 v-if="comment.public == false && comment.trash == false">
						<div class="card-content">
							<p class="date-time">{{ filterDate(comment.commentdate) }}</p>
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
							<p class="date-time">{{ filterDate(comment.commentdate) }}</p>
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
							<p class="date-time">{{ filterDate(comment.commentdate) }}</p>
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


<!-- esquema antigo -->
<!-- 			<div class="row">
				<div class="col s12 section">
					<h3>Moderação pendente</h3>
					<div 
						class="card hoverable" 
						v-for="comment in members" 
						v-if="comment.public == false && comment.trash == false">
						<div class="card-content">
							<p class="date-time">{{ filterDate(comment.commentdate) }}</p>
							<p>Capítulo: {{ comment.postid }}</p>
							<p>Autor: {{ comment.name }} </p><br>
								<a v-bind:href=" `mailto:${comment.email}` ">{{ comment.email }}</a>
							</p>
							<div>
								<h6>Comentário:</h6>
								<p>{{ comment.content }}</p>
							</div>
								<h6>Contexto:</h6>
								<p> {{ comment.commentcontext }} </p>
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
							<p class="date-time">{{ filterDate(comment.commentdate) }}</p>
							<p>Autor: {{ comment.name }}</p>
							<p><a v-bind:href=" `mailto:${comment.email}` ">{{ comment.email }}</a></p>
							<p>Comentário: {{ comment.content }}</p>
							<p>Capítulo: {{ comment.postid }}</p>
							<p>ID de comentário: {{ comment.commentid }}</p>
							<p>Contexto: {{ comment.commentcontext }}</p>
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
							<p class="date-time">{{ filterDate(comment.commentdate) }}</p>
							<p>Autor: {{ comment.name }}</p>
							<p><a v-bind:href=" `mailto:${comment.email}` ">{{ comment.email }}</a></p>
							<p>Comentário: {{ comment.content }}</p>
							<p>Capítulo: {{ comment.postid }}</p>
							<p>ID de comentário: {{ comment.commentid }}</p>
							<p>Contexto: {{ comment.commentcontext }}</p>
							<div class="card-action">
								<a 
									class="btn-flat remove red-text text-lighten-1" 
									@click="changeTrashState(comment.memid, comment.trash)">Moderar novamente</a>
							</div>
						</div>
					</div>
				</div>
			</div> -->
<!--fim  esquema antigo -->

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
		sendAnswer(id, answer){
			console.log('id: ' + id + '| answer:' + answer)
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
		}, 
		filterDate(mySQLDate){
			let parseMySQL = new Date(Date.parse(mySQLDate.replace(/[-]/g,'/'))).toLocaleString();
			let concatUTC = parseMySQL + ' UTC';
			let resultDate = new Date(concatUTC);

			let days = resultDate.toLocaleString('pt-BR', { year: 'numeric', month: 'long', day: 'numeric'});
			let hours = resultDate.toLocaleString('pt-BR', { hour: '2-digit'});
			let minutes = resultDate.toLocaleString('pt-BR', { minute: '2-digit'});
			return days + ' às ' + hours + 'h' + minutes;
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