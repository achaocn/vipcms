<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head_user" />
<link rel="stylesheet" type="text/css" href="/static/tkjidicms/css/login.css"/>
</head>
<body>
    <include file="public:header_user" />
    <div class="c_cont">
        <div class="c_top">
            新用户注册
            <span>已有账号，<a href="{:U('user/login')}">马上登录</a></span>
        </div>
        <div class="c_con">
           <form action="{:U('user/register')}" name="register_form" method="post" id="register_form" class="login-center">
                <div class="tips">
                    
                </div>

                <div class="user">
                	<label class="">QQ号码：</label>
                	<input name="qq" type="text" id="qq" placeholder="QQ号码" onKeyUp="value=value.replace(/[^\d]/g,'')" value="" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" onBlur="var qq=$(this).val();if(qq=='') return false;qq=qq+'@qq.com';if($('#emailMatch').val()==''){$('#emailMatch').val(qq)}" maxlength="11" class="normal-input c_name2" autocomplete="off">
                    
                </div>
                  <div class="error-box tip">
                    <span class="tip" id="qq_warn" warn="请填写常用QQ号"></span>
                    <span id="check_qq" class="checking">检查中...</span>
                    </div>   
                <div class="user">
                <label class="">邮箱地址：</label>
                <input type="text" class="normal-input c_name2" id="emailMatch" placeholder="请输入常用邮箱地址" name="email" autocomplete="off">
                		
                </div>
                <div class="error-box tip">
                    <span class="tip" id="email_warn" warn="请填写常用邮箱"></span>
                    <span id="check_email" class="checking">检查中...</span>
                    </div>
                
                  <div class="user">
                      <label class="normal">用户名：</label>
                      <input type="text" class="normal-input" placeholder="请输入用户名" name="username" id="username" autocomplete="off">
                      
                      
                      
                  </div>
                      <div class="error-box">
                          <span class="tip" id="username_warn" warn="用户名长度6-15位字母或数字"></span>
                          <span id="check_user" class="checking">检查中...</span>
                      </div>
                   <div class="user">
                      <label class="">创建密码：</label>
                      <input type="password" class="normal-input" placeholder="请输入密码" id="password" name="password" autocomplete="off"></div>
                      <div class="error-box"><span class="tip" id="password_warn" warn="密码6～16位，区分大小写"></span></div>

                  <div class="user">
                      <label class="">确认密码：</label>
                      <input type="password" class="normal-input" placeholder="请确认密码"  id="repassword" name="repassword" autocomplete="off">
                      </div>
                      <div class="error-box" id="repassword_warn"  warn=""></div>


                  <div class="user">
                      <label class="">验证码：</label>
                      <input  class="normal-input code-input ver_code" type="text" placeholder="验证码" name="captcha"  id="captcha" autocomplete="off">
                       <div class="verification-code get_ver">
                          <img alt="验证码" title="点击更换" style="cursor:pointer;" onClick="this.src='{:U('captcha/'.time())}&a='+Math.random()" src="{:U('captcha/'.time())}" id="J_captcha_img" class="captcha_img" alt="{:L('captcha')}" data-url="{:U('captcha/js_rand')}"></div>
                      </div>
                     
                     <div class="error-box"><span class="tip" id="repassword_warn" warn="确认密码6～16位，区分大小写"></span></div>
					 <input type="hidden" name="from" value="{$from}" />
					  <input type="hidden" name="action" id="login" value="login" />
                     <input class="c_sub" type="submit" value="立即注册" autocomplete="off"><br>
                     
                      
					
                     
                    
                <div class="pro_out">
                	<input type="checkbox" class="ck" name="agreement" checked="checked" id="user_protocol">	
                	
                     我已阅读并接受<a href="javascript:;" id="J_protocol_btn">《用户协议》</a>
                    
                </div>
                
                <div class="c_img">
                	<notempty name="oauth_list">
                    <span>合作网站好登录</span><br>
                    <volist name="oauth_list" key="k" id="val">
					<a href="{:U('oauth/index', array('mod'=>$val['code']))}"  class="{$val.code}"><img src="__STATIC__/jwap/images/wap_{$val.code}.png" alt=""></a>
					</volist>
                    </notempty>
                </div>
            </form>
            {:R('advert/index', array(5), 'Widget')}
        </div>
    </div>
    <script charset="utf-8" type="text/javascript" src="__STATIC__/red/js/jquery.validate.js" ></script>
    <script type="text/javascript">
