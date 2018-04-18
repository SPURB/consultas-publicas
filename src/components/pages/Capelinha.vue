<template>
<div class="Capelinha">
	<div class="container">
		<div class="content">
			<h1 class="title"> Terminal Capelinha </h1>
			<h2 class="subtitle">Projeto de Intervenção Urbana Terminais Municipais</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum </p>
			<blockquote>Ut venenatis, nisl scelerisque sollicitudin fermentum, quam libero hendrerit ipsum, ut blandit est tellus sit amet turpis.</blockquote>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		<!-- 	<ConsultaGaleria1></ConsultaGaleria1> -->	

			<figure class="image is-960x450">
				<img v-lazy="png" id="jpg2">
				<p>Legenda</p>
			</figure>

			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		</div>
	</div>
	<Comments :commentid="commentid"></Comments>
</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
import Comments from '@/components/shared/Comments';

export default {
	name: 'Capelinha',
	data () {
		return {
			commentid: {
				postid: 2,
				id: 2,
				context: 'Capelinha',
			},
			png: './static/img/slider/960x450_1.png',
			loadingGif:'./static/img/loading.gif'
		}
	},
	computed: {projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ 
		Comments
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";


.chapter-content{
	img{
		width: 100%
	}
  	img.materialboxed{
  		border:solid 1px $primary-light-grey;
  	}
}
</style>