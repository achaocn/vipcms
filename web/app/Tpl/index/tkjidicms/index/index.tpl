<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
<link rel="stylesheet" href="__STATIC__/tkjidicms/css/swiper.min.css">
<link rel="stylesheet" href="__STATIC__/tkjidicms/css/index.css">
</head>
<body>
	{:R('advert/index', array(13), 'Widget')}
	<include file="public:header_index" />
    <div class="banner">
		<div class="banner1 swiper-container">
          <div class="swiper-wrapper">
              <volist name="banner" id="ad">
              <a href="{$ad.url}" target="_blank" class="swiper-slide">
                  <img src="{$imgdri}{$ad['content']}" alt="{$ad.name}" title="{$ad.name}">
              </a>
              </volist>
          </div>
          <div class="swiper-pagination page1"></div>
        </div>
		<div class="bann2_out">
			<div class="banner2">
				<div class="ban_left">
					<div class="ban_top">
						<span class="f_span"></span>
						今日推荐
						<span class="s_span"></span>
					</div>
					<div class="swiper-container swip2">
						<div class="swiper-wrapper">
                        	<volist name="tody_tuijian" id="item">

							<a href="{:U('pro/show?id='.$item['id'])}" class="swiper-slide" target="_blank">
								<img src="{$item.thumb}" alt="{$item.buss_name}"><br>
								<span class="writer">
									券后<span>¥{$item.price_youhui}</span><br>
									{$item.buss_name}
								</span>
							</a>
                            </volist>
						</div>
						<div class="swiper-pagination page2"></div>
					</div>
				</div>
				<div class="ban_right">
                	<empty name="visitor">
					<img class="user_head" src="__STATIC__/tkjidicms/images/v_head.png" alt=""><br>
					立即登录，开始省钱！<br>
					<a class="login" href="{:U('user/login')}">马上登录</a>
					<a class="regist" href="{:U('user/register')}">立即注册</a>
					<div class="point_shop">
						<a href="{:U('gift/index')}" class="shop">
							<img src="__STATIC__/tkjidicms/images/v_point.png" alt=""><br>
							积分商城
						</a>
						<a class="get_point sign_btn" href="#">
							<img src="__STATIC__/tkjidicms/images/check.png" alt=""><br>
							签到领积分
						</a>
					</div>
                    <else/>

                    <a href="{:U('user/index')}" target="_blank"><img class="user_head" src="{:avatar($visitor['id'], 70)}" alt=""></a><br>
					<span class="user_name">{$visitor.username}</span><br>
					<span class="user_point">积分：{$visitor.score}</span><br>
					<a class="login" href="{:U('user/logout')}">退出登录</a>
					<div class="point_shop">
						<a href="{:U('gift/index')}" class="shop">
							<img src="__STATIC__/tkjidicms/images/v_point.png" alt=""><br>
							积分商城
						</a>
						<a class="get_point sign_btn" href="#">
							<img src="__STATIC__/tkjidicms/images/check.png" alt=""><br>
							签到领积分
						</a>
					</div>
                    </empty>
				</div>
			</div>
		</div>
	</div>

    <div class="func_lsit">
		<div class="list_inner">
			<span>
				<img src="__STATIC__/tkjidicms/images/v_coupon.png" alt="">
				<span>
					<span>
						领券购物
					</span><br>
					购物先领内部券
				</span>
			</span>
			<span>
				<img src="__STATIC__/tkjidicms/images/v_clear.png" alt="">
				<span>
					<span>
						安全认证
					</span><br>
					认购审核安全购物
				</span>
			</span>
			<span>
				<img src="__STATIC__/tkjidicms/images/v_sun.png" alt="">
				<span>
					<span>
						无忧购物
					</span><br>
					天猫淘宝购物无忧
				</span>
			</span>
			<span>
				<img src="__STATIC__/tkjidicms/images/v_time.png" alt="">
				<span>
					<span>
						每日更新
					</span><br>
					24小时不间断更新内容
				</span>
			</span>
			<span>
				<img src="__STATIC__/tkjidicms/images/v_fold.png" alt="">
				<span>
					<span>
						超级折中折
					</span><br>
					领券购物超级折中折
				</span>
			</span>
		</div>
	</div>


    <!--品牌推荐-->
    <div class="v_cont">
		<div class="v_cont_inner">
        	<!---->
            <div class="adver">
				<div class="adver_1">
					<img src="__STATIC__/tkjidicms/images/v_bland.png" alt="">
					品牌推荐
				</div>
				<div class="adver_2">
                	{:R('advert/index', array(14), 'Widget')}
				</div>
			</div>
            <!---->

            <div class="look">
			<div class="lk-top">
				<div class="tp-left">
					<img src="__STATIC__/tkjidicms/images/lookSmall.png" />
					<h3>看好货</h3>
				</div>
				<p class="tp-right">视频购物，达人购物，看就购了！</p>
                <div class="clear"></div>
			</div>
			<ul class="lk-bottom">


				<a href="{:U('video/index')}"><li class="last">
					<div class="lt-inner">
						<img src="__STATIC__/tkjidicms/images/look5.jpg" />
					</div>
				</li></a>
			</ul>
		</div>


            <div class="limit">
				<div class="linit_1">
					<img src="__STATIC__/tkjidicms/images/v_buy.png" alt="">
					爆款抢购
					<span>
						爆款商品，实时自动更新，秒杀多多！
						<a href="{:U('quan/index')}">更多</a>
					</span>
				</div>
				<div class="limit_2">
					<div class="limit_2_out">
					</div>
				</div>
			</div>
            <!---------------->
            <div class="goods_title">
				<span class="line_left"></span>
				<img src="__STATIC__/tkjidicms/images/v_live.png" alt="">
				<span class="line_left"></span>
			</div>
           <include file="public:itemlist_index" />
        </div>
    </div>