$(function(){
	//获取焦点事件
	$(':input').focus(function(){
    	//高亮边框
    	$('#register_form li.active').removeClass('active');
    	$(this).parents('li').addClass('active');
		var name=$(this).attr('name');
    	$('#'+name+'_warn').attr('warn')==undefined || $('#'+name+'_warn').html('<p class="msg_error msg_error_gray">'+$('#'+name+'_warn').attr('warn')+'</p>');//清除之前验证信息
	});
	//默认获取焦点
	$('input[name=qq]').focus();
});
$(function(){
    $('#register_form').validate({
        errorPlacement: function(error, element){
          var error_td = element.parent('div').next('div');
		  // var error_td = element.parent('div').find('div');
           error_td.find('.tip').hide();
           error_td.append(error);
        },
        success       : function(label){
            label.addClass('tip').html('<strong class="ok"></strong>');
        },
        onkeyup: false,
        rules : {
            username : {
                required : true,
				username    : true,
               /* byteRange: [3,15,'utf-8'],*/
				remote   : {
                    url :'index.php?m=ajax&a=check_user',
                    type:'post',
                    data:{
                        username : function(){
                            return $('#username').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#check_user');
                        _checking.prev('.tip').hide();
                        _checking.next('.error-box').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#check_user').hide();
                    }
                }
            },
			qq : {
                required : true,
                range:[1000,999999999999],
				/*remote   : {
                    url :'index.php?m=ajax&a=check_qq',
                    type:'post',
                    data:{
                        qq : function(){
                            return $('#qq').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#check_qq');
                        _checking.prev('.tip').hide();
                        _checking.next('.error-box').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#check_qq').hide();
                    }
                }*/
            },
            password : {
                required : true,
                minlength: 6
            },
	    repassword : {
                required : true,
                minlength: 6,
				equalTo:'#password'	
            },
            email : {
                required : true,
                email    : true,
				remote   : {
                    url :'index.php?m=ajax&a=check_email',
                    type:'post',
                    data:{
                        email : function(){
                            return $('#emailMatch').val();
                        }
                    },
                    beforeSend:function(){
                        var _checking = $('#check_email');
                        _checking.prev('.tip').hide();
                        $(_checking).show();
                    },
                    complete :function(){
                        $('#check_email').hide();
                    }
                }
            },					
			captcha : {
                required : true,
                rangelength:[4,4]
            },
            agree : {
                required : true
            }
        },
        messages : {
            username : {
                required : '<strong class="error"></strong><p class="msg_error">用户名不能为空</p>',
                email: '<strong class="error"></strong><p class="msg_error">用户名必须在6-15个字母或数字</p>',
				remote   : '<strong class="error"></strong><p class="msg_error">用户名已存在</p>'
            },
            password  : {
                required : '<strong class="error"></strong><p class="msg_error">密码不能为空</p>',
                minlength: '<strong class="error"></strong><p class="msg_error">密码长度应在6-20个字符之间</p>'
            },
	    repassword  : {
                required : '<strong class="error"></strong><p class="msg_error">密码不能为空</p>',
                minlength: '<strong class="error"></strong><p class="msg_error">密码长度应在6-20个字符之间</p>',
				equalTo:'<strong class="error"></strong><p class="msg_error">两次输入的密码不同</p>'
            },
            email : {
                required : '<strong class="error"></strong><p class="msg_error">邮箱不能为空</p>',
                email    : '<strong class="error"></strong><p class="msg_error">邮箱格式错误</p>',
				remote   : '<strong class="error"></strong><p class="msg_error">邮箱已存在</p>'
            },
			qq : {
                required : '<strong class="error"></strong><p class="msg_error">您必须填写您的QQ号码</p>',
                range:'<strong class="error"></strong><p class="msg_error">QQ号码位数错误</p>',
				remote:'<strong class="error"></strong><p class="msg_error">QQ号码已经注册</p>'
                				
           },
            captcha : {
                required : '<strong class="error"></strong><p class="msg_error">验证码不能为空</p>',
				rangelength    : '<strong class="error"></strong><p class="msg_error">位数错误</p>'
            },
            agree : {
                required : '<strong class="error"></strong><p class="msg_error">您必须阅读并同意该协议</p>'
            }
        }
    });
	});

</script>
<script>
var FTXIAER = {
    root: "__ROOT__",
    uid: "<?php echo $visitor['id'];?>", 
	chaxunurl: "{:U('ajax/check_item')}",
    url: {}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<script>
$(function(){
    $('#J_protocol_btn').live('click', function(){
                var content = $('#J_protocol').html();
                $.dialog({id:'protocol', title:lang.user_protocol, content:content, padding:'', fixed:true, lock:true});
            });
});
</script>
    <include file="public:footer_user" />
</body>
<div id="J_protocol" class="hide"><pre class="dialog_protocol clr6">{:C('ftx_reg_protocol')}</pre></div>
</html>

