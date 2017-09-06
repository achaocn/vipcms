<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<css file="__STATIC__/css/admin/style.css" />
<script src="__STATIC__/js/admin/propeller.min.js"></script>
<!--[if lt IE 9]>
<script src="__STATIC__/js/admin/html5.js"></script>
<script type="text/javascript">
    function resizeIframe(obj) {
        var Iframe = document.getElementById(obj);
            if (Iframe){
                if (Iframe.contentDocument){//ff
                    Iframe.style.height = Iframe.contentDocument.body.scrollHeight +40+'px';
                }
                else if(Iframe.document && Iframe.document.body.scrollHeight){//ie
                Iframe.style.height = iframe.document.body.scrollHeight + 40 + 'px';
            }
        }
    }
</script>
<![endif]-->

<title>淘客基地vipcms程序管理员登陆</title>
</head>
<style type="text/css">
.tbk {
	color: #FC3;
}
</style>
<body>
	<div class="newtop">
    	<div class="newtop_left">淘客基地<span>最安全稳定的高端淘宝客程序 </span></div>
        <div class="newtop_right"><a href="http://daxue.tkjidi.com" title="相关教程">相关教程</a> |  加入VIP群:484612442</div>
    </div>
    <div class="newcontent">
    	<div class="newfrom">
        	<img src="__STATIC__/images/admin_logo.png" />
        	<form action="{:U('index/login')}" method="post" >
            	<input type="text" name="username" class="inputclass" value="账号" onfocus="if (value =='账号'){value =''}" onblur="if (value ==''){value='账号'}">
        		<input type="password" name="password" class="inputclass" value="password" onfocus="if (value =='password'){value =''}" onblur="if (value ==''){value='password'}">
                <div><a href="http://daxue.tkjidi.com" target="_blank">忘记密码？</a></div>
                <button type="submit" class="newloginbtn">登陆</button>
            </form>
        </div>
    </div>
   
</body>

</html>