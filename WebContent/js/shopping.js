$(document).ready(function(){
	var username=document.getElementById("username").innerHTML;
	var sid=document.getElementById("sid").innerHTML;
	var s=document.getElementById("sprice").innerHTML;
	var date=new Date();
	var timer=date.getTime().toString();
	console.log("2");
	$("#btn").click(function(){
		console.log("1");
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
						//console.log("222");
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