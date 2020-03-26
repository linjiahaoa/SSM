<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">
        var username="${sessionScope.username}";
        var ws;//一个ws对象就是一个管道
        var target="ws://localhost:8080/web_war_exploded/chatSocket?username="+username;
        window.onload=function(){
            //登录进入ChatRoom就打开socket通道

            if ('WebSocket' in window) {
                ws = new WebSocket(target);
            } else if ('MozWebSocket' in window) {
                ws = new MozWebSocket(target);
            } else {
                alert('WebSocket is not supported by this browser.');
                return;
            }


            ws.onmessage=function(event){
                eval("var msg="+event.data+";");
                if(undefined!=msg.welcome)
                    $("#content").append(msg.welcome+"<br/>");



                if(undefined!=msg.usernames){
                    $("#userList").html("");
                    $(msg.usernames).each(
                        function(){
                            $("#userList").append("<input  type=checkbox  value='"+this+"'/>"
                                + this + "<br/>");
                        });
                }
                if(undefined!=content){
                    $("#content").append(msg.content+"<br/>");
                    console.info(msg);
                }
            }
        }

        function subSend() {

            //判断是否选中
            var ss=$("#userList :checked");
            var val = $("#msg").val();
            console.info(ss.size());
            //如果未选中
            var obj=null;
            if(ss.size()==0){
                var obj={
                    msg:val,
                    type:1 //1广播 2单聊
                }
            }else {
                var to = $("#userList :checked").val();
                obj={
                    to:to,
                    msg:val,
                    type:2 //1广播 2单聊
                }


            }



            var str = JSON.stringify(obj);
            /* $("msg").val("");
            var obj={
                    to:to,
                    msg:val,
                    type:1 //1广播 2单聊
            } */
            ws.send(str);
        }
    </script>
</head>
<body>
<div id="container" style="border:1px solid black;width:400px;height:400px;float:left;">
    <div id="content" style="height:350px;"></div>
</div>
<div style="border-top:1px solid black;width:400px;height:50px;">
    <input id="msg" /><button onclick="subSend();">send</button>
</div>

<div id="userList" style="border:1px solid black;width:400px;height:400px;float:left;">
</div>
</body>
</html>
