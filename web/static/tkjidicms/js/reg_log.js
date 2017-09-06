function submitok()
{
	var username=$(".c_name").val();
	var pwd=$(".c_pass").val();
	var flag=true;
	$.ajax({  
         type : "post",  
          url : "/?m=user&a=login",  
          data : {username:username,password:pwd,rand:Math.random()},  
          async : false,  
          success : function(data){  
		
		  var reg=data.msg;
		  var tap=data.data;
		
            if(reg!=0||reg!='0'){
				if(tap=="")
				{
					$(".c_name").next().hide();
					$(".c_pass").next().hide();
					$(".tips span").html('').hide();
				}
				else
				{
					if(tap==1||tap=='1')
					{
						//$(".c_name").next('span').show();
						$(".c_name").next().css('display','inline-block');
					}
					if(tap==2||tap=='2')
					{
						$(".c_pass").next('span').css('display','inline-block');
					}
					if(tap==3||tap=='3')
					{
						$(".tips span").html(reg).show();
						$(".c_name").next().css('display','inline-block');
						$(".c_pass").next('span').css('display','inline-block');
					}
					flag=false;
				}
			}
			else
			{
				$(".c_name").next().css('display','inline-block');
				$(".c_pass").next('span').css('display','inline-block');
				$(".tips span").html('用户名或密码错误！').show();
				flag=false;
			} 
          }  
     });
	return flag;
	
	
}

$(function() {
        $(".c_con form .span").focus(function() {
            $(this).css("borderColor","#FF3F3F");
            //$(this).next().css("display","inline-block");
        }).blur(function() {
            $(this).css("borderColor","#EFEFEF");
        })
        //登录注册验证
        $(".c_name").focus(function() {
            $(".c_con .tips .p_num").addClass("ts");
        }).blur(function() {
             var that=$(this);
            $('.c_con .tips .p_num').removeClass("ts");
			var username=that.val();
			//var password=$(".c_pass").val();
			if(username==""||username==undefined)
			{
				//that.next().show();
				 $(this).next().css("display","inline-block");
			}
			else
			{
				that.next().hide();
			}
            
        })
		
		$(".c_pass").focus(function() {
            $(".c_con .tips .p_num").addClass("ts");
        }).blur(function() {
             var that=$(this);
            $('.c_con .tips .p_num').removeClass("ts");
			var username=that.val();
			
			//var password=$(".c_pass").val();
			if(username==""||username==undefined)
			{
				//that.next().show()
				$(this).next().css("display","inline-block");
			}
			else
			{
				that.next().hide();
			}
        })
		
        //邮箱注册验证
        $(".c_name2").focus(function() {
            $(".c_con .tips .p_email").addClass("ts");
        }).blur(function() {
             var that=$(this);
            $('.c_con .tips .p_email').removeClass("ts");
            $.post("a.json",$(".c_name").val(),function(data) {
                    var reg=data.reg2;
                    if(reg2==0){
                        that.next().addClass("c_icon");
                    }
            })
        })
        $(".c_pass2").blur(function() {
            var val1=$(".c_pass").val();
            var val2=$(this).val();
            if(val1==val2&&val1.length>5){
                $(this).next().addClass("c_icon");
            }
        })
        $(".r_bottom .r_name").blur(function() {
            $.post("a.json",$(this).val(),function(data) {
                var reg=data.reg3;
                if(reg==0){
                    $(".sen_ses").text(reg);
                    $(".cen_no").removeClass("active");
                    $(".cen_yes").addClass("active");
                }else{
                    $(".cen_yes").removeClass("active");
                    $(".cen_no").addClass("active");
                }
            })
        })

    })