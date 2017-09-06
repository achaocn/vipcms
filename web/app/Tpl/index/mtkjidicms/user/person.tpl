<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
<!--签到弹出框-->
			<div class="shadow">
				<div id="sign">
					<p>
						<span class="sp1">签到成功</span>
						<span class="sp2" id="close"></span>
					</p>
					<div class="si-bottom">
						<p class="si-text">恭喜您，签到成功，获得<span>2</span>积分</p>
						<a href="{:U('gift/index')}">花积分</a>
					</div>
				</div>
			</div>	
			<!--头部-->
			<header>
				<img class="back" src="__STATIC__/tkjidicms/wap/img/register/back.png" />
				<p class="hd-name">{$page_title}</p>
                <a href="{:U('user/info')}">
				<div class="setup">
					设置
				</div>
                </a>
			</header>
			<!--注册登录头像-->
			<div class="banner">
				<div class="bn-img">
					<span><img src="__STATIC__/tkjidicms/wap/img/person/bnheader1.png" /></span>
				</div>
				<div class="bn-bottom">
					<div><a class="bn-bo-left" href="{:U('user/register')}">注册</a></div>
					<div><a class="bn-bo-right" href="{:U('user/login')}">登录</a></div>
				</div>
			</div>
			<!--签到晒单-->
			<div class="sign">
				<ul class="si-list">
                	<a href="{:U('user/index')}">
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall1.png"></div>
						<p>签到得<span>{$setting.sign}</span>积分</p>
					</li>
                    </a>
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall2.png"></div>
						<p>晒单得<span>相应</span>积分</p>
					</li>
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall3.png"></div>
						<p>邀好友得<span>{$setting.union_reg}</span>积分</p>
					</li>
				</ul>
			</div>
			<!--中部列表-->
			<ul class="center">
				<a href="{:U('gift/index')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist1.png"></div><p>积分商城</p></li></a>
				<a href="{:U('user/addresslist')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist2.png"></div><p>地址管理</p></li></a>
				<a href="{:U('user/shailist')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist3.png"></div><p>我的晒单</p></li></a>
				<a href="{:U('user/gift')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist4.png"></div><p>我的兑换</p></li></a>
						
			</ul>
			<!--底部列表-->
			<ul class="bottom">
				<a href="{:U('help/readlist')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist6.png"></div><p>帮助中心</p></li></a>
				<a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" target="_blank"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist7.png"></div><p>联系客服</p></li></a>
			</ul>
			<!--底部菜单-->
			<include file='public:footer'/> 
		</div>
		
	</body>
    <script>
		/*返回*/
		$(".back").click(function(){
			window.history.back()
		})
		$(window).scroll(function(){
		    var $top = $(document).scrollTop();//距顶部的高度
		   /* if($top>=0){
		    	$("header").css({"position":"fixed","top":"0","z-index":"30"})
				
					$(".backtop").show()	    			    	
		    }
		    if($top==0){
		    	$("header").css({"position":"relative"})
		    	$(".backtop").hide()
		    } */
		    $(".backtop").click(function(){
		    	$(window).scrollTop(0)
		    })
		    /*if($top=$height){
		    	console("刷新")
		    }*/
		   var c=document.body.scrollHeight//网页高度
		   var b=$(window).height()//可视窗口高度
		   var d=c-b-$top		   
		});
</script>
</html>