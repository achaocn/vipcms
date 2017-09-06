<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="__STATIC__/tkjidicms/css/swiper.min.css">
<include file="public:head" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>
<include file="public:header" />
    <div class="v_detail_out">
        <div class="v_detail">
            <div class="detail_title">
                当前位置：<a href="{:C('ftx_site_url')}" title="首页">首页</a>>商品详情
            </div>
            <div class="pic_det">
            	<if condition="$info['act_type'] eq 1 and $info['video_url'] neq ''">
                <div style="float:left; width:440px; background:#FFF">
                 <video id="video_url" class="img_L" controls="true" autoplay="true" loop="true" width="440" height="440" src="{$info['video_url']}" poster="{:changepic($info['thumb'],'',440)}"></video>
                 </div>
                <else />
                <a href="{$info['couponlink']}" style="float:left" target="_blank"><img src="{:changepic($info['thumb'],'item',440)}" alt="{$info['buss_name']}"></a>
                </if>
                <div class="pic_mid">
                    <div class="pic_top">
                        <a href="{$info['couponlink']}" target="_blank" style="color:#555"><img src="__STATIC__/tkjidicms/images/v_tm{:($info['tmall']==1)?1:0}.png" alt="">
                        <span>{$info['buss_name']}</span>
                        </a>
                    </div>
                    <div class="pic_center">
                        {$info['introduce']}
                    </div>
                    <div class="pic_price" style="width:435px">
                        (独享)券后价<span class="pic_now" style="min-width:160px; margin-left:0px;">￥{$info['price_youhui']}</span>
                        在售价：<span class="pic_old">￥{$info['price_order']}</span>
                    </div>
                    <div class="to_buy" style=" ">
                        <span class="price">
                            <img src="__STATIC__/tkjidicms/images/v_back.png" alt="">
                            <span>￥{:intval($info['price_youhuiquan'])}
                            <span>券</span></span>
                        </span>
                        <a href="{$info['couponlink']}" target="_blank">领券去{:($info['tmall']==1)?"天猫":"淘宝"}下单</a>
                        <if condition="$info['code'] neq ''">
                         <div style="background: url(__STATIC__/tkjidicms/images/0230.png) no-repeat;background-size: 100% 100%;width: 120px;height: 148px;position: absolute;right: 0px;top: -115px">
                            <img src="{$info['code']}" width="110" height="110" style="margin:5px  0 0 5px" />
                        </div>
                        </if>
                    </div>
                   
                    <div class="amount">
                        <span>
                           疯抢中，手慢无
                        </span>
                        <span>
                            这点券，赶紧抢
                        </span>
                        <span class="v_rit">
                            已有<span>{$info['sales']}人</span>购买
                        </span>
                    </div>
                    <div class="seen_del">点击查看图文详情</div>
                </div>
                <div class="pic_right">
                    <div class="panic">
                        <span class="panic_l"></span>
                        大家都在抢
                        <span class="panic_r"></span>
                    </div>
                    <div class="swiper-container v_swiper">
                        <div class="swiper-wrapper">
                        	
                        	
                            
                        </div>
                    </div>
                    <div class="v_btn">
                        <span class="v_up"></span>
                        <span class="v_down"></span>
                    </div>
                </div>
            </div>
            <div class="v_hide">
                <div class="hide_top">
                    <span class="top_left">
                        商品详情
                    </span>
                    <span class="top_right">
                        券后独享<span>￥{$info['price_youhui']}</span>(￥{$info['price_youhuiquan']}券)
                        <a href="{$info['couponlink']}" target="_blank">
                            领券下单
                        </a>
                    </span>
                </div>
                <div class="hide_cont"></div>
                <div class="slid_up">
                    收起
                </div>
            </div>
        </div>
    </div>
    <div class="v_hot_out">
        <div class="v_hot">
            <img src="__STATIC__/tkjidicms/images/v_hot.png" alt="">
            热门推荐
            <a href="{:U('quan/index')}" title="更多" target="_blank">更多</a>
            <span class="v_page"></span>
        </div>
        <div class="swiper-container v_swiper2">
            <div class="swiper-wrapper">
            	<volist name="rands1" id="item">
                
                <div class="goods_cont swiper-slide" onClick="javascript: window.open('{:U('pro/show?id='.$item['id'])}');">
                    <a href="{:U('pro/show?id='.$item['id'])}" target="_blank" class="v_good">
                        <img src="{:changepic($item['thumb'],'item')}" alt="{$item.buss_name}" width="284" height="284">
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
                            已领券<span>{$item.quan_num_ling}</span>/{$item.quan_num_zong}张
                        </span>
                    </div>
                   <a class="get_coupon" target="_blank" href="{:U('pro/show?id='.$item['id'])}">
                        <span>领券<br>
                        去{:($item['tmall']==1)?"天猫":"淘宝"}</span>
                    </a>
                </div>
                
                </volist>
            </div>
        </div>
    </div>
    <include file="public:footer" />
    <script src="__STATIC__/tkjidicms/js/swiper.min.js"></script>

