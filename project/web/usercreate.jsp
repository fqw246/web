<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/19
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
    <title>usercreate</title>
    <%! String url,sql;%>
    <%! int i=0;%>
    <%
    testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
    String id=request.getParameter("email");
    String name=request.getParameter("Name");
    String password=request.getParameter("pd");
    sql="select * from users where userid='"+id+"'";
    ResultSet rs=testbean.executeQuery1(sql);
    if(rs.next()){
        i=1;
    }
    else {
        sql="insert into users values('"+id+"','"+name+"',"+password+");";
        testbean.executeUpdate2(sql);
        i=0;
    }
    %>
    <meta http-equiv="refresh" content="0;url=注册.jsp?i=<%=i%>">
</head>
<body>

</body>
</html>
