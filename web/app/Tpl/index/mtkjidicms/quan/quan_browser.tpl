<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=dwvice-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>用浏览器打开</title>

    <style>
        .outer img{
            width: 100%;
            height: auto;
        }
        .outer{
            position: relative;
            max-width: 750px;
            margin:0 auto;
        }
        .outer a{
            display: block;
            height: 11.2vw;
            width: 34.667%;
            max-width: 260px;
            max-height: 84px;
            /*border:1px solid red;*/
            position:absolute;
            margin-left: 33%;
            bottom: 7.5%;


        }
    </style>
<script type="text/javascript" src="__STATIC__/tkjidicms/wap/js/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div class="outer">
        <img id="go_tip" src="__STATIC__/tkjidicms/wap/img/index/share_browser.png" alt="">
        <a class='more_coupon' href="/"></a>
    </div>

    <input name="link" id="link" value='{$link}' type='hidden'/>
<script>
var link = document.getElementById("link").value; 
$(document).ready(function(e){
        //内部方法
        function is_weixin() {
            var ua = navigator.userAgent.toLowerCase();
            if (ua.match(/MicroMessenger/i) == "micromessenger" || ua.match(/qq\//i) == "qq/") {

                return true;

            } else {

                return false;

            }
        }
       
        function openApp(url) {
            var tb_url = url.replace("http://", "").replace("https://", "");
            var ifr = document.createElement('iframe');
            ifr.src = 'taobao://' + tb_url;
            ifr.style.display = 'none';
            document.body.appendChild(ifr);
            window.location = url;
        }

        function openIphoneApp_ios_9(url)
		{
            var tb_url = url.replace("http://", "").replace("https://", "");
            window.location = "taobao://" + tb_url;
            window.setTimeout(function () { window.location = url; }, 4000)
        }


     //函数执行

        var isWeixin = is_weixin();
		//isWeixin=1;
        if (!isWeixin) {
       		$("body").html("<center style=\"margin-top: 10px;\">唤醒手机淘宝中...</center>");
            //只在有优惠券的时候执行
            var ua = navigator.userAgent.toLowerCase();
            if (ua.match(/iphone os 9/i) == "iphone os 9") {
                openIphoneApp_ios_9(link);

            } else {
                openApp(link);
            }
        }
    });
    $('.more_coupon').click(function(){
          window.location.href ='/';
    })
</script>

</body>
</html>