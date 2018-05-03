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
		}
	},
	computed:{
		isadmin(){ return this.$store.state.isadmin }
	},
	methods:{
		login(){ },
	}
}
	
</script>

<style type="text/scss" scoped>
/*@import "../../assets/variables.scss";*/

</style>