<template>
<div class="consulta">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">{{projectTitle}}</h2>
		</div>
	</div>
	<div class="container" ref="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<h4>Projeto de Intervenção Terminais Municipais</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum </p>
			</div>
		</div>
	</div>
<!-- 	<ConsultaGaleria1></ConsultaGaleria1> -->	
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<img v-lazy="png" id="jpg2">
			</div>
		</div>
	</div>
	<Comments :commentid="commentid"></Comments>
</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
import Comments from '@/components/shared/Comments';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				postid: 1,
				id: 1,
				context: 'Consulta',
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