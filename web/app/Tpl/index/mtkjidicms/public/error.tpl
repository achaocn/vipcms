<!DOCTYPE html>
<html>
<head>
<include file='public:head'/>
<script src="/static/tkjidicms/wap/js/jquery-3.2.1.min.js"></script>
<style>
*{margin:0;padding:0;}
body,html{font-size:10px;}
.main_wrap {_padding-left:22px; background: url(image/left_cur.jpg) repeat-y;padding-bottom: 15px;margin-top: 15px;}
/*跳转提示*/
.msg_wrap{ min-height: 220px; height: 220px;}
.message_box{margin:60px auto;width:100%;background:#FFF;}
.message_box a{ color: #369;}
.msg_right,.msg_error,.msg_alert{padding:20px 0 ;min-height:4rem;line-height:160%;font-size:14px;width:100%;}
.msg_btnleft{margin-top:8px;}
/*头部*/
header{width: 100%;height: 4rem;border-bottom: 0.1rem solid #e5e5e5;position: relative;background: #fff;}
header .back{height: 45%;position: absolute;left: 5%;top: 1.4rem;height: 35%;}
header .hd-name{width: 100%;height: 100%;line-height: 4rem;text-align: center;font-size: 1.6rem;}
</style>
</head>
<body>
<header>
    <img class="back" src="__STATIC__/tkjidicms/wap/img/register/back.png" />
    <p class="hd-name">{$error}</p>
</header>
<script>
		/*返回*/
		$(".back").click(function(){
			if(window.history.length<=1){
				window.location.href="index.html"	
			}else{
				window.history.go(-1);
				console.log(window.history.length)
			}			
		})
		$(".backtop").hide();
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
</script>
<div class="main" style="text-align: center;">
<div class="app" style="text-align: center;">

    <div class="msg_wraps">
        <div class="message_box">
            <div class="msg_error">
                <p>{$error}</p>
                <p class="msg_btnleft"><a href="{$jumpUrl}">如果浏览器没有跳转请点击此返回！</a></p>
            </div>
            <script language="javascript">
                setTimeout("location.href='{$jumpUrl}';",{$waitSecond}*1000);
            </script>
        </div>
    </div>
	
</div>
</div>
</body>
</html>