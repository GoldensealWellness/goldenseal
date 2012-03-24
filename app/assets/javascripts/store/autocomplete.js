$(document).ready(function(){
  $('#keywords').autocomplete({
    source: $('#keywords').data('autocomplete-source'),
    minLength: 2
  });
});
