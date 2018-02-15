<template>
<div class="capitulo_1">
		<div class="row">
			<div class="col s12 chapter-content">
				<h2 class="chapter-title">Projeto de Lei</h2>
					<p> <strong>Capítulo 1</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam et. Ad fugit quodsi perfecto sit, nam Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>

					<p class="comentable" @click="sendCommentId(1)">um</p>
					<Comments :commentid="commentid" v-if="commentid == 1"></Comments>

					<p class="comentable" @click="sendCommentId(2)">dois</p>
					<Comments :commentid="commentid" v-if="commentid == 2"></Comments>

					<p class="comentable" @click="sendCommentId(3)">três</p>
					<Comments :commentid="commentid" v-if="commentid == 3"></Comments>
			</div>
		</div>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';

export default {
	name: 'Capitulo_1',
	data () {
		return {
			commentid: null
		}
	},
	methods:{
		sendCommentId(comentid){
			this.commentid = comentid;
		}
	},
	components:{ 
		Comments
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/main.scss";
</style>