<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.java.po.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="weith=device-width,initial-scale=1">
	<title></title>
	<link rel="stylesheet" href="jqui/jquery-ui.css" />
	<link rel="stylesheet" href="css/cart.css" />
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-2.0.2.js"></script>
	<script type="text/javascript" src="jqui/jquery-ui.js" ></script>
	<script type="text/javascript" src="js/jquery.validate.js" ></script>
	<script type="text/javascript" src="js/shop.js"></script>
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
}
.footer{
	width: 100% ;
}

li  { 
  	list-style-type: none; 
}
ul  { 
  	list-style-type: none; 
}
	</style>

</head>
<%Users user = (Users)session.getAttribute("user"); %>
<body>
<!--导航栏-->
<div class="navbar navbar-default">
            <div class="navbar-header"><a class="navbar-brand" href="#"><img src="img/sb.jpg"></a></div>     
        <div class="nav navbar-nav pull-right">
            <li><p>欢迎您，<nobr id="username"><%=user.getUsername()%></nobr>&nbsp;<a href="index.jsp">注销</a><br/> <a href="Shopcart?username=<%=user.getUsername() %>">购物车</a></p></li>
            </div>
        </div>
    </div>
</div>
<!--搜索栏-->
<div class="banner-bottom">
				<div class="container">
				<div class="droop-down">
					<div class="col-md-3 droop">
							<div class="sort-by">
		            <label>City</label>
		            <select>
		                            <option value="">America</option>
		                            <option value="">India</option>
		                            <option value="">Russia</option>
						   
		            </select>
		        </div>
					</div>
					<div class="col-md-3 droop">
							<div class="sort-by">
		            <label>Flavor</label>
		            <select>
		                            <option value="">Sweet</option>
		                            <option value="">Salty</option>
		                            <option value="">Spicy</option>
		            </select>
		        </div>
					</div><div class="col-md-3 droop">
							<div class="sort-by">
		            <label>food</label>
		            <select>
		                      <option value="">Roast Chicken</option>
		                      <option value="">Ice cream</option>
		                      <option value="">Hot dog</option>
		            </select>
		        </div>
					</div>
					<div class="col-md-3">
					<form>
					<button type="button" class="btn btn-default">搜索</button>（该功能尚未实现）	
					</form>				
					</div>
					<div class="clearfix"></div>
					</div>
				</div>
</div>
<!--标题-->
<div class="text-center">
	<h1 class="biaoti">Featured Menu</h1>
</div>
<!--缩略图-->

<div class="container"  id="show">
		
</div>



<div class="clearfix"></div>
	<!-- <script src="bootstrap-3.3.7-dist/jquery-2.1.4/jquery.min.js" type="text/javascript"></script> -->
	<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
</body>
<footer>
	<div class="container-fluid text-center footer">
    <p class="font1">Personal web sites</p>
</div>
</footer>
</html>