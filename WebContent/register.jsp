<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script type="text/javascript" src="js/jquery-2.0.2.js"></script>
<script type="text/javascript" src="jqui/jquery-ui.js" ></script>
<script type="text/javascript" src="js/jquery.validate.js" ></script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<div class="htmleaf-container" >
	<div class="wrapper">
		<div class="container">
			<h1>Register</h1>
			
			<form class="form">
				<input type="text" placeholder="Username" name="username">
				<input type="password" placeholder="Password" name="password">
				<input type="text" name="email" placeholder="emial"><br>
				<button type="submit" id="login-button">Register</button><br>
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

<script>
/*$('#login-button').click(function (event) {
	//event.preventDefault();
	$('form').fadeOut(500);
	$('.wrapper').addClass('form-success');
});*/
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#000000">
<h1>注册</h1>
</div>
</body>
</html>