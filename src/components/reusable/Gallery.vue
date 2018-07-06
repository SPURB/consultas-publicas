<template>
	<div class="Gallery">
		<div class="gall"  :style="{maxWidth: gallery_attrs.width + 'px'}">
			<template v-for="image in gallery_attrs.images">
				<figure class="item" v-show="image.state">
					<h3>
						<img 
							v-if="image.icon" 
							class="image is-64x64" 
							:src="image.icon">
						<span :class="{ noIcon:!image.icon }">{{ image.title }}</span>
					</h3>
					<img v-lazy="image.url" :width="gallery_attrs.width" :height="gallery_attrs.height">
					<p class="legenda" v-if="image.legenda"> {{ image.legenda }} </p>
				</figure>
			</template>
		</div>
		<nav 
			class="pagination is-small" 
			role="navigation" 
			aria-label="pagination"
			:style="{maxWidth: gallery_attrs.width + 'px'}"
			>
			<ul class="pagination-list">
				<template v-for="(image, index) in gallery_attrs.images">
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
export default {
	name: 'Gallery',
	props:['gallery_attrs'],

	computed:{
		isFirst(){ return this.gallery_attrs.images[0].state },
		isLast(){ return this.gallery_attrs.images[this.gallery_attrs.images.length - 1].state }
	},
	methods:{
		numberClicked(number){
			let app = this;
			app.gallery_attrs.images.map(function(index, elem) {
				if(index.state == true ){ app.gallery_attrs.images[elem].state = false}
				else if(elem == number){ app.gallery_attrs.images[elem].state = true }
			})
		},
		next(){
			if(!this.isLast){
				let nextIndex = undefined
				this.gallery_attrs.images.map(function(index, elem) {
					if(index.state == true){
						index.state = false
						nextIndex = elem + 1
					}
				})
				this.gallery_attrs.images[nextIndex].state = true
			}
			else{
				console.log('last image')
			}

		},
		previous(){
			if (!this.isFirst) {
				let previousIndex = undefined
				this.gallery_attrs.images.map(function(index, elem) {
					if (index.state == true) {
						index.state = false
						previousIndex = elem - 1
					}
				})
				this.gallery_attrs.images[previousIndex].state = true
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

.Gallery{
	font-family: $font-sec;
	.gall{
	margin: 1rem auto;
		figure.item{
			border-top: 1px solid $primary-light-grey;
			margin: auto 0;
			h3, p{
				text-align: left;
				margin-bottom: 0em;
			}
			h3{
				display: flex;
				align-items: center;
				min-height: 40px;
				img.is-64x64{ margin: .3em }
				span { padding-left:0 } 
				// span.noIcon{ padding-left: 1em }
			}
			p {
				display: block;
			}
			// p.legenda{ padding: .5em; }
		}
	}
	nav.pagination	{
		margin: .2em auto 0;
		border-top: 1px solid $primary-light-grey;  
		border-bottom: 2px solid $primary-light-grey;  
		ul.pagination-list{
			list-style: none;
			padding-left: 0
		}	
	}
}
</style>