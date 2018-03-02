<template>
	<div class="AdminLogin">
		<div class="container">
			<div class="row">
				<div class="col s12 card">
					<span class="card-title col s10 offset-s1">Admin</span>
					<form>
						<div class="input-field col s10 offset-s1">
							<input v-validate="'required|email'" id="signinemail" type="email" class="validate" v-model="email">
							<label for="signinemail" class="active">Email*</label>
							<span class="helper-text" data-error="Email incorreto" data-success="Email ok!">*Coloque seu email da intranet (...gov.sp)</span>
						</div>
						<div class="input-field col s10 offset-s1">
							<input id="password" type="password" class="validate" v-model="pass">
							<label for="password" class="active">Senha</label>
						</div>

						<!-- <p class="col s10 offset-s1" v-if="error==true">{{ errorMessage }}</p> -->

						<div class="login col s10 offset-s1">
							<router-link to='/' tag="a" class="btn-large cancel col s5">Cancelar</router-link>
							<a class="btn-large col s5 offset-s2" @click="login">Login</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import axios from 'axios';

export default {
	name: 'AdminLogin',
	data(){
		return{
			email:null,
			pass: null, 
			error: null,
			// errorMessage: null
		}
	},
	computed:{
		isadmin(){ return this.$store.state.isadmin }
	},
	methods:{
		teste(){ this.$store.state.isadmin = true},
		login(){
			const app = this
			const tkn = app.createToken()

			let toSend = {
				token: tkn,
				email: app.email, 
				pass: app.pass
			}
			let memForm = app.toFormData(toSend)

			axios.post('consultas.php?crud=login/'+tkn, memForm)
				.then(function (response){
					// console.log(response)
					if(response.data.user == false){
						alert('Erro. Tente novamente.')
					}
					else{
						// alert('parabéns ' + response.data.user)
						app.$store.state.isadmin = true
					}
				})
				.catch(function (error){
					alert(error)
				})
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
	}
}
	
</script>

<style type="text/scss" scoped>
/*@import "../../../assets/variables.scss";*/

.card{
	padding-top:3rem;
	padding-bottom: 4rem;
	margin-top:2rem;
}
.card-title.col.s10.offset-s1{
	margin-bottom: 1em
}

.login{
	margin-top:2rem;
}

.btn-large.cancel{
	background-color:#DBDBDB;
	color:  #828282;
	transition: background-color .2s;
}

.btn-large.cancel:hover{
	background-color: #F2F2F2;
}
</style>