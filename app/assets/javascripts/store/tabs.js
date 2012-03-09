$(document).ready(function() {
  $(function(){
       $("#main-nav-bar a").each(function(){
               if ($(this).attr("href") == window.location.pathname){
                       $(this).parent().addClass("selected");
               }
       });
  });
});
