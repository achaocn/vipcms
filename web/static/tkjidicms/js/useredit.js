

function check_email(divid,id)
{
	var pattern = /^(\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14})$/,
	str = $(divid).val();
	if(pattern.test(str))
	{
		return_result(divid,true,"");
		$.ajax({  
			  type : "post",  
			  url : "index.php?m=ajax&a=check_email_self",  
			  data : {email:str,id:id,rand:Math.random()},  
			  async : false,  
			  dataType: "text",
			  success : function(data){
				  if(data=='true')
				  {
					  return_result(divid,true,"");
				  }
				  else
				  {
					 return_result(divid,false,"邮箱已存在");
				  }
			  }
		})// end ajax
	}
	else
	{
		return_result(divid,false,"格式错误");
	}
	
}

function check_nickname(divid,id)
{
	var pattern = /^([A-Za-z0-9_\-\u4e00-\u9fa5]{3,16})$/,
	str = $(divid).val();
	
	if(pattern.test(str))
	{
		return_result(divid,true,"");
		$.ajax({  
			  type : "post",  
			  url : "index.php?m=ajax&a=check_nickname_self",  
			  data : {email:str,id:id,rand:Math.random()},  
			  async : false,  
			  dataType: "text",
			  success : function(data){
				  if(data=='true')
				  {
					  return_result(divid,true,"");
				  }
				  else
				  {
					 return_result(divid,false,"昵称已存在");
				  }
			  }
		})// end ajax
	}
	else
	{
		return_result(divid,false,"3-16位数字字母或汉字组成");
	}
	
	
}

function check_mobile(divid,id)
{
	var pattern = /^(0?(13|14|15|18|16|17|19)[0-9]{9})$/,
	str = $(divid).val();
	
	if(str!=""&&str!=undefined)
	{
		
		if(pattern.test(str))
		{
			return_result(divid,true,"");
			$.ajax({  
				  type : "post",  
				  url : "index.php?m=ajax&a=check_mobile_self",  
				  data : {email:str,id:id,rand:Math.random()},  
				  async : false,  
				  dataType: "text",
				  success : function(data){
					  if(data=='true')
					  {
						  return_result(divid,true,"");
					  }
					  else
					  {
						 return_result(divid,false,"手机已存在");
					  }
				  }
			})// end ajax
		}
		else
		{
			
			return_result(divid,false,"格式错误");
		}
	}
	else
	{
		
	}
	
	
}

function return_result(obj,flag,tips)
{
	$(obj).next('a').find('.cen_no').find("i").text(tips);
	if(flag)
	{
	//$(obj).next('a').find('.sen_ses').text("");
		$(obj).next('a').find('.cen_yes').addClass("active");
		$(obj).next('a').find('.cen_no').removeClass("active");
		error--;

	}else
	{
		var reg=tips;
		$(obj).next('a').find('.cen_yes').removeClass("active");
		$(obj).next('a').find('.cen_no').addClass("active");
		error++;
	}
	
	
}
var error=0;
var uid=$("#uid").val();
$(function(){
	$(".r_bottom #email").blur(function() {
          check_email('#email',uid)
    })
	$(".r_bottom #mobile").blur(function() {
          check_mobile('#mobile',uid)
    })
	$(".r_bottom #nickname").blur(function() {
          check_nickname('#nickname',uid)
    })
	$("#editform").submit(function(e){
  		
		check_nickname('#nickname',uid);
		check_mobile('#mobile',uid);
		check_email('#email',uid);
		if(error>0)
		return false;
		else
		return true;
		
	});
		   
})
