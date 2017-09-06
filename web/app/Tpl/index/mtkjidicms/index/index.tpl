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
			<div class="hd-search">
				<span class="hd-left"></span>
                <form name="form1"  action="" class="search">
                <input type="hidden" name="m" value="search">
           		<input type="hidden" name="a" value="index">
				<input id="search" type="text" name="k" value="" placeholder='请输入搜索关键字' />	
                </form>		
			</div>
			<div class="hd-sign">
				<img src="__STATIC__/tkjidicms/wap/img/index/sign.png" />
			</div>
		</header>
		<!--banner-->
		<div class="banner swiper-container1">
        	<div class="bn-top swiper-wrapper">
              <volist name="banner" id="ad">
              <div class="swiper-slide"><a href="{$ad.url}" target="_blank"><img src="{$imgdri}{$ad['content']}" /></a></div>
              </volist>   
          </div>
			
			<!--banner导航-->
			<div class="bn-bottom">
				<ul class="bn-bottom-list">
                	<a href="{:U('jiu/index')}">
					<li>
						<div class="bn-list-top">
							<img src="__STATIC__/tkjidicms/wap/img/index/bn-list-small1.png"/>
						</div>
						<p class="bn-list-bottom"><a>8.8包邮</a></p></li>
					
                    </a>
                    <a href="{:U('shijiu/index')}">
					<li>
						<div class="bn-list-top">
							<img src="__STATIC__/tkjidicms/wap/img/index/bn-list-small2.png"/>
						</div>
						<p class="bn-list-bottom"><a>20元封顶</a></p></li>
					
                    </a>
                    <a href="{:U('quan/cha')}">
					<li>
						<div class="bn-list-top">
							<img src="__STATIC__/tkjidicms/wap/img/index/bn-list-small3.png"/>
						</div>
						<p class="bn-list-bottom"><a>超级搜</a></p>
					</li>
                    </a>
                    <a href="{:U('quan/index')}">
					<li>
						<div class="bn-list-top">
							<img src="__STATIC__/tkjidicms/wap/img/index/bn-list-small4.png"/>
						</div>
						<p class="bn-list-bottom"><a>领券直播</a></p>
                     </li>
                    </a>
                    <a href="{:U('video/index')}">
					<li>
						<div class="bn-list-top">
							<img src="__STATIC__/tkjidicms/wap/img/index/bn-list-small5.png"/>
						</div>
						<p class="bn-list-bottom"><a href="{:U('video/index')}">看好货</p></li></a>
                     
					</a>
				</ul>
			</div>
		</div>
		<!--品牌推荐-->
		<div class="figure">
			<div class="lk-img">
				<img src="__STATIC__/tkjidicms/wap/img/index/lookGoods.png"/>
			</div>
			
			<!--更多推荐-->
			<ul class="fg-center">
            	<volist name="videolist" id="item" offset="0" length="4">
                <a href="{:U('pro/show?id='.$item['id'])}">
					<li>
						<div class="fg-center-img">
							<img src="{$item.thumb}" />
							<a href="{:U('pro/show?id='.$item['id'])}"><img class="lookInner" src="__STATIC__/tkjidicms/wap/img/look.png" /></a>
						</div>
						<p class="fg-center-price">
							<span class="sp1">￥{$item.price_youhui}</span>
							<del>￥{$item.price_order}</del>
						</p>
						<p class="fg-center-less">
							<span class="sp1">领券省</span>
							<span class="sp2">￥{$item.price_youhuiquan}</span>
						</p>
					</li>
				</a>		
                </volist>
			</ul>
			
		</div>
		<!--爆款抢购-->
        <div class="rh-img">
            <img src="__STATIC__/tkjidicms/wap/img/index/baokuan.png" />
        </div>
		<div class="rush swiper-container2" style="position: relative;">
			<div class="swiper-wrapper" id="rh-list"></div>
            <div class="swiper-pagination" id="swiperPagination"></div>
		</div>
		<!--领券直播-->
		<div class="direct">
			<div class="dt-img">
				<img src="__STATIC__/tkjidicms/wap/img/index/directImg.png">
			</div>
			<div class="dt-nav swiper-container">
				<ul class="swiper-wrapper">
					<li class="swiper-slide dt-active">今日精选</li>
                     <volist name="cate_data" id="item" key="key">
                     
                          <li class="swiper-slide"> <a href="{:U('quan/index','cate_id='.$item['id'])}">{$item.class_name_taoke}</a></li>
                      
                      </volist>
					
				</ul>
			</div>
			<div class="dt-content">
            	<input name="page" type="hidden" value="1" id="page" />
            	<div>
				<ul id="indexlist">
                	
				</ul>
                </div>
                <div class="dt-more">
                  <img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
                  <span>奋力加载中</span>
            	</div>
			</div>			
		</div>
		<!--底部-->
		<include file='public:footer'/> 
        <a href="#">
            <div class="backtop">
                <span><img src="__STATIC__/tkjidicms/wap/img/index/backtop.png" /></span>
            </div>
        </a>
	</div>
    <script type="text/javascript">
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
	</script>
    <script>
		var $hei=$(".direct .dt-content ul li .dt-ct-img").width();
		$(".direct .dt-content ul li .dt-ct-img").css("height",$hei+"px")
		/*签到*/
		$(".hd-sign").click(function(){
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
		$('.hd-left').click(function(){
			var val=$(this).find("#search").val() 
			if(val==""){
				alert("请在输入框内输入关键字");
				$(".search").siblings('#search').focus();
				return false;
			}else{
				$('.search').submit()
			}						 
		})
		$('.search').bind('keypress',function(event){
	            if(event.keyCode == "13"){
	            	var val=$(this).find("#search").val() 
					if(val==""){
						alert("请在输入框内输入关键字");
						$(this).siblings('#search').focus();
						return false;
					}else{
						$(this).submit()
					}
	            }    
	        })
		
		
		/*function prevent (e) {
		　　e.preventDefault();
		}
		$('body').on('touchmove', prevent);*/
		/*搜索模块*/
		$("#search").focus(function(){
				$(this).val("");
			})
		/*$("#search").blur(function(){
			if($(this).val()=="" || $(this).val()=="请输入搜索关键字"){
				$("#search").val("8.8包邮")
			}
		})*/
		/*banner上部轮播*/
		var mySwiper = new Swiper('.swiper-container1', {
			autoplay: 5000,//可选选项，自动滑动
			loop : true,
		})
		/*爆款滑动*/
		/*var mySwiper = new Swiper('.swiper-container2', {
			pagination : '.swiper-pagination',
			loop: false,
		})*/
		/*领券直播分类*/
		var mySwiper = new Swiper('.swiper-container', {
			slidesPerView : 5,
			longSwipesRatio : 0.1,
			slideToClickedSlide:true,
			longSwipesMs : 1000,
			longSwipes:false,
			iOSEdgeSwipeDetection : true,
			touchReleaseOnEdges:true,			
		})
		var dtindex
		$(".direct .dt-nav .swiper-wrapper li").click(function(){
		     dtindex=$(this).index()
		     $(".direct .dt-nav .swiper-wrapper .swiper-slide").eq(dtindex).addClass("dt-active").siblings().removeClass("dt-active")
		     $(".dt-content ul").eq(dtindex).show().siblings().hide()
		})
		/*下拉刷新*/
			/*var dtindex;
				for(var i=0;i<$(".dt-nav ul li").length;i++){
				   		if($(".dt-nav ul li").eq(i).attr("class")=="swiper-slide dt-active swiper-slide-active"){			   			
				   			dtindex=i;				   			
				   			break;
				   		}
				   		
			}
				console.log(dtindex)*/
			var flagScroll=true;
			$(window).scroll(function(){
				if(flagScroll){
					   var $top = $(document).scrollTop();//距顶部的高度			   
					   var c=document.body.scrollHeight//网页高度
					   var b=$(window).height()//可视窗口高度
					   var d=c-b-$top	
					   
					   if(d>-0.5 && d<=0){
							var page=$("#page").val();
							flagScroll=false;
								if(page>0)
								{
									if(dtindex==0 || dtindex==undefined){
										
										$.getJSON('/?m=index&a=ajax&page='+page, function(datas){
										  if(datas.status=="200"||datas.status==200)
										  {
											 page++;
											 $("#page").val(page);
											 for (var i = 0; i < datas.data.length; i++) {
												 var dd='<li>';
									dd+='<div class="dt-ct-img"><img src="'+datas.data[i].thumb+'" /></div>';
									dd+='<div class="content-right"><p class="dt-ct-name">'+datas.data[i].buss_name+'</p><p class="dt-ct-explain">'+datas.data[i].introduce+'</p><p class="dt-ct-sheng"><span class="dt-ct-left">领券省:￥'+datas.data[i].price_youhuiquan+'</span><span class="dt-ct-right">销量:'+datas.data[i].sales+'</span></p>';
										dd+='<a class="dt-ct-buy" href="'+FTXIAER.root+'/?m=pro&a=show&id='+datas.data[i].id+'">领券购买</a><p class="dt-ct-price"><span class="dt-ct-rel">￥'+datas.data[i].price_youhui+'</span><span class="dt-ct-yuan">￥'+datas.data[i].price_order+'</span></p></div></li>';
												$(".dt-content div ul").eq(0).append(''+dd+'')
											 } 
											 var $hei=$(".direct .dt-content ul li .dt-ct-img").width();
											  $(".direct .dt-content ul li .dt-ct-img").css("height",$hei+"px");
											   flagScroll=true;
										  }
										  else
										  {
											 $("#page").val(0);
											 $(".dt-more").html('<span>已达到底线</span>');
											 $('.dt-more').delay(3000).hide(0);
										  }
										  
										});
										
										//$(".dt-content div ul").eq(0).append("<li>1</li><li>2</li><li>3</li>")
									}/*else{
										$(".dt-content div ul").eq(dtindex).append("<li></li><li></li><li></li>")
									}	*/
								}
								else
								{
									$(".dt-more").html('<span>已达到底线</span>');
									$('.dt-more').delay(3000).hide(0);
								}
										
					   }
				}				
			});
    	/*回到顶部*/
    	$(".backtop").hide()
    	$(window).scroll(function(){
		    var $top = $(document).scrollTop();//距顶部的高度
		    if($top>=0){
		    	$("header").css({"position":"fixed","top":"0","z-index":"30"})
		    	$(".backtop").show()		    	
		    }
		    if($top==0){
		    	$("header").css({"position":"relative"})
		    	$(".backtop").hide()
		    } 
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
		
	
	
	///////////////////////////////
	$.getJSON('/?m=getjson&a=indexpro', function(data){
			var tody_tuijian=data.result.tody_tuijian;
			var videolist=data.result.videolist;
			var index_miaosha=data.result.index_miaosha;
			var tody_pro1="";
			var video="";
			var tuijian="";

			var len1=videolist.length;
			if(len1>=5)
			{
				len1=4;
			}
	   		for(var i=0;i<len1;i++)
			{
				video+='<a href="'+videolist[i].url+'" title="1212">'
					+'<li>'
						+'<div class="fg-center-img">'
							+'<img class="li-ling" src="'+videolist[i].thumb+'" />'
							+'<img class="lookInner" src="__STATIC__/tkjidicms/wap/img/look.png" />'
						+'</div>'
						+'<p class="fg-center-price">'
							+'<span class="sp1">￥'+videolist[i].price_youhui+'</span>'
							+'<del>￥'+videolist[i].price_order+'</del>'
						+'</p>'
						+'<p class="fg-center-less">'
							+'<span class="sp1">领券省</span>'
							+'<span class="sp2">￥'+videolist[i].price_youhuiquan+'</span>'
						+'</p>'
					+'</li>'
				+'</a>';
			  
			   
			}
			
			$(".fg-center").html(video);
			/*宽高相等*/
			var $innerWid=$(".li-ling").width();
			$(".li-ling").css("height",$innerWid+"px")
			
			//alert(video);
			$(".lk-bottom").prepend(video);
			//爆款抢购
			for(var i=0;i<index_miaosha.length;i++)
			{
			   
			   if(i==0||i==3||i==6)
			   {
					tuijian+='<ul class="rh-list swiper-slide">' ;  
			   }
			   tuijian+=''
                    +'<a href="'+index_miaosha[i].url+'">'
					+'<li>'
						+'<div class="li-img">'
							+'<img src="'+index_miaosha[i].thumb+'" />'
						+'</div>'
                        +'<progress max="'+index_miaosha[i].sales+'" value="'+index_miaosha[i].sales+'"></progress>'
						+'<p class="rh-name">'+index_miaosha[i].buss_name+'</p>'
						+'<p class="rh-price">￥'+index_miaosha[i].price_youhui+'(券后)</p>'
                        +'<p class="rh-number">'+index_miaosha[i].sales+'人已抢购</p>'				
					+'</li>'
                    +'</a>';
					if(i==2||i==5||i==8)
					{
						tuijian+='</ul>'
					}
			}
			$("#rh-list").html(tuijian);
			var $height=$(".li-img").width();
			$(".li-img").css("height",$height+"px")
			/*爆款滑动*/
			var mySwiper = new Swiper('.swiper-container2', {
				pagination : '.swiper-pagination',
				loop: false,
			});
			
			
	});
    
	$.getJSON('/?m=index&a=ajax&page=0', function(datas){
		  if(datas.status=="200"||datas.status==200)
		  {
			 for (var i = 0; i < datas.data.length; i++) {
				 var dd='<li>';
				dd+='<div class="dt-ct-img"><img src="'+datas.data[i].thumb+'" /></div>';
				dd+='<div class="content-right"><p class="dt-ct-name">'+datas.data[i].buss_name+'</p><p class="dt-ct-explain">'+datas.data[i].introduce+'</p><p class="dt-ct-sheng"><span class="dt-ct-left">领券省:￥'+datas.data[i].price_youhuiquan+'</span><span class="dt-ct-right">销量:'+datas.data[i].sales+'</span></p>';
				dd+='<a class="dt-ct-buy" href="'+FTXIAER.root+'/?m=pro&a=show&id='+datas.data[i].id+'">领券购买</a><p class="dt-ct-price"><span class="dt-ct-rel">￥'+datas.data[i].price_youhui+'</span><span class="dt-ct-yuan">￥'+datas.data[i].price_order+'</span></p></div></li>';
				$(".dt-content div ul").eq(0).append(''+dd+'');
			 } 
			 var $hei=$(".direct .dt-content ul li .dt-ct-img").width();
			$(".direct .dt-content ul li .dt-ct-img").css("height",$hei+"px")
		  }
	
	});
	
	</script>
    

</body>
</html>
