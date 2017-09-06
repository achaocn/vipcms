<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head_user" />
</head>
<body>
	<include file="public:toper" />
    <include file="public:header_user" />
    <div class="c_center">
    	<include file="user/left" />
        
        <div class="cen_right">
            <include file="user/top" />
            <div class="r_bottom">
                <form action="{:U('user/info')}" method="post" id="editform">
                    <label for="" class="label">昵称：</label>
                    <input class="r_name" type="text" value="{$info['nickname']}" name="nickname" id="nickname">
                    <a>
                    <span class="cen_yes">
                        <img src="__STATIC__/tkjidicms/images/v_rect.png" alt="">
                    </span>
                    <span class="cen_no">
                        <img src="__STATIC__/tkjidicms/images/v_error.png" alt=""><i></i>
                    </span>
                    </a>
                    <br>
                    <label class="label" for="">性别：</label>
                    <input id="man" name="sex" type="radio" value="1" <if condition="$info['gender'] eq 1">checked</if>>
                    <label for="man" class="man">男</label>
                    <input id="wmen" name="sex" type="radio" value="0" <if condition="$info['gender'] eq 0">checked</if>>
                    <label for="wmen" class="wmen">女</label><br>
                    <label class="label">绑定手机：</label>
                    <input placeholder="输入要绑定的手机号" class="r_name" type="text" name="mobile" value="{$info['mobile']}" id="mobile">
                    <a>
                    <span class="cen_yes">
                        <img src="__STATIC__/tkjidicms/images/v_rect.png" alt="">
                    </span>
                    <span class="cen_no">
                        <img src="__STATIC__/tkjidicms/images/v_error.png" alt=""><i></i>
                    </span>
                    </a>
                    <br>
                    
                    <label class="label" for="">邮箱绑定：</label>
                    <input class="r_name" type="text" placeholder="输入要绑定的邮箱" name="email" value="{$info['email']}" id="email">
                     <a>
                    <span class="cen_yes">
                        <img src="__STATIC__/tkjidicms/images/v_rect.png" alt="">
                    </span>
                    <span class="cen_no">
                        <img src="__STATIC__/tkjidicms/images/v_error.png" alt=""><i></i>
                    </span>
                    </a>
                    <br>
                    <input name="id" id="uid" value="{$info['id']}" type="hidden" />
                    <input class="cen_save" type="submit" value="保存">
                </form>
            </div>
        </div>
    </div>
    
    <include file="public:footer_user" />
    
</body>
<script src="__STATIC__/tkjidicms/js/useredit.js"></script>
</html>
