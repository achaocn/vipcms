<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
 
</head>
<body>
<div class="big">
	<include file='public:header'/>
	<!--设置选项列表-->
    <div class="list">
        <li>
            <p class="p1">头像</p>
            <div class="headerImg">
            	<img src="{:avatar($visitor['id'], 100)}" alt="{$visitor.username}">
               
            </div>
        </li>
        <li>
            <p class="p1">昵称</p>
            <a href='{:U("user/info?act=1")}'><p class="p2" id="userName">{:$info['nickname']?$info['nickname']:"去设置"}</p></a>
        </li>
        <li>
            <p class="p1">手机号</p>
            <a href="{:U('user/info?act=3')}"><p class="p2" id="userNum">{:$info['mobile']?$info['mobile']:"去设置"}</p></a>
        </li>
        <li>
            <p class="p1">邮箱</p>
            <a href="{:U('user/info?act=2')}"><p class="p2" id="mail">{:$info['email']?$info['email']:"去设置"}</p></a>
        </li>
        <a href="{:U('user/password')}"><li class="li1"><p class="p1">修改密码</p></li></a>
        <a href="{:U('user/bind')}"><li class="li1 last"><p class="p1">绑定设置</p></li></a>
    </div>
    <!--退出登录-->
    <div class="quit">
        <a href="{:U('user/logout')}">退出当前账号</a>
    </div>
</div>

</body>
</html>
