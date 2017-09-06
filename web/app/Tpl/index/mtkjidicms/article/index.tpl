<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
	<include file='public:header'/>
    <!--中部列表-->
    	<notempty name="article_list">
        <ul class="center">
        	<volist name="article_list" id="article">
            <a href="{:U('article/read',array('id'=>$article['id']))}"><li><p>{$article.title}</p></li></a>
            </volist>
            					
        </ul>
       	<else />
        	<center>暂无相关信息</center>
        </notempty>
    </div>
	</body>
</html>
