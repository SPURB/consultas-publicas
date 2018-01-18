<template>
  <div class="footer">
        <div class="row">
            <div class="col s6 offset-s6">
                 <router-link :to="nextItem()" class="waves-effect waves-light btn-large">Próximo</router-link>
                 <button @click="showMeRoute()">Route</button>
            </div>
        </div>
  </div>
</template>

<script>
export default {
  name: 'Footer',
  data(){
    return {

    }
  },
  methods:{
    nextItem: function (){
      return '/2'
    },
    showMeRoute: function(){
      console.log(this.$route)
    }
  }
}
</script>

<style lang="scss" scoped>
    .btn-large{
        float: right
    }
</style>