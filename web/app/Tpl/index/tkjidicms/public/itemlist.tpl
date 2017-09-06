<div class="goods_out">
     <empty name="items_list"><center>暂无相关信息</center><br /></empty>   	
    <volist name="items_list" id="item">
    <div class="goods_cont">
        <a class="v_good" href="{:U('pro/show?id='.$item['id'])}" target="_blank">
            <img src="{:changepic($item['thumb'],'item')}" alt="{$item.buss_name}" class="lazy">
            <span></span>
        </a>
        <div class="god_title">
            
            <img src="__STATIC__/tkjidicms/images/v_tm{:($item['tmall']==1)?1:0}.png" alt="">
            <span>
                {$item.buss_name}
            </span>
        </div>
        <div class="v_price">
            <span class="price_now">
                ￥{$item.price_youhui}
                <span>(券后)</span>
            </span>
            <span class="price_old">￥{$item.price_order}</span>
        </div>
        <div class="v_coupon">
            <span class="less">
                领券省
                <span><span>{$item.price_youhuiquan}</span>元</span>
            </span>
            <span class="people">
                {$item.sales}人已购买<br>
                优惠券：{$item.quan_num_zong}张
            </span>
        </div>
        
        <a class="get_coupon" href="{:U('pro/show?id='.$item['id'])}" target="_blank">
            <span>领券<br>
            去{:($item['tmall']==1)?"天猫":"淘宝"}</span>
        </a>
    </div>
    </volist>

</div>
<div class="f_page">
    {$page}
</div>