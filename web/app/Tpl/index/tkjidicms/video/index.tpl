<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>
<include file="public:header" />

<div class="v_cont">
        <div class="v_cont_inner">
        	<include file="public:banner" />
            <div class="goods_title">
                <span class="line_left"></span>
                <img src="__STATIC__/tkjidicms/images/video_title.png" alt="">
                <span class="line_left"></span>
            </div>
            <!---->
            <div class="goods_out">
               <empty name="items_list"><center>暂无相关信息</center><br /></empty>   	
              <volist name="items_list" id="item">
              <div class="goods_cont" style="position:relative; z-index:">
              	  
                  <a class="v_good_video" href="javascript:;" rel="{$item.video_url}" alt="{$item.price_youhui}">
                  	  <div class="videoicon"><img src="__STATIC__/tkjidicms/images/play.png" width="61" height="25" /></div>
                      <img src="{:changepic($item['thumb'],'item')}" alt="{$item.buss_name}" class="lazy">
                      <span></span>
                  </a>
                  <div class="god_title">
                      <a href="{:U('pro/show?id='.$item['id'])}" target="_blank">
                      <img src="__STATIC__/tkjidicms/images/v_tm{:($item['tmall']==1)?1:0}.png" alt="">
                      <span>
                          {$item.buss_name}
                      </span>
                      </a>
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
                  
              </div>
              </volist>
          
          </div>
          <div class="f_page">
              {$page}
          </div>
            <!---->
        </div>
    </div>

<include file="public:footer" />
<!-- ----------------添加视频弹出层------------------- -->
<div class="vedio_out">
    <div class="vedio_inner">
        <video class="myvideo" controls="true" autoplay="true" loop="true" width="517" height="305" src="" poster=""></video>
        <span class="close" id="close">&times;</span>
        <div class="v_title">
            <div class="v_title_inner"></div>
        </div>
        <button><a href="#" target="_blank" onClick="closevideo()">领券购买</a></button>
        <p class="vo-price"></span></p>
    </div>
</div>
<script>
    var video=document.getElementsByClassName("myvideo")[0];
    $(".v_good_video").click(function(){ 
		$(".myvideo").attr('src',$(this).attr('rel'));
		$(".myvideo").attr('poster',$(this).find('.lazy').attr('src'));
		$(".v_title_inner").html('<a href="'+$(this).parent().find('.god_title').find('a').attr('href')+'" style="color:#000" target="_blank" onClick="closevideo()">'+$(this).find('.lazy').attr('alt')+"</a>");
		$(".vo-price").html($(this).attr('alt')+'<span>(券后价)</span>');
		$(".vedio_out").find('a').attr('href',$(this).parent().find('.god_title').find('a').attr('href'));
        $(".vedio_out").show();
        video.play()
    })
    $("#close").click(function(){
        closevideo();
    })
	
	function closevideo()
	{
		$(".vedio_out").hide();
		$(".myvideo").attr('src',"");
		$(".myvideo").attr('poster',"");
		$(".myvideo").attr('autoplay',false);
		$(".vo-price").html('');
        video.pause();
	}
</script>
</body>
</html>