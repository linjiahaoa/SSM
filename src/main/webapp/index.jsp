<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2020/2/20
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- Favicon -->
    <link rel="icon" href="/media/img/favicon.png" type="image/png">
    <!-- Soho css -->
    <link rel="stylesheet" href="/css/soho.min.css">
    <!-- Popper.js -->
    <script src="/js/popper.min.js" type=“text/javascript”></script>

    <!-- Bootstrap -->
    <script src="/js/bootstrap/bootstrap.min.js" type=“text/javascript”></script>

    <!-- Soho -->
    <script src="/js/soho.min.js" type=“text/javascript”></script>
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

    <h5 >登陆</h5>

    <!-- form -->
    <form >
        <div class="form-group input-group-lg">
            <input id="uid" name="uid" type="text" class="form-control" placeholder="用户名或者账号" required autofocus>
        </div>
        <div class="form-group input-group-lg">
            <input id="upwd" name="upwd" type="password" class="form-control" placeholder="密码" required>
        </div>
        <div class="form-group d-flex justify-content-between">
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" checked="" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">自动登陆</label>
            </div>
            <a href="./reset-password.jsp">忘记密码?</a>
        </div>
        <input value="Sign in" type="button" class="btn btn-primary btn-lg btn-block" id="login">
        <p class="text-muted">没有账号可以注册一个噢</p>
        <a href="./register.jsp" class="btn btn-outline-light btn-sm">注册</a>
    </form>
    <!-- ./ form -->
</div>
<script>
    $(window).ready(function () {
        $("#login").click(function () {
            var uid=$("#uid").val();
            var upwd=$("#upwd").val();
            if(uid!=null && upwd!=null){
                $.post(
                    "/login",
                    {uid:uid,upwd:upwd},
                    function (data) {
                        if(data=="1"){
                            alert("登陆成功");
                            $(window).attr('location','main.jsp');
                        }else {
                            alert("账号密码错误");
                        }

                    }

                )
            }

        });
    })
</script>


</body>
</html>

