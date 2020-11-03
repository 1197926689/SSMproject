<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
	<style type="text/css">
		.aa{
			color:white;
			text-decoration:none;
			font-size:18px;
		}
	</style>
<script type="text/javascript" src="js/jquery-2.0.2.js"></script>
<script type="text/javascript" src="jqui/jquery-ui.js" ></script>
<script type="text/javascript" src="js/jquery.validate.js" ></script>
<!-- <script type="text/javascript" src="js/login.js"></script> -->

</head>
<body>
<div class="htmleaf-container" >
	<div class="wrapper">
		<div class="container">
			<h1>Welcome</h1>
			
			<form class="form" action="<%=basePath %>LoginController/login.action" method="post" >
				<input type="text" placeholder="Username" name="account" id="account" value="">
				<input type="password" placeholder="Password" name="password" id="password">
				<br/>
				<button type="submit" id="login-button">Login</button><br><br>
				<a href="register.jsp" class="aa">→No Account?Register←</a>
			</form>

		</div>
		
		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
</div>



<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#000000">
<h1>购物车系统</h1>
</div>
</body>
</html>