<template>
	<div class="comments">
        <div class="container">
    		<div class="row">
                <div class="input-field col s12 l6">
                    <input name="name" v-validate="'required|alpha'" data-vv-delay="500" :class="{'input': true, 'is-danger': errors.has('name') }" type="text">
<!--                     <i v-show="errors.has('name')" class="fa fa-warning"></i>
                    <span v-show="errors.has('name')" class="help is-danger">{{ errors.first('name') }}</span> -->
                    <label for="nome">Nome / organização</label>
                </div>
                <div class="input-field col s12 l6">
                    <input name="email" v-validate="'required|email'" data-vv-delay="1000" :class="{'input': true, 'is-danger': errors.has('email') }" type="email">
<!--                     <i v-show="errors.has('email')" class="fa fa-warning"></i>
                    <span v-show="errors.has('email')" class="help is-danger">{{ errors.first('email') }}</span> -->
                    <label for="email">Email</label>
                </div>
            </div>
            <div class="row textarea">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea id="comment" class="materialize-textarea" disabled></textarea>
                            <label for="comment">Comente aqui!</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row send">
                <div class="col s12"> 
                    <a class="btn-large disabled">COMENTAR</a>
                </div>
            </div>
        </div>
	</div>
</template>

<script>
export default {
  name: 'comments',
  watch:{
    errors(){
        console.log('error');
    }
  }
};

</script>

<style lang="scss" scoped>
.comments{
    .container{ padding-top:1em }
    background-color: #F2F2F2;
    .row{  margin-bottom: 0; }
    .row.textarea{
        textarea{
            background-color: rgba(255, 255, 255, 0.5);
            border: dashed 1px rgba(79, 79, 79, 0.5);
            border-radius: 5px;
            min-height: 97px;
            padding: 1em;
            margin-top: .35em
        }
        textarea:focus{ box-shadow: none }
        textarea:hover{ cursor:pointer; }
        label, label.active{ left: 1.5rem }
        label.active{ left: .75rem; }
    }
    .row.send{
        a{
            margin-bottom: 2em;
            width: 100%
        }
    }
}
</style>