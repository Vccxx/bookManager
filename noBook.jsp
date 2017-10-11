<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-06
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>No book in Store</title>
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
                    提示信息<small>&nbsp;&nbsp;Sorry...</small>
                </h1>
            </div>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                <h4>
                    暂未收录此作者书籍。
                </h4> <strong>你可以：</strong>
                <a href="RequestAddBook.jsp" class="alert-link">为此作者添加书籍</a>
                或者
                <a href="index.jsp" class="alert-link">返回首页</a>
            </div>
        </div>
    </div>
    <%@include file="copyright.jsp"%>
</div>
</body>
</html>
