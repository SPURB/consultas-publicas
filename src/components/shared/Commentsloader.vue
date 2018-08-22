<template>
    <div class="Commentsloader row" :class="{ have_comments:comments }">
        <div v-for="comment in comments">
            <div v-if="comments" class="comment">
                <h5 class="member-info">{{  comment.name }} em <span>{{ filterDate(comment.commentdate) }} </span> disse:</h5>
                <p> {{comment.content}} 
                <span class="topico">Capítulo comentado: {{ comment.commentcontext }}.</span>
                </p>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
export default {
    props:['commentid'],
    data(){
        return {
            comments: false
        }
    },
    computed:{
        apiPathMembersSearch() {
            if(location.port == '8080' || location.port == '8082' || location.port == '7080'){
                return 'http://spurbsp163:7080/apiconsultas/members/search/'
            }
            else{
                return 'http://minuta.gestaourbana.prefeitura.sp.gov.br/apiconsultas/members/search/' 
            }
        }
    },
    mounted(){
        this.loadThisComments();
    },
    methods:{
        loadThisComments(){
            let app = this;
            axios.post(app.apiPathMembersSearch,{
                "idConsulta":"=1",
                "public":"=1",
            })
            .then(function(response) {
                app.comments = response.data
            })
            .catch(function (error){
                console.log(error)
            })
        },
        filterDate(dataString){
            return dataString.slice(0,10)
        }
    }
}
</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.Commentsloader.have_comments{
    border-top: solid 5px $primary-dark-grey;
}

.comment {
    border-bottom: solid 1px $primary-dark-grey;
    padding: 1.15em 0 1.5em;
    p{
        span{
            font-size: .75em
        }
    }
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