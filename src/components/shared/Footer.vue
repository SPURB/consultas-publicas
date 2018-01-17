<template>
  <div class="footer">
        <div class="row">
            <div class="col s6 offset-s6">
                 <router-link to="/capitulo_2" class="waves-effect waves-light btn-large">Próximo</router-link>
            </div>
            <p>loaded id: {{ id }}</p>
        </div>
  </div>
</template>

<script>
export default {
  name: 'Footer',
  data () {
    return {
        id: this.$route.params.id
    }
  }
}
</script>

<style lang="scss" scoped>
    .btn-large{
        float: right
    }
</style>