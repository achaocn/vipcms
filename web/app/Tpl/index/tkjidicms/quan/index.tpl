<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
<style>
.click{padding:0}
</style>
</head>
<body>
<include file="public:header" />
<div class="v_cont">
        <div class="v_cont_inner">
        	
            <include file="public:banner" />
            <div class="goods_title">
                <span class="line_left"></span>
                <img src="__STATIC__/tkjidicms/images/v_live4.png" alt="">
                <span class="line_left"></span>
            </div>
            <div class="f_list">
                <div class="f_list_inner">
                    <span>特别推荐</span>
                    <ul>
                        <li><a href="{:U('quan/index')}" <if condition="$ismust eq 0 and $isbig eq 0">class="f_on"</if>>全部</a></li>
                        <li><a href="{:U('quan/index?ismust=1')}" <if condition="$ismust eq 1">class="f_on"</if>>每日必拍券</a></li>
                        <li><a href="{:U('quan/index?isbig=1')}" <if condition="$isbig eq 1">class="f_on"</if>>大牌券(品牌)</a></li>
                    </ul>
                </div>
                <div class="f_list_inner">
                    <span>产品品类</span>
                    <ul>
                        <li><a href="{:U('quan/index')}" <if condition="$cid eq 0">class="f_on"</if>>全部({$pro_count})</a></li>
                        <volist name="cate_data" id="item">
                        
                        <li><a href="{:U('quan/index?cate_id='.$item['id'])}" title="{$item.class_name}" <if condition="$item['id'] eq $cid">class="f_on"</if>>{$item.class_name}</a></li>
                        </volist>
                    </ul>
                </div>
                <div class="f_list_inner">
                    <span>高级筛选</span>
                    <ul class="shaixuan">
                    	<li class="click"><a href="{:U('quan/index?type2='.($type2?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($tmall?'&tmall='.$tmall:"").($gold?'&gold='.$gold:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><i><input name="type2" type="checkbox" style="float:left;margin-top:3px" value="1" <if condition="$type2 eq 1">checked</if>></i>聚划算</a></li>
                        <li class="click"> <a href="{:U('quan/index?type1='.($type1?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($tmall?'&tmall='.$tmall:"").($gold?'&gold='.$gold:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><i><input class="inputs" name="type1" type="checkbox" style="float:left;margin-top:3px" value="1" <if condition="$type1 eq 1">checked</if>></i>淘抢购</a>
                        </li>
                        
                        <li class="click"><a href="{:U('quan/index?tmall='.($tmall?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><i><input name="tmall" type="checkbox" style="float:left;margin-top:3px" value="1" <if condition="$tmall eq 1">checked</if>></i>天猫</a></li>
                        <li class="click"><a href="{:U('quan/index?gold='.($gold?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($yun?'&yun='.$yun:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><i><input name="gold" type="checkbox" style="float:left;margin-top:3px" value="1" <if condition="$gold eq 1">checked</if>></i>金牌卖家</a></li>
                        <li class="click"><a href="{:U('quan/index?yun='.($yun?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($gold?'&gold='.$gold:"").($tmall?'&tmall='.$tmall:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($abroad?'&abroad='.$abroad:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><i><input name="yun" type="checkbox" style="float:left;margin-top:3px" value="1" <if condition="$yun eq 1">checked</if>></i>运费险</a></li>
                       
                         <li class="click"><a href="{:U('quan/index?abroad='.($abroad?0:1).($cid?'&cate_id='.$cid:"").($ismust?'&ismust='.$ismust:"").($isbig?'&isbig='.$isbig:"").($gold?'&gold='.$gold:"").($tmall?'&tmall='.$tmall:"").($type1?'&type1='.$type1:"").($type2?'&type2='.$type2:"").($yun?'&yun='.$yun:"").($price1?'&price1='.$price1:"").($price2?'&price2='.$price2:""))}"><i><input name="abroad" type="checkbox" style="float:left;margin-top:3px" value="1" <if condition="$abroad eq 1">checked</if>></i>海淘</a></li>
                         
                         <li class="sort-price-area">
                        <input class="min-price" name="jgqj1" value="{:($price1?$price1:"")}" placeholder="￥" style="float:left">
                        <span style="float:left;margin:0 10px;height: 30px;display: block;line-height: 30px;">-</span>
                        <input class="max-price" name="jgqj2" value="{:($price2?$price2:"")}" placeholder="￥" style="float:left">
                        <button style="background:#fb3434;border:0;color:#fff;width:40px;height:26px;float:left;margin:5px 10px 0px 10px; font-size:12px;">确定</button>
                        <a class="clear-price" href="javascript:;" style="width:40px;height:26px;float:left;margin:0 ;line-height:38px;text-align:center">清除</a>
                         
                         </li>
                        
                    </ul>
                    <script>
                        	$(".click").click(function(){
								var url=$(this).find("a").attr("href");	
								//alert(url);
								window.location.href=url;
							})
                        </script>
                </div>
               
            </div>
            <div class="f_num">
                <a href="{:U('quan/index'.$q)}" <if condition="$sort eq 0">class="f_on"</if>>综合</a>
                <a href="{:U('quan/index'.($q?$q.'&sort=1':'?sort=1'))}" <if condition="$sort eq 1">class="f_on"</if>>最新</a>
                <a href="{:U('quan/index'.($q?$q.'&sort=2':'?sort=2'))}" <if condition="$sort eq 2">class="f_on"</if>>销量</a>
                
                <a href="{:U('quan/index'.($q?$q.'&sort=4':'?sort=4'))}" <if condition="$sort eq 4">class="f_on"</if>>价格</a>
                 <a href="{:U('quan/index'.($q?$q.'&sort=5':'?sort=5'))}" <if condition="$sort eq 5">class="f_on"</if>>券价格</a>
                <div class="f_num_right">
                   {$pageup}
                </div>
            </div>
            <include file="public:itemlist" />
        </div>
    </div>


