<div class="top">
			<div class="top_inner">
            	{:C('ftx_qq_qun_intro')}
                <?php
                	$qq=C('ftx_qq_qun');
                	if(!empty($qq)){
				?>
				<a class="join_qq" href="{:C('ftx_qq_qun')}" target="_blank"><img src="__STATIC__/tkjidicms/images/v_qqun.png" /></a>
                <?php
					}
				?>
				<ftx:nav type="lists" style="top">
                  <volist name="data" id="val">
                  <a href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a>
                  </volist>
                </ftx:nav> 
                <div class="right">
                <notempty name="visitor">
                <span class="v_center">
                    <img src="{:avatar($visitor['id'], 22)}" alt="{$visitor.username}">
                    个人中心
                    <span class="lit_s"></span>
                    <span class="center_hide">
                        <a href="{:U('user/info')}">个人资料</a>
                        <a href="{:U('user/mingxi')}">我的积分</a>
                        <a href="{:U('user/shai')}">我的晒单</a>
                        <a class="no_boder" href="{:U('user/logout')}">退出登录</a>
                    </span>
                </span>
                <else />
                <a class="login" href="{:U('user/login')}">亲，请登录</a>
                &nbsp;或&nbsp;
                <a href="{:U('user/register')}">免费注册</a>
                </notempty>
                <a class="user" href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" target="_blank">在线客服</a>
				</div>
			</div>
		</div>