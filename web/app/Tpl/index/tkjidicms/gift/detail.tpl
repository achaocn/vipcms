<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />

</head>
<body>
<include file="public:header" />

    <div class="v_cont">
        <div class="shop_in">
        	<div class="s_title">当前位置：<a href="{:C('ftx_site_url')}" title="首页">首页</a>><a href="{:U('gift/index')}">积分商城</a>>积分兑换</div>
           
            <ul class="s_tab">
                 <li>
                    <a class="on">
                        积分商城
                    </a>
                </li>
            </ul>
        </div>
        <div class="reward">
            <div class="r_info">
            	
                <img src="{:attach(str_replace('_s.'.array_pop(explode('.', $info['img'])), '_b.'.array_pop(explode('.', $info['img'])), $info['img']), 'score_item')}" alt="{$info.title}" width="400" height="400">
                <div class="r_info_in">
                    <div class="r_title">{$info.title}</div>
                    <div class="r_value">
                        价值：<span class="num">{$info.price}元</span>
                        <span class="val_right">所需积分：<span>{$info.score}</span>积分</span>
                    </div>
                    <div class="r_value2">
                        已兑换人数：<span class="num">{$info['order_count']}</span>名
                        <span class="r_join">剩余份数：<em class="org_2">{$info.stock}</em> 份</span>
                    </div>
                    <p>兑换限制：每名会员可兑换<em class="org_2">{$info.user_num}</em></span>次</p>
                   <!-- <a class="r_click J_gift_btn" data-id="{$item.id}" data-num="#J_num_{$item.id}" href="javascript:;">我要兑换</a>-->
                    <a href="javascript:;"  class="r_click J_gift_btn" data-id="{$info.id}" data-num="#J_num_{$info.id}">我要兑换</a>
                    <div class="r_time"> 
                        结束时间：{$info.end_time|date="y年m月d日 H时s分",###}
                    </div>
                    
                </div>
            </div>
            <div class="r_tab">
                <span class="good1 on">商品详情</span>
                <span class="good2">兑换规则</span>
            </div>
            <div class="tab_con">
                <div id="good1" class="on">
                    {$info.info}
                </div>
                <div id="good2">
                    <div class="title">
                        <img src="__STATIC__/tkjidicms/images/v_role.png" alt="">
                        兑换规则
                    </div>
                    <ul>
                        <li><b>兑换说明</b></li>
                        <li>1、兑换开始后，所有{:C('ftx_site_name')}会员均可点击“我要兑换”按钮进行兑换。</li>
                        <li>2、为了更好的回馈会员，所有的礼品兑换不收取任何费用（实物礼品我们包邮为您送到家）。</li>
						<li>3、只能使用在{:C('ftx_site_name')}获得的积分兑换，积分余额不足则不能兑换。</li>
						<li>4、一旦兑换即扣除相应积分，所兑换的礼品将在后台审核后发出。如审核过程中发现该用户积分行为异常，兑换礼品将不予发放，已扣除积分不退还。如该用户恶意刷积分行为严重，我们保留不另行通知而直接封禁该用户账号的权利。</li>
                        
                        <li><b>注意事项</b></li>
						<li>1、所有礼品（除支付宝红包、优惠券等虚拟礼品除外）在兑换后的1-2个工作日，本站将从合作商城购买，具体到货时间取决于合作商城发货情况。</li>
						<li>2、若兑换礼品缺货或收货地址无法送达，我们会在1~2个工作日将相应返利或积分返还至您的账户中。</li>
						<li>3、提交兑换后，需经管理员审核，成功后将以站内信，邮件等方式通知您。</li>
						<li>4、兑换下单都有数量限制，兑换数量不足时，将无法申请兑换。</li>
						<li>5、实物礼品是{:C('ftx_site_name')}与第三方网站合作完成的兑换。如因购买时价格变动，{:C('ftx_site_name')}和会员双方均不需要作差价补偿。</li>
                        
                    </ul>
                </div>
               <!-- <div id="good3">
                    <div class="title">
                        <img src="__STATIC__/tkjidicms/images/v_not.png" alt="">
                        抽奖记录
                    </div>
                    <table border="1" >
                        <tr>
                            <th>用户名</th>
                            <th>抽奖时间</th>
                            <th>抽奖号码</th>
                        </tr>
                        <tr>
                            <td>139****5564</td>
                            <td>2017年03月23日15:00</td>
                            <td>2554</td>
                        </tr>
                        <tr>
                            <td>139****5564</td>
                            <td>2017年03月23日15:00</td>
                            <td>2554</td>
                        </tr>
                    </table>
                </div>-->
            </div>
        </div>
    </div>
    <include file="public:footer" />
    <script src="__STATIC__/red/js/gift.js"></script>
</body>

<script src="__STATIC__/tkjidicms/js/jquery.cityselect.js"></script>
<script>
    $(function() {
		
        $(".check_hide").height($(window).height());
        $(".r_tab span").click(function() {
            var clas=$(this).attr("class");
            var sclas=clas.split(" ");
            // console.log("#"+sclas[0]);
            $("#"+sclas[0]).addClass("on").siblings().removeClass("on");
            $(this).addClass("on").siblings().removeClass("on");
        })
        $(".r_click").click(function() {
            $(".check_hide2").show();
        })
        $(".check_hide2").height($(window).height());
        $(".hide_inner2 .hide_title img").click(function() {
            $(".check_hide2").hide();
        })
		
		
		
    })
</script>

</html>