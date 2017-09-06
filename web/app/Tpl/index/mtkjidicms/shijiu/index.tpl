<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/> 
	<ul class="list">
    	<input type="hidden" id="act" value="{:MODULE_NAME}" />
        <input type="hidden" id="q" value="{$q}" />
 		<include file='public:itemlist'/>
    </ul>
    <div class="dt-more">
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
		
	</body>
</html>