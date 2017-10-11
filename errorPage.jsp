<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-06
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<% response.setHeader("Refresh","3;URL=index.jsp");%>
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
                    出错了:<%=request.getAttribute("error")%>
                </h4> <strong>3 秒后返回首页</strong>
            </div>
        </div>
    </div>
    <%@include file="copyright.jsp"%>
</div>
</body>
</html>
