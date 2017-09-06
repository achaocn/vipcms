<ul class="cen_left">
            <li>
                <div <if condition="ACTION_NAME eq 'info' or ACTION_NAME eq 'password' or ACTION_NAME eq 'addresslist' or ACTION_NAME eq 'bind' or ACTION_NAME eq 'union'">class="on"</if>>
                    <span class="cen_set"></span>账户设置
                </div>
                <ul>
                    <li><a class="<if condition='ACTION_NAME eq "info"'>check</if>" href="{:U('user/info')}">个人资料</a></li>
                    <li><a class="<if condition='ACTION_NAME eq "password"'>check</if>" href="{:U('user/password')}">修改密码</a></li>
                    <li><a class="<if condition='ACTION_NAME eq "addresslist"'>check</if>" href="{:U('user/addresslist')}">收货地址</a></li>
                    <li><a class="<if condition='ACTION_NAME eq "bind"'>check</if>" href="{:U('user/bind')}">账号绑定</a></li>
                    <li><a class="<if condition='ACTION_NAME eq "union"'>check</if>" href="{:U('user/union')}">邀请好友</a></li>
                </ul>
            </li>
            <li>
                <div <if condition="ACTION_NAME eq 'shailist' or ACTION_NAME eq 'shai'">class="on"</if>>
                    <span class="cen_sun"></span>我的晒单
                </div>
                <ul>
                    <li><a class="<if condition='ACTION_NAME eq "shailist"'>check</if>" href="{:U('user/shailist')}">晒单记录</a></li>
                    <li><a class="<if condition='ACTION_NAME eq "shai"'>check</if>" href="{:U('user/shai')}">我要晒单</a></li>
                </ul>
            </li>
            <li>
                <div <if condition="ACTION_NAME eq 'mingxi' or ACTION_NAME eq 'gift'">class="on"</if>>
                    <span class="cen_point"></span>我的积分
                </div>
                <ul>
                    <li><a class="<if condition='ACTION_NAME eq "mingxi"'>check</if>" href="{:U('user/mingxi')}">当前积分</a></li>
                    <li><a class="<if condition='ACTION_NAME eq "gift"'>check</if>" href="{:U('user/gift')}">积分兑换</a></li>
                   <!-- <li><a href="个人中心-幸运抽奖.html">幸运抽奖</a></li>-->
                </ul>
            </li>
        </ul>
		<!--<div class="user-bind">
            <div style="float:left">绑定：</div> 
            <a href="{:U('user/bind')}">
                <volist name="oauth_list" id="val">
                    <if condition="$val.isbind eq 1">
                    <div title="绑定后可用{$val.name}{:C('ftx_site_name')}" class="ico {$val.code}_sync"></div>
                    <else/>
                    <div title="绑定后可用{$val.name}{:C('ftx_site_name')}" class="ico {$val.code}_sync_no"></div>
                    </if>
                </volist>
                    </a>
        </div>
-->

<script type="text/javascript">
$(function(){
	$('.cen_left').css( 'height' , $('.right').css('height') )
	
});
</script>