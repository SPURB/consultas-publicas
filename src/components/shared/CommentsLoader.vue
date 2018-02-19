<template>
	<div class="CommentsLoader row" v-if="members">
		<!-- <div class="container"> -->
			<div v-for="comment in members">
				<div class="comment col s10 offset-s1" v-if="checkPostCommentIds(comment.postid, comment.commentid)">
					<h5 class="member-info">{{  comment.name }} em <span>{{ comment.date }}</span> disse:</h5>
					<p> {{comment.content}} </p>
				</div>
			</div>
		<!-- </div> -->
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
	mounted(){
		this.getAllcomments()
	},
	methods: {
		getAllcomments() {
			let app = this
			axios.get('consultas.php?crud=read')
				.then(function(response){
					console.log(response);
					if(response.data.error){
						app.errorMessage = response.data.message;
					}
					else{
						app.members = response.data.members;
					}
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
@import "../../assets/main.scss";

.comment {
	.member-info{
		font-size: 1em;
		font-weight: 500;
		span { color: $primary-dark-grey;}
	}
	p {margin-top: 0}
}

</style>