<template>
<div class="consulta">
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">
					<h1 class="title is-1">PIU Setor Central</h1>
					<h4 class="subtitle is-4">Consulta Pública</h4>
					<section id="apresentacao">
						<h4 class="title is-4">Apresentação</h4>
						<p>Lorem</p>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Diagrama></Diagrama>
	<Mapa :attr="ol_attributes"></Mapa>

	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="contextualizacao">
						<h4 class="title is-4">Lorem</h4>
						<p>Ipsum</p>

						<figure>
							<img src="../../assets/img/logo.png" title="Figure title">
							<figcaption>Figure cation</figcaption>
						</figure>

						<p>Lorem</p>
					</section>

				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="content">
			<div class="columns">
				<div class="column">

					<section id="diagnostico">
						<h4 class="title is-4">Diagnóstico Socioterritorial</h4>
						<div>
							<a href="./static/pdf/#" class="box" download="SomeTitle.pdf">
								<i class="small material-icons">picture_as_pdf</i>
								Some Title
							</a>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<Comments :commentid="10"></Comments>
</div>
</template>

<script>
import Comments from '@/components/shared/Comments';
import Diagrama from '@/components/pages/Diagrama';
import Mapa from '@/components/pages/Mapa';

export default {
	name: 'Consulta',
	data () {
		return {
			commentid: {
				postid: 1,
				id: 1
			},
			ol_attributes:{
				center: [ -5193200.816167192, -2693650.9770380395 ],
				zoom: 14.2,
				layersPaths:[
					'./static/kml/perimetro_piu_setor_central.kml'
				]
			}
		}
	},
	computed: { projectTitle(){ return this.$store.state.projecttitle; }},
	components:{ Comments, Diagrama, Mapa }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";
@import "../../assets/main.scss";

.consulta {
	margin: 1em auto 0 auto;
	width: 100%;
}

.content {
	max-width: 992px;
	padding: .5rem;
}

h4.title {
	padding-top: 1rem;
	border-top: .3rem $primary-grey solid
}

#diagnostico {
	div {		
		padding: .5rem 2rem;
		a {
			display: block;
			padding: 1rem;
			i {
				vertical-align: bottom;
				margin-right: 12px;
			}
		}
	}
}
</style>