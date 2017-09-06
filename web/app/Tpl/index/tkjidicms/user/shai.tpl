<!DOCTYPE html>
<html lang="en">
<head>

<include file="public:head_user" />
</head>
<body>
	<include file="public:toper" />
    <include file="public:header_user" />
    
    <div class="c_center">
    	<include file="user/left" />
        
        <div class="cen_right2">
            <div class="r2_title">
                <img src="{:avatar($info['id'], 100)}" alt="">
                <span>
                    {:$info['nickname']?$info['nickname']:$info['username']}<br>
                    晒单得积分：您共晒单<span>{$shai_num}</span>次，获得<span>{:$shai_score?$shai_score:0}</span>积分
                </span>
            </div>
            <form class="j_upload" method="post" action="{:U('user/shai')}" onSubmit="return check();">
                <label for="">订单号:</label>
                <input class="j_name" type="text" placeholder="请添加您要晒单的订单号" name="order_num"><br>
                
                
                <label for="">到手价:</label>
                <input class="j_price" type="text" placeholder="请添加到手价" name="order_price"><br>
                
                <label for="" class="img_up">图片上传:</label>
                <span class="j_img">
                    
                   
                </span>
                <input type="file" id="file_input">
                <span class="j_click">点击上传晒单图片</span><br>
                <label class="j_descrip" for="">文字描述:</label>
                <textarea class="j_text" name="desc" id="" placeholder="请添加您的晒单内容，不超过100个字符。"></textarea><br>
                <input name="shai_pic" id="shai_pic" type="hidden" value="" />
                <input class="j_btn" type="submit" value="提交">
            </form>
        </div>
	</div>
    <include file="public:footer_user" />
    
</body>
<script src="__STATIC__/tkjidicms/js/conmen.js"></script>
<script src="__STATIC__/tkjidicms/js/jquery.ui.widget.js"></script>
<script src="__STATIC__/tkjidicms/js/jquery.iframe-transport.js"></script>
<script src="__STATIC__/tkjidicms/js/jquery.fileupload.js"></script>
<script>
	function check()
	{
		 var num=$(".j_name").val().length;
		 if(num!=16&&num!=17)
		 {
			alert("订单号为16或17位，输入错误");
			return false;
		 }
		 var order_price=$(".j_price").val();
		
		//var pattern = /[1-9]\d*.\d*|0.\d*[1-9]\d*/,
		
		 if(!(/^(0|[1-9][0-9]{0,9})(\.[0-9]{1,2})?$/.test(order_price))||order_price==0)
		 { 
        	alert("请填写正确的价格"); 
        	return false; 
    	 } 
		 var numx=$(".j_text").val().length;
		 if(numx>100)
		 {
			 alert("输入超过规定字数");
			 return false
		 }
		 var picvalue=$("#shai_pic").val();
		 if(picvalue=="")
		 {
			 alert("请上传晒单图片");
			 return false
		 }
		 
		 return true;
	}
    $(function(){
		$('#file_input').click(function() {		
           var len=$(".j_img img").length;
		   if(parseInt(len)<1)
		   {
			   $(this).attr("disabled",false);
			   var url = FTXIAER.root + '/?m=user&a=upfilemore';
				$('#file_input').fileupload({
					url:url,
					dataType:"json",
					done:function(e,data) {
						alert(data.result.msg);
						//$(".j_img img").attr("src",data.result.previewSrc);
						$(".j_img").append('<img src="/'+data.result.previewSrc+'" />');
						$("#shai_pic").val($("#shai_pic").val()+","+data.result.previewSrc);
					}
				})
				
		   }
		   else
		   {
			   $(this).attr("disabled",true);
			}
            //$(this).val($(this).val().slice(16,16));
        })
       
        
    })
</script>
</html>