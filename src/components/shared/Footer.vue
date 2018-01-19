<template>
	<div class="footer">
				<div class="row">
						<div class="col s6" v-if="displaylefttbutton == true">
								 <router-link :to="previousItem()" class="waves-effect waves-light btn-large left">Anterior</router-link>
								 <!-- <button @click="commentEnable()">enable comments</button> -->
						</div>
						<div class="col s6" v-if="displayrightbutton == true">
								 <router-link :to="nextItem()" class="waves-effect waves-light btn-large right">Próximo</router-link>
								 <!-- <button @click="commentEnable()">enable comments</button> -->
						</div>
				</div>

	</div>
</template>

<script>
export default {
	name: 'Footer',
	data(){
		return {
			displayrightbutton: true,
			displaylefttbutton: true, 
			navitems: []
		}
	},
	computed: {
		postid: function(){
			return this.$route.meta.postid
		}, 
		numchapters: function(){
			return this.$store.state.numchapters
		}
	},
	methods:{
		previousItem: function (){
			return '/1'
		},
		nextItem: function (){
			return '/3'
		},
		commentEnable: function(){
			this.$store.state.comments = true;
		}
	}
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.right{
	float: right
}
.left{
	float: left
}

</style>