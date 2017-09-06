<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<header>
        <img class="back" src="__STATIC__/tkjidicms/wap/img/register/back.png" />
        <p class="hd-name">{$page_title}</p>
        <span class="detail">发布</span>
    </header>
     <form class="j_upload" method="post" action="{:U('user/shai')}" >
				<input class="kouling" type="number" placeholder="请粘贴正确的淘宝订单号" value="" name="order_num" />
				<p class="expain">Tips:可复制淘宝订单号到上边的输入框</p>
				<div class="hand">
					<p>到手价:</p>
					<input class="price" type="number" value="" name="order_price" />
				</div>
				<div class="pingLun">
					<textarea class="text" name="desc">请输入您的评价,审核通过会奖励相应积分。</textarea>
					<div class="pingImg"></div>
					<div class="bottom">						
	                    <a href="javascript:;" class="a-upload">
						    <input type="file" name="" id="photo" onClick="change()">添加图片
                            <input name="shai_pic" id="shai_pic" type="hidden" value="" />
                             <!--onChange="change()"-->
						</a>
                        
					</div>
				</div>
				<div class="noName">
					<!--<div class="check">
						<div class="moRen"></div>
						<span class="sp1">匿名</span>
						<span class="sp2">您的评价会匿名展现</span>
					</div>-->
				</div>
				<div class="tiShi">
					提示：提交您通过本平台复制淘口令下单购买的商品订单号，以及提交一张实物图进行晒单，可获得积分奖励！
				</div>
			</form>
		</div>
        <script type="text/javascript">
		var FTXIAER = {
		 root: "__ROOT__",
		 site: "{:C('ftx_site_url')}",
		 uid: "{$visitor['id']}", 
		 loginurl:"{:U('user/login')}",
		 userurl:"{:U('user/index')}",
		 username:"{$visitor['username']}",
		 face:"{:avatar($visitor['id'], 64)}",
		 url:{}
		}
		
		
		</script>
        <script src="__STATIC__/tkjidicms/js/jquery.ui.widget.js"></script>
		<script src="__STATIC__/tkjidicms/js/jquery.iframe-transport.js"></script>
        <script src="__STATIC__/tkjidicms/js/jquery.fileupload.js"></script>
		<script>
			
			/*返回*/
			$(".back").click(function(){
				window.history.back()
			})
			
			
			/*提交*/
			$(".detail").click(function(){
				
				var kouflag;
				var numDing=$(".kouling").eq(0).val().length;
				
				if(numDing==16 || numDing==17){
					kouflag=true;
				}else{
					kouflag=false;
				}
				var price=$(".price").val();
				var text=$(".text").val();
				var shai_pic=$("#shai_pic").val();
				if(flag1 && kouflag && price && text && shai_pic){
					$("form").submit();
				}
				else
				{
					alert("请填写正确信息");
				}
			})
			/*评论*/
			$(".text").focus(function(){
				if($(this).val()=="请输入您的评价,审核通过会奖励相应积分。"){
					$(this).val("");
				}				
			})
			$(".text").blur(function(){
				if($(this).val()==""){
					$(this).val("请输入您的评价,审核通过会奖励相应积分。");
					$(".a-upload").css("margin-left","-14rem")
				}
				$(".a-upload").css("margin-left","2rem")
			})
			/*上传图片*/
			var flag1=true;
			
			//function change(){
//				$(".bottom").append("<img class='delete' src='img/square/delete.png'><img class='relImg' src='img/square/relImg.png'>")	
//				/*删除图片*/
//	         	$(".delete").click(function(){
//	         		$(".relImg").remove();
//	         		$(this).remove();
//	         	})
//	         	
//			}
			
			function change()
			{
				 var len=$(".bottom img").length;
				 if(parseInt(len)<1)
				 {
					 $("#photo").attr("disabled",false);
					 var url = FTXIAER.root + '/?m=user&a=upfilemore';
					  $('#photo').fileupload({
						  url:url,
						  dataType:"json",
						  done:function(e,data) {
							  
							  alert(data.result.msg);
							  if(data.result.sta)
							  {
							  //$(".j_img img").attr("src",data.result.previewSrc);
							  $(".bottom").prepend('<div><img class="delete" src="/static/tkjidicms/wap/img/square/delete.png"><img src="'+data.result.previewSrc+'" class="relImg" /></div>');
							  $("#shai_pic").val($("#shai_pic").val()+","+data.result.previewSrc);
							  $(".delete").click(function(){
								  $(".relImg").parent('div').remove();
								  $(this).remove();
								  $("#shai_pic").val("");
								  $("#photo").attr("disabled",false);
							  })
							  }
						  }
					  })
					  
				 }
				 else
				 {
					 $("#photo").attr("disabled",true);
				 }
				 
			}

			/*上传成功后回调*/
			/*$("#photo").on("fileuploaded", function() {
				console.log("chenggong")
				
			}*/
			/*function onSubmit(){                           
                var AllImgExt=".jpg|.jpeg|.gif|.bmp|.png|";  
                var extName = file.substring(file.lastIndexOf(".")).toLowerCase();//（把路径中的所有字母全部转换为小写）          
                if(AllImgExt.indexOf(extName+"|")==-1)          
                {  
                    ErrMsg="该文件类型不允许上传。请上传 "+AllImgExt+" 类型的文件，当前文件类型为"+extName;  
                    alert(ErrMsg);  
                    flag1=false;  
                }  
             	flag1=true;
             	
         	}  */
         	
         	/*默认*/
         	var flag2=false; 	
			$(".moRen").click(function(){
				if(flag2){
					$(".moRen").css({"background":"url(./static/tkjidicms/wap/img/add/moren.png)","background-size":"cover"})
					flag2=false;
				}else{
					$(".moRen").css({"background":"url(./static/tkjidicms/wap/img/square/moren.png)","background-size":"cover"})
					flag2=true
				}
			})
		</script>
	</body>
</html>

