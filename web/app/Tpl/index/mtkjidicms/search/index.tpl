<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/> 
    
    <div class="top">
        <ul class="tp-list1">
            <li class="tp-first"><a class="tp-on">
          
            <if condition="$sort eq 1 or $sort eq 0">
            最新
            <elseif condition="$sort eq 2"/>
            销量
           
            <elseif condition="$sort eq 4"/>
            价格
            <elseif condition="$sort eq 5"/>
            券价格
            </if>
            </a></li>
            
           
        </ul>
        <ul class="tp-list2">
            <a href="{:U('search/index'.$q.'&sort=1')}"><li <if condition="$sort eq 1 or $sort eq 0">class="tp-list2-active"</if>>最新</li></a>
            <a href="{:U('search/index'.$q.'&sort=2')}"><li <if condition="$sort eq 2">class="tp-list2-active"</if>>销量</li></a>
 			<a href="{:U('search/index'.$q.'&sort=5')}"><li <if condition="$sort eq 5">class="tp-list2-active"</if>>券价格</li></a>
            <a href="{:U('search/index'.$q.'&sort=4')}"><li <if condition="$sort eq 4">class="tp-list2-active"</if>>价格</li></a>
           
        </ul>
    </div>	
    
	<ul class="list">
    	<input type="hidden" id="act" value="{:MODULE_NAME}" />
        <input type="hidden" id="qry" value="{$qry}&sort={$sort}" />
        
 		<include file='public:itemlist'/>
    </ul>
    <div class="dt-more" style="display:none">
        <img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
        <span>奋力加载中</span>
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
        	 /*下拉菜单*/
        var tpflag=true;
        $(".tp-first").click(function(){
            if(tpflag){
                $(".tp-list2").show();
                tpflag=false;
            }else{
                $(".tp-list2").hide();
                tpflag=true;
            }		
        })
        </script>
	</body>
</html>