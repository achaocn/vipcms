<div id="alert_landing">
  <div class="tip_inner">
      <!--<div class="vt_top">
          登录
          <img src="__STATIC__/tkjidicms/images/clear.png" alt="">
      </div>-->
      <form action="{:U('user/login')}" method="post" class="log_form" id="J_dlogin_form">
      	<div id="J_login_fail" class="tip_info">{:L('username_require')}</div>
          
          
          <label class="v_name" for="">用户名</label>
          <input class="v_phone user-input J_username" type="text" placeholder="用户名/邮箱" name="username">
          <span class=phone_mark></span><br>
          <label class="v_pass" for="">密码</label>
          <input class="v_word user-input J_password" type="password" name="password" placeholder="请输入密码">
          <span class="word_mark"></span><br>
          <div class="v_forget">
              <a href="{:U('forget/index')}">忘记密码？</a>
              <span class="no_accound">
                  没有账号?
                  <a href="{:U('user/register')}">马上注册</a>
              </span>
          </div>
          <input class="v_login" type="submit" value="登录">
      </form>
      <div class="v_cooper">
      	 <notempty name="oauth_list">
          合作网站账号登录
          <volist name="oauth_list" key="k" id="val">
	    	<a href="{:U('oauth/index', array('mod'=>$val['code']))}" class="pub {$val.code}" title="{$val.name}"><img src="__STATIC__/jwap/images/wap_{$val.code}.png" alt=""></a>
		 </volist>
      </div>
  </div>
</div>

