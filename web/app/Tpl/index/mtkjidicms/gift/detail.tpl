<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<header>
        <img src="__STATIC__/tkjidicms/wap/img/detail/deback.png" />
    </header>
    <div class="detail">
				<img class="deImg" src="{:attach(str_replace('_s.'.array_pop(explode('.', $info['img'])), '_b.'.array_pop(explode('.', $info['img'])), $info['img']), 'score_item')}">
				<div class="de-bottom">
					<div class="de-name">
						<p class="name-text">{$info.title}</p>
					</div>
					<div class="explain">{$info.desc}</div>
					<div class="price">
						<span class="sp1">{$info.score}</span>
						<span class="sp2">积分</span>
						<span class="sp3">市场价:￥{$info.price}</span>
					</div>
					<div class="time">截止日期:{$info.end_time|date="y.m.d H:i:",###}00</div>
				</div>
			</div>
			<div class="more">图文详情</div>
			<div class="content">{:$info["info"]?$info["info"]:"<center>暂无相关信息</center>"}</div>
			<div class="footer">
            	<a href="mqq://im/chat?chat_type=wpa&uin={:C('ftx_qq')}&version=1&src_type=web">
				<div class="footerLeft">
                
					<img src="__STATIC__/tkjidicms/wap/img/detail/small.png">
					<p class="footerText">
                    联系客服</p>
				</div></a>
                <if condition="$info.end_time gt time()">
				<a href="javascript:;" class="footeRight">马上兑换</a>
                <else />
                <a href="javascript:;" class="footeRight">时间已结束</a>
                </if>
			</div>
			<!--回到顶部-->
				<div class="backtop">
					<span><img src="__STATIC__/tkjidicms/wap/img/index/backtop.png" /></span>
				</div>
			<!--签到弹出框-->
			<div class="shadow">
				<div id="sign">
					<p>
						<span class="sp1">兑换结果</span>
						<span class="sp2" id="close"></span>
					</p>
                    <div id="result_con">
					<div class="si-top"></div>
					<a><div class="si-bottom"></div></a>
                    </div>
				</div>
			</div>	
		</div>
        
		<script>
		$(".shadow").hide()
		var FTXIAER = {
		 root: "__ROOT__",
		 site: "{:C('ftx_site_url')}",
		 uid: "{$visitor['id']}", 
		 loginurl:"{:U('user/login')}",
		 userurl:"{:U('user/index')}",
		 username:"{$visitor['username']}",
		 face:"{:avatar($visitor['id'], 64)}",
		 url:{}
		}
		
		
			/*返回*/
			$("header").click(function(){
				window.history.back()
			})
			/*图文展开*/
			var flag=false;
			$(".more").click(function(){
				if(flag){
					//$(window).scrollTop(450);
					$(".content").show();					
					flag=false;
				}else{
					$(".content").hide();
					flag=true;
				}
			})
			/*回到顶部*/
	    	$(".backtop").hide()
	    	$(window).scroll(function(){
			    var $top = $(document).scrollTop();//距顶部的高度
			    if($top>=0){
			    	$(".backtop").show();
			    	$(".backtop").click(function(){
			    		$(window).scrollTop(0)
			    	})
			    }
			    if($top==0){
			    	$(".backtop").hide()
			    } 
			    /*if($top=$height){
			    	console("刷新")
			    }*/
			   var c=document.body.scrollHeight//网页高度
			   var b=$(window).height()//可视窗口高度
			   var d=c-b-$top		   
			});
			/*兑换结果*/
			$(".footeRight").eq(0).click(function(){
				$(".shadow").show()
				 var id={$info.id};
				 var num=1;
				 $.getJSON(FTXIAER.root + '/?m=gift&a=ecwap', {id:id, num:num}, function(result){
					
					if(result.status == 10)
					{
						$("#result_con").html('<div class="si-top">亲，还没收货地址！</div><a><div class="si-bottom">'+result.msg+'</div></a>');
					}
					else if(result.status == 0)
					{
						$("#result_con").html('<div class="si-top">'+result.msg+'</div>');
					}
					else if(result.status == 1)
					{
						$("#result_con").html('<div class="si-top">恭喜您</div><a><div class="si-bottom">兑换成功！</div></a>');
                    }else{
						$("#result_con").html('<div class="si-top">'+result.msg+'</div>');
                       // $.ftxia.tip({content:result.msg, icon:'error'});
                    }
                });
				
			})
			$("#close").click(function(){
				$(".shadow").hide()
			})
		</script>
	</body>
</html>