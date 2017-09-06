<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head_user" />
</head>
<body>
    <include file="public:header_user" />
    <div class="c_cont">
        <div class="c_top">
            老客户登录
            <span>没有账号，<a href="{:U('user/register')}">马上注册</a></span>
        </div>
        <div class="c_con">
            <form action="{:U('user/login')}" name="login_form" method="post" id="login_form" onSubmit="javascript: return submitok();">
                <div class="tips">
                    <span></span>
                </div>
                <label for="">{:L('username')}:</label>
                <!--<input class="c_name span" type="password">-->
                <input type="text" class="normal-input c_name span" placeholder="用户名/邮箱" name="username">
                <span ></span><br>
                <label for="">{:L('password')}:</label>
                <input type="password" class="normal-input c_pass span"  placeholder="请输入密码" name="password" autocomplete="off">
                <span></span>
                <!--<input class="c_pass span" type="password">--><br>
                <input class="c_sub" type="submit" value="立即登录" >
                <input type="hidden" name="from" value="{$from}" />
                <input type="hidden" name="action" id="login" value="login"/>
                
                <br>
                <a href="{:U('forget/index')}">忘记密码</a>
                <notempty name="oauth_list">
                <div class="c_img">
                    <span>合作网站好登录</span><br>
                    <volist name="oauth_list" key="k" id="val">
				        <a href="{:U('oauth/index', array('mod'=>$val['code']))}"  class="{$val.code}"><img src="__STATIC__/jwap/images/wap_{$val.code}.png" alt=""></a>
		            </volist>
                </div>
                </notempty>
            </form>
            {:R('advert/index', array(4), 'Widget')}
        </div>
    </div>
    <include file="public:footer_user" />
    <script src="__STATIC__/tkjidicms/js/reg_log.js"></script>
</body>


</html>
