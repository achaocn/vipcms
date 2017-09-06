<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
	<include file='public:header'/>
    <!--中部列表-->
    	<div class="top">
            <span class="sp1">{$article.title}</span><br />
            <span class="sp2">{$article.add_time|date="Y-m-d H:i:s",###}</span>
        </div>
        <div class="content">
            {$article.info}
        </div>
    </div>
	</body>
    <script>
    $(".content img").css("width","100%");
	$(".content img").css("height","");
    </script>
</html>