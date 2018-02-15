<template>
<div class="capitulo_3">
		<div class="row">
			<div class="col s12 chapter-content">
				<h2 class="chapter-title">Projeto de Lei</h2>
					<p> <strong>Capítulo 3</strong>. Dolor sit amet, mei id dicat periculis concludaturque, et antiopam inimicus mea, an justo dolorum sed. Mazim expetenda instructior ex qui. An munere copiosae eum, duis blandit no has. Magna reque duo an, an sint volutpat sea, ne luptatum laboramus ius. Mel nullam <!-- <span v-highlight:background.delayed="'grey'">global</span> --> et. Ad fugit quodsi perfecto sit, nam <!-- <span v-local-highlight:background.delayed.blink="{mainColor: 'grey', secondColor:'green', delay: 500}">latine necessitatibus.</span>  -->Ad per veniam commodo, ex ius elit eruditi. Dolor nostro explicari no nam. Ne pri quis erant quidam. Eos veri minim te. Hinc commodo aliquip ut pro, pro at verterem consetetur, et est sumo errem.</p>

					<p v-comm="addForm" id="0001">um</p>
					<Comments></Comments>
					<p v-comm="addForm" id="0002">dois</p>
					<p v-comm="addForm" id="0003">três</p>
			</div>
		</div>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';

export default {
	name: 'Capitulo_3',
	data () {
		return {
		}
	},
	directives: {
		'comm':{
			bind(el, binding){
				el.addEventListener('click', () => {
					binding.value(el.id);
				}, true);
			}
		}
	},
	methods:{
		addForm(id){
			// console.log(id);
			let el = document.getElementById(id);
			let	commentForm = document.createElement('div');
			let form = document.createTextNode("Form");

			// hide form after second click
			if (el.classList.contains("clicked")){
				el.nextSibling.classList.toggle("active");
				el.nextSibling.classList.toggle("hidden");
			}
			else {
				commentForm.append(form);
				el.classList.add("clicked");
				commentForm.className = "active";

				el.insertAdjacentElement('afterend', commentForm);
			}
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