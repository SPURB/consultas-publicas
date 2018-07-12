<template>
	<div class="Header">
		<nav class='navbar'>
			<h2 class="navbar-start">
				<a class="subtitle is-6" href="http://gestaourbana.prefeitura.sp.gov.br/">
					<span class="gestao">gestão</span><span class="urbana">urbana</span><span class="sp">SP</span>
				</a>
			</h2>
			<h1 class="title is-6 navbar-end" :class="consultaState()">{{projectTitle}}</h1>
		</nav>
	</div>
</template>

<script>
export default {
	name: 'Header',
	computed:{ 
		projectTitle(){ return this.$store.state.projecttitle; },
		isOpen(){ return this.$store.state.isopen }

	},
	methods:{
		consultaState(){ return (this.isOpen ? "consultaAberta" : "consultaEncerrada") }
	}
}
</script>

<style lang="scss" scoped>

@import "../../assets/variables.scss";

.Header {
	nav.navbar{
		background-color: unset;
		z-index:auto;
		display: flex
	}
	h2.navbar-start, h1.navbar-end{
		align-items: center;
		display: flex;
	}
	h2.navbar-start{
		a.subtitle{
				margin: 0 .25rem;
			}
	}
	h1.navbar-end{
		padding: .25em;
		font-weight: unset;
		margin-left: auto
	}
	h1.consultaAberta::after,
	h1.consultaEncerrada::after {
		font-size: 10px;
		text-transform: uppercase;
		color: #fff;
		font-weight: 500;
		padding: 4px 5px;
		border-radius: 2px;
		white-space: nowrap;
		margin: 0 .5rem;
	}
	h1.consultaAberta::after{
		content: "Consulta Aberta";
		background-color: #008015;
	}
	h1.consultaEncerrada::after{
		content: "Consulta Encerrada";
		background-color: #EB5757;
	}
	span.gestao{color:#BDBDBD}
	span.sp {color: #EB5757}
	span.urbana{color: black}
}
@media #{$small-and-down}{
	.Header{
		nav.navbar{
			flex-direction: column;
			h2.navbar-start, h1.navbar-end{
				margin: auto;
			}	
		}
	}
}
@media #{$extrasmall-and-down}{
	.Header{
		nav.navbar{
			h2.navbar-start, h1.navbar-end{
				margin: 0;
			}	
		}

	}
}

</style>

