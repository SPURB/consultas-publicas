<template>
	<div class="comments">
		<div class="row">
			<div class="col s12">
				<div class="divider"></div>
				<h3 class="flow-text title">Comentários</h3>
				<CommentsLoader></CommentsLoader>
				<div v-if="commentsenable" class="col s10 offset-s1" id="commentarea">
					<form>
						<label for="comment">Comente o Capítulo {{ postid }} como {{ name }} (<a href="#" @click="showmodal">alterar</a>)</label>
						<textarea id="comment" v-model="comment"></textarea>
						<a href="#" class="btn-flat" @click="sendata" type="submit">Enviar comentário</a>
						<vue-recaptcha 
							:sitekey="sitekey"
							@verify="onVerify"
							@expired="onExpired"></vue-recaptcha>
					</form>
				</div>
				<a v-else href="#" class="btn-flat col s10 offset-s1" @click="showmodal()">Deixe seu comentário</a>
			</div>
		</div>
	</div>
</template>

<script>
import VueRecaptcha from 'vue-recaptcha';
import CommentsLoader from '@/components/shared/CommentsLoader'
import axios from 'axios'


export default {
	name: 'Comments',
	data: function(){
		return {
			comment: '', 
			sitekey: '6LeYiT0UAAAAAKjLBWb5LuDa1Inv8_0C7IF2v0-K'
		}
	},
	computed:{
		commentsenable() { return this.$store.state.comments },
		name() { return this.$store.state.name }, 
		usercheck() { return this.$store.state.usercheck },
		postid() { return this.$route.meta.postid }
	},
	methods: {
		showmodal() {
			this.$store.state.showmodal = true
		},
		onVerify(response) {
			// console.log('Verify: ' + response)
			this.$store.state.usercheck = true
		},
		onExpired() {
			// console.log('Expired')
			this.$store.state.usercheck = false
		},
		sendata() {
			if (this.usercheck) {
				let name = this.name	
				let email = this.$store.state.email
				let postid = this.postid
				let comment = this.comment
				// send this to server axios
				console.log("nome: " + name)
				console.log("email: " + email)	
				console.log("postid: " + postid)
				console.log("comment: " + comment)

				alert('Sua contribuição: "' + this.comment +'" foi enviado para moderação. Obrigado pela sua contribuição')
			}
			else{
				alert("Faça a sua validação no recapctha")
			}
		}
	}, 
	components:{ VueRecaptcha, CommentsLoader }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped>
@import "../../assets/variables.scss";

a.btn-flat{
	background-color:$primary-light-grey;
	// margin: 0 10%;
	font-weight: 500;
	display: block;
	text-align: center;
}

.comments{
	h3{
		font-size: 20px;
		font-weight: 500;
	}
	#commentarea{
		padding: 0;
		textarea{
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

/* media queries */
@media screen and (max-width: 600px) {
	#commentarea {
		width: 80%;
		margin: 0 10%;
	}
}


</style>