<template>
  <div id="app">
    <router-view name="header"></router-view>
    <router-view name="progressbar"></router-view>
    <router-view name="default"></router-view>
    <router-view name="footer"></router-view>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style lang="scss">
.chapter-title{
  font-size:36px 
}
img {
    max-width: 100%;
    display: block;
    margin: 0 auto;
}

</style>