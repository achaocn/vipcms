<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/>
             <form class="content" action="{:U('user/password')}" method="post" id="editform">
				<input class="before" type="password" placeholder="原密码" name="old" value="{$info.password}" readonly />
				<input class="new1" type="password" name="newpassword" placeholder="新密码"/>
				<input class="again" type="password" name="agin" placeholder="重复密码"/>
			</form>
			<div class="save">
				<a href="javascript:;">保存</a>
			</div>
		</div>
		<script>
			/*返回*/
			
			var flag1;
			var flag2;
			var flag3;
			var flag4;
			$(".save a").click(function(){
				var before=$(".before").val();
				var new1=$(".new1").val();
				var again=$(".again").val();
				
				flag1=true;
				/*判断新密码是否为空*/
				if(new1==""){
					flag2=false
				}else{
					flag2=true;
				}
				/*判断再次输入密码是否为空*/
				if(again==""){
					flag3=false
				}else{
					flag3=true;
				}
				/*判断两次输入是否一致*/
				if(new1==again){
					flag4=true;
				}else{
					flag4=false;
				}
				/*判断全正确执行操作*/
				if(flag1 && flag2 && flag3 && flag4){
					
					var data={old:$(".before").val(),newpassword:$(".new1").val(),agin:$(".again").val(),randnum:Math.random()};
					$.ajax({
					   url: '{:U("user/password")}',
					   type: "post",
					   async:false,
					   data: data,
					   dataType: "json",
					   success: function (e) {   //成功后回调
							if(e.msg=="")
							{
								alert(e.status.info);
							}
							else
							{
								$(".new1").val("");
								$(".again").val("");
								alert(e.msg);
								if(e.status==200||e.status=="200")
								{
									window.history.back()
								}
							}
        			   },
				   });
					
					//console.log("正确")
				}else{
					if(flag1 && flag2 && flag3){
						alert("两次密码不一致")
					}else if(flag1 && flag2 && flag4){
						alert("请确认密码")
					}else if(flag1 && flag3 && flag4){
						alert("新密码不能为空")
					}else if(flag2 && flag3 &&flag4){
						alert("原密码不能为空")
					}else if(flag1 && flag2){
						alert("请确认密码")
					}else if(flag1 && flag3){
						alert("新密码不能为空")
					}else if(flag1 && flag4){
						alert("新密码不能为空")
					}else if(flag2 && flag3){
						alert("原密码不能为空")
					}else if(flag3 && flag4){
						alert("原密码不能为空")
					}else if(flag1){
						alert("新密码不能为空")
					}else{
						alert("原密码不能为空")
					}
				}
			})
		</script>
	</body>
</html>