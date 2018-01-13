var app = new Vue({
    el: '#comments',
    data:{
        comments: [],
        data_test: 'antes'
    },
 
    mounted: function(){
        this.getAllcomments();
    },
 
    methods:{
        getAllcomments: function(){
            var app = this;
            axios.get("http://localhost/piu-terminais/api/")
                .then(function(response){
                    // app.comments = response.data.comments;
                    app.comments = response.data.comments
                });
        },
        teste: function(){
            console.log(this.comments[0].comment_ID);
        }
    }
});