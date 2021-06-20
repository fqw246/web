<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/19
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
    <title>Title</title>
    <%! String url,sql;%>
    <%! int i=0;%>
    <%
        testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
        String id=request.getParameter("email");
        String password=request.getParameter("pd");
        sql="select * from users where userid='"+id+"'";
        ResultSet rs=testbean.executeQuery1(sql);
        if(rs.next()){
            if(rs.getString(3).equals(password))
                i=0;
            else i=1;
        }
        else i=2;
    %>
    <%if(i==0) {%>
    <meta http-equiv="refresh" content="0;url=网上书城.jsp">
    <%}else {%>
    <meta http-equiv="refresh" content="0;url=登录.jsp?i=<%=i%>"><%}%>
</head>
<body>

</body>
</html>
