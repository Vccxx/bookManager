<%--
  Created by IntelliJ IDEA.
  User: 18965
  Date: 2017-10-06
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Infomation Page</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="js/jquery3.2.1.js"></script>
  <!-- 包括所有已编译的插件 -->
    <script src="js/bootstrap.js"></script>
</head>
<body>

    <div class="container">
        <h1>Infomation of <%=request.getAttribute("authorName")%> </h1>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table">
                    <thead>
                    <tr>
                        <th>
                            ISBN
                        </th>
                        <th>
                            书名
                        </th>
                        <th>
                            出版社
                        </th>
                        <th>
                            出版日期
                        </th>
                        <th>
                            价格
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for(int i = 0;i < Integer.parseInt(request.getAttribute("total").toString());i++){
                            out.print("<tr class='success'>"
                                    +"<td>" +request.getAttribute("isbn"+Integer.toString(i)).toString()+"</td>"
                                    +"<td><a href=detailInfo.action?bookName=" + request.getAttribute("title"+Integer.toString(i)).toString() + ">" + request.getAttribute("title"+Integer.toString(i)).toString() +"</a></td>"
                                    +"<td>"+ request.getAttribute("publisher"+Integer.toString(i)).toString() +"</td>"
                                    +"<td>"+request.getAttribute("date"+Integer.toString(i)).toString()+"</td>"
                                    + "<td>"+request.getAttribute("price"+Integer.toString(i)).toString()+"</td>"
                                    +"<td> <a id=\"modal-490315\" href=\"#modal-container-490315\" role=\"button\" data-whatever= \"" +request.getAttribute("title"+Integer.toString(i)).toString()+
                                    "\"class=\"btn\" data-toggle=\"modal\">删除</a>"
                                    +"</tr>");
                        }
                    %>
                    </tbody>
                </table>

                <div class="modal fade" id="modal-container-490315" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                <h4 class="modal-title" id="myModalLabel">
                                    不可逆操作！是否继续？
                                </h4>
                            </div>
                            <form action="deleteBook.action">
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <input type="hidden" id="bookName" name="bookName" value="">
                                <button type="submit" class="btn btn-danger">确认删除</button>
                            </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>
        </div>
        <%@include file="copyright.jsp"%>
    </div>
<script type="text/javascript">
    var modal = $("#modal-container-490315");
    modal.on("show.bs.modal",function (event) {
        var button=$(event.relatedTarget)
        var recipent=button.data("whatever")
        document.getElementById("bookName").setAttribute("value",recipent)

    })
</script>
</body>
</html>