<include file="public:footer" />
<script>


var regNum = new RegExp("^[0-9]*$"),isNotnum = [0,0];
    var testNum = function(obj,n){
        if(isNaN(Number(obj.val()))){
            obj.val('0');
        }
        isNotnum[n] = 1;
    }
    testNum($('.min-price'),0);
    testNum($('.max-price'),1);

    $('.min-price').blur(function(){
        testNum($('.min-price'),0);
    })
    $('.max-price').blur(function(){
        testNum($('.max-price'),1);
    })
	$(".clear-price").click(function(){
		var price1=getUrlParam("price1");
		var price2=getUrlParam("price2");
		if(price1==null&&price2==null) 
		{
			//不处理
		}
		else
		{
			var url_web=window.location.href;
			if(price1)
			{
				url_web=url_web.replace("price1="+price1,"");
			}
			if(price2)
			{
				url_web=url_web.replace("price2="+price2,"");
			}
			var last=url_web.substring(url_web.length-1);
			
			
			url_web=url_web.replace("&&","&");
			//url_web=url_web.replace("&&&","&");
			url_web=url_web.replace("?&","?");
			
			if(last=="&"||last=="?")
			{
				url_web=url_web.substring(0,url_web.length-1);
			}
			
			window.location.href=url_web;
		}
	})
	
    $('.sort-price-area button').click(function(){
										
		var url_web=window.location.href;
		
        if(isNotnum[0] == 1 && isNotnum[1] == 1 && $.trim($('.max-price').val()) && $.trim($('.min-price').val()) ){
            var maxNum = Math.max(Number($('.max-price').val()),Number($('.min-price').val())),
                minNum = Math.min(Number($('.max-price').val()),Number($('.min-price').val()));
            $('.max-price').val(maxNum);
            $('.min-price').val(minNum);
        }
		
		
		
		if($('.min-price').val()!=""&&$('.min-price').val()!=undefined)
		{
			var price1=getUrlParam("price1");
			if(price1==null)
			{
				if(url_web.indexOf("?")>-1)
				{
					url_web=url_web+"&price1="+$('.min-price').val();
				}
				else
				{
					url_web=url_web+"?price1="+$('.min-price').val();
				}
			}
			else
			{
				url_web=url_web.replace(price1,$('.min-price').val());
			}
		}
		if($('.max-price').val()!=""&&$('.max-price').val()!=undefined)
		{
			var price2=getUrlParam("price2");
			if(price2==null)
			{
				if(url_web.indexOf("?")>-1)
				{
					url_web=url_web+"&price2="+$('.max-price').val();
				}
				else
				{
					url_web=url_web+"?price2="+$('.max-price').val();
				}
			}
			else
			{
				url_web=url_web.replace(price2,$('.max-price').val());
			}
		}

        window.location.href=url_web;
    })
	function getUrlParam(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		var r = window.location.search.substr(1).match(reg);  //匹配目标参数
		if (r != null) return unescape(r[2]); return null; //返回参数值
	}
</script>
</body>
</html>