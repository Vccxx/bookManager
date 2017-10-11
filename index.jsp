<%--
  Created by IntelliJ IDEA.
  User: Jiawei Jiang
  Date: 2017-09-27
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="GBK" %>

<!DOCTYPE html>
<html>
<head>
  <title>BookManager</title>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <script src="js/jquery3.2.1.js"></script>
  <!-- 包括所有已编译的插件 -->
  <script src="js/bootstrap.js"></script>
</head>
<%!
  String[] defaultUrl = {"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=997087900,260259810&fm=27&gp=0.jpg","http://openisbn.com/cover/1864719486_140.jpg", "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2729432003,1778847612&fm=27&gp=0.jpg"};
  String[] descript = {"                                                        图书存量不够哦！点击右上方添加书籍吧！","                                                       图书存量不够哦！点击右上方添加书籍吧！","                                                        图书存量不够哦！点击右上方添加书籍吧！"};
  String[] book = {"                                                    默认书名","                                                    默认书名","                                                    默认书名"};
%>
<body>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%
  String driverName = "com.mysql.jdbc.Driver";
  String userName = "root";//数据库名
  String userPasswd = "Vccxx2016";//数据库密码
  String dbName = "BookDB";
  String tableName = "Book";
  String url = "jdbc:mysql://localhost/" + dbName + "?user="
          + userName + "&password=" + userPasswd;
  Class.forName(driverName).newInstance();
  Connection connection = DriverManager.getConnection(url);
  Statement statement = connection.createStatement();
  String sql_query="select * from " + tableName;
  PreparedStatement res = null;
  try {
    res = (PreparedStatement) connection.prepareStatement(sql_query);
    ResultSet rs_query = res.executeQuery();
    int count = 1;
    while (rs_query.next() && count <= 3){
      book[count - 1] = rs_query.getString("Title");
      String tempUrl = rs_query.getString("url");
      if(tempUrl.length() != 0){
        defaultUrl[count -1] = tempUrl;
      }
      descript[count - 1] = "出版社："+rs_query.getString("Publisher")+"<br>"+"出版日期:"+rs_query.getString("PublishDate")+"<br>"+"价格："+rs_query.getString("Price");
      count++;
    }
    } catch (SQLException e) {
      e.printStackTrace();
    }

%>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="jumbotron">
        <h1>
          图书管理系统
        </h1>
        <p>
            哈尔滨工业大学  1150320117  江家伟
        </p>
        <p>
          <a class="btn btn-primary btn-large" href="http://blog.csdn.net/qq_29947311">我的博客</a>
          <a class="btn btn-primary" href="declare.jsp">使用说明</a>

        </p>
      </div>
      <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Brand</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

          <form class="navbar-form navbar-left" role="search" action="search.action">
            <div class="form-group">
              <input class="form-control" type="text" name="authorName"/>
            </div> <button type="submit" class="btn btn-default">搜索作者</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">其他选项<strong class="caret"></strong></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="RequestAddBook.jsp">添加书籍</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>

      </nav>
      <div class="page-header">
        <h1>
          本站书籍推荐<small>&nbsp;&nbsp;Book Recommand</small>
        </h1>
      </div>

      <div class="carousel slide" id="carousel-907891">
        <ol class="carousel-indicators">
          <li class="active" data-slide-to="0" data-target="#carousel-907891">
          </li>
          <li data-slide-to="1" data-target="#carousel-907891">
          </li>
          <li data-slide-to="2" data-target="#carousel-907891">
          </li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img alt=""   src=<%=defaultUrl[0]%> />
            <div class="carousel-caption">
              <h4>
                  <%=book[0]%>
              </h4>
              <p>
                <%=descript[0]%>
              </p>
            </div>
          </div>
          <div class="item">
            <img alt="" src=<%=defaultUrl[1]%>/>
            <div class="carousel-caption">
              <h4>
                <%=book[1]%>
              </h4>
              <p>
                  <%=descript[1]%>
              </p>
            </div>
          </div>
          <div class="item">
            <img alt=""   src=<%=defaultUrl[2]%>/>
            <div class="carousel-caption">
              <h4>
                  <%=book[2]%>
              </h4>
              <p>
                  <%=descript[2]%>
              </p>
            </div>
          </div>
        </div> <a class="left carousel-control" href="#carousel-907891" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-907891" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div>
    </div>
  </div>
  <%@include file="copyright.jsp"%>
</div>
</body>
</html>
