$(document).ready(function(){
  $('#keywords').autocomplete({
    //source: $('#keywords').data('autocomplete-source'),
    source: function(req,res) {
      $.ajax({
        url:'/search',
        dataType: 'json',
        data :{
          term : req.term,
          taxon_id : $('#taxon').val() 
        },
        success : function(data) {
          res(data);
        }
      });
    },
    minLength: 2,
    delay : 300
  });
});
