<div class="out">
<div class="topOne">
		<a href="{:C('ftx_site_url')}" title="{:C('ftx_site_name')}">
			<img src="{:C('ftx_site_logo')}" alt="{:C('ftx_site_name')}" class="topOne-logo">
		</a>
		<div class="topOne-list">
			<ul class="inner-list1">
				<li><a href="{:U('quan/index')}" <if condition="$ismust eq 0 and $isbig eq 0">class="first"</if>>全部</a></li>
				<li><a href="{:U('quan/index?ismust=1')}" <if condition="$ismust eq 1">class="first"</if>>每日必拍</a></li>
				<li><a href="{:U('quan/index?isbig=1')}" <if condition="$isbig eq 1">class="first"</if>>大牌券(品牌)</a></li>
			</ul>
			<ul class="inner-list2">
				<li><a href="{:U('quan/index')}" <if condition="$cid eq 0">class="first"</if>>全部</a></li>
                <volist name="cate_data" id="item">
				<li><a href="{:U('quan/index?cate_id='.$item['id'])}" <if condition="$item['id'] eq $cid">class="first"</if>>{$item.class_name}</a></li>
                </volist>
			</ul>
		</div>
		<form class="topOne-search" action="{:C('ftx_site_url')}" method="get">
        	<input type="hidden" name="m" value="search">
           	<input type="hidden" name="a" value="index">
			<input class="top-search" type="text" placeholder="请输入搜索关键词" name="k" id="k" value="{$k}" />
            <input type="hidden" value="1" name="cate_type" id="cate_type">
			<span class="topOne-right">搜索</span>
		</form>
	</div>
</div>
{:R('advert/index', array(10), 'Widget')}
<div class="head">
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
                
				<!--<a href="{:U('user/union')}">
					邀友得礼
				</a>
				<a href="{:U('user/shai')}">
					晒单得礼
				</a>-->
                <div class="right">
                <notempty name="visitor">
                <span class="v_center">
                    <img src="{:avatar($visitor['id'], 22)}" alt="{$visitor.username}">
                    <a href="{:U('user/index')}" target="_blank" title="个人中心" style="color:#F00">个人中心</a>
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
		<div class="title">
			<div class="title_logo">
				<a href="{:C('ftx_site_url')}" title="{:C('ftx_site_name')}">
					<img src="{:C('ftx_site_logo')}" alt="{:C('ftx_site_name')}">
				</a>
			</div>
			<div class="form_out">
				<form action="{:C('ftx_site_url')}" method="get" id="search">
                	<input type="hidden" name="m" value="search">
           			<input type="hidden" name="a" value="index">
					<input class="cont" type="text" placeholder="请输入相关信息" x-webkit-speech name="k" id="k" autocomplete="off" onBlur="this.value==''?this.value=this.title:null" onFocus="this.value==this.title?this.value='':null" title="请输入相关信息" value="{$k}">
					<!--<span class="select_cont">
						<span class="select_on">搜商品</span>
						<span class="down"></span>
					</span>-->
					<input class="click" type="submit" value="搜索">
					<!--<datalist>
						<div class="search" data-rel="1">搜商品</div>
						<div data-rel="2">搜券</div>
					</datalist>-->
					<input type="hidden" value="1" name="cate_type" id="cate_type">
				</form>
				<div class="nav">
					<volist name="tag" id="item">
					<a href="{:U('quan/tag','name='.$item['ename'])}" target="_blank">{$item.name}</a>
                    </volist>
				</div>
			</div>
			<div class="coupon">
				<span class="cou_img">
					<iframe id="erweima" frameborder="0" marginwidth="0" marginheight="0" src="/?m=ajax&a=addcode&url={:base64_encode(C('ftx_site_url'))}" class="codeifram"></iframe>
				</span>
				<span class="cou_app">
					<span>扫描打开手机站</span><br>
					随时逛，及时抢！
				</span>
               
			</div>
		</div>
		<nav class="caption">
			<div class="cap_out">
				<span class="cap_cont">
               
					<a href="{:C('ftx_site_url')}" <if condition="$nav_curr eq 'index'">class='on'</if>>首页</a>
                    <ftx:nav type="lists" style="main">
					<volist name="data" id="val">
					<a href="{$val.link}" <if condition="$nav_curr eq $val['alias']">class='on'</if> <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a>
                    </volist>
                    </ftx:nav> 
				</span>
                
				<span class="cap_cont2" id="">
					<img src="__STATIC__/tkjidicms/images/v_check.png" alt="">
					<a href="#" class="sign_btn">签到领积分</a>
				</span>
			</div>
		</nav>
		<nav class="sort">
			<div class="sort_inner">
				<a class="all  on" href="{:U('quan/index')}">
					全部
					<span></span>
                     <script>
                    	$.getJSON('/?m=getjson&a=pronum', function(data){
						   $(".sort_inner").find("span").html("("+data.result+")");
						   
						});
                    </script>
				</a>
                <volist name="cate_data" id="item" key="key">
				<a class="back{$key}" href="{:U('quan/index','cate_id='.$item['id'])}">
					<i></i>
					{$item.class_name_taoke}
				</a>
                </volist>
			</div>
		</nav>
	</div>