$(document).ready(function() {
			var height = $("#sidebar").height();
			if (height > 400) {
			  $("#content").css("min-height", height + 10 + 'px');
			}
});
