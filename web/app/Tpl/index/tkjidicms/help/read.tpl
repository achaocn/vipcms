<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
</head>
<body>
<include file="public:header" />
    <div class="v_cont3">
        <div class="meb_tltle">
            当前位置：<a href="{:C('ftx_site_url')}" title="首页">首页</a>><span>{$help.title}</span>
        </div>
        <div class="meb_out">
            <ul class="meb_left">
                <li class="left_li">
                    <span class="v_cen <if condition='$help.id eq 2 or $help.id eq 5'>on</if> ">商务合作<span></span></span>
                    <ul>
                        <li class="active"><a href="{:U('help/read','id=2')}">广告合作</a></li>
                        <li ><a href="{:U('help/read','id=5')}">免责声明</a></li>
                    </ul>
                </li>
                <li class="left_li">
                    <span class="v_cen <if condition='$help.id eq 10 or $help.id eq 8 or $help.id eq 9'>on</if>">帮助中心<span></span></span>
                    <ul>
                        <li><a href="{:U('help/read','id=10')}">常见问题</a></li>
                        <li><a href="{:U('help/read','id=8')}">消费保障</a></li>
                        <li><a href="{:U('help/read','id=9')}">积分规则</a></li>
                    </ul>
                </li>
                <li class="left_li">
                    <span class="v_cen">用户中心<span></span></span>
                    <ul>
                        <li><a href="{:U('user/info')}" target="_blank">个人资料</a>
                        </li>
                        <li><a href="{:U('gift/index')}" target="_blank">积分商城</a>
                        </li>
                        <li><a href="{:U('user/shailist')}" target="_blank">我的晒单</a>
                        </li>
                    </ul>
                </li>
                <li class="left_li">
                    <span class="v_cen <if condition='$help.id eq 1 or $help.id eq 3'>on</if>">关于我们<span></span></span>
                    <ul>
                        <li><a href="{:U('help/read','id=1')}">关于我们</a>
                        </li>
                        <li><a href="{:U('help/read','id=3')}">联系我们</a>
                        </li>
                        
                        
                    </ul>
                </li>
                <li class="left_li">
                    <span class="v_cen">关注我们<span></span></span>
                    <ul>
                        <li><a href="{:C('ftx_sina_url')}" target="_blank">新浪微博</a></li>
                        <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" target="_blank">QQ</a></li>
                        
                    </ul>
                </li>
                
            </ul>
            <div class="meb_right">
                <div class="list1 check">
                    <span>
                       {$help.title}
                    </span>
                    <ul>{$help.info}</ul>
                </div>
            </div>
        </div>
    </div>
	
<include file="public:footer" />
<script src="__STATIC__/tkjidicms/js/vip_know.js"></script>
</body>
</html>