</body>
	
    <script>
                            	$.getJSON('/?m=pro&a=prolist', function(data){
									var datalist1=data.msg;
									var datalist2=data.data;
									if(datalist1)
									{
										var str='';
										for(var i=0;i<datalist1.length;i++)
										{
											str+='<a href="'+datalist1[i].url+'" target="_blank" class="swiper-slide">'
                                +'<img src="'+datalist1[i].thumb+'" alt="'+datalist1[i].buss_name+'" width="127" height="127">'
                                +'<span>券后价：'+datalist1[i].price_youhui+'</span>';
                            +'</a>';
										}
										$(".v_swiper .swiper-wrapper").html(str);
										
										var mySwiper = new Swiper('.v_swiper',{
										  direction : 'vertical',
										  slidesPerView : 3,
										  slidesPerGroup : 3,
										  spaceBetween : 8,
										  autoplay : 5000,
										  autoplayDisableOnInteraction : false,
										  loop : true
									  })
										
										
										var str='';
										for(var i=0;i<datalist2.length;i++)
										{
											str+='<div class="goods_cont swiper-slide" onClick="javascript: window.open(\''+datalist2[i].url+'\');">'
                   							 +'<a href="'+datalist2[i].url+'" target="_blank" class="v_good">'
                        +'<img src="'+datalist2[i].thumb+'" alt="'+datalist2[i].buss_name+'" width="284" height="284">'
                        +'<span></span>'
                    +'</a>'
                    +'<div class="god_title">'
                        +'<img src="__STATIC__/tkjidicms/images/v_tm'+((datalist2[i].tmall==1)?1:0)+'.png" alt="">'
                        +'<span>'
                            +datalist2[i].buss_name
                        +'</span>'
                    +'</div>'
                    +'<div class="v_price">'
                        +'<span class="price_now">'
                            +'￥'+datalist2[i].price_youhui
                            +'<span>(券后)</span>'
                        +'</span>'
                        +'<span class="price_old">￥'+datalist2[i].price_order+'</span>'
                    +'</div>'
                    +'<div class="v_coupon">'
                        +'<span class="less">'
                            +'领券省'
                            +'<span><span>'+datalist2[i].price_youhuiquan+'</span>元</span>'
                        +'</span>'
                        +'<span class="people">'
                            +datalist2[i].sales+'人已购买<br>优惠券：'+datalist2[i].quan_num_zong+'张'
                        +'</span>'
                    +'</div>'
                   +'<a class="get_coupon" target="_blank" href="'+datalist2[i].url+'">'
                        +'<span>领券<br>'
                        +'去'+((datalist2[i].tmall==1)?'天猫':'淘宝')+'</span>'
                    +'</a>'
                +'</div>';
                           
										}
										$(".v_swiper2 .swiper-wrapper").html(str);
										var mySwiper2 = new Swiper('.v_swiper2',{
										  slidesPerView : 4,
										  slidesPerGroup : 4,
										  spaceBetween : 8,
										  autoplay : 3000,
										  speed:1000,
										  loop : true,
										  paginationClickable :true,
										  autoplayDisableOnInteraction : false,
										  pagination : '.v_page',
									  })
										
										 $(".v_down").click(function() {
										  mySwiper.slidePrev();
										  })
										  $(".v_up").click(function() {
											  mySwiper.slideNext();
										  })
								  
										  $(".slid_up").click(function() {
											  $(".v_hide").stop(true,false).slideUp(1000);
										  })
										
									}
								})
                            </script>
    
	<script>
	
        $(".seen_del").click(function() {
			
		var osign=$(".v_hide").css("display");
		if(osign=='none'){
			var imgcon=$(".hide_cont").html();
			if(imgcon==""||imgcon==undefined)
			{
				var con='{:empty($info['content'])?get_pro_con($info['taobao_id']):$info['content']}';
				$(".hide_cont").html(con);
			}
		}
			
            $(".v_hide").stop(true,false).slideToggle(1000);
        })
	</script>
</html>
