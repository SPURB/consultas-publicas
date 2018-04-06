<template>
	<div class="ConsultaGaleria3">
		<swiper :options="swiperOption" ref="mySwiper">
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#828282">Praça Charles Miller - situação atual</h3>
						<img v-lazy="jpg1" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#cdbba8">Praça Charles Miller - situação atual</h3>
						<img v-lazy="jpg2" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#7d8f62">Identificação dos elementos que interferem na perspectiva</h3>
						<img v-lazy="jpg3" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#b39782">Remoção dos elementos que interferem na perspectiva</h3>
						<img v-lazy="jpg4" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#b67a8d">Identificação dos elementos que interferem na perspectiva</h3>
						<img v-lazy="jpg5" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#828282">Remoção dos elementos que interferem na perspectiva</h3>
						<img v-lazy="jpg6" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#4a5465">Vagas de estacionamento</h3>
						<img v-lazy="jpg7" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#a6a6a6">Retirada das demarcações das vagas | Pavimento viário nivelado às calçadas</h3>
						<img v-lazy="jpg8" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#a78a66">Identificação dos vazios arbóreos</h3>
						<img v-lazy="jpg9" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#719246">Complementação arbórea - conformação do eixo perspéctico</h3>
						<img v-lazy="jpg10" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#6a733f">Canteiros</h3>
						<img v-lazy="jpg11" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#858844">Paisagismo</h3>
						<img v-lazy="jpg12" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#ab9d90">Calçadas</h3>
						<img v-lazy="jpg13" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#95908d">Troca do piso das calçadas</h3>
						<img v-lazy="jpg14" class="noselect slide">
						<p style="opacity:0">.</p>
					</div>
				</swiper-slide>
				<swiper-slide>
					<div class="slide-content">
						<h3 style="border-left-color:#d3855f">Praça Charles Miller - Situação pretendida</h3>
						<img v-lazy="jpg15" class="noselect slide">
						<p style="opacity:0">.</p>
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
	name: 'ConsultaGaleria3',
	data() {
	return {
		jpg1: './static/img/galeria3/PIU-PACAEMBU_aerea_01.jpg',
		jpg2: './static/img/galeria3/PIU-PACAEMBU_aerea_02.jpg',
		jpg3: './static/img/galeria3/PIU-PACAEMBU_aerea_03.jpg',
		jpg4: './static/img/galeria3/PIU-PACAEMBU_aerea_04.jpg',
		jpg5: './static/img/galeria3/PIU-PACAEMBU_aerea_05.jpg',
		jpg6: './static/img/galeria3/PIU-PACAEMBU_aerea_06.jpg',
		jpg7: './static/img/galeria3/PIU-PACAEMBU_aerea_07.jpg',
		jpg8: './static/img/galeria3/PIU-PACAEMBU_aerea_08.jpg',
		jpg9: './static/img/galeria3/PIU-PACAEMBU_aerea_09.jpg',
		jpg10: './static/img/galeria3/PIU-PACAEMBU_aerea_10.jpg',
		jpg11: './static/img/galeria3/PIU-PACAEMBU_aerea_11.jpg',
		jpg12: './static/img/galeria3/PIU-PACAEMBU_aerea_12.jpg',
		jpg13: './static/img/galeria3/PIU-PACAEMBU_aerea_13.jpg',
		jpg14: './static/img/galeria3/PIU-PACAEMBU_aerea_14.jpg',
		jpg15: './static/img/galeria3/PIU-PACAEMBU_aerea_15.jpg',
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
.ConsultaGaleria3{
	margin: 3em 0;
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
			top: 45%
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