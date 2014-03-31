$(document).foundation();

//Initial load of page
$(document).ready(sizeContent);

//Every resize of window
$(window).resize(sizeContent);

//Dynamically assign height
function sizeContent() {
    var newHeightSize =  $("html").height() + "px";
    $(".hCtrl").css("height", newHeightSize);
}