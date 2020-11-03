$(function(){
	//使用 on() 方法添加的事件处理程序适用于当前及未来的元素（比如由脚本创建的新元素）。
	$('#cartlist').on('click','.ui-icon-close',function(){        
        $(this).closest('li').remove();
        if($('#cartlist li').length==0){
        	$('#cartlist').append('<li class="placeholder">添加产品到这里</li>');
        }
    });
    
    $('.goodshow').draggable({
	    helper: 'clone',
	    revert: 'invalid',
    });
	
    $('.cart-cartlist').droppable({
    	accept: ".goodshow",//可以接收的元素
        drop: function( event, ui ) {
        	var dobj=ui.draggable;
        	var src=dobj.find('img').attr('src');
        	var title=dobj.find('.showtitle').text();
        	var price=dobj.find('.showprice').text();
        	//重新组织购物车里的HTML代码
        	var tmphtml="<img src='"+src+"' /><span class='showtitle'>"+title
        	+"</span><span class='closebtn'><span class='ui-icon ui-icon-close'></span></span><span class='showprice'>"+price+"</span>";    
        	//获取放置元素的目标位置
        	var obj=$('.cart-cartlist li:last');
        	//添加元素，通过ui获取被拖拽的元素对象
            $( "<li />" ).html( tmphtml ).addClass('cartshow')
                         .insertAfter( obj );
            //删除提示的元素
            $('.placeholder').remove();
        }
    });
    });