<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="weith=device-width,initial-scale=1">
	<title></title>
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet"/>
	<script type="text/javascript" src="js/jquery-2.0.2.js"></script>
	<script type="text/javascript" src="jqui/jquery-ui.js" ></script>
	<script type="text/javascript" src="js/jquery.validate.js" ></script>
	<!-- <script type="text/javascript" src="js/shopping.js"></script> -->
	<!--[if lt IE 9]>
	<script src="bootstrap/js/html5shiv.min.js"></script>
	<script src="bootstrap/js/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<style type="text/css">
.navbar{
	margin-bottom: 0px;
}
.navbar img{
    height: 180%;
    padding-top: 0px;

}
.biao{
	margin-top: 10%;
	height: 600px;
}
.footer{
	color: white;
}
.a{
	margin-top:10px;
}
#login-button{
	margin-left:40%;
}
.bb{
	color:grey;
}
	</style>
</head>
<body style="background-image:url(img/bg.jpg); background-repeat:no-repeat;background-size:100% 100%; background-attachment: fixed;">
<!--导航栏-->
<div class="navbar navbar-default">
            <div class="navbar-header"><a class="navbar-brand" href="#"><img src="img/sb.jpg"></a></div>     
        	<div class="nav navbar-nav pull-right a">
        		<p class="bb">欢迎您，<nobr id="username">${username }</nobr>&nbsp;<a href="index.jsp">注销</a></p>
        		<a href="shoplist.jsp">返回商品选择页面</a>
        	</div>
    </div>
</div>
<!--用户反馈-->
<form class="form">
<div class="container-fluid text-center biao" id="contact">
	<h3>S h o p p i n g &nbsp;C a r t</h3>
    <br>
    <h5>We love foods!</h5>
    <div class="row container-fluid">
    	<div class="col-xs-1"></div>
        <div class="col-xs-3">
					<a href="#" class="thumbnail"><img src="${shop.imgs }"></a>
					<p hidden id="sprice">${shop.sprice}</p>
					<p hidden id="sname">${shop.sname}</p>
					<p hidden id="sid">${shop.sid}</p>
        </div>
        <div class="col-xs-1"></div>
        <div class="col-xs-6">
        	<div class="row">
            	<div class="col-xs-6">
  					<input type="text" class="form-control" placeholder="收件人姓名">
                </div>
                <div class="col-xs-6">
                	<input type="text" class="form-control" placeholder="联系电话">
                </div>
            </div>
            <br>
            <div class="row">
            	<div class="col-xs-6">
  					<input type="text" class="form-control" placeholder="购买数量"   id="numberss" value="">
                </div>
                <div class="col-xs-6">
                	<input type="text" class="form-control" placeholder="快递地址" >
                </div>
            </div>
            <br>
            <div class="row">
            	<div class="col-xs-12">
                	<textarea class="form-control" placeholder="买家留言。。。" rows="10" ></textarea>
                </div>
            </div>
        </div>
    </div>
</div>
		<div style="text-align:center"><button  id="btn" >加入购物车</button></div>
		
		
</form>		
<script src="bootstrap/jquery-2.1.4/jquery.min.js" type="text/javascript"></script>
<script src="bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>

</body>
<footer>
	<div class="container-fluid text-center footer">
    <p class="font1">Personal web sites</p>
</div>
</footer>
<script>
$(document).ready(function(){
	var username=document.getElementById("username").innerHTML;
	var sid=document.getElementById("sid").innerHTML;
	var s=document.getElementById("sprice").innerHTML;
	var date=new Date();
	var timer=date.getTime().toString();
	$("#btn").click(function(){
		$.ajax({
			url:"Shopping",
			type:"post",
			data:{username:username,
					  sid:sid,
					  num:$("#numberss").val(),
					  sprice:s},
					  dataType : 'html',
			success:function(re){
				console.log(re);
					if(re=="true"){
						console.log("222");
						alert("成功添加到购物车");
						$('form')[0].reset();//仅仅对表单数据清空重置，不对样式重置
						$("form input").removeClass("valid");//使用removeClass()对表单的样式重置
						window.location.href="shoplist.jsp";
					}else if(re=="false"){
						 alert("数据类型填写有误");
						 window.location.href="shoplist.jsp";
					}
				
			},
					  error:function(){
						  
					  }
		});
	});
});
</script>
</html>