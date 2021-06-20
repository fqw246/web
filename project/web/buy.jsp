<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/18
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="java.sql.*" %>

<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购物车</title>
    <%! String url,sql; %>
    <%
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String pri=request.getParameter("value");
        testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
        sql="insert into buycar values("+id+",'"+name+"',"+pri+")";
        testbean.executeUpdate2(sql);
    %>
    <div style="height: 200px;"></div>
    <div align="center">添加成功，您可以点击<a href="网上书城.jsp">返回</a>返回主页</div>
    <div style="height: 50px;"></div>
    <div align="center">也可以点击<a href="buycar.jsp">这里</a>去往购物车</div>
</head>
<body>

</body>
</html>
