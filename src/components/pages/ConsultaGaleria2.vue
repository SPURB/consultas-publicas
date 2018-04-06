<template>
	<div class="ConsultaGaleria2">
		<swiper :options="swiperOption" ref="mySwiper">
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#828282">Diretrizes Urbanísticas</h3>
						<img v-lazy="png0" class="noselect slide">
						<p>Praça Charles Müller</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#8D165B">Remanejar postes</h3>
						<img v-lazy="jpg1" class="noselect slide">
						<p>Praça Charles Müller</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#F1891B">Remover vegetação arbustiva</h3>
						<img v-lazy="jpg2" class="noselect slide">
						<p>Praça Charles Müller</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#B2826B">Ampliação de áreas de estar</h3>
						<img v-lazy="jpg3" class="noselect slide">
						<p>Praça Charles Müller: Elevação do pavimento viário lateral</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#3D7C31">Recompor massa arbórea de forma a valorizar a fachada do prédio</h3>
						<img v-lazy="jpg4" class="noselect slide">
						<p>Praça Charles Müller</p>
					</div>
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
	name: 'ConsultaGaleria2',
	data() {
	return {
		png0: './static/img/galeria2/PIU-PACAEMBU_transformacao-praca_00.png',
		jpg1: './static/img/galeria2/PIU-PACAEMBU_transformacao-praca_01.jpg',
		jpg2: './static/img/galeria2/PIU-PACAEMBU_transformacao-praca_02.jpg',
		jpg3: './static/img/galeria2/PIU-PACAEMBU_transformacao-praca_03.jpg',
		jpg4: './static/img/galeria2/PIU-PACAEMBU_transformacao-praca_04.jpg',

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
@import "../../assets/variables.scss";
.ConsultaGaleria2{
	margin: 1em 0;
	.swiper-container {
		background-color: $primary-light-grey;
		.slide-content{
			max-width: 992px;
			margin: 0 auto .7em;
			h3{ 
				font-size: 1.5em;
				border-left: solid 1.125em;
				padding-left: .5em;
				margin-top: .75em;
			}
			img.slide {
				width: 100%;
			}
			p{
				margin-top: 0
			}
		}
		.swiper-slide{
			 h3, img, p {
				opacity: 0
			}
		}
		.swiper-slide-active {
			h3, img, p {
				opacity: 1
			}
		}
		.swiper-button-prev, .swiper-button-next{
			// top: 50%
		}
		.swiper-pagination{
			margin-bottom: 0.1em
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
}

@media #{$medium-and-down}{
	.swiper-slide{
		h3, p{
			padding: 0 1em
		}
	}
}

</style>