<template>
	<div class="Ael">
<!-- 		<swiper :options="swiperOption" ref="mySwiper">
				<swiper-slide>
					<h3>Título 3</h3>
					<figure class="image is-992x557">
						<img v-lazy="jpg0" width="992" height="557" class="noselect">
					</figure>
					<p class="legenda">Legenda1</p>
				</swiper-slide>
				<swiper-slide>
					<h3>Título 3</h3>
					<figure class="image is-992x557">
						<img v-lazy="jpg1" width="992" height="557" class="noselect">
					</figure>
					<p class="legenda">Legenda2</p>
				</swiper-slide>
				<swiper-slide>
					<h3>Título 3</h3>
					<figure class="image is-992x557">
						<img v-lazy="jpg2" width="992" height="557" class="noselect">
					</figure>
					<p class="legenda">Legenda3</p>
				</swiper-slide>
				<div class="swiper-pagination"	slot="pagination"></div>
				<div class="swiper-button-prev" slot="button-prev"></div>
				<div class="swiper-button-next" slot="button-next"></div>
		</swiper>
 -->

<div class="gallery items-3">
  <div id="item-1" class="control-operator"></div>
  <div id="item-2" class="control-operator"></div>
  <div id="item-3" class="control-operator"></div>

  <figure class="item">
    <h1>1</h1>
	<img v-lazy="jpg0" width="992" height="557">
	<p class="legenda">Legenda1</p>
  </figure>

  <figure class="item">
    <h1>2</h1>
	<img v-lazy="jpg1" width="992" height="557">
	<p class="legenda">Legenda2</p>
  </figure>

  <figure class="item">
    <h1>3</h1>
	<img v-lazy="jpg2" width="992" height="557">
	<p class="legenda">Legenda3</p>
  </figure>

  <div class="controls">
    <a href="#item-1" class="control-button">•</a>
    <a href="#item-2" class="control-button">•</a>
    <a href="#item-3" class="control-button">•</a>
  </div>
</div>


	</div>
</template>

<script>
import VueLazyload from 'vue-lazyload';
import { swiper, swiperSlide } from 'vue-awesome-swiper'
 
export default {
	name: 'Ael',
	data() {
	return {
		jpg0: '/static/img/ael/Diagramas_Terminais_AEL_0003_Folha_5.jpg',
		jpg1: '/static/img/ael/Diagramas_Terminais_AEL_0001_Folha_3.jpg',
		jpg2: '/static/img/ael/Diagramas_Terminais_AEL_0004_Folha_6.jpg',

		swiperOption: {
		// autoplay: {
		// 	delay: 5000,
		// },
		// spaceBetween: 30,
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
	// components: {
	// 	swiper,
	// 	swiperSlide
	// }
}
</script>

<style lang="scss" scoped>
@import "../../../assets/vendor/gallery.theme.css";
@import "../../../assets/vendor/gallery.min.css";

// .swiper-container {
// 	img{
// 		width: 100%
// 	}
// 	.swiper-slide{
// 		figure{
// 			background-color: white
// 		}
// 	}
// 	.swiper-slide h3, .swiper-slide p.legenda{
// 		opacity: 0
// 	}
// 	.swiper-slide-active h3, .swiper-slide-active p.legenda{
// 		opacity: 1
// 	}
// 	.swiper-button-prev, .swiper-button-next{
// 		top:57%
// 	}
// }
.figure{}

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