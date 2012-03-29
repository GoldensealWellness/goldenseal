var popupStatus = 0;
var currentDiv = "";

function loadPopup(divName){
  if(popupStatus==0){
    $("#pop-back").css({
      "opacity":"0.7"
    });
  currentDiv = "#" + divName + "-div"
  $("#pop-back").fadeIn("slow");
  $(currentDiv).fadeIn("slow");
  popupStatus = 1;
  }
}

function disablePopup(){
  if (popupStatus==1){
    $("#pop-back").fadeOut("slow");
    $(currentDiv).fadeOut("slow");
    popupStatus = 0;
    currentDiv = "";
  }
}

function centerPopup(){
  var windowWidth = document.documentElement.clientWidth;
  var windowHeight = document.documentElement.clientHeight;
  var popupHeight = $(currentDiv).height();
  var popupWidth = $(currentDiv).width();
  //center
  
  $(currentDiv).css({
    //"position":"absolute",
    "top": windowHeight/2-popupHeight/2,  
    "left": windowWidth/2-popupWidth/2  
  })
}

$(document).ready(function(){
  $(".pop-button").click(function(event){
    buttonID = event.target.id.replace('-button', '');
    //var buttonID = this.attr("id").val().replace('-button', '');
    loadPopup(buttonID);
    centerPopup();
  });
  
  $(".popupContactClose").click(function(){
    disablePopup();
  });
  
  $("#pop-back").click(function(){
    disablePopup();
  })
});  
