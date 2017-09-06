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
                
                 <form action="{:U('user/password')}" method="post" id="editform" onSubmit="return check(this)">
                    <label class="label" for="">原密码：</label>
                    <input name="old" class="modify_word" type="password" value="{$info.password}" readonly><br>
                    <label class="label" for="">新密码：</label>
                    <input name="newpassword" class="modify_word" type="password" placeholder="输入新密码"><br>
                    <label class="label" for="">确认密码：</label>
                    <input name="agin" class="modify_word" type="password" placeholder="再次输入新密码"><br>
                    
                    <input class="code-modify" type="submit" value="修改">
                </form>
            </div>
        </div>
    </div>
    
    <include file="public:footer_user" />
    
</body>
<script>
function check(i) {
            var $old=i.old.value;
            var $new=i.newpassword.value;
            var $agin=i.agin.value;
            if($old==""){
                alert("原密码不能为空");
                return false;
            }
            if($new==""){
                alert("新密码不能为空");
                return false;
            }else{
                if($new==$agin){
                    return true;
                }else{
                    alert("两次输入密码不一致");
                    return false;
                }
            }
        }
</script>
<!--<script src="__STATIC__/tkjidicms/js/pwdedit.js"></script>-->
</html>
