<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/> 
    <div class="dt-nav swiper-container">
        <ul class="swiper-wrapper">
            <li class="swiper-slide"><a <if condition="$cid eq '' and $ismust eq '' and $isbig eq ''">class="dt-active"</if> href="{:U('quan/index')}">今日精选</a></li>
            <volist name="cate_data" id="item">
            <li class="swiper-slide"><a href="{:U('quan/index?cate_id='.$item['id'])}" <if condition="$cid eq $item['id']">class="dt-active"</if>>{$item.class_name}</a></li>
            </volist>
        </ul>
    </div>
    <!--最新-->
    
    <div class="top">
        <ul class="tp-list1">
            <li class="tp-first"><a class="tp-on" href="#">所有</a></li>
            <li><a href="{:U('quan/index?ismust=1')}">每日必拍</a></li>
            <li class="last"><a href="{:U('quan/index?isbig=1')}">大牌券(品牌)</a></li>
        </ul>
        <ul class="tp-list2">
            <span>
            <a href="{:U('quan/index?type2='.($type2?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($tmall?'&tmall='.$tmall:"").($gold?'&gold='.$gold:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><li class="li1 <if condition="$type2 eq 1">tp-list2-active</if>" >聚划算</li></a>
            <a href="{:U('quan/index?type1='.($type1?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($tmall?'&tmall='.$tmall:"").($gold?'&gold='.$gold:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><li class="li1 <if condition="$type1 eq 1">tp-list2-active</if>">淘抢购</li></a>
            
            </span>
            <span>
            <a href="{:U('quan/index?tmall='.($tmall?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><li class="li2 <if condition="$tmall eq 1">tp-list2-active</if>">天猫</li></a>
            <a href="{:U('quan/index?gold='.($gold?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><li class="li2 <if condition="$gold eq 1">tp-list2-active</if>">金牌卖家</li></a>
            </span>
            <a href="{:U('quan/index?yun='.($yun?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($gold?'&gold='.$gold:"").($tmall?'&tmall='.$tmall:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><li class="li3 <if condition="$yun eq 1">tp-list2-active</if>">运费险</li></a>
        </ul>
        <ul class="tp-list3">
            <a href="{:U('quan/index'.($q?$q.'&sort=1':'?sort=1'))}"><li <if condition="$sort eq 1 or $sort eq 0">class="list3-active"</if>>最新</li></a>
            <a href="{:U('quan/index'.($q?$q.'&sort=2':'?sort=2'))}"><li <if condition="$sort eq 2">class="list3-active"</if>>销量</li></a>
            <a href="{:U('quan/index'.($q?$q.'&sort=5':'?sort=5'))}"><li <if condition="$sort eq 5">class="list3-active"</if>>券价格</li></a>
            <a href="{:U('quan/index'.($q?$q.'&sort=4':'?sort=4'))}"><li <if condition="$sort eq 4">class="list3-active"</if>>价格</li></a>
        </ul>
    </div>
     
    
    
    
    <div class="content">
	<ul class="list cnt-list">
    	<input type="hidden" id="act" value="{:MODULE_NAME}" />
        <input type="hidden" id="qry" value="{$qry}" />
       
 		<include file='public:itemlist'/>
    </ul>
    <div class="dt-more">
        <img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
        <span>奋力加载中</span>
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
	<script>
		
		$('.tp-list3 li').click(function(){
				$(this).addClass('list3-active').parent().siblings().find('li').removeClass('list3-active')
			})
			var count=0
			for(var i=0;i<$('.tp-list2 li').length;i++){
				if($('.tp-list2 li').eq(i).hasClass('tp-list2-active')){
					count++;
				}
			};
			if(count == 0){
				$('.tp-on').html('所有')
			}else if(count == 1){
				for(var i=0;i<$('.tp-list2 li').length;i++){
					if($('.tp-list2 li').eq(i).hasClass('tp-list2-active')){
						var neirong=$('.tp-list2 li').eq(i).html();
						$('.tp-on').html(neirong);
						break;
					}
				}
			}else if(count>1){
				for(var i=0;i<$('.tp-list2 li').length;i++){
					if($('.tp-list2 li').eq(i).hasClass('tp-list2-active')){
						var neirong=$('.tp-list2 li').eq(i).html() + '...';
						$('.tp-on').html(neirong);
						break;
					}
				}
			}
			
			var tpflag=true;
			$('.tp-list2 .li1').click(function(){
				if($(this).hasClass('tp-list2-active')){
					$(this).removeClass('tp-list2-active')
				}else{
					$(this).addClass('tp-list2-active').parent().siblings().find('li').removeClass('tp-list2-active')
				}
			})
			$('.tp-list2 .li2').click(function(){
				if($(this).hasClass('tp-list2-active')){
					$(this).removeClass('tp-list2-active')
				}else{
					$(this).addClass('tp-list2-active').parent().siblings().find('li').removeClass('tp-list2-active')
				}
			})
			$('.tp-list2 .li3').click(function(){
				if($(this).hasClass('tp-list2-active')){
					$(this).removeClass('tp-list2-active')
				}else{
					$(this).addClass('tp-list2-active')
				}
			})
			$(".tp-first").click(function(){
				if(tpflag){
					$(".tp-list2").show();
					tpflag=false;
				}else{
					$(".tp-list2").hide();
					tpflag=true;
				}		
			})
		
		
		
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
		var count=null;
			for(var i=0;i<$(".dt-nav ul li").length;i++){
				var count;
				if($(".dt-nav ul li").eq(i).find("a").attr("class")=="dt-active"){
					count=i;
					mySwiper.slideTo(count, 0, false);
					break;
				}				
			}	
		
        /*下拉菜单*/
       /* var tpflag=true;
        $(".tp-first").click(function(){
            if(tpflag){
                $(".tp-list2").show();
                tpflag=false;
            }else{
                $(".tp-list2").hide();
                tpflag=true;
            }		
        })*/
        /*下拉刷新*/
       /* $(window).scroll(function(){
           var $top = $(document).scrollTop();//距顶部的高度			   
           var c=document.body.scrollHeight//网页高度
           var b=$(window).height()//可视窗口高度
           var d=c-b-$top	
           if(d>-0.5 && d<=0){
                clearInterval(timer)
                var timer=setTimeout(function(){
                    $(".cnt-list").append("<a href='#'><li><div class='li-img'><img src='img/fengding/list1.png'></div><div class='name'><div class='nameImg'><img src='img/fengding/namesmall.png'></div><p>短袖体恤女夏简约纯色大码打底</p></div><div class='price'><p>领券价：￥28</p><span class='priceImg'>￥100</span></div><p class='though'><span class='sp1'>￥38</span><span class='sp2'>销量：24</span></p><div class='ling'>领券购买</div></li></a><a href='#'><li class='second'><div class='li-img'><img src='img/fengding/list1.png'></div><div class='name'><div class='nameImg'><img src='img/fengding/namesmall.png'></div><p>短袖体恤女夏简约纯色大码打底</p></div><div class='price'><p>领券价：￥28</p><span class='priceImg'>￥100</span></div><p class='though'><span class='sp1'>￥38</span><span class='sp2'>销量：24</span></p><div class='ling'>领券购买</div></li></a>")
                },2000)		
           }
        });*/
	   
    </script>
    
	</body>
</html>