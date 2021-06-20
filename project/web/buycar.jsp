<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/18
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
    <title>购物车</title>
    <%! String url,sql; %>
    <%! int i=0;%>
    <%
        testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
        sql="select * from buycar";
        ResultSet rs=testbean.executeQuery1(sql);
    %>
    <style>
        #di{
            left: 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color:navajowhite;
            font-size: 30px;
        }
        #but{
            float:right;
            height: 50px;
            width: 100px;
            background-color:red;
            margin-right: 100px;
        }
    </style>
</head>
<body>
    <table align="center">
        <tr bgcolor="#7fffd4">
            <td width="200px" align=center>编号</td>
            <td width="200px" align=center>书名</td>
            <td width="200px" align=center>价格</td>
            <td width="200px" align=center>是否删除</td>
        </tr>
        <% i=0;%>
        <%while (rs.next()){%>
        <tr>
            <% int aa = Integer.parseInt(rs.getString(3));i=i+aa; %>
            <td align=center><%=rs.getString(1)%></td>
            <td align=center><%=rs.getString(2)%></td>
            <td align=center><%=rs.getString(3)%></td>
            <td align=center><a href="delete.jsp?action=delete&id=<%=rs.getString(1)%>">删除</a></td>
        </tr>
        <% }
            rs.close();
            testbean.closeStmt();
            testbean.closeConn();
        %>
        <tr bgcolor="aqua" height="50px">
            <td colspan="4" align="center"><a href="delete.jsp?action=clear">清空购物车</a></td>
        </tr>
    </table>
    <div align="center"><a href="网上书城.jsp">返回书城</a></div>
    <div id="di">&ensp; 总价：<%=i%><a href="#" ><input type="button" id="but" value="结算"></a></div>
</body>
</html>
