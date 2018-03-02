<template>
	<div class="comments">
		<div class="row">
			<div class="col s12">
				<div class="divider"></div>
				<CommentsLoader :commentid="commentid"></CommentsLoader>
				<transition>
					<div v-if="commentsenable" class="col s12" id="commentarea">
						<form>
							<label for="comment">Comente como {{ name }} (<a href="#" @click="showmodal">alterar</a>)</label>
							<textarea id="comment" v-model="comment"></textarea>
							<a href="#" class="btn-flat" @click="sendata" type="submit">Enviar comentário</a>
							<vue-recaptcha 
								:sitekey="sitekey"
								@verify="onVerify"
								@expired="onExpired"
								>
							</vue-recaptcha>
						</form>
					</div>
					<a v-else href="#" class="btn-flat col s10 offset-s1" @click="showmodal">Habilite comentários</a>
				</transition>
				<div class="divider col s12"></div>
			</div>
		</div>
	</div>
</template>

<script>
import VueRecaptcha from 'vue-recaptcha';
import CommentsLoader from '@/components/shared/CommentsLoader';
import axios from 'axios';

export default {
	name: 'Comments',
	data: function(){
		return {
			comment: '', 
			sitekey: '6LeYiT0UAAAAAKjLBWb5LuDa1Inv8_0C7IF2v0-K',
			scrollHeight: 0,
		}
	},
	mounted() {
		this.$nextTick(function() {
			window.addEventListener('scroll', this.getScrollHeight);
			this.getScrollHeight();
		})
	},
	props:['commentid'],
	computed:{
		commentsenable() { return this.$store.state.comments },
		name() { return this.$store.state.name },
		usercheck() { return this.$store.state.usercheck },
		postid() { return this.$route.meta.postid }
	},
	methods: {
		getScrollHeight(event) { this.scrollHeight = window.scrollY; },
		showmodal() { 
			this.$store.state.scrollheight = this.scrollHeight;
			this.$store.state.showmodal = true; 
		},
		onVerify(response) { this.$store.state.usercheck = true },
		onExpired() { this.$store.state.usercheck = false },
		sendata() {
			const app = this;
			const tkn = app.createToken();
			const appcommentdate = new Date().toISOString().slice(0, 19).replace('T', ' ');
			console.log(appcommentdate);

			if (app.usercheck) {
				let memForm = app.toFormData({
					token: tkn,
					name: app.name,
					email: app.$store.state.email,
					postid: app.postid,
					commentdate: appcommentdate,
					commentid: app.commentid.id,
					commentcontext: app.commentid.context,
					content: app.comment,
				})

				axios.post('consultas.php?crud=comment/'+ tkn, memForm)
					.then(function(response){
						if(response.data.error){
							alert('Erro. Tente novamente.')
						}
						else{
							alert('Sua contribuição: "' + app.comment +'" foi enviado para moderação. Obrigado pela sua contribuição')
							app.comment = ''
						}
					})
					.catch(function (error){
						alert(error)
					})
			}
			else{
				alert("Faça a sua validação no recapctha")
			}
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
	},
	beforeDestroy() {
		window.removeEventListener('scroll', this.getWindowHeight);
	},
	components:{ 
		VueRecaptcha, 
		CommentsLoader
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

a.btn-flat{
	background-color:$primary-light-grey;
	// margin: 0 10%;
	margin-bottom: 1.5em;
	font-weight: 500;
	display: block;
	text-align: center;
	transition: color .1s, background-color .2s;
}

a.btn-flat:hover{
	background-color: $primary-dark-grey;
	color: white;
}

.comments{
	h3{
		font-size: 20px;
		font-weight: 500;
	}
	.divider{	margin-bottom: 1rem}; 

	#commentarea{
		padding: 0 0 1em;
		textarea {
			min-height: 198px;
			font-family:$font-stack; 
			color: $primary-grey;
			padding: 1em;
			border: solid 1px $primary-grey;
			border-radius: 3px;
			resize: none;
			line-height: 1.52;
			margin: 0 0 1rem;		
		}
		a.btn-flat{
			float: right;
			margin: 1rem 0 2rem;
		}
	}
}

@media #{$small-and-down} {
.comments{
	#commentarea{
		a.btn-flat{
			float: none
		}
	}	
}
}
@media #{$extrasmall-and-down} { }
</style>