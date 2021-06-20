<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/18
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
</head>
<%! String url,sql; %>
<%! int i;%>
<body>
<table>
<%
    //调用getConn方法与数据库建立连接
    testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
    sql="select * from book";
    ResultSet rs=testbean.executeQuery1(sql);//查询数据库
    while(rs.next()){
%>
<tr>
     <td width=16%align=center><%=rs.getString(1)%></td>
     <td width=16%align=center><%=rs.getString(2)%></td>
     <td width=8%align=center><%=rs.getString(3)%></td>
</tr>
</table>
<% }
    rs.close();
    testbean.closeStmt();
    testbean.closeConn();
%>
<a href="index.jsp">显示</a>
</body>
</html>
