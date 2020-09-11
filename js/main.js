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

    $('.menuLink').mouseover(function(){
        $(this).addClass("on");
        $('.topMenuLi>a').not('a.on').css('color','rgba(242,247,255,.5)');
        
    });


    $('.menuLink').mouseleave(function(){
        $(this).removeClass("on");
        $('.menuLink').css('color','#fff');
    });


});

// function btnIcon() {
//     document.getElementById("adminDropdown").classList.toggle("show");
// }

// window.onclick = function (event) {
//     if (!event.target.matches('.dropbtn')) {

//         var dropdowns = document.getElementsByClassName("dropdown-content");
//         var i;
//         for (i = 0; i < dropdowns.length; i++) {
//             var openDropdown = dropdowns[i];
//             if (openDropdown.classList.contains('show')) {
//                 openDropdown.classList.remove('show');
//             }
//         }
//     }
// }