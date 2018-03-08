<template>
<div class="modalcomponent">
	<transition name="modal">
		<div class="modal-mask" @click="close" v-show="showmodal">
			<div class="modal-wrapper">
					<div class="modal-container container" @click.stop>
						<div class="modal-header">
							<slot name="header">
								<h1>gestão<span>urbana</span><span>SP</span><span> | {{ projectTitle }}</span> </h1>
								<div class="divider"></div>
								<h2>Habilitar comentários</h2>
							</slot>
						</div>
						<div class="modal-body">
							<slot name="body">
								<form>
									<div class="input-field col s12">
										<label for="email" class="active">Email</label>
										<input v-validate="'required|email'" id="email" type="email" class="validate" v-model="email">
										<span class="helper-text" data-error="Email incorreto" data-success="Email ok!">Seu email não será divulgado</span>
									</div>

									<div class="input-field col s12">
										<label for="name" class="active">Nome Sobrenome (organização) </label>
										<input id="name" type="text" class="validate" v-model="name">
										<span class="helper-text" data-success="Nome ok!"></span>
									</div>

									<div class="commentaction">
										<button @click="close" class="btn-large col s5" id="cancel">Cancelar</button>
										<button @click="enable" class="btn-large col s5 offset-s2" id="send">Habilitar</button>
									</div>
								</form>
							</slot>
						</div>
					</div>
			</div>
		</div>
	</transition>
</div>
</template>

<script>
export default {
	name: 'Modalcomponent',
	data() {
		return {
			name:'',
			email:''
		}
	},
	computed: {
		showmodal(){ return this.$store.state.showmodal; },
		projectTitle(){ return this.$store.state.projecttitle; },
		newScrollTop(){ return this.$store.state.scrollheight; }
	},
	methods: {
		close(){
			this.$store.state.showmodal = false;
			window.scroll(0, this.newScrollTop);
		},
		enable(){
			var app = this
			var hasErrors = function(){
				if (app.email == '' || app.errors.any() == true || app.name == '') {
					return true
				}
				else { return false }
			}()

			if(!hasErrors){
				this.$store.state.email = this.email;
				this.$store.state.name = this.name;
				this.$store.state.comments = true;

				// add recaptcha to head
				let recaptchaScript = document.createElement('script');
				recaptchaScript.setAttribute('src', 'https://www.google.com/recaptcha/api.js?onload=vueRecaptchaApiLoaded&render=explicit');
				document.head.appendChild(recaptchaScript);
				this.close();
			}
			else if(hasErrors){
				console.log('email incorreto: ' + this.email)
			}
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

h1{
	font-size: 1.5rem;
	color:#BDBDBD;
	margin-top:4%;
	span:nth-of-type(1) {color:#000000};
	span:nth-of-type(2n){color:#EB5757};
	span:nth-of-type(3n){font-weight:300}
}

h2{
	font-size: 1.5rem;
	margin: 2.3733333333rem 0
}

.commentaction{
	button#cancel{ 
		background-color:#DBDBDB;
		color: $primary-dark-grey;
		transition: background-color .2s;
	}
	button#cancel:hover{
		background-color: $primary-light-grey;
	}
	button#send{
		float: right
	}
}

.modal-body{
	.input-field{
		margin-top:3rem
	}
}
.modal-mask {
	position: fixed;
	z-index: 9998;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(255, 255, 255, .90);
	display: table;
	transition: opacity .3s ease;
}

.modal-wrapper {
	display: table-cell;
	vertical-align: middle;
}

.modal-container {
	width: 57.67%;
	margin: 0px auto;
	padding: 1% 5% 1% 5%;
	background-color: #fff;
	border-radius: 2px;
	box-shadow: 0 2px 8px rgba(0, 0, 0, .33);
	transition: all .3s ease;
	font-family: $font-stack;
}

.modal-header h3 {
	margin-top: 0;
	color: #42b983;
}

.modal-body {
	margin: 20px 0;
}

.modal-default-button {
	float: right;
}

/* Control Transitions */
.modal-enter {
	opacity: 0;
}

.modal-leave-active {
	opacity: 0;
}

.modal-enter .modal-container,
.modal-leave-active .modal-container {
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

// form
.input-field.col {
	label	{
		left:0
	}
}

@media #{$medium-and-down} {
	.modal-container {
		width: 80%;
		padding: 2% 5%;
	}
}

@media #{$small-and-down} {
	.modal-container {
		width: 90%;
		padding: 2% 5%;
		h1, h2, { 
			font-size: 1rem
		}
	}
}

@media #{$extrasmall-and-down} {
	.modal-container {
		width: 92%;
		padding: auto 3%;
	}
}

</style>