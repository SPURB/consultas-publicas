<template>
    <div class="comments">
        <div class="container">
            <div class="row">
                <div class="input-field col s12 l6">
                    <input 
                        name="name" 
                        v-validate="'required|alpha'" 
                        :class="{'input': true, 'is-danger': errors.has('name') }" 
                        type="text"
                        v-model='form_name'
                        >
                    <label for="nome">Nome / organização</label>
                </div>
                <div class="input-field col s12 l6">
                    <input 
                        name="email" 
                        v-validate="'required|email'" 
                        :class="{'input': true, 'is-danger': errors.has('email') }" 
                        type="email"
                        v-model='form_email'
                        >
                    <label for="email">Email</label>
                </div>
            </div>
            <div class="row textarea">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea name="content" v-validate="'required:true'" id="comment" class="materialize-textarea" v-model='form_content' ></textarea>
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
            form_name:null,
            form_email: null,
            form_content: null
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
            const url = 'http://minuta.gestaourbana.prefeitura.sp.gov.br/apiconsultas/gestaourbanasp_consulta_piu_pacaembu';//gestaourbanasp_consulta_piu_pacaembu
            const app = this;

            axios.post(url,{
                'name': this.form_name,
                'email':this.form_email, 
                'content':this.form_content,
                'public': '0',
                'trash': '0',
                'postid':this.commentid.postid,
                'commentid': this.commentid.id,
                'commentcontext': this.commentid.context,
            })
            .then(function (response) {
                // console.log(response);
                let name = this.form_name;
                let content = this.form_content;

                alert("Obrigado " + name + " sua contribuição - " + content + " - Será enviada para moderação.")
            })
            .catch(function (error) {
                console.log(error);
            });
        }
    },
    components:{Commentsloader}
};

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