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
						<p class="si-text"><span></span></p>
						<a href="{:U('gift/index')}">花积分</a>
					</div>
				</div>
			</div>	
			<!--头部-->
			<header>
				<img class="back" src="__STATIC__/tkjidicms/wap/img/register/back.png" />
				<p class="hd-name">{$page_title}</p>
                <a href="{:U('user/minfo')}">
				<div class="setup">
					设置
				</div>
                </a>
			</header>

			<!--注册登录头像-->
            <div class="banneron">
				<div class="bn-img">
					<img src="{:avatar($info['id'], 100)}">
				</div>
				<p class="bn-bottom">{:$info['nickname']?$info['nickname']:$info['username']}</p>
			</div>
            
			<!--签到晒单-->
			<div class="sign">
				<ul class="si-list">
                	
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall1.png"></div>
						<p>连续签到<span>{$sign_num}</span>天</p>
					</li>
                   <a href="{:U('user/mingxi')}">
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall2.png"></div>
						<p>当前积分<span>{$info.score}</span>积分</p>
					</li>
                    </a>
                    <a href="{:U('user/union')}">
					<li>
                        <div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall3.png"></div>
						<p>邀好友<span>{$reg_num}</span>个</p>
					</li>
                    </a>
                    
				</ul>
			</div>
			<!--中部列表-->
			<ul class="center">
				<a href="{:U('gift/index')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist1.png"></div><p>积分商城</p></li></a>
				<a href="{:U('user/addresslist')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist2.png"></div><p>地址管理</p></li></a>
				<a href="{:U('user/shailist')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist3.png"></div><p>我的晒单</p></li></a>
				<a href="{:U('user/gift')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist5.png"></div><p>我的兑换</p></li>	</a>
               	
			</ul>
			<!--底部列表-->
			<ul class="bottom">
				<a href="{:U('help/readlist')}"><li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist6.png"></div><p>帮助中心</p></li></a>
                <a href="mqq://im/chat?chat_type=wpa&uin={:C('ftx_qq')}&version=1&src_type=web">
                <li><div class="cn-img"><img src="__STATIC__/tkjidicms/wap/img/person/cnlist7.png"></div><p>联系客服</p></li></a>
			</ul>
			<!--底部菜单-->
			<include file='public:footer'/> 
		</div>
		<script>
			/*签到*/
			$(".si-list li").eq(0).click(function(){
				
				//if(!$.ftxia.dialog.islogin()) return !1;
				$.getJSON(FTXIAER.root + '/?m=sign&a=ajax_sign', function(result){
					var zt=result.status; 
					//alert(zt);
					/////////////////////////
					var today_dou=result.data.point;
					var tomorrow_dou=result.data.tmr_point;
					if(zt == 1 || zt == '1')
					{
						var not_sign='<div id="sign">'
							+'<p>'
								+'<span class="sp1">签到成功</span>'
								+'<span class="sp2" id="close"></span>'
							+'</p>'
							+'<div class="si-bottom">'
								+'<p class="si-text">恭喜您，签到成功，获得<span>'+today_dou+'</span>积分</p>'
								+'<a href="'+FTXIAER.root+'/?m=gift&a=index">花积分</a>'
							+'</div>'
						+'</div>';
						var signed='<div id="sign">'
							+'<p>'
								+'<span class="sp1">已签到</span>'
								+'<span class="sp2" id="close"></span>'
							+'</p>'
							+'<div class="si-bottom">'
								+'<p class="si-text">今天已经签，明天再来，可获得<span>'+tomorrow_dou+'</span>积分</p>'
								+'<a href="'+FTXIAER.root+'/?m=gift&a=index">花积分</a>'
							+'</div>'
						+'</div>';
						not_sign.replace(/{TODAY_DOU}/i,today_dou);
						signed.replace(/{TOMORROW_DOU}/i,tomorrow_dou);
						
						if(today_dou == tomorrow_dou){
							$(".shadow").html(signed);
							//var dou_calender=dou_calender_tpl.replace(/{HEADER}/,signed);
						}else{
							$(".shadow").html(not_sign);
						}
						$(".shadow").show();
						$("#close").click(function(){
							$(".shadow").hide()
						})
					}
					else
					{
						alert('请登录');
						window.location.href=FTXIAER.root + '/?m=user&a=login';
					}
					/////////////////////////
				});								  
			})
			
		</script>
	</body>
    <script>
		/*返回*/
		$(".back").click(function(){
			window.history.back()
		})
		$(window).scroll(function(){
		    var $top = $(document).scrollTop();//距顶部的高度
		    /*if($top>=0){
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