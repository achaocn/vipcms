<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/>
    <notempty name="order_list">
	<div class="content">
        <ul class="listTop">
            <li>商品</li>
            <li>消耗积分</li>
            <li>时间</li>
            <li>状态</li>
        </ul>
       
        <volist name="order_list" id="val">
        <ul class="listBottom">
            <li class="liImg"> <img src="{:attach(str_replace('_s.'.array_pop(explode('.', $val['pro']['img'])), '_b.'.array_pop(explode('.', $val['pro']['img'])), $val['pro']['img']), 'score_item')}" alt="" width="100%"></li>
            <li>-{$val.order_score}</li>
            <li class="liTime"><span>{:date("Y.m.d",$val['add_time'])}</span><br/><span>{:date("H:i:s",$val['add_time'])}</span></li>
            <li><if condition="$val['status'] eq 2">订单异常<elseif condition="$val['status'] eq 1" />已发货<else/>订单审核中</if></li>
        </ul>
        </volist>
      			
	</div>
    <else />
	<div class="none">抱歉！您暂时没有兑换</div>
    </notempty>
	<a class="exchange" href="{:U('gift/index')}">去积分商城兑换</a>
</div>
	</body>
</html>