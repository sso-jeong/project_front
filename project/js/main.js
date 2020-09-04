$(function () {
    var navTop = $("nav").offset().top;
    $(window).scroll(function () {
        if ($(window).scrollTop() > navTop) {
            $("nav").css({
                position: "fixed",
                top: "0px",
                left: "0px"

            });

        } else {
            $("nav").css({
                position: "static"
            });
        }
    });

});