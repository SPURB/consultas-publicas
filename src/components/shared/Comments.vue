<template>
	<div class="comments">
		<div class="container">
			<div v-if="consultaIsOpen">
				<h5 class="title is-3">Comente <span v-if="currentRoute!='Introdução'"> PIU Terminal {{ currentRoute }}</span></h5>
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
			</div>
			<p class="isClosedMessage" v-if="!consultaIsOpen">Desculpe, mas o período de participação já foi encerrado. Em breve publicaremos a sistematização das contribuições.</p>
			<Commentsloader :commentid="commentid"></Commentsloader>
		</div>
	</div>
</template>

<script>
import axios from 'axios';
import Commentsloader from '@/components/shared/Commentsloader';

export default {
	name: 'comments',
	props:['commentid'],
	data(){
		return{
			form_name:null,
			form_email: null,
			form_content: null
		}
	},
	computed:{
		currentRoute(){ return this.$route.name },
		consultaIsOpen(){ return this.$store.state.isOpen },
		apiPath() {
			if(location.port == '8080' || location.port == '8082' || location.port == '7080'){
				return 'http://spurbsp163:7080/apiconsultas/gestaourbanasp_consulta_piu_terminais' 
			}
			else{
				return 'http://minuta.gestaourbana.prefeitura.sp.gov.br/apiconsultas/gestaourbanasp_consulta_piu_terminais' 
			}
		}
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
			let app = this
			axios.post(app.apiPath,{
				'idConsulta':'3',
				'name': app.form_name,
				'email':app.form_email, 
				'content':app.form_content,
				'public': '0',
				'trash': '0',
				'postid':app.commentid.postid,
				'commentid': app.commentid.id,
				'commentcontext': app.commentid.context,
			})
			.then(function (response) {
				console.log(response);
				let name = app.form_name;
				let content = app.form_content;

				alert("Agradecemos a sua contribuição! Seu comentário ("  + content + ") foi enviado e aguarda aprovação da moderação para ser publicado. Obrigado por sua contribuição.")
			})
			.catch(function (error) {
				console.log(error)
				alert("Estamos com um erro de comunicação com o servidor. Tente novamente mais tarde.")
			});
		}
	},
	components:{Commentsloader},
};

</script>


<style lang="scss" scoped>
@import "../../assets/variables.scss";
.comments{
	background-color:#ececec;
	padding-top: 2em;
	padding-bottom: 4em;
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
		}
	}
	.isClosedMessage{
		padding: 1em 0;
		border-top: 5px solid $primary-dark-grey
	}
}
</style>