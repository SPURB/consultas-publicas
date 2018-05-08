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


						<div class="login col s10 offset-s1">
							<router-link to='/' tag="a" class="btn-large cancel col s5">Cancelar</router-link>
							<a class="btn-large col s5 offset-s2" @click="login">Login</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<button @click="send()">Teste</button>
	</div>
</template>

<script>
import Properties from '../../../static/properties.json';
import axios from 'axios';

export default {
	name: 'AdminLogin',
	data(){
		return{
			email:null,
			pass: null, 
			error: null,
			apiUrl: Properties.apiUrl
		}
	},
	computed:{
		isadmin(){ return this.$store.state.isadmin }
	},
	methods:{
		login(){ },
		send(){
			let memForm = this.toFormData({
				email: this.email,
				pass: this.pass
			})

			// const url = 'http://localhost:7080/users/index.php';
			axios.post(this.apiUrl, memForm)
			.then(function(response){
				console.log(response.data)
			})
			.catch(function (error){
				console.log(error)
			})
		},
		toFormData(obj) {
			var form_data = new FormData()
			for(var key in obj){
				form_data.append(key, obj[key])
			}
			return form_data
		},
	}
}
	
</script>

<style type="text/scss" scoped>
/*@import "../../assets/variables.scss";*/

</style>