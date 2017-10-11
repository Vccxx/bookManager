<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-07
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="js/jquery3.2.1.js"></script>
  <!-- 包括所有已编译的插件 -->
    <script src="js/bootstrap.js"></script>

</head>
<body>
<% response.setHeader("Refresh","3;URL=index.jsp");%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    提示页面<small>&nbsp;&nbsp;Congraz!</small>
                </h1>
            </div>
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
                <h4>
                    操作成功
                </h4> <strong>3 秒后返回首页</strong>
            </div>
        </div>
    </div>
    <%@include file="copyright.jsp"%>
</div>
</body>
</html>
