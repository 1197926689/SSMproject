<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" import="com.java.po.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="weith=device-width,initial-scale=1">
	<title></title>
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="bootstrap-3.3.7-dist/css/bootstra	p-theme.min.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="bootstrap/js/html5shiv.min.js"></script>
	<script src="bootstrap/js/respond.min.js"></script>
	<![endif]-->
	<style type="text/css">
.navbar{
	margin-bottom: 0px;
}
.navbar img{
    height: 180%;
    padding-top: 0px;
    margin-bottom:50px;

}
.banner-bottom {
  padding: 2em 0;
  background-color: #fd9f3e;
  margin: 0px;
}
.sort-by select {
  width: 73%;
  height: 35px;
  border:1px solid #fff;
  outline:none;
}
.sort-by label{
margin-right:10px;
  font-size: 1.2em;
}
.btn {
  font-size: 1em;
  border: none;
  outline: none;
  background: rgb(8, 83, 140);
  color: #fff;
  width: 100px;
  height: 35px;
  border-radius: 0px;
  
}
.biaoti{
	font-family: 华文行楷;
	color: rgb(8, 83, 140);
	margin-right: 5%;
}
.font2{
	font-size: 20px;
	color: #fd9f3e;
}
.font1{
    color: black;
    font-size: 20px;
    background: #fd9f3e;
    height: 30px;
    padding-top: 5px;
    width: 100%;
    margin-top:;
}
.footer{
	left:0px;
	 position:fixed; 
	 width:100%; 
	 color:#FFF; 
	 text-align:center; 
	 font-size:18px; 
	 font-weight:bold; 
	 bottom:0px;
}


/* Border styles */
#table-2 thead, #table-2 tr {
	border-top-width: 1px;
	border-top-style: solid;
	border-top-color: rgb(230, 189, 189);
}
#table-2 {
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: rgb(230, 189, 189);
	margin-left:20%;
	margin-top:50px;
}

/* Padding and font style */
#table-2 td, #table-2 th {
	padding: 5px 10px;
	font-size: 12px;
	font-family: Verdana;
	color: rgb(177, 106, 104);
	padding:5px 50px;
	margin:auto;
}

/* Alternating background colors */
#table-2 tr:nth-child(even) {
	background: rgb(238, 211, 210)
}
#table-2 tr:nth-child(odd) {
	background: #FFF
}
.form1{
	margin-top:30%;
	margin-left:80%;
}

	</style>
<%Users user = (Users)session.getAttribute("user"); %>
</head>
  <body>
  <!--导航栏-->
<div class="navbar navbar-default">
            <div class="navbar-header"><a class="navbar-brand" href="#"><img src="img/sb.jpg"></a></div>     
        <div class="nav navbar-nav pull-right">
            <li><p>欢迎您，<%=user.getUsername()%>&nbsp;<a href="index.jsp">注销</a></p><a href="shoppingcart.jsp">购物车</a></li>
            </div>
        </div>
    </div>
</div>
  <table id="table-2">
  <tr>
  	<th>商品</th><th>收货人姓名</th><th>购买数量</th><th>商品描述</th><th>总价</th><th>操作</th>
  </tr>
  <%int i = 0; %>
    <c:forEach items="${shoppingcart}" var="oneshop">
    	<%i++; %>
    		<tr>
    			<td>${oneshop.sname}</td>
 				<td>${oneshop.uname}</td>
 				<td>${oneshop.num}</td>
 				<td>${oneshop.title}</td>
 				<td>${oneshop.tprice}</td>
 				<td><a href="Shopcart?do=delete&sname=${oneshop.sname }&username=${oneshop.uname}">删除</a></td>
 			</tr> 
    </c:forEach>
</table>
<div class="form1">
    <form action="shoplist.jsp" >
    <input type="submit" value="确认购买">
 	</form>

    <a href="shoplist.jsp">返回商品选购页面</a>
    </div>
    
    <div class="clearfix"></div>
	<script src="bootstrap/jquery-2.1.4/jquery.min.js" type="text/javascript"></script>
	<script src="bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
  </body>

	<div class="container-fluid text-center ">
    <p class="font1">Personal web sites by Mr.Yan</p>
    </div>

</html>