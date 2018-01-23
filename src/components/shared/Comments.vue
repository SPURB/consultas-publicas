<template>
	<div class="comments">
		<div class="row">
			<div class="col s12">
				<div class="divider"></div>
				<h3 class="flow-text">Comentários</h3>
				<router-link to="/admin" tag="a" class="btn-flat">Deixe seu comentário</router-link> <!-- alterar rota -->
				<div class="divider bottom"></div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
  name: 'Comments',
  data () {
		return {
		  title: 'Comments'
		}
  }, 

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped>
@import "../../assets/variables.scss";
a.btn-flat{background-color:$primary-light-grey}
div.divider.bottom{margin-top: 1rem}
</style>