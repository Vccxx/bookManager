<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-07
  Time: 10:40
  To change this template use File | Settings | File Templates.
  test for egit
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>Add Author Infomation</title>
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
                    添加作者<small>作者信息填充</small>
                </h1>
            </div>
            <form class="form-horizontal" role="form" action="addAuthor.action" >
                <div class="form-group">
                    <label for="authorName" class="col-sm-2 control-label">作者姓名</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="authorName" type="text" placeholder="最多50个英文字符或12个中文字符" required maxlength="50" name="AuthorName" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="authorAge" class="col-sm-2 control-label">作者年龄</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="authorAge" type="number" name="Age" placeholder="年龄必须为正整数" required maxlength="10"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="authorCountry" class="col-sm-2 control-label">作者国家</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="authorCountry" type="text" name="Country" placeholder="最多50个英文字符或12个中文字符" required maxlength="50"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="authorUrl" class="col-sm-2 control-label">作者照片url</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="authorUrl" type="text" placeholder="最多512个字符(选填)" name="AuthorUrl" maxlength="512" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" class="btn btn-default" value="添加" />
                    </div>
                </div>
            </form>
        </div>
    </div>

    <%@include file="copyright.jsp"%>
</div>
</body>
</html>
