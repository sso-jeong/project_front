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

    // $('.price').keyup(function() {
    //     var sur = $('.price').val() / 10; 
    //     if($('.surtax')){
    //         $('.surtax').val(sur);
    //     }
    // });

    // 데이터 클릭시 수정,삭제 버튼 
    $('.list tr').click(function () {
        $('.up').css('display', 'inline-block');
        $('.del').css('display', 'inline-block');
        $('.new').css('display', 'inline-block');
        $('.insert').css('display', 'none');
        $('.reset').css('display', 'none');
    });

    $('.new').click(function() {
        $('.up').css('display', 'none');
        $('.del').css('display', 'none');
        $('.new').css('display', 'none');
        $('.insert').css('display', 'inline-block');
        $('.reset').css('display', 'inline-block');
    });


    // 재고관리 이중테이블
    $('.stock-left table').click(function () {
        $('.stock-left table').toggleClass('on');

        if ($(this).hasClass("on")) {
            $('.stock-left').css('width', '65%');
            $('.stock-right').css('display', 'block');

        } else {
            $('.stock-left').css('width', '100%');
            $('.stock-right').css('display', 'none');
        }
    });

    $('.stock-left .list tr').click(function () {
        $(this).toggleClass('on');

        if ($(this).hasClass("on")) {
            $(this).css('background-color', 'rgba(219, 228, 232, 0.8)');
        } else {
            $(this).css('background-color', '');
        }

    });
    // 근태관리 이중테이블

    $(".tna-list tr").click(function () {

        var str = "";
        var tdArr = new Array();

        var tr = $(this);
        var td = tr.children();

        td.each(function (i) {
            tdArr.push(td.eq(i).text());
        });

        var type = td.eq(9).text();

        if (type != '내근') {
            $('.tna-left table .tna').toggleClass('on');

            if ($(this).children().hasClass("on")) {
                $('.tna-left').css('width', '65%');
                $('.tna-right').css('display', 'block');
                $(this).css('background-color', 'rgba(219, 228, 232, 0.8)');

            } else {
                $('.tna-left').css('width', '100%');
                $('.tna-right').css('display', 'none');
                $(this).css('background-color', '');
            }
        } else {
            alert("내근 외 기록이 없습니다.");
        }

    });

    //상단메뉴바 흐림 효과 

    $('.menuLink').mouseover(function () {
        $(this).addClass("on");
        $('.topMenuLi>a').not('a.on').css('color', 'rgba(242,247,255,.5)');
    });


    $('.menuLink').mouseleave(function () {
        $(this).removeClass("on");
        $('.menuLink').css('color', '#fff');
    });

    $('.subMenu').mouseover(function () {
        $(this).parent('li').children('a').addClass("on");
        $('.topMenuLi>a').not('a.on').css('color', 'rgba(242,247,255,.5)');
    });

    $('.subMenu').mouseleave(function () {
        $(this).parent('li').children('a').removeClass("on");
        $('.menuLink').css('color', '#fff');
    });

    //첨부파일
    $('.signsave').click(function () {
        var absnm = $('.file').val();
        if (absnm != '') {
            var filePathSplit = absnm.split('\\');
            var filePathLength = filePathSplit.length;
            var filenm = filePathSplit[filePathLength - 1]
            $('.sign').attr('src', filenm);
        }

    });

});

//select box 값 변경 이벤트
function change() {
    //부서코드 자동
    var dptcd = $('.dptnm').val();
    $('.dptcd').val(dptcd);

    //휴가명 자동
    var nm = $('.tna option:selected').text();
    $('#vacnm').val(nm);

    //입고일자, 출고일자 자동선택.
    var type = $('.type').val();

    if ((type) == "생산입고" || type == "반품입고") {
        $('.outdt').attr('disabled', true);
        $('.indt').attr('disabled', false);
    }
    else if (type == "판매출고") {
        $('.indt').attr('disabled', true);
        $('.outdt').attr('disabled', false);
    }
}

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