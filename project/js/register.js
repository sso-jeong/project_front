$(function () {

    $('#cfm-password').keyup(function () {

        var pwd = $("#password").val();
        var cpwd = $("input:focus").val();

        if (pwd == cpwd) {
            $(".btn").attr({
                "color":"red"
            });
            alert("성공");
        } else {
            $(".btn").attr({
                "color":"#fff"
            });
            alert("실패");
        }
    });

    

});