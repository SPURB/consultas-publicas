<template>
	<div class="Mapa">
		<div id="map" class="map"></div>
	</div>
</template>

<script>
export default{
	name:'Mapa',
	props:[ 'attr' ], 
	mounted(){
		this.create();
	},
	methods:{
		create(){
			new ol.Map({
				layers: [
					new ol.layer.Tile({
						source: new ol.source.OSM()
					}),
					new ol.layer.Vector({
						source: new ol.source.Vector({
							url: './static/kml/anh_perimetroabrangencia.kml',
							format: new ol.format.KML()
						})
					}),
					new ol.layer.Vector({
						source: new ol.source.Vector({
							url: './static/kml/anh_perimetroexpandido.kml',
							format: new ol.format.KML()
						})
					})
				],
				target: 'map',
				view: new ol.View({
					center: this.attr.center,
					zoom: this.attr.zoom
				})
			})
		}
	}
}	
</script>
<style lang="scss" scoped>
#mapa {
	margin-top: 1em;
	background-color: grey;
	height: 50vh;
	max-width: 50vw
}
</style>