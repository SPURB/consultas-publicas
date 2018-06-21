<template>
	<div class="Mapa">
	<div id="mapa"></div>
	</div>
</template>

<script>
// import ol from 'ol'
import layer from 'ol/layer/layer'
// import getLayerStatesArray 
// import olsource from 'ol/source/source'
// import olcontrol from 'ol/control'
import Map from 'ol/map'
import View from 'ol/view'
import Osm from 'ol/source/osm'
import Tile from 'ol/source/tile'
// import espg3857 from 'ol/proj/espg3857'

export default{
	name:'Mapa',
	props:[ 'attr' ], 
	mounted(){
      var map = new Map({
        layers: [
          new Tile({
            source: new Osm()
          })
        ],
        target: '#mapa',
        view: new View({
          center: [0, 0],
          zoom: 2
        })
      });
      return map
	}
}	
</script>
<style lang="scss" scoped>
#mapa {
	min-height: 500px;
	margin-top: 1em;
	background-color: grey
}

</style>