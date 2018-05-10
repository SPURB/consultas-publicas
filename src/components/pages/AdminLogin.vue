<template>
	<div class="AdminLogin">
		<div class="container" id="logincontainer">
			<div class="columns box">
				<div class="column">
					<h3 class="title">{{projecttitle}}</h3>
					<div class="column">
						<div class="field">
							<label class="label" for="signinemail">Email</label>
							<input v-validate="'required|email'" class="input validate" type="email" name="email" v-model="email" id="signinemail">
							<span class="helper-text" data-error="Email incorreto" data-success="Email ok!">*Coloque seu email da intranet (...gov.sp)</span>
						</div>
					</div>
					<div class="column">
						<div class="field">
							<label class="label" for="password">Senha</label>
							<input class="input validate" type="password" name="email" v-model="pass" id="password">
						</div>
					</div>
					<div class="column is-one-fifth">
						<div class="field">
							<div class="control">
								<button class="button" @click="login()">Login</button>
							</div>
						</div>
					</div>
					<!-- <p v-if="response">{{response.message}}</p> -->
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import baseUrls from '../../../static/properties.json'; 
import axios from 'axios';

export default {
	name: 'AdminLogin',
	data(){
		return{
			email:null,
			pass: null, 
			apiUrl: baseUrls.apiUrlUsersProduction,
			response: false
		}
	},
	computed:{ 
		projecttitle(){return this.$store.state.projecttitle},
		isadmin(){ return this.$store.state.isadmin }
	},
	methods:{
		login(){
			let app = this // para escopo de post do axios
			let memForm = this.toFormData({
				email: this.email,
				pass: this.pass
			})
			axios.post(this.apiUrl, memForm)
			.then(function(response){
				app.$store.state.userinfo = response.data
				if (response.data.status == "true"){
					app.$store.state.isadmin = true;
				}
				else { 
					alert(response.data.message)
				}
			})
			.catch(function (error){
				console.log(error)
				// app.error = error
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
@import "../../assets/variables.scss";
</style>