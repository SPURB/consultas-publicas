<template>
<div class="consulta">
	<div class="container">
		<div class="row">
			<h2 class="chapter-title">{{projectTitle}}</h2>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<h5>Consulta pública </h5>
				<p class="commentable">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
	</div>
	<Comments :commentid="commentid"></Comments>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				id: 1000,
				context: 'Consulta'
			},
		}
	},
	computed: {projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ Comments }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.chapter-content{
	.material-icons.small {
		font-size: 1rem; 
		color:#039be5;
		padding-right: 0.25em;
	}

	h5.chapter-content-title{
		color: $primary-medium-grey;
		font-weight: 300;
		padding: 1.2em 0 .6em;
		border-top: solid 1px $primary-medium-grey;
	}
	.chapter-content-title:hover{
		color: $main-color;
		cursor: pointer
	}
	section{
		h5{
			margin-top: 2em
		}
	}
}
</style>