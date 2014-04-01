$(document).foundation();

//Initial load of page
$(document).ready(sizeContent);

//Every resize of window
$(window).resize(sizeContent);

//Dynamically assign height
function sizeContent() {
    var newHeightSize =  $("html").height() + "px";
    $(".hCtrl").css("height", newHeightSize);

    var divHeightSize = ($("html").height() + 15) + "px";
    $(".hCtrlAdj").css("height", divHeightSize);
}

$(document).ready(function(){
    $('a[href^="#"]').on('click',function (e) {
        e.preventDefault();

        var target = this.hash,
        $target = $(target);

        $('html, body').stop().animate({
            'scrollTop': $target.offset().top
        }, 900, 'swing', function () {
            window.location.hash = target;
        });
    });
});

$(document).ready(function(){
    $(".smallimage").hide();
    var topOfShop = $("#shop").offset().top;
    $(window).scroll(function (){
        if ($(window).scrollTop() > topOfShop) {
            $(".smallimage").show();
        } else {
            $(".smallimage").hide();
        }
    });
});

$(window).scroll(function(){
    $('#slider').leanSlider();
});