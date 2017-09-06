<script>
/*$(function (){
    var aa = $(".goods-list li").innerWidth();
    $(".goods-list li img").css('height',aa);
})*/

</script>
<empty name="items_list">
	<br/><br/><br/><br/>
	<if condition="MODULE_NAME eq 'search'">
	<center>关键字：{$k}，没有搜索到先关信息</center>
    <else />
    <center>暂无相关信息</center>
    </if>
    <input name="page" type="hidden" value="0" id="page" />
<else />
<input name="page" type="hidden" value="1" id="page" />
<volist name='items_list' id='item' offset="0" length="20" mod="2">
	<a href="{:U('pro/show',array('id'=>$item['id']))}" target="_self">
    	<li <if condition="$mod eq 1">class="second"</if>>
          <div class="li-img">
          	<img src="{:changepic($item['thumb'],'item')}" alt="{$item.buss_name}">
          <if condition="$item.act_type eq 1">
          	<a href="{:U('pro/show',array('id'=>$item['id']))}"><img class="lookInner" src="__STATIC__/tkjidicms/wap/img/look.png"/></a>
          </if>
          	
          </div>
          <div class="name">
              <div class="nameImg"><img src="__STATIC__/tkjidicms/images/v_tm{:($item['tmall']==1)?1:0}.png" alt=""></div>
              <p>{$item.buss_name}</p>
          </div>
          <div class="price">
              <p>领券价：￥{$item.price_youhui}</p>
              <span class="priceText">￥{$item.price_youhuiquan}</span>
              <img class="priceImg" src="__STATIC__/tkjidicms/wap/img/fengding/pricebg.png">
          </div>

          <p class="though"><span class="sp1">￥{$item.price_order}</span><span class="sp2">销量：{$item.sales}</span></p>
          <div class="ling">领券购买</div>
      </li>
   </a>
</volist>
</empty>
