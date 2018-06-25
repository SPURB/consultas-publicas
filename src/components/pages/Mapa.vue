<template>
	<div class="Mapa">
		<div id="map"></div>
		<p>Mapa 2. Perímetro Expandido</p>
		<!-- <ul class="legenda">
			<li class="adesao"><div></div> Perímetro de adesão</li>
			<li class="expandido"><div></div> Perímetro expandido</li>
		</ul> -->
	</div>
</template>

<script>
export default{
	name:'Mapa',
	data(){
		return {
		}
	},
	computed:{
		mapLayers(){
			let layers = [
				new ol.layer.Tile({
					source: new ol.source.BingMaps({
						imagerySet: 'AerialWithLabels', 
						culture: 'pt-BR',
						key: 'efIeX8pQ5PTC2IcEjuVT~s7zLBU5z6I20qWhPhkAy3w~AlgB9eABTaOsOC8LVDJEQhyb4ik0B0mWBpIfDgrVwNYVqgfnxOsXFN3_8XKZlP1d'
					})
				}),
				new ol.layer.Vector({
					style: new ol.style.Style({
						stroke: new ol.style.Stroke({
							color: 'rgba(208, 100, 35, 1)',
							width: 1
						}),
						fill: new ol.style.Fill({
							color: 'rgba(255, 148, 0, .4196078431372549)',
						})
					}),
					source: new ol.source.Vector({
						url: this.attr.layersPaths[0],
						format: new ol.format.KML({
							extractStyles: false,
						})
					})
				}),
				new ol.layer.Vector({
					style: new ol.style.Style({
						stroke: new ol.style.Stroke({
							color: 'rgba(255, 121, 0, 1)',
							width: 3,
							lineDash: [1,5]
						}),
					}),
					source: new ol.source.Vector({
						url: this.attr.layersPaths[1],
						format: new ol.format.KML({
							extractStyles: false,
						})
					})
				})
			]
			return layers
		},
		mapView(){
			return new ol.View({
				center: this.attr.center,
				zoom: this.attr.zoom
			})
		}
	},
	props:[ 'attr' ], 
	mounted(){
		this.createMap();
		this.mapView.setMinZoom(this.attr.zoom)
	},
	methods:{
		createMap(){
			new ol.Map({
				layers: this.mapLayers,
				target: 'map',
				view: this.mapView
			})
		},
	}
}	
</script>
<style lang="scss" scoped>
#map{
	width: 80vw;
	margin: auto 
}
p, ul{
	font-style: italic;
	text-align: center;
	padding: .5rem 0
}
// ul li{
// 	font-style: normal;
// }
// li.adesao {
// 	div{
// 		max-width: 1.5em;
// 		height: .5em;
// 		background-color: yellow;
// 		border: dashed green 2px
// 	}
// }
// li.expandido {
// 	div{
// 		max-width: 1.5em;
// 		height: .5em;
// 		background-color: green;
// 		border: dashed blue 2px
// 	}
// }

</style>