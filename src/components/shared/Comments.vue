<template>
    <div class="comments">
        <div class="container">
            <div class="row">
                <div class="input-field col s12 l6">
                    <input 
                        name="name" 
                        v-validate="'required|alpha'" 
                        :class="{'input': true, 'is-danger': errors.has('name') }" 
                        type="text">
                    <!-- <i v-show="errors.has('name')" class="fa fa-warning"></i>
                    <span v-show="errors.has('name')" class="help is-danger">{{ errors.first('name') }}</span> -->
                    <label for="nome">Nome / organização</label>
                </div>
                <div class="input-field col s12 l6">
                    <input 
                        name="email" 
                        v-validate="'required|email'" 
                        :class="{'input': true, 'is-danger': errors.has('email') }" 
                        type="email"
                        >
                    <!-- <i v-show="errors.has('email')" class="fa fa-warning"></i>
                    <span v-show="errors.has('email')" class="help is-danger">{{ errors.first('email') }}</span> -->
                    <label for="email">Email</label>
                </div>
            </div>
            <div class="row textarea">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea name="content" v-validate="'required:true'" id="comment" class="materialize-textarea" v-model='content' ></textarea>
                            <label for="comment">Comente aqui</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row send">
                <div class="col s12"> 
                    <a class="btn-large" @click="checkName">COMENTAR</a>
                </div>
            </div>

            <Commentsloader :commentid="commentid"></Commentsloader>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
import Commentsloader from '@/components/shared/Commentsloader';

export default {
    name: 'comments',

    props:['commentid'],
    data(){
        return{
            content: '',
        }
    },
    methods:{
        checkName(){
            if(!this.fields.name.valid && !this.fields.email.valid){
                alert('Preencha corretamente os campos Nome e Email')
            }
            else if (!this.fields.name.valid) {
                alert('Corrija nome')
            }
            else if(!this.fields.email.valid){
                alert('Corrija email')
            }
            else if(!this.fields.content.valid){
                alert("Inclua um comentário")
            }
            else{
                this.send();
            }
        },
        send(){
            // alert("sucesso");
            // const url = 'http://localhost/consultas-publicas-backend/testeapi.php/members/teste';
            // const app = this;

            // axios.post(url,{
            //     'name': this,
            //     'email':'email@email.com', 
            //     'content':'content',
            //     'commentdate':'2018-03-13 11:58:54',
            //     'public': '1',
            //     'postid':'10',
            //     'trash': '0',
            //     'commentid': '10',
            //     'commentcontext': 'commentcontext',
            //     'idConsulta': '2'
            // })
        }
    },
    components:{Commentsloader}
};


        // postCreateMember(){
        //     const url = this.apiUrlBasename +'/members';
        //     const app = this;

        //     axios.post(url, {
        //         'name': 'nome',
        //         'email':'email@email.com', 
        //         'content':'content',
        //         'commentdate':'2018-03-13 11:58:54',
        //         'public': '1',
        //         'postid':'10',
        //         'trash': '0',
        //         'commentid': '10',
        //         'commentcontext': 'commentcontext',
        //         'idConsulta': '2'
        //     })
        //     .then(function (response) {
        //         app.respostaApi = response.data;
        //         console.log(response);
        //     })
        //     .catch(function (error) {
        //         app.respostaApi = error.data;
        //         console.log(error);
        //     });
        // },

</script>

<style lang="scss" scoped>
.comments{
    background-color: #F2F2F2;
    .container{ padding-top:1em }
    .row{  margin-bottom: 0; }
    .row.textarea{
        textarea{
            background-color: rgb(255, 255, 255);
            border: solid 1px rgba(79, 79, 79, 0.5);
            border-radius: 5px;
            min-height: 97px;
            padding: 1em;
            margin-top: .35em
        }
        textarea:focus{ box-shadow: none }
        // textarea:hover{ cursor:pointer; }
        label, label.active{ left: 1.5rem }
        label.active{ left: .75rem; }
    }
    .row.send{
        a.btn-large{
            background-color: rgba(79,79,79, .5);
            margin-bottom: 2em;
            width: 100%;
            transition: background-color ease .35s
        }
         a.btn-large:hover{
            background-color: rgba(79,79,79, 1);
        }
    }
}
</style>