<template>
	<div class="ConsultaGaleria1">
		<swiper :options="swiperOption" ref="mySwiper">
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#828282">Projeto de intervenção Urbana Pacaembu</h3>
					<img v-lazy="jpg0" class="noselect slide">
					<p>Praça Charles Müller, Estádio Municipal do Pacaembu</p>
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#828282">Diretrizes Urbanísticas</h3>
					<img v-lazy="png1" class="noselect slide">
					<!-- <p>Projeto de intervenção Urbana Pacaembu</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#927150">Preservação de Edificações Tombadas</h3>
					<img v-lazy="jpg2" class="noselect slide">
					<!-- <p>Piscina, ginásio, estádio, praça Charles Miller, quadra de tênis coberta, quadra de tênis descoberta</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#927150">Valorização do conjunto</h3>
					<img v-lazy="jpg3" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#dc0912">Integração entre Estádio e Centro Poliesportivo</h3>
					<img v-lazy="jpg4" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#99679a">Possibilidade de Demolição do Tobogã</h3>
					<img v-lazy="jpg5" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#e9b444">Manutenção das Arquibancadas</h3>
					<img v-lazy="jpg6" class="noselect slide">
					<!-- <p></p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#35b9bd">Possibilidade de Cobertura Transparente</h3>
					<img v-lazy="jpg7" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#d45453">Integração com entorno</h3>
					<img v-lazy="jpg8" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#828282">Valorização da monumentalidade do complexo</h3>
					<img v-lazy="jpg9" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#8b5e0d">Alargamento dos passeios das ruas envoltórias</h3>
					<img v-lazy="jpg10" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#ec5658">Área para proposta de nova edificação, preservando integração entre estádio e Centro Poliesportivo</h3>
					<img v-lazy="jpg11" class="noselect slide">
					<!-- <p>.</p> -->
				</div>
			</swiper-slide>
			<swiper-slide>
				<div class="slide-content">
					<h3 style="border-left-color:#39427b">Área para proposta de estacionamento subterrâneo</h3>
					<img v-lazy="jpg12" class="noselect slide">
					<!-- <p>.</p> -->
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
	name: 'ConsultaGaleria1',
	data() {
	return {
		jpg0: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_00.jpg',
		png1: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_01.png',
		jpg2: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_02.jpg',
		jpg3: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_03.jpg',
		jpg4: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_04.jpg',
		jpg5: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_05.jpg',
		jpg6: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_06.jpg',
		jpg7: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_07.jpg',
		jpg8: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_08.jpg',
		jpg9: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_09.jpg',
		jpg10: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_10.jpg',
		jpg11: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_11.jpg',
		jpg12: './static/img/galeria1/PIU-PACAEMBU_transformacao-estadio_12.jpg',

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
.ConsultaGaleria1{
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