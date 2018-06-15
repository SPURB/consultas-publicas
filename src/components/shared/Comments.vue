<template>
	<div class="comments" v-bind:class="{ fechado: isCommentsFechado }">
		<div class="container">
			<h5 class="title is-5" @click="isCommentsFechado = !isCommentsFechado">Comente aqui</h5>
			<div class="columns">
				<div class="column is-one-third">
					<div class="field">
						<label class="label" for="nome">Nome / organização</label>
						<input 
							class="input"
							type="text"
							name="name" 
							v-validate="'required:true'" 
							:class="{'input': true, 'is-danger': errors.has('name') }" 
							v-model='form_name'
							>
					</div>
					<div class="field">
						<label for="email">Email</label>
						<input 
							name="email" 
							v-validate="'required|email'" 
							:class="{'input': true, 'is-danger': errors.has('email') }" 
							type="email"
							v-model='form_email'
							>
					</div>
				</div>
				<div class="column">
					<div class="field">
						<label for="comment">Comente aqui</label>
						<div class="control">
							<textarea 
								class="textarea" 
								rows="10" 
								name="content" 
								v-validate="'required:true'" 
								id="comment" 
								v-model='form_content' >
							</textarea>
						</div>
					</div>
					<button class="button" @click="checkName">COMENTAR</button>
				</div>
			</div>
    		<!-- <Commentsloader :commentid="commentid"></Commentsloader> -->
		</div>
	</div>
</template>

<script>
import axios from 'axios';
// import Commentsloader from '@/components/shared/Commentsloader';

export default {
	name: 'comments',
	props:['commentid'],
	data(){
		return{
			form_name:null,
			form_email: null,
			form_content: null,
			form_context: null,
			isCommentsFechado: true,
		}
	},
	computed:{
		currentRoute(){ return this.$route.name },
	},
	methods:{
		checkName(){
			if(!this.fields.name.valid && !this.fields.email.valid){
				alert('Preencha corretamente os campos Nome e Email')
			}
			else if (!this.fields.name.valid) {
				alert('Inclua um nome')
			}
			else if(!this.fields.email.valid){
				alert('Corrija email')
			}
			else if(!this.fields.content.valid){
				alert("Inclua um comentário")
			}
			else{
				this.send();
			}
		},
		send(){
			const url = 'http://minuta.gestaourbana.prefeitura.sp.gov.br/apiconsultas/members/';
			const app = this;
			axios.post(url,{
				'idConsulta':'6',
				'name': app.form_name,
				'email':app.form_email, 
				'content':app.form_content,
				'public': '0',
				'trash': '0',
				'postid':app.commentid.postid,
				'commentid': app.commentid,
				'commentcontext': "Consulta"
			})
			.then(function (response) {
				// console.log(response);
				let name = app.form_name;
				let content = app.form_content;

				alert("Agradecemos a sua contribuição! Seu comentário ("  + content + ") foi enviado e aguarda aprovação da moderação para ser publicado. Obrigado por sua contribuição.")
			})
			.catch(function (error) {
				// console.log(error)
				alert("Estamos com um erro de comunicação com o servidor. Tente novamente mais tarde.")
			});
		}
	},
	components:{ 
		// Commentsloader, 
	}
};

</script>


<style lang="scss" scoped>
@import "../../assets/variables.scss";

.comments{
	background-color: #ececec;
	margin: -1.5rem auto 2rem auto;
	overflow-x: hidden;
}

.comments.fechado {
	max-height: 5rem;
	overflow-y: hidden;
	background: #FFF;
	transition: background .25s;
	border-top: solid 1px #ececec;
	border-bottom: solid 1px #ececec;
}

.comments.fechado:hover {
	background: #ececec; 
}

.container {
	padding: 2em 0.5rem 4em 0.5rem;
	max-width: 992px;
	width: 100%;
	margin: 0 auto;
	.columns{
		.column{
			.field{
				label{
					font-weight:600
				}
				.control{margin-top:7px}
				input:focus,
				textarea:focus{
					border-color:$primary-medium-grey;
					box-shadow: 0 0 0 0.125em rgba(101, 101, 101, 0.3)
				}
			}
			.comment_recaptcha{
				margin-top: .9em;
			}
		}
	}
}

h5.title:hover {
	color: $primary-medium-grey;
	cursor: pointer;
}
</style>