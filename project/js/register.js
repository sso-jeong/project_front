$(function () {

    $('#cfm-password').keyup(function () {

        var pwd = $("#password").val();
        var cpwd = $("#cfm-password").val();

        if (pwd != null && pwd != '') {
            if (pwd == cpwd) {
                $("#pwdcheck").addClass("green");
                $('#btn').removeClass("disen");
                $('#btn').prop('disabled', false);

            } else {
                $("#pwdcheck").removeClass("green");
                $("#pwdcheck").addClass("red");
                $('#btn').addClass("disen");
                $('#btn').prop('disabled', true);

            }
        }
    });

    $('#password').keyup(function () {

        var pwd = $("#password").val();
        var cpwd = $("#cfm-password").val();

        if (pwd != null && pwd != '') {
            if (pwd == cpwd) {
                $("#pwdcheck").addClass("green");
                $('#btn').removeClass("disen");
                $('#btn').attr({
                    "disabled": "false"
                });

            } else {
                $("#pwdcheck").removeClass("green");
                $("#pwdcheck").addClass("red");
                $('#btn').addClass("disen");
                $('#btn').attr({
                    "disabled": "disabled"
                });

            }
        }
    });


    $(".pos #phone").keyup(function () {
        var RegExp = /[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi;//정규식 구문
        var obj = $("#phone").val();
        if (RegExp.test(obj)) {
            alert("특수문자는 입력하실 수 없습니다.");
            $(".pos #phone").val(obj.slice(0, -1));
        }

    });

    $('#btn').click(function () {
        var id = $("#userid").val;
        var name = $("#name").val;
        var pwd = $("#password").val;
        var cnt = 0;

        alert(id + name + pwd);

        // if (id == '' || id == null) {
        //     alert("사번을 입력해주세요.");
        //     return false;
        //test 지울것

        // }
        // else {
        //     cnt++;
        // }

        // if (name == '' || name == null) {
        //     alert("사번을 입력해주세요.");
        //     return false;
        // } else {
        //     cnt++;
        // }

        // if (pwd == '' || pwd == null) {
        //     alert("사번을 입력해주세요.");
        //     return false;
        // } else {
        //     cnt++;
        // }

        // if (cnt = 3) {
        //     location.href = "./SFA_login.html";
        // }

    });
});




