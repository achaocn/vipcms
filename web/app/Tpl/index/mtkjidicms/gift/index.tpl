<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<!--签到弹出框-->
    <div class="shadow">
        <div id="sign">
            <p>
                <span class="sp1"></span>
                <span class="sp2" id="close"></span>
            </p>
            <div class="si-bottom">
                <p class="si-text"></p>
                <a href="{:U('gift/index')}">花积分</a>
            </div>
        </div>
    </div>	
<div class="big">
	

	<include file='public:header'/>
    <empty name="visitor">
    <div class="banner">
        <div class="headerImg"></div>
        <a href="{:U('user/login')}"><p class="noLogin">未登录</p></a>
        <div class="rule">
           <a href="{:U('help/read?id=9')}"> <span>积分规则</span></a>
        </div>
    </div>
    <else />
    <div class="banneron">
        <div class="headerImg"><img src="{:avatar($visitor['id'], 100)}"></div>
        <div class="baName">
            <p>{:$info['nickname']?$info['nickname']:$info['username']}</p>
            <p>总积分:<span>{$info['score']}</span>分</p>
        </div>
        <a href="{:U('user/mingxi')}"><div class="bnDetail">明细</div></a>
        <div class="rule">
            <a href="{:U('help/read?id=9')}"><span>积分规则</span></a>
        </div>
    </div>
     </empty>
    <div class="make">我要赚积分</div>
	<!--签到晒单-->
			<div class="sign">
				<ul class="si-list">
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall1.png"></div>
						<p>签到得<span>{$setting.sign}</span>积分</p>
					</li>
                     <a href="{:U('user/shai')}">
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall2.png"></div>
						<p>晒单得<span>相应</span>积分</p>
					</li>
                    </a>
                    <a href="{:U('user/union')}">
					<li>
						<div class="si-li-img"><img src="__STATIC__/tkjidicms/wap/img/person/silismall3.png"></div>
						<p>邀好友得<span>{$setting.union_reg}</span>积分</p>
					</li>
                    </a>
				</ul>
			</div>
			<div class="content">
				<ul class="list1">
					<li>积分兑换</li>
				</ul>
                <notempty name="item_list">
				<ul class="list2 list">
                	<input type="hidden" id="act" value="{:MODULE_NAME}" />
                    <input name="page" type="hidden" value="1" id="page" />
                	<volist name="item_list" id="item" offset="0" length="C('wapper')">
					<a href="{:U('gift/detail', array('id'=>$item['id']))}">
						<li>
							<div class="dt-ct-img">
								<img src="{:attach(str_replace('_s.'.array_pop(explode('.', $item['img'])), '_b.'.array_pop(explode('.', $item['img'])), $item['img']), 'score_item')}" />
							</div>
							<div class="content-right">
								<p class="dt-ct-name">{$item.title}</p>
								<p class="dt-ct-explain"><span>价值</span><span class="sp1">￥{$item.price}</span><span class="sp2">{$item.score}积分</span></p>
								<p class="overplus">
									<span class="sp1">剩余数量</span>
									<span class="sp2">{$item.stock}</span>
									<span class="sp3"></span>
									<span class="sp5">已经兑换</span>
									<span class="sp4">{$item.order_count}人</span>									
								</p>
								<p class="time">
									<span class="sp1">截止时间:</span>
									<span class="sp1">{$item.end_time|date="y.m.d",###}</span>
									<span class="sp1"> {$item.end_time|date="H:s:",###}00</span>
								</p>
                                <if condition="$item.end_time gt time()">
                                <a class="dt-ct-buy" href="{:U('gift/detail', array('id'=>$item['id']))}">我要兑换</a>
                                <else />
                                <a class="dt-ct-none" href="{:U('gift/detail', array('id'=>$item['id']))}">时间已结束</a>
                                </if>
								<!--dt-ct-none-->
							</div>					
						</li>
					</a>
                    </volist>
				</ul>
                <div class="dt-more" style="display:none">
                    <img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
                    <span>奋力加载中</span>
                </div>
                <else />
                <input name="page" type="hidden" value="0" id="page" />
                <center><br /><br />暂无相关信息</center>
                </notempty>
			</div>
			<!--底部-->
			<include file='public:footer'/> 
		</div>
		<script>
			/*签到*/
			$(".si-list li").eq(0).click(function(){
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
						var $height=document.body.scrollHeight;
						var $window=$(window).height();
						if($height>=$window){
							$(".shadow").css("height",$height+"px");
						}else{
							$(".shadow").css("height",$window+"px");
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
</html>