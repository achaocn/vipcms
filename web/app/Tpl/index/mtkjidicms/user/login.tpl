<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/> 
 	<form action="{:U('user/login')}" name="login_form" method="post" id="login_form">
				<input name="username" id="username" class="phoneNum" type="text" placeholder="用户名" /><!--手机号-->
				<input name="password" id="password" class="passWord" type="password" placeholder="密码" /><!--密码-->
				<div class="fo-forget">
					<a href="javascript:;" onClick="return confirm(&quot;为了您的账户安全，请使用电脑找回密码。&quot;)" class="free-reg"><span>忘记密码？</span></a>
				</div>
                
                <div style="min-height:22px;margin-top: 3%">
                        <p style="display: none;" class="wap-tips"></p>
                </div>
                
				<div class="fo-log"><!--注册按钮-->
                	<input type="hidden" name="from" value="{$from}" />
                    <input type="hidden" name="action" id="" value="login" />
                    <a id="login">登录</a>     
				</div>
				<a href="{:U('user/register')}"><div class="fo-create">创建新用户</div></a>
			</form>
			<div class="sigma-content">
            <notempty name="oauth_list">
		    <div class="sigma-middle-line">
		        <span class="sigma-line-text">OR</span>
		    </div>
            </notempty>
			</div>
			<!--第三方登录-->
            <notempty name="oauth_list">
			<div class="third">
				第三方账号登录
			</div>
			<div class="shadow">
				<div id="third">
					<p class="th-text">
						<span class="sp1">第三方账号登录</span>
						<span class="sp2" id="close">
						</span>
					</p>
					<div class="th-img">
						<ul>
                        	<volist name="oauth_list" id="val">
				             <li> <a href="{:U('oauth/index', array('mod'=>$val['code']))}"  class="{$val.code}"><img src="/static/jwap/images/wap_{$val.code}.png" /></a></li>
		                      </volist>
							
						</ul>
					</div>
				</div>
			</div>
            </notempty>					
		</div>
		<script>
			$(".third").click(function(){
				$(".shadow").show()
			})
			$("#close").click(function(){
				$(".shadow").hide()
			})
			
		</script>
	</body>
    <script type="text/javascript">
        $(function () {            
            var ehtml = '<i><img src="/static/jwap/images/tips-ico.png" /></i>';

            function checkUserName() {
                var value = 
				$("#username").val();
                var length = len(value);
                if (value == '' || value.length == 0) {
                    $(".wap-tips").html(ehtml + "你还没有输入用户名哦~").show();
                    return false;
                }
                else if (length < 4 || length > 25) {
                    $(".wap-tips").html(ehtml + "用户名长度应为4~25个字符,一个中文算2个字符").show();
                    return false;
                } else {
                    $(".wap-tips").hide();
                }
                return true;
            }
            function checkPassword() {
                var value = $("#password").val();
                if (value == '' || value.length == 0) {
                    $(".wap-tips").html(ehtml + "你还没有输入密码哦~").show();
                    return false;
                } else if (value.length < 6) {
                    $(".wap-tips").html(ehtml + "密码至少6个字符~").show();
                    return false;
                } else {
                    $(".wap-tips").hide();
                }
                return true;
            }

            function len(value) {
                var total = 0;
                for (i = 0; i < value.length; i++) {
                    var char = value.charCodeAt(i);
                    if ((char >= 0x0001 && char <= 0x007e) || (0xff60 <= char && char <= 0xff9f)) {
                        total++;
                    }
                    else {
                        total += 2;
                    }
                }
                return total;
            }
           /*提交*/
			$("#login").on("click",function(){
				if(checkUserName() && checkPassword()){
					
					$("form").submit();
				}else{
					
				}				
			})
        });
		
    </script>
</html>