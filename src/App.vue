<template>
  <div id="app">
    <!-- <router-view name="vtour"></router-view> -->
    <router-view name="header"></router-view>
    <router-view name="progressbar"></router-view>
    <router-view name="default"></router-view>
    <router-view name="modalcomponent"></router-view>
    <router-view name="comments"></router-view>
    <router-view name="footernav"></router-view>
  </div>
</template>

<script>
export default {
  name: 'App',
  mounted(){ this.$store.dispatch('LOAD_COMMENTS_LIST'); },//load all comments
}
</script>

<style lang="scss">
@import "assets/vendor/materialize-src/sass/materialize.scss";
@import "assets/main.scss";
</style>