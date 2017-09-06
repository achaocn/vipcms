<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
		
       <include file='public:header'/>
        
      	<div class="content">
          <input class="name" id="{$tableval}" type="{$type}" value="{$value}" />
          <input type="hidden" id="tableval" value="{$tableval}" />
      	</div>
      	<div class="save">
          <a href="javascript:;">保存</a>
      	</div>
	</div>
		<script>
			/*返回上一页*/
			/*$(".back").click(function(){
				//window.history.go();
				window.location.href('{:U("user/minfo")}');
			})*/
			/*修改规则*/
			$(".name").focus(function(){
				$(this).select()
			})
			var act='{$act}';
			/*保存*/
			$(".save a").click(function(){
										
				if(act==1)
				{
					var a=$(".name").val()
					if(a.length>=8){
						alert("昵称太长");
						$(".name").focus();
						return false;
					}
				}
				else if(act==2)
				{
					if(!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($("#email").val())) { 
						alert("邮箱格式错误!"); 
						$("#email").focus(); //让邮箱文本框获得焦点
						return false;
					}
				}
				else if(act==3)
				{
					if(!/0?(13|14|15|18)[0-9]{9}/.test($("#mobile").val()))
					{
						alert("手机格式错误!"); 
						$("#mobile").focus(); //让邮箱文本框获得焦点
						return false;
					}
				}
					var data={tableval:$("#tableval").val(),name:$(".name").val(),do:'myinfo',randnum:Math.random()};
					$.ajax({
					   url: '{:U("user/info")}',
					   type: "post",
					   async:false,
					   data: data,
					   dataType: "json",
					   success: function (e) {   //成功后回调
							alert(e.msg);
							window.location.href='/?m=user&a=minfo';
        			   },
				   });
				
			})
		</script>
	</body>
</html>
