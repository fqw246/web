<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/18
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册新用户</title>
</head>
<style type="text/css">
    #user2 {
        background:rgba(135,206,235,0.2);
        text-align: center;
        margin: auto;
        margin-top: 150px;
        width: 50%;
        border-radius:10px;
    }
    #user{
        font-family:微软雅黑;
        font-size:40px;
        text-align:center;
        margin-top:150px;
    }
</style>
<script  language="JavaScript">
    function set_email(emailID) {
        var email1 = ['@qq.com','@163.com'];
        if (emailID=="") {
            document.getElementById("in_email").innerHTML = "<font color='red' size='3px'>邮箱不为空</font>";
        }
    }
    function set_pd(pd) {
        var pd = document.getElementById("pd").value;
        if (pd == "") {
            document.getElementById("in_pd").innerHTML = "<font color='red' size='3px'>密码不为空</font>";
        }
        else if (pd.length >14 || pd.length < 6) {
            document.getElementById("in_pd").innerHTML = "<font color='red' size='3px'>密码应为6-14位</font>";
            alert("密码由6-14位字符组成");
        }
        else {
            document.getElementById("in_pd").innerHTML = "<font color='green' size='3px'>密码格式正确</font>";
        }
    }

    function same_pd(pd2)
    {
        var pd = document.getElementById("pd").value;
        if(pd2==""){
            document.getElementById("in_pd2").innerHTML = "<font color='red' size='3px'>密码不为空</font>";
        }
        else if(pd==pd2){
            document.getElementById("in_pd2").innerHTML = "<font color='green' size='3px'>两次输入密码相同</font>";
        }
        else{
            document.getElementById("in_pd2").innerHTML = "<font color='red' size='3px'>两次输入密码不一致</font>";
        }
    }
</script>
<body>
<%
    int i=Integer.parseInt(request.getParameter("i"));
    if(i==1){
%>
    <script language="JavaScript">alert("账号注册失败")</script>
<%}%>
<div id="user2">
    <div id="user">注册</div>
    <form action="usercreate.jsp" method="post">
        <table align="center">
            <tr>
                <td>输入昵称</td>
                <td><input type="text" id="Name" name="Name" value="" required></td>
                <td id="in_name"></td>
            </tr>
            <tr>
                <td>输入邮箱</td>
                <td><input type="email" id="email" name="email" value="" onblur="set_email(this.value)" required></td>
                <td id="in_email"></td>
            </tr>
            <tr>
                <td>输入密码</td>
                <td><input type="password" id="pd" name="pd" value="" onblur="set_pd(this.value)" required></td>
                <td id="in_pd"></td>
            </tr>
            <tr>
                <td>请再次输入</td>
                <td><input type="password" id="pd2" name="pd2" onblur="same_pd(this.value)" required></td>
                <td id="in_pd2"></td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                    <input type="radio" name="sexy" value="man" required> 男
                    <input type="radio" name="sexy" value="woman" required> 女
                </td>
            </tr>
            <tr>
                <td>密保问题</td>
                <td><input type="text" id="q" name="q" required /></td>
            </tr>
            <tr>
                <td>密保答案</td>
                <td><input type="text" id="a" name="a" required /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">注册</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
