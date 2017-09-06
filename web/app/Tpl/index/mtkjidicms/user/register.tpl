<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/> 
	<!--注册表单-->
    <form action="{:U('user/register')}" name="register_form" method="post" id="register_form">
        <input name="qq" id="qq" class="phoneNum" type="text" placeholder="QQ" onKeyUp="value=value.replace(/[^\d]/g,'')" value="" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" onBlur="var qq=$(this).val();if(qq=='') return false;qq=qq+'@qq.com';if($('#emailMatch').val()==''){$('#emailMatch').val(qq)}" maxlength="11" />
        <div class="error-box tip">
        	<span class="tip" id="qq_warn" warn="请填写常用QQ号"></span>							
        </div> 
        
        
        <input name="email" id="email" class="email" type="text" placeholder="邮箱" /><!--手机号-->
        <div class="error-box tip">
        	<span class="tip" id="email_warn" warn="请填写常用邮箱"></span>							
        </div>
        <input name="username" class="username" id="username" type="text" placeholder="用户名" /><!--手机号-->
         <div class="error-box">
            <span class="tip" id="username_warn" warn="用户名长度3-15位字母或数字"></span>								
        </div>
        <input name="password" id="password" class="passWord" type="password" placeholder="密码" /><!--密码-->
        <div class="error-box"><span class="tip" id="password_warn" warn="密码6～16位，区分大小写"></span></div>
        <input name="repassword" id="repassword" class="passWord2" type="password" placeholder="确认密码" /><!--确认密码-->
        <div class="error-box" id="repassword_warn"  warn=""></div>
        <div class="fo-code"><!--图片验证码-->
            <input type="text" placeholder="图片验证码" name="captcha" id="captcha" />
            <div class="fo-co-img">
                <img src="{:U('captcha/'.time())}" onClick="this.src='{:U('captcha/'.time())}&a='+Math.random()" data-url="{:U('captcha/js_rand')}" id="J_captcha_img" />
            </div>
        </div>
        
        <div class="fo-reg"><!--注册按钮-->
            <!--<a id="register">
                注册
            </a>-->
            <input id="register" type="submit" name="sub" class="sub" value="注册" autocomplete="off"/> 
        </div>
        <p class="text"><!--协议-->
            *注册代表同意<span>《服务协议》</span>
        </p>
         <a href="{:U('user/login')}">
        <div class="fo-old"><!--登录旧用户-->
           登录旧账号
        </div>
        </a>
        <input type="hidden" name="from" value="{$from}" />
        <input type="hidden" name="action" id="reg" value="reg" />
        <input type="checkbox" class="ck" name="agreement" checked="checked" id="user_protocol" style="display:none;">
    </form>


</div>
</body>
</html>