<include file="public:footer" />
<script src="__STATIC__/tkjidicms/js/swiper.min.js"></script>
<script src="__STATIC__/tkjidicms/js/login.js"></script>
<script>
//alert(FTXIAER.site);
	$.getJSON('/?m=getjson&a=indexpro', function(data){
			var tody_tuijian=data.result.tody_tuijian;
			var videolist=data.result.videolist;
			var index_miaosha=data.result.index_miaosha;
			var tody_pro1="";
			var video="";
			var tuijian="";

	   		for(var i=0;i<videolist.length;i++)
			{

			   video+='<a href="'+videolist[i].url+'" target="_blank"><li>'
					+'<div class="lk-img"><img src="'+videolist[i].thumb+'"/></div>'
					+'<p class="lk-name">'+videolist[i].buss_name+'</p>'
					+'<p class="lk-price">￥'+videolist[i].price_youhui+'<span>(券后)</span></p>'
					+'<p class="lk-through">￥'+videolist[i].price_order+'</p>'
					+'<img class="quanOuter" src="__STATIC__/tkjidicms/images/lkquan.png" />'
					+'<span class="quan">券 '+videolist[i].price_youhuiquan+'元</span>'
					+'<img class="play" src="__STATIC__/tkjidicms/images/play.png" />'
				+'</li></a>';

			}
			//alert(video);
			$(".lk-bottom").prepend(video);
			//爆款抢购
			for(var i=0;i<6;i++)
			{

			   tuijian+='<div class="limit_2_inner">'
							+'<a href="'+index_miaosha[i].url+'" target="_blank" title="'+index_miaosha[i].buss_name+'"><img src="'+index_miaosha[i].thumb+'" alt="'+index_miaosha[i].buss_name+'"></a>'
							+'<div class="right">'
								+'<div class="title">'
									+'<a href="'+index_miaosha[i].url+'" target="_blank" title="'+index_miaosha[i].buss_name+'">'+index_miaosha[i].buss_name+'</a>'
								+'</div>'
								+'<div class="detail">'
									+'<a href="'+index_miaosha[i].url+'" target="_blank" title="'+index_miaosha[i].buss_name+'">'+index_miaosha[i].introduce+'</a>'
								+'</div>'
								+'<div class="price">'
									+'<span class="num">'
										+'￥'+index_miaosha[i].price_youhui
										+'<span>(券后)</span>'
									+'</span>'
									+'<span class="get">省<span>￥'+index_miaosha[i].price_youhuiquan+'</span></span>'
								+'</div>'
								+'<div class="over" >'
									+'<div class="over_left"></div>'
									+'<span class="over_cont">'
                                    	+'已'+index_miaosha[i].sales+'人抢购成功'
										+'<span class="num_1" style="display:none">'
											+index_miaosha[i].sales
										+'</span>'
										+'<span class="num_2" style="display:none">'+index_miaosha[i].sales+'</span>'
									+'</span>'
								+'</div>'
							+'</div>'
						+'</div>'

			}

			$(".limit_2_out").html(tuijian);
			//limit_2_out

	});


	$.getJSON('/?m=getjson&a=indexlist', function(data){
			var datalist=data.result;
			var pro="";
			//goods_out

	  		for(var i=0;i<datalist.length;i++)
			{

			   pro+='<div class="goods_cont">'
        +'<a class="v_good" href="'+datalist[i].url+'" target="_blank">'
           +' <img src="'+datalist[i].thumb+'" alt="'+datalist[i].buss_name+'" class="lazy">'
            +'<span></span>'
        +'</a>'
        +'<div class="god_title">'

            +'<img src="__STATIC__/tkjidicms/images/v_tm'+((datalist[i].tmall==1)?1:0)+'.png" alt="">'
            +'<span>'+datalist[i].buss_name+'</span>'
        +'</div>'
        +'<div class="v_price">'
            +'<span class="price_now">'
                +'￥'+datalist[i].price_youhui+''
                +'<span>(券后)</span>'
            +'</span>'
            +'<span class="price_old">￥'+datalist[i].price_order+'</span>'
        +'</div>'
        +'<div class="v_coupon">'
            +'<span class="less">'
                +'领券省'
                +'<span><span>'+datalist[i].price_youhuiquan+'</span>元</span>'
            +'</span>'
            +'<span class="people">'
               +datalist[i].sales+' 人已购买<br>'
               +' 优惠券：'+datalist[i].quan_num_zong+'张'
            +'</span>'
       +' </div>'

        +'<a class="get_coupon" href="'+datalist[i].url+'" target="_blank">'
            +'<span>领券<br>'
            +'去'+((datalist[i].tmall==1)?'天猫':'淘宝')+'</span>'
        +'</a>'
   +' </div>';
			}

			$(".goods_out").html(pro);



	});
</script>
</body>
</html>