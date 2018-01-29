<template>
<div class="capitulo_2">
		<div class="row">
			<div class="col s12 chapter-content">
				<h2 class="chapter-title">{{ title }}</h2>
				<p class="flow-text"> <strong>Capítulo {{ chapter_id  }}</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam officiis oportere et. Ad fugit quodsi perfecto sit, nam latine necessitatibus. Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>
				<img class="responsive-img" :src="require('../../assets/img/img.png')" />
				<p class="flow-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non  proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non  proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
</div>
</template>

<script>

export default {
	name: 'Capitulo_2',
	data () {
		return {
			chapter_id: 2,
			title: 'Capitulo 2',
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

</style>