$(document).ready(function(){
	var sids;
	var username;
	username = document.getElementById("username").innerHTML;
	$.ajax({
		url : "Showshop",
		type : "post",
		data : "pageNum="+$("#pageNum").text(),
		dataType : 'json',
		success : function(re){
			$('#show').empty();
			for(var i=0;i<re.length;i++){
				
			$('#show').append("<div class='col-xs-3'>" +
					"<div class='thumbnail'><img src='"+re[i].imgs+"'></div>" +
							"<div class='row'><div class='caption col-xs-6 font2'>" +
							"<a href='Buyservlet?sid="+re[i].sid+"&username="+username+"'><span class='glyphicon glyphicon-shopping-cart'></span></a></div>" +
							"<div class='col-xs-6 pull-right font2'>" +
							"<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$"+re[i].sprice+"</p></div></div></div>" +
									"<div class='col-xs-1'></div>");
			}
			
		}
		
});

});