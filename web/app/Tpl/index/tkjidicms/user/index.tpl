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
                <form action="">
                    <label for="" class="label">昵称：</label>{:$info['nickname']?$info['nickname']."<a href='".U('user/info')."'>去更改</a>":"<a href='".U('user/info')."'>去设置</a>"}
                    <br>
                    <label class="label" for="">性别：</label> {:($info['gender']==1)?"男"."<a href='".U('user/info')."'>去更改</a>":(($info['gender']==0)?"女"."<a href='".U('user/info')."'>去更改</a>":"<a href='".U('user/info')."'>去设置</a>")}
                    <br>
                    <label class="label">绑定手机：</label>{:$info['mobile']?$info['mobile']."<a href='".U('user/info')."'>更改号码</a>":"<a href='".U('user/info')."'>去设置</a>"}
                    <br>
                    <label class="label" for="">邮箱绑定：</label>{:$info['email']?$info['email']."<a href='".U('user/info')."'>更改邮箱</a>":"<a href='".U('user/info')."'>去设置</a>"}
                    <br>
                  
                </form>
            </div>
        </div>
    </div>
    
    <include file="public:footer_user" />
</body>
</html>