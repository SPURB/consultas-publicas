<template>
  <div class="progressbar">
    <span>{{ msg }}</span>
  </div>
</template>

<script>
import { eventBus } from '../../main';

export default {
  name: 'Progressbar',
  data () {
    return {
      msg: 'Progressbar', 
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped>
</style>