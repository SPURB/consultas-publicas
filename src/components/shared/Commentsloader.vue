<template>
    <div class="Commentsloader row">
        <div v-for="comment in comments">
            <div class="comment col s10 offset-s1">
                <h5 class="member-info">{{  comment.name }} em <span>{{ comment.commentdate }}</span> disse:</h5>
                <p> {{comment.content}} </p>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
const requestConsultas = axios.create({
  baseURL: `http://localhost/consultas-publicas-backend/testeapi.php/`,
})
const consultaName = 'teste';

export default {
    props:['commentid'],
    data(){
        return {
            // para testes//////////////////////////////
            // commentid: {  // deve vir de props///////
            //     id: 10, // apagaar //////////////////
            //     context: 'Consulta'//////////////////
            // },
            msg: 'Commentsloader',
            comments: [], 
        }
    },
    mounted(){
        this.loadThisComments();
    },
    methods:{
        loadThisComments(){
            let app = this;

            requestConsultas.get(consultaName)
            .then(response => {
                // this.comments = response.data;
                let comms = response.data
                comms.filter(function(index) {
                    if (index.postid == app.commentid.id){
                        app.comments.push(index)
                    }
                });
            })
        }
    },
}


</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.comment {
    .member-info{
        font-size: 1em;
        font-weight: 500;
        span { color: $primary-dark-grey;}
    }
    p {  margin-top: 0; }
}

@media #{$extrasmall-and-down} {
    .row{ margin-bottom: 1.25rem}
}
    
</style>