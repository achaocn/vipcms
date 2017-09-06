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
            <span class="sp1">{$help.title}</span><br />
            <span class="sp2">{:date('Y.m.d',$help['last_time'])}</span>
        </div>
        <div class="content">
            {$help.info}
        </div>
    </div>
	</body>
</html>