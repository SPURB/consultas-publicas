<template>
	<div id="app">
		<section v-bind:class="{ lightsOff: isApoioFechado }">
			<router-view name="header"></router-view>
			<router-view name="indice" v-show="!isApoioFechado"></router-view>
			<router-view name="main"></router-view>
			<router-view name="footer"></router-view>
			<div class="bt" v-bind:class="{ afastado: isApoioFechado }" @click="isApoioFechado=!isApoioFechado" v-on:passive.scroll="handleScroll()">
				<span class="icon" v-bind:class="{ espelhado: isApoioFechado }">
					<i class="material-icons">chevron_left</i>
				</span>
			</div>
		</section>
		<transition name="apoioTr">
			<div v-if="isApoioFechado" class="_apoio">
				<router-view name="apoio"></router-view>
			</div>
		</transition>
	</div>
</template>

<script>
export default {
	name: 'App',
	data () {
		return {
			isApoioFechado: false,
		};
	},
	methods: {
		handleScroll () {
		    console.log('scrolling')
		},
		created () {
		  document.body.addEventListener('scroll', this.handleScroll);
		},
		destroyed () {
		  document.body.removeEventListener('scroll', this.handleScroll);
		}
	},
};
</script>

<style lang="scss">
@import "assets/main.scss";
div#app {
	display: flex;
	height: 100vh;
	section {
		width: 100%;
		flex: 1 1 200vw;
		overflow-y: auto;
		overflow-x: hidden;
		box-sizing: border-box;
		position: relative;
	};
	div.bt {
		position: fixed;
		top: 50%;
		background-color: #FFFFFF;
		right: calc(1.5rem + 16px);
		border-radius: 100%;
		height: 1.5rem;
		width: 1.5rem;
		box-shadow: 0 2px 2px rgba(0,0,0,.5);
		transition: margin .25s ease-in-out;
		z-index: 2;
		i {
			color: $primary-grey;
		};
	};
	div.bt:active {
		background-color: $primary;
		cursor: default;
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
		user-select: none;
		i { 
			color: #FFFFFF; 
		};
	}
	div.bt::after {
		content: 'Ver texto de apoio';
		display: block;
		visibility: visible;
		white-space: nowrap;
		position: absolute;
		top: 0;
		right: 2rem;
		font-size: small;
		font-family: $font-sec;
		color: $primary-grey;
		line-height: 1.5rem;
		transition: all .05s ease-out;
		background-color: #FFFFFF;
		padding: 0 8px;
		border-radius: 2px;
		box-sizing: content-box;
		opacity: .8;
	}
	div.bt.afastado::after {
		visibility: hidden;
	}
	.espelhado {
		transform: rotateY(180deg);
	};
	.afastado {
		margin-right: $largura_apoio;
	};
	div._apoio {
		transition: all .25s ease-in-out;	
	};
	.apoioTr-enter, .apoioTr-leave-to {
		transform: translateX($largura_apoio);
		margin-left: -($largura_apoio);
	};
}
</style>