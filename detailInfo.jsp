<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-08
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail Book Infomation</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="js/jquery3.2.1.js"></script>
  <!-- 包括所有已编译的插件 -->
    <script src="js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    书籍信息展示 <small>&nbsp;&nbsp;详细信息</small>
                </h1>
            </div>
        </div>
        <div class="col-md-6 column">
            <img alt="书籍封面" src=<%=request.getAttribute("url")%> class="img-thumbnail" />
            <dl>
                <dt>
                    <h2>书籍ISBN</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("isbn")%></h3>
                </dd>
                <dt>
                    <h2>书籍名称</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("title")%></h3>
                </dd>
                <dt>
                    <h2>出版社</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("publisher")%></h3>
                </dd>
                <dt>
                    <h2>出版日期</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("publishDate")%></h3>
                </dd>
                <dt>
                    <h2>价格</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("price")%></h3>
                </dd>
            </dl>
        </div>
        <div class="col-md-6 column">
            <img alt="作者照片" src=<%=request.getAttribute("authorUrl")%> />
            <dl>
                <dt>
                    <h2>作者姓名</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("authorName")%></h3>
                </dd>
                <dt>
                    <h2>作者年龄</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("authorAge")%></h3>
                </dd>
                <dt>
                    <h2>作者国籍</h2>
                </dt>
                <dd>
                    <h3><%=request.getAttribute("authorCountry")%></h3>
                </dd>
            </dl>
        </div>
    </div>
    <%@include file="copyright.jsp"%>
</div>
</body>
</html>
