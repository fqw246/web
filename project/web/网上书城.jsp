<%--
  Created by IntelliJ IDEA.
  User: 24667
  Date: 2021/6/18
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<jsp:useBean id="testbean" scope="session" class="jb.conn" />
<html>
<head>
    <title>网上书城</title>
    <%! String url,sql; %>
    <% int i=0;%>
    <%
        testbean.getConn("jdbc:mysql://localhost:3306/web?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC","root","fqw200275");
        sql="select * from book";
        ResultSet rs=testbean.executeQuery1(sql);
    %>
    <style>

    </style>
</head>
<body>
<!-- 整个页面 -->
<div id="page">
    <!-- top -->
    <div id="top">
        <table width="100%" bgcolor="#EFEEDC">
            <td width="70%">
            </td>

            <td>
                <a href="登录.jsp?i=0">登录</a>|
                <a href="注册.jsp?i=0">注册</a>|
                <a href="buycar.jsp">我的购物车</a>
            </td>
            </tr>
        </table>
    </div>
    <!-- menu -->
    <div id="menu" class="box">
        <table width="100%" height="40px" bgcolor="#555555">
            <tr align="center">
                <td>
                    <font>关键字：</font>
                    <a href="#"><font color="#ffffff">传统文学</font></a>
                    <a href="#"><font color="#ffffff">外国文学</font></a>
                    <a href="#"><font color="#ffffff">教辅书</font></a>
                    <a href="#"><font color="#ffffff">儿童文学</font></a>
                    <a href="#"><font color="#ffffff">网络小说</font></a>
                    <a href="#"><font color="#ffffff">生活百科</font></a>
                    <a href="#"><font color="yellow">全部</font></a>
                </td>
            </tr>
        </table>
    </div>
    <!-- search -->
    <div id="search">
        <table width="100%" bgcolor="#B6B684">
            <tr align="right" height="40px">
                <td>
                    <input type="text" />
                    <input type="button" value="搜索" />

                </td>
            </tr>
        </table>

    </div>
    <!-- content -->
    <div id="content">
        <div align="right" height="40px">
            首页
        </div>
        <h2>热门书籍</h2>
        <hr />

        <div>
            <form action="buy.jsp" method="post">
                <% if(rs.next()){%>
            <table width="100%">
                <tr align="center">
                    <td>
                        <a href="#">
                            <div>
                                <img alt="book" src="/image/book1.jpeg" width="180" height="200">
                            </div>
                        </a>
                        <div style="height: 100px;width: 100px;"title="简介：《红楼梦》，中国古代章回体长篇小说，中国古典四大名著之一，一般认为是清代作家曹雪芹所著。小说以贾、史、王、薛四大家族的兴衰为背景，以富贵公子贾宝玉为视角，
                        以贾宝玉与林黛玉、薛宝钗的爱情婚姻悲剧为主线，描绘了一批举止见识出于须眉之上的闺阁佳人的人生百态，展现了真正的人性美和悲剧美，可以说是一部从各个角度展现女性美以及中国古代社会世态百相的史诗性著作。">
                            <span>书名:<%=rs.getString(2)%></span><br />
                            <span>售价:<%=rs.getInt(3)%></span><br />
                            <span><a href="buy.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&value=<%=rs.getString(3)%>">加入购物车</a></span><br>
                        </div>
                    </td><%}
                    if(rs.next()){%>
                    <td>
                        <a href="https://book.qidian.com/info/53269">
                            <div>
                                <img alt="book" src="/image/book2.jpeg" width="180" height="200">
                            </div>
                        </a>
                        <div style="height: 100px;width: 100px;"title="简介：一个系列形式的文字冒险故事，三位当代摸金校尉，利用风水秘术，解读天下大山大川的脉搏，寻找那些失落在大地上的一处处龙楼宝殿，
                        沙漠、雪山、森林、峡谷、急流、草原、鲜为人知的神秘动植物，危机四伏的陷阱，步步惊心，环环紧扣，超越极限与想象力的挑战，在离奇诡异的地下世界中，揭开一层层远古的神秘面纱。">
                            <span>书名:<%=rs.getString(2)%></span><br />
                            <span>售价:<%=rs.getString(3)%></span><br />
                            <span><a href="buy.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&value=<%=rs.getString(3)%>">加入购物车</a></span><br>
                        </div>
                    </td><%}
                    if(rs.next()){%>
                    <td>
                        <a href="#">
                            <div>
                                <img alt="book" src="/image/book3.jpeg" width="180" height="200">
                            </div>
                        </a>
                        <div>
                            <span>书名:<%=rs.getString(2)%></span><br />
                            <span>售价:<%=rs.getString(3)%></span><br />
                            <span><a href="buy.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&value=<%=rs.getString(3)%>">加入购物车</a></span><br>
                        </div>
                    </td><%}
                    if(rs.next()){%>

                </tr>

                <tr align="center">
                    <td>
                        <a href="#">
                            <div>
                                <img alt="book" src="/image/book4.jpeg" width="180" height="200">
                            </div>
                        </a>
                        <div>
                            <span>书名:<%=rs.getString(2)%></span><br />
                            <span>售价:<%=rs.getString(3)%></span><br />
                            <span><a href="buy.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&value=<%=rs.getString(3)%>">加入购物车</a></span><br>
                        </div>
                    </td><%}
                    if(rs.next()){%>
                    <td>
                        <a href="#">
                            <div>
                                <img alt="book" src="/image/book5.jpeg" width="180" height="200">
                            </div>
                        </a>
                        <div>
                            <span>书名:<%=rs.getString(2)%></span><br />
                            <span>售价:<%=rs.getString(3)%></span><br />
                            <span><a href="buy.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&value=<%=rs.getString(3)%>">加入购物车</a></span><br>
                        </div>
                    </td><%}
                    if(rs.next()){%>
                    <td>
                        <a href="#">
                            <div>
                                <img alt="book" src="/image/book6.jpg" width="180" height="200">
                            </div>
                        </a>
                        <div>
                            <span>书名:<%=rs.getString(2)%></span><br />
                            <span>售价:<%=rs.getString(3)%></span><br />
                            <span><a href="buy.jsp?id=<%=rs.getString(1)%>&name=<%=rs.getString(2)%>&value=<%=rs.getString(3)%>">加入购物车</a></span><br>
                        </div>
                    </td>
                </tr>
            </table>
                <%}%>
            </form>
        </div>
    </div>

    <!-- bottom -->
    <div id="bottom">
        <table width="100%" bgcolor="#EFEEDC">
            <tr>
                <td align="center">
                    CONTACT US
                </td>
            </tr>
            <tr>
                <td align="center">
                    2020/05/01 ; author：fqw
                </td>
            </tr>
        </table>
    </div>


</div>
</body>
</html>
