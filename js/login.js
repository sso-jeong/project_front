$(function login() {

    $("#btn").click(function () {
        if ($("#userid").val() == '') {
            alert("사번을 입력해 주세요.");
            $("#userid").focus();
            $("#userid").val("");
            return false;
        } else if ($("#password").val() == '') {
            alert("비밀번호를 입력하세요.");
            $("#password").focus();
            $("#password").val("");
            return false;
        } else {
            location.href = "./SFA_admin.html";
        }

        // else if ($("#userid").val().length < 8) {
        //     alert("아이디를 8자리 이상 입력하세요.");
        //     $("#userid").focus();
        //     $("#userid").val("");
        //     return false;
        // }
    });

    $("#btn2").click(function () {
        if ($("#userid").val() == '') {
            alert("사번을 입력해 주세요.");
            $("#userid").focus();
            $("#userid").val("");
            return false;

        } else if ($("#email").val() == '') {
            alert("이메일을 입력하세요.");
            $("#email").focus();
            $("#email").val("");
            return false;

        }

    });


});