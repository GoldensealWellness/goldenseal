$(document).ready(function(){
  $(function() {
	  var height = $("#sidebar").height();
		if (height > 400) {
			$("#content").css("min-height", height + 50 + 'px');
		}
  });
  
  $(function() {
    if ($('#sidebar').length == 0) {
      $("#content").css("margin-left", "auto");
    }
  });
  
  $(function() {
    if ($('#sidebar').length == 0) {
      var width = $("#wrapper").width();
      $("#content").css("margin-left", "auto");
    } else {
      var width = $("#content").width() + 40;
    };
    $("footer").css("max-width", width);
  });
});
