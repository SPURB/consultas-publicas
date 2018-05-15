<template>
	<div class="comments">
		<div class="container">
			<h5 class="title is-5">Comente</h5>
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
					<label class="label">Capítulo comentado</label>
					<div class="select is-fullwidth">
						<select name="context" v-model='form_context' v-validate="'required:true'">
							<option value="diagnostico-socio-territorial">Diagnóstico Sócio-Territorial</option>
							<option value="programa-de-interesse-publico">Programa de Interesse Público</option>
							<option value="proposta-de-ordenamento-urbanistico">Proposta de Ordenamento Urbanístico</option>
							<option value="modelagem-economica-da-intervencao">Modelagem Econômica da Intervenção</option>
							<option value="modelo-de-gestao">Modelo de Gestão</option>
							<option value="modelo-juridico">Modelo Jurídico</option>
							<option value="geral">Comentário geral</option>
						</select>
					</div>
					<!-- local -->
					<!-- <vue-recaptcha class="comment_recaptcha" sitekey="6LeYiT0UAAAAAKjLBWb5LuDa1Inv8_0C7IF2v0-K" @verify="onVerify" @expired="onExpired"></vue-recaptcha> -->

					<!-- produção -->
					<vue-recaptcha class="comment_recaptcha" sitekey="6LfciT0UAAAAAI2YKf4Ss_cP-IVvghyUYlowsHFz" @verify="onVerify" @expired="onExpired"></vue-recaptcha> 
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
			<Commentsloader :commentid="commentid"></Commentsloader>
		</div>
	</div>
</template>

<script>
import axios from 'axios';
import Commentsloader from '@/components/shared/Commentsloader';
import VueRecaptcha from 'vue-recaptcha';

export default {
	name: 'comments',
	props:['commentid'],
	data(){
		return{
			form_name:null,
			form_email: null,
			form_content: null,
			form_context: null,
			recaptcha_validation: false
		}
	},
	computed:{
		currentRoute(){ return this.$route.name },
	},
	methods:{
		checkName(){
			if(!this.fields.name.valid && !this.fields.email.valid && this.form_context==null){
				alert('Preencha corretamente os campos Nome e Email e selecione um Capítulo')
			}
			else if(!this.fields.name.valid && !this.fields.email.valid){
				alert('Preencha corretamente os campos Nome e Email')
			}
			else if(!this.fields.name.valid && this.form_context==null){
				alert('Preencha corretamente o campo Nome e selecione um Capítulo')
			}
			else if(!this.fields.email.valid && this.form_context==null){
				alert('Preencha corretamente o campo Email e selecione um Capítulo')
			}
			else if (!this.fields.name.valid) {
				alert('Inclua um nome')
			}
			else if(!this.fields.email.valid){
				alert('Corrija email')
			}
			else if(this.form_context==null){
				alert("Selecione um capítulo")
			}
			else if(!this.fields.content.valid){
				alert("Inclua um comentário")
			}
			else if(!this.recaptcha_validation){
				alert("Faça a validação do recaptcha")
			}
			else{
				this.send();
			}
		},

		onVerify(response) {
			// console.log('Verify: ' + response)
			if(response){
				this.recaptcha_validation = true
			}
			else {this.recaptcha_validation = false}
		},
		onExpired: function () {
			// console.log('Expired')
			this.recaptcha_validation = false			
		},
		send(){
			const url = 'http://minuta.gestaourbana.prefeitura.sp.gov.br/apiconsultas/gestaourbanasp_consulta_piu_vila_leopoldina';
			const app = this;
			axios.post(url,{
				'idConsulta':'5',
				'name': app.form_name,
				'email':app.form_email, 
				'content':app.form_content,
				'public': '0',
				'trash': '0',
				'postid':app.commentid.postid,
				'commentid': app.commentid.id,
				'commentcontext': app.form_context
				// 'commentdate':app.today
				//{"name":"Thomas","email":"yubathom@gmail.com","content":"teste","public":"0","trash":"0","postid":1,"commentid":1,"commentcontext":"Consulta","idConsulta":"2","commentdate":"2018-04-02"}
			})
			.then(function (response) {
				// console.log(response);
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
	components:{ Commentsloader, VueRecaptcha },
	// computed:{
	// 	today(){
	// 		let now = new Date();
	// 		let year = now.getFullYear();
	// 		let month = now.getMonth();
	// 		let day = now.getDay();
	// 		return year+'-'+month+'-'+day;
	// 	}
	// }
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
			.comment_recaptcha{
				margin-top: .9em;
			}
		}
	}
	.select {
	}
}
</style>