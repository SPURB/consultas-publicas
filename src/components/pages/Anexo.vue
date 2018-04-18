<template>
	<div class="Anexo">
	<!-- <Comments :commentid="commentid"></Comments> -->
		<p>opaAnexo</p>
	</div>
</template>


<script>
import Buefy from 'buefy'
// import VueLazyload from 'vue-lazyload';
// import Comments from '@/components/shared/Comments';

export default {
	name: 'Anexo',
	data () {
		return {
			commentid: {
				postid: 2,
				id: 2,
				context: 'Anexo',
			},
			jpg1: './static/img/slider/960x450_1.png',
		}
	},
	// components:{ Comments }
}
</script>

<style lang='scss' scoped>

</style>
