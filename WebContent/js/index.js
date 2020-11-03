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
		//rules指定每个表单元素的校验规则
		rules : {
			//name email passwd0 passwd birth这些全部是表单元素的name属性
			username : {
				required : true,
			
				//remote如果直接指向URL，此时传参的方式GET，以下是POST传参
				remote : {//后台的返回值只能是字符串格式的："true"、"false"
					url : "Checkname",
					type : "POST",
					dataType : "json",//此处与$.ajax()的不同，代表从前台到后台的格式
					data : {
						value : function(){
							return $('#username').val();
						},
						type : function(){
							return "username";
						}
					}
				},
			},
			email : {
				required : true,
				email : true,
				//GET传参方式 
				//remote : "checkemail",//参数为URL请求的地址，后台的返回值只能是字符串格式的："true"、"false"
				remote : {//后台的返回值只能是字符串格式的："true"、"false"
					url : "Checkemail",
					type : "POST",
					dataType : "json",//此处与$.ajax()的不同，代表从前台到后台的格式
					data : {
						value : function(){
							return $('#email').val();
						},
						type : function(){
							return "email";
						}
					}
				},
			},
			password : {
				required : true,
			},
			passwd : {
				equalTo : '#passwd0',//ID选择器
			},
			birth : {
				required : true,
				date : true,
			}
		},
		//messages指定用户自定义的提示消息
		messages : {
			username : {
				required : '账号不得为空！',
				//rangelength : '账号长度必须是{0}至{1}位！',
				remote : "该账号已经被占用！",
			},
			email : {
				required : '邮箱不得为空！',
				email : '邮箱格式不正确！',
				remote : "该邮箱已经被占用！",
			},
			password : {
				required : '密码不得为空！',
				//rangelength : '密码长度必须是{0}至{1}位！',
			},
			passwd : {
				equalTo : '两次输入的密码不一致！',
			},
			birth : {
				required : '生日不得为空！',
				date : '格式不正确！',
			}
		},
		
		//使用submitHandler拦截表单默认提交的方式 ，改用新的方法
		submitHandler : function(form){
			$.ajax({
				url : "Register",
				type : "post",
				data : $('form').serialize(),
				dataType : 'html',
				success : function(re){
					if(re=="true"){
						alert("新增成功！");
						$('form')[0].reset();//仅仅对表单数据清空重置，不对样式重置
						$("form input").removeClass("valid");//使用removeClass()对表单的样式重置
						window.location="index.jsp";
					}else{
						alert("新增失败！");
					}
				
				}
			});
		}
	});
});