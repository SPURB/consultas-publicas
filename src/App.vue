<template>
	<div id="app">
		<router-view name="apoio"></router-view>
		<router-view name="header"></router-view>
		<router-view name="main"></router-view>
		<router-view name="footer"></router-view>
	</div>
</template>

<script>
export default {
	name: 'App'
}
</script>

<style lang="scss">
@import "assets/main.scss";
</style>