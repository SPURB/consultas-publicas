<template>
	<div class="CommentsLoader row" v-if="members">
		<transition	name="fade">
		<!-- <div class="container"> -->
			<div v-for="comment in members">
				<div class="comment col s10 offset-s1" v-if="checkPostCommentIds(comment.postid, comment.commentid)">
					<h5 class="member-info">{{  comment.name }} em <span>{{ comment.commentdate }}</span> disse:</h5>
					<p> {{comment.content}} </p>
				</div>
			</div>
		<!-- </div> -->
		</transition>
	</div>
</template>

<script>
import axios from 'axios';

export default {
	name: 'CommentsLoader',
	data (){
		return {
			members: []
		}
	},
	props:['commentid'],
	computed: {
		postid() { return this.$route.meta.postid }
	}, 
	mounted(){ this.getAllcomments() },
	methods: {
		getAllcomments() {
			let app = this
			axios.get('consultas.php?crud=read')
				.then(function(response){
					// console.log(response);
					if (response.data.error){ app.errorMessage = response.data.message; }
					else{ app.members = response.data.members; }
			});
		},
		checkPostCommentIds(postId, commentId){
			if (postId == this.postid && commentId == this.commentid.id) { return true }
			else { return false }
		}
	}

} 
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.fade-enter-active, .fade-leave-active {
  transition: opacity .1s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
  opacity: 0;
}

.comment {
	.member-info{
		font-size: 1em;
		font-weight: 500;
		span { color: $primary-dark-grey;}
	}
	p {margin-top: 0}
}

</style>