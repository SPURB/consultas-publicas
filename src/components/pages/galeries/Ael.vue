<template>
	<div class="Ael">
		<swiper :options="swiperOption" ref="mySwiper">
				<swiper-slide>
					<figure class="image is-960x450">
						<img v-lazy="png1" id="jpg2">
						<p class="legenda">Legenda1</p>
					</figure>
				</swiper-slide>
				<swiper-slide>
					<figure class="image is-960x450">
						<img v-lazy="png2" id="jpg2">
						<p>Legenda2</p>
					</figure>
				</swiper-slide>
				<swiper-slide>
					<figure class="image is-960x450">
						<img v-lazy="png3" id="jpg2">
						<p>Legenda3</p>
					</figure>
				</swiper-slide>
				<div class="swiper-pagination"	slot="pagination"></div>
				<div class="swiper-button-prev" slot="button-prev"></div>
				<div class="swiper-button-next" slot="button-next"></div>
		</swiper>
	</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
import { swiper, swiperSlide } from 'vue-awesome-swiper'
 
export default {
	name: 'Ael',
	data() {
	return {
		png1: '/static/img/slider/960x450_1.png',
		png2: '/static/img/slider/960x450_2.png',
		png3: '/static/img/slider/960x450_1.png',

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
	.swiper-slide{
		figure{
			p {
				// margin-top: 1em
			}
		}
	}
	.swiper-slide h3{
		opacity: 0
	}
	.swiper-slide-active h3{
		opacity: 1
	}
	.swiper-button-prev, .swiper-button-next{
		top:57%
	}
}

.noselect {
  -webkit-touch-callout: none; /* iOS Safari */
    -webkit-user-select: none; /* Safari */
     -khtml-user-select: none; /* Konqueror HTML */
       -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* Internet Explorer/Edge */
            user-select: none; /* Non-prefixed version, currently
                                  supported by Chrome and Opera */
}
</style>