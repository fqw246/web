<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/18
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
    <title>购物车</title>
    <%! String url,sql; %>
    <% int i=0;%>
    <%
        testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
        sql="select * from buycar";
        ResultSet rs=testbean.executeQuery1(sql);
    %>
</head>
<body>
<%
        String action=request.getParameter("action");
        if(action.equals("clear"))
        {
            sql="delete from buycar";
            testbean.executeUpdate2(sql);
        }
        else if(action.equals("delete"))
        {
            int j=Integer.parseInt(request.getParameter("id"));
            sql="delete from buycar where id="+j;
            testbean.executeUpdate2(sql);
        }
%>
<div style="height: 200px;"></div>
<div align="center">删除成功，点击<a href="buycar.jsp">返回</a>即可返回购物车</div>
<div style="height: 50px;"></div>
<div align="center"><a href="网上书城.jsp">返回主页</a></div>
</body>
</html>
