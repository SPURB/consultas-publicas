<template>
<div class="anexo1">
	<div class="container">
		<div class="row">
			<div class="col s12 chapter-content">
				<h2 class="chapter-title">{{ title }}</h2>
				<ul>
					<li><a href="#">Arquivo 1</a></li>
					<li><a href="#">Arquivo 2</a></li>
					<li><a href="#">Arquivo 3</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</template>

<script>

export default {
	name: 'anexo1',
	data () {
		return {
			chapter_id: 2,
			title: 'Arquivos',
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/main.scss";

</style>