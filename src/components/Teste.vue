<template>


<button @click="postTest()">asdas</button>

</template>

<script>
import axios from 'axios';

export default {
  name: 'Teste',
  data () {
    return {
      msg: 'Teste',
      placeholder:''
    }
  }, 
  methods: {
    postTest: function(){
        axios.post('http://localhost:8080/static/teste.php', {
            firstName: 'Fred',
            lastName: 'Flintstone'
        })
        .then(function (response) {
           console.log(response);
         })
        .catch(function (error) {
            console.log(error);
        });
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped>
</style>