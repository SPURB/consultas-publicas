<template>
	<div class="Gallery992x557">

		<div class="gallery">
			<template v-for="image in images">	
				<figure class="item" v-show="image.state">
					<h3>
						<img 
							v-if="image.icon" 
							class="image is-64x64" 
							:src="image.icon">
						<span :class="{ noIcon:!image.icon }">{{ image.title }}</span>
					</h3>
					<img v-lazy="image.url" width="992" height="557">
					<p class="legenda"> {{ image.legenda }} </p>
				</figure>
			</template>
		</div>
		<nav 
			class="pagination is-small" 
			role="navigation" 
			aria-label="pagination">
			<ul class="pagination-list">
				<template v-for="(image, index) in images">
					<li>
						<a 
							class="pagination-link" 
							:disabled="image.state"
							@click="numberClicked(index)"
							>{{ index + 1 }}</a> 
					</li>
				</template>
			</ul>
			<a 
				class="pagination-previous" 
				:disabled="isFirst"
				@click="previous"
				>Anterior</a>
			<a 
				class="pagination-next" 
				:disabled="isLast"
				@click="next"
				>Próximo</a>
		</nav>
	</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
 
export default {
	name: 'Gallery992x557',
	props:['images'],

	computed:{
		isFirst(){ return this.images[0].state },
		isLast(){ return this.images[this.images.length - 1].state }
	},
	methods:{
		numberClicked(number){
			let app = this;
			app.images.map(function(index, elem) {
				if(index.state == true ){ app.images[elem].state = false}
				else if(elem == number){ app.images[elem].state = true }
			})
		},
		next(){
			if(!this.isLast){
				let nextIndex = undefined
				this.images.map(function(index, elem) {
					if(index.state == true){
						index.state = false
						nextIndex = elem + 1
					}
				})
				this.images[nextIndex].state = true
			}
			else{
				console.log('last image')
			}

		},
		previous(){
			if (!this.isFirst) {
				let previousIndex = undefined
				this.images.map(function(index, elem) {
					if (index.state == true) {
						index.state = false
						previousIndex = elem - 1
					}
				})
				this.images[previousIndex].state = true
			}
			else {
				console.log('first image')
			}
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.Gallery992x557{
	.gallery{
		figure.item{
			background-color: $primary-dark-grey;
			margin: auto 0;
			h3, p{
				text-align: left;
				margin-bottom: 0em;
				color:white
			}
			h3{
				display: flex;
				align-items:center;
				min-height:80px;
				img.is-64x64{ margin: .3em }
				span { padding-left:0 } 
				span.noIcon{ padding-left: 1em }
			}
			p {
				display: block;
				min-height: 90px;
			}
			p.legenda{
				padding: .5em;
			}
		}
	}
	nav.pagination	{
		ul.pagination-list{
			list-style: none;
			margin-left: 0
		}	
	}
}
</style>