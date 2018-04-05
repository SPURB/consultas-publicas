<template>
	<div class="ConsultaGaleria1">
		<div class="container">	
			<swiper :options="swiperOption" ref="mySwiper">
					<swiper-slide>
						<div>
							<h3>teste1</h3><img v-lazy="png1">
						</div>
					</swiper-slide>
					<swiper-slide><h3>teste2</h3><img v-lazy="png2"></swiper-slide>
					<div class="swiper-pagination"	slot="pagination"></div>
					<div class="swiper-button-prev" slot="button-prev"></div>
					<div class="swiper-button-next" slot="button-next"></div>
			</swiper>
		</div>
	</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
import { swiper, swiperSlide } from 'vue-awesome-swiper'
 
export default {
	name: 'ConsultaGaleria1',
	data() {
	return {
		png1: '/static/img/slider/960x450_1.png',
		png2: '/static/img/slider/960x450_2.png',

		swiperOption: {
		autoplay: {
			delay: 5000,
		},
		spaceBetween: 30,
		effect: 'fade',
		pagination: {
			el: '.swiper-pagination',
			clickable: true
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev'
		}
		}
	}
	},
	components: {
		swiper,
		swiperSlide
	}
}
</script>

<style lang="scss" scoped>
.swiper-container {
	img{
		width: 100%
	}
	.swiper-slide-active div{
		opacity: 1
	}
	.swiper-slide-next div{
		opacity: 0
	}
}
</style>