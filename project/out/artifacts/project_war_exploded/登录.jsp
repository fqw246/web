<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/19
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>登录</title>
  <style>
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
</head>
<body>
<%
  int i=Integer.parseInt(request.getParameter("i"));
  if(i==1){
%><script language="JavaScript">alert("账号或密码错误")</script><%}
  if(i==2){
%><script language="JavaScript">alert("没有这个账号")</script><%}%>

<div id="user2">
<div id="user">登录</div>
<form action="userlog.jsp" method="post">
  <table align="center">
    <tr>
      <td>输入邮箱</td>
      <td><input type="email" id="email" name="email" value="" required></td>
    </tr>
    <tr>
      <td>输入密码</td>
      <td><input type="password" id="pd" name="pd" value="" required></td>
    </tr>
    <tr>
      <td></td>
      <td>
        <button type="submit">登录</button>
      </td>
    </tr>
  </table>
</form>
  <div style="height: 20px"></div>
  <div align="center"><a href="注册.jsp?i=0">注册账号</a></div>
</div>
</body>
</html>
