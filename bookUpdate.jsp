<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-08
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="js/jquery3.2.1.js"></script>
  <!-- 包括所有已编译的插件 -->
    <script src="js/bootstrap.js"></script>
</head>
<body>
            <div class="page-header">
                <h1>
                    更新书籍<small>&nbsp;&nbsp;更新书籍信息</small>
                </h1>
            </div>
         <form class="form-horizontal" role="form" action="updateBook.action" onsubmit="return check()">
                <div class="form-group">
                    <label for="isbn" class="col-sm-2 control-label">新ISBN</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="isbn" value="<%=request.getAttribute("isbn")%>" type="text" placeholder="最多50个英文字符或12个中文字符" name="isbn" required="true" maxlength="50"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="authorName" class="col-sm-2 control-label">新作者名</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="authorName" type="text" name="authorName" value=<%=request.getAttribute("authorName")%> placeholder="最多50个英文字符或12个中文字符" required maxlength="50"/>
                    </div>
                </div>
                <div class="form-group">
                 <input type="hidden" name="formerTitle"  value="<%=request.getAttribute("title")%>"/>
                </div>
                <div class="form-group">
                    <label for="bookname" class="col-sm-2 control-label">新书名</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="bookname" type="text" name="title" value="<%=request.getAttribute("title")%>" placeholder="最多50个英文字符或12个中文字符" required maxlength="50"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="publisher" class="col-sm-2 control-label">新出版社</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="publisher" type="text"value="<%=request.getAttribute("publisher")%>" name="publisher" placeholder="最多50个英文字符或12个中文字符" required maxlength="50"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="publishDate" class="col-sm-2 control-label">新出版日期</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="publishDate" type="text" name="publishDate" value="<%=request.getAttribute("publishDate")%>" placeholder="最多50个英文字符或12个中文字符" required maxlength="50"/>
                    </div>
                </div>
             <div class="form-group">
                    <label for="price" class="col-sm-2 control-label">新价格</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="price" type="text" name="price" value="<%=request.getAttribute("price")%>" placeholder="价格为正有理数" required maxlength="50"/>
                    </div>
                </div>
             <div class="form-group">
                    <label for="url" class="col-sm-2 control-label">新书籍封面URL</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="url" type="text" name="url" value="<%=request.getAttribute("url")%>" placeholder="选填" maxlength="512"/>
                    </div>
             </div>
             <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" class="btn btn-default" value="添加"/>
                    </div>
                </div>
            </form>
            <%@include file="copyright.jsp"%>
         <script type="text/javascript">
             function check() {
                 var p = document.getElementById("price").value;
                 var temp = p.split(".");
                 if(!isNaN(parseInt(temp[0],10))){
                     return true;
                 }
                 else if(isNaN(parseInt(temp[0],10)) != "number" || isNaN(parseInt(temp[1],10))){
                   alert("价格必须是正有理数")
                    return false;
                 }
             }
         </script>
</body>
</html>
