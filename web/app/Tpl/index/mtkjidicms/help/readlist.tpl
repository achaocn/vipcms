<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
	<include file='public:header'/>
    <!--中部列表-->
    	<notempty name="helps">
        <ul class="center">
        	<volist name="helps" id="item">
            <a href="{:U('help/read?id='.$item['id'])}"><li><p>{$item.title}</p></li></a>
            </volist>
            					
        </ul>
       	<else />
        	<center>暂无相关信息</center>
        </notempty>
    </div>
	</body>
</html>