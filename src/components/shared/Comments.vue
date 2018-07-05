<template>
	<div class="comments" v-bind:class="{ fechado: isCommentsFechado }">
		<div class="container">
			<a href="#"  @click="isCommentsFechado = !isCommentsFechado">
				<h2 class="title is-5 comente">Comente aqui<i class="material-icons">chat</i><i class="material-icons open-close">expand_more</i></h2>
			</a>
			<div class="columns">
				<div class="column is-one-third">
					<div class="field">
						<label for="nome">Nome</label>
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
						<label for="surname">Sobrenome</label>
						<input 
							class="input"
							type="text"
							name="surname" 
							v-validate="'required:true'" 
							:class="{'input': true, 'is-danger': errors.has('surname') }" 
							v-model='form_surname'
							>
					</div>
					<div class="field">
						<label for="organization">Organização (opcional)</label>
						<input 
							class="input"
							type="text"
							name="organization" 
							v-validate="'required:false'" 
							:class="{'input': true, 'is-danger': errors.has('organization') }" 
							v-model='form_organization'
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
			form_name: null,
			form_surname: null,
			form_organization: null,
			form_email: null,
			form_content: null,
			form_context: null,
			isCommentsFechado: true
		}
	},
	computed:{
		currentRoute(){ return this.$route.name },
		returnFormNameObject(){
			if (this.form_organization != null){
				return this.form_name + ' ' + this.form_surname + ' (' + this.form_organization + ')'
			} 
			else{
				return this.form_name + ' ' + this.form_surname
			}
		}		
	},
	methods:{
		checkName(){
			if(!this.fields.name.valid && !this.fields.email.valid && !this.fields.surname.valid){
				alert('Preencha corretamente os campos Nome e Email')
			}
			else if (!this.fields.name.valid) {
				alert('Inclua um nome')
			}
			else if (!this.fields.surname.valid) {
				alert('Inclua um sobrenome')
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
				'idConsulta':'7',
				'name': app.returnFormNameObject,
				'email': app.form_email, 
				'content': app.form_content,
				'public': '0',
				'trash': '0',
				'postid': '1',
				'commentid': app.commentid,
				'commentcontext': "Consulta"
			})
			.then(function (response) {
				// console.log(response);
				let name = app.form_name;
				let content = app.form_content;

				alert("Obrigado," + name + "Agradecemos a sua contribuição! Seu comentário ("  + content + ") foi enviado e aguarda aprovação da moderação para ser publicado. Obrigado por sua contribuição.")
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
	background-color: #eee;
	margin: 2rem auto;
	overflow-x: hidden;
	border-top: solid 1px #ececec;
	border-bottom: solid 1px #ececec;
	div.container h2.title i.material-icons.open-close {
		transition: transform .25s;
		transform: rotate(180deg);
	};
}

.comments.fechado {
	max-height: 5rem;
	overflow-y: hidden;
	background: transparent;
	transition: background .25s;
	border-top: solid 1px #ececec;
	border-bottom: solid 1px #ececec;
	div.container h2.title i.material-icons.open-close {
		transform: none;
	}
}

.comments.fechado:hover {
	background: #ececec; 
}


.material-icons{
	margin-left: .5rem;
}
.material-icons.open-close{
	position: absolute;
	right: 0;
	font-size: 2em;
}

h2.title{
	display: flex;
	position: relative;
	line-height: 5rem;
	align-items: center;
}

a:hover {
	.material-icons{
		color: $primary-medium-grey;
	}

	h2.title {
		color: $primary-medium-grey;
	}

}

.container {
	padding: 0 0 2rem;
	max-width: 992px;
	width: 100%;
	margin: 0 auto;
	.columns{
		.column{
			.field{
				label{
					font-weight:400;
					font-size: smaller;
				}
				input:focus,
				textarea:focus{
					border-color:$primary-medium-grey;
					box-shadow: 0 0 0 0.125em rgba(101, 101, 101, 0.3)
				}
				.radio{
					font-size: small;
				}
			}
			button {
				font-family: $font-sec;
				font-weight: 600;
			}
		}
	}
}
</style>