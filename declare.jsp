<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-09
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Document</title>
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
                    本站使用说明<small>&nbsp;&nbsp;Produced by Jiawei Jiang with Bootstrap + Struts2 + mySql + idea + Tomcat</small>
                </h1>
                <a type="button" class="btn btn-default btn-success" href="index.jsp">返回主页</a>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                功能一： 输入作者名字，查询该作者所著的全部图书的题目
            </h3>
            <dl>
                <dt>
                    使用说明：
                </dt>
                <dd>

                    欢迎页(index.jsp) 左上方输入作者姓名后，点击“查询作者”按钮即可。
                </dd>
                <dt>
                    注意事项：
                </dt>
                <dd>
                    如果作者姓名没有在本站登记，则可以选择录入作者信息或者返回首页。
                </dd>

            </dl>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                功能二：当用户点击某本图书的题目时，展示图书详细信息和作者详细信息
            </h3>
            <dl>
                <dt>
                    使用说明：
                </dt>
                <dd>
                    查询到相应作者后，会显示本站已经存储的作者所著书籍，点击书名会弹出书籍的详细信息。
                </dd>
                <dt>
                    注意事项：
                </dt>
                <dd>
                    无
                </dd>
            </dl>
        </div>
    </div>    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                功能三：当用户点击“删除”按钮时，将对应行的图书从数据表中删除
            </h3>
            <dl>
                <dt>
                    使用说明：
                </dt>
                <dd>
                    通过功能一的查询作者姓名，列出作者作品信息之后，可以点击每个作品右侧的“删除”按钮，予以删除。
                </dd>
                <dt>
                    注意事项：
                </dt>
                <dd>
                    此操作不可逆，谨慎使用。
                </dd>
            </dl>
        </div>
    </div>    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                功能四：用户可新增一本图书，若该书作者不在库中，还需增加新作者
            </h3>
            <dl>
                <dt>
                    使用说明：
                </dt>
                <dd>

                    点击欢迎页(index.jsp)右上方的“其他选项”下拉框，选择“添加书籍”选项即可添加书籍。
                </dd>
                <dt>
                    注意事项：
                </dt>
                <dd>
                    如果所添加的书籍的作者已经录入本站，则可以顺利录入书籍；<br>
                    反之，则需要先录入作者信息。
                </dd>
            </dl>
        </div>
    </div>
        <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                功能五：用户可更新一本图书的作者、出版社、出版日期、价格
            </h3>
            <dl>
                <dt>
                    使用说明：
                </dt>
                <dd>
                    用户可以通过添加书籍（功能4）直接更新已有书籍的信息；<br>
                </dd>
                <dt>
                    注意事项：
                </dt>
                <dd>
                    如果要更新的书籍的作者信息未在本站存储，则还需要录入作者信息。
                </dd>
            </dl>
        </div>
    </div>
    <%@include file="copyright.jsp"%>
</div>
</body>
</html>
