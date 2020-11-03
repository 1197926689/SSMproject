$(document).ready(function () {		    	
	$("#dialog-form").dialog({
		autoOpen: true,
		width : 600,
		height : 500,
		buttons : {
			'提交' : function(){
				$('form').submit();
			}
		}
	});
	
	$('#birth').datepicker({
		dateFormat : 'yy-mm-dd',
	});
	
	$('form').validate({
		//使用submitHandler拦截表单默认提交的方式 ，改用新的方法
		submitHandler : function(form){
			$.ajax({
				url : "LoginController/login.action",
				type : "post",
				data : $('form').serialize(),
				dataType : 'html',
				success : function(re){
					if(re=="true"){
						alert("登陆成功！");
						$('form')[0].reset();//仅仅对表单数据清空重置，不对样式重置
						$("form input").removeClass("valid");//使用removeClass()对表单的样式重置
						window.location="shoplist.jsp";
					}else{
						alert("登陆失败！");
						$('form')[0].reset();//仅仅对表单数据清空重置，不对样式重置
						$("form input").removeClass("valid");//使用removeClass()对表单的样式重置
						window.location="index.jsp";
					}
				
				}
			});
		}
	});
});