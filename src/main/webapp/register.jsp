<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Soho - Chat and Discussion Platform</title>

    <!-- Favicon -->
    <link rel="icon" href="/media/img/favicon.png" type="image/png">

    <!-- Soho css -->
    <link rel="stylesheet" href="/css/soho.min.css">
</head>
<body class="form-membership">

<div class="form-wrapper">

    <!-- logo -->
    <div class="logo">
        <svg  version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
              width="50.004px" height="50.003px" viewBox="0 0 33.004 33.003" style="enable-background:new 0 0 33.004 33.003;"
              xml:space="preserve">
            <g>
                <path d="M4.393,4.788c-5.857,5.857-5.858,15.354,0,21.213c4.875,4.875,12.271,5.688,17.994,2.447l10.617,4.161l-4.857-9.998
                    c3.133-5.697,2.289-12.996-2.539-17.824C19.748-1.072,10.25-1.07,4.393,4.788z M25.317,22.149l0.261,0.512l1.092,2.142l0.006,0.01
                    l1.717,3.536l-3.748-1.47l-0.037-0.015l-2.352-0.883l-0.582-0.219c-4.773,3.076-11.221,2.526-15.394-1.646
                    C1.469,19.305,1.469,11.481,6.277,6.672c4.81-4.809,12.634-4.809,17.443,0.001C27.919,10.872,28.451,17.368,25.317,22.149z"/>
                <g>
                    <circle cx="9.835" cy="16.043" r="1.833"/>
                    <circle cx="15.502" cy="16.043" r="1.833"/>
                    <circle cx="21.168" cy="16.043" r="1.833"/>
                </g>
            </g>
            <g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
        </svg>
    </div>
    <!-- ./ logo -->

    <h5>创建一个账户</h5>

    <!-- form -->
    <form >
        <div class="form-group input-group-lg">
            <input id="uid" name="uid" type="text" class="form-control" placeholder="账号请数字" required autofocus>
        </div>
        <div class="form-group input-group-lg">
            <input  id="un" name="un" type="text" class="form-control" placeholder="用户名" required>
        </div>
        <div class="form-group input-group-lg">
            <input id="upwd" name="upwd" type="password" class="form-control" placeholder="密码" required>
        </div>
        <input type="button" class="btn btn-primary btn-lg btn-block" id="register" value="Register">
        <hr>
        <p class="text-muted">Already have an account?</p>
        <a href="./index.jsp" class="btn btn-outline-light btn-sm">Sign in!</a>
    </form>
    <!-- ./ form -->

</div>

<!-- JQuery -->
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(window).ready(function () {
        $("#register").click(function () {
            var uid=$("#uid").val();
            var uname=$("#un").val();
            var upwd=$("#upwd").val();
            if(uid!=null && upwd!=null && uname!=null){
                $.post(
                    "/save",
                    {uid:uid,uname:uname,upwd:upwd},
                    function (data) {
                        if(data=="1"){
                            alert("注册成功");
                        }else {
                            alert("账号已存在，请重新注册");
                        }

                    }

                )
            }

        });
    })
</script>
<!-- Popper.js -->
<script src="./js/popper.min.js"></script>

<!-- Bootstrap -->
<script src="./js/bootstrap/bootstrap.min.js"></script>

<!-- Soho -->
<script src="/js/soho.min.js"></script>
</body>
</html>