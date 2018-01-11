var app = new Vue({
    el: '#comments',
    data:{
        comments: [],
    },
 
    mounted: function(){
        this.getAllcomments();
    },
 
    methods:{
        getAllcomments: function(){
            axios.get("http://spurbcp13343/piu-terminais/api/")
                .then(function(response){
                    app.comments = response.data.comments;
                });
        }
    }
});