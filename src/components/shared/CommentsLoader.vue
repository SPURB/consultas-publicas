<template>
	<div class="CommentsLoader row" v-if="allcomments">
		<!-- <div class="container"> -->
			<div v-for="comment in allcomments">
				<div class="comment col s10 offset-s1" v-if="checkPostCommentIds(comment.postid, comment.commentid)">
					<h5 class="member-info">{{  comment.name }} em <span>{{ comment.commentdate }}</span> disse:</h5>
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
	props:['commentid'],
	computed: { 
		postid() { return this.$route.meta.postid },
		allcomments(){ return this.$store.state.allcomments }
	}, 
	methods: {
		checkPostCommentIds(postId, commentId){
			if (postId == this.postid && commentId == this.commentid.id) { return true }
			else { return false }
		}
	}
} 
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.comment {
	.member-info{
		font-size: 1em;
		font-weight: 500;
		span { color: $primary-dark-grey;}
	}
	p {	 margin-top: 0; }
}

@media #{$extrasmall-and-down} {
	.row{ margin-bottom: 1.25rem}
}


</style>