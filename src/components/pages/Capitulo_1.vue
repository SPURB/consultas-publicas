<template>
<div class="capitulo_1">
		<div class="row">
			<div class="col s12 chapter-content">
				<h2 class="chapter-title">{{ title }}</h2>
					<p> <strong>Capítulo {{ chapter_id  }}</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam <span v-highlight:background.delayed="'red'">global</span> et. Ad fugit quodsi perfecto sit, nam <span v-local-highlight:background.delayed.blink="{mainColor: 'red', secondColor:'green', delay: 500}">latine necessitatibus.</span> Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>
			</div>
		</div>
</div>
</template>

<script>
import {eventBus} from '../../main';

export default {
	name: 'Capitulo_1',
	data () {
		return {
			chapter_id: 1,
			title: 'Projeto de Lei',
		}
	},
	directives: {
		'local-highlight':{
			bind(el, binding, vnode){
				var delay = 0
				if (binding.modifiers['delayed']) {
					delay = 3000;
				}
				if (binding.modifiers['blink']) {
					let mainColor = binding.value.mainColor;
					let secondColor = binding.value.secondColor;
					let currentColor = mainColor;
					setTimeout(() => {
						setInterval(() => {
							currentColor == secondColor ? currentColor = mainColor : currentColor = secondColor;
							if (binding.arg == 'background'){
								el.style.backgroundColor = currentColor;
							} else {
								el.style.color = currentColor;
							}
						},1000);
					}, delay);
				}
				else{
					setTimeout(() => {
						if (binding.arg == 'background'){
							el.style.backgroundColor = binding.value.mainColor;
						} else {
							el.style.color = binding.value.mainColor;
						}			
					}, delay);
				}
			}
		}
	}
}
</script>

<style lang="scss" scoped>
</style>