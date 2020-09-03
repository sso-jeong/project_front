$(function () {
    $("#btn").click(function () {
        if ($("#userid").val() == '') {
            alert("아이디를 입력해 주세요.");
            $("#userid").focus();
            $("#userid").val("");
            return false;
        } else if ($("#userid").val().length < 8) {
            alert("아이디를 8자리 이상 입력하세요.");
            $("#userid").focus();
            $("#userid").val("");
            return false;
        } else if ($("#password").val() == '') {
            alert("비밀번호를 입력하세요.");
            $("#password").focus();
            $("#password").val("");
            return false;
        } else if ($("#userid").val() == $("#password").val()) {
            alert("아이디와 비밀번호는 달라야 합니다.");
            $("#userid").focus();
            $("#userid").val("");
            $("#password").val("");
            return false;
        }

    });
});