<template>
	<div id="app">
	    <router-view name="header"></router-view>
    	<router-view name="main"></router-view>
    	<router-view name="footer"></router-view>
	</div>
</template>

<script>
export default {
	name: 'App',
  	// mounted(){ this.$store.dispatch('LOAD_COMMENTS_LIST'); },//load all comments
}
</script>

<style lang="scss">
@import "assets/main.scss";
</style>