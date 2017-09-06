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
            <div class="r_bottom2">
            	<notempty name="oauth_list">
                提示：绑定主流社交网站账号，可以轻松的登录本网站并能快速地将你觉得有趣的内容分享给相应网站上的朋友们！ 
                <div>
               
                	<volist name="oauth_list" key="k" id="val">
                    <if condition="$val.isbind eq 1">
                    <span>
                        <img src="/static/jwap/images/wap_{$val.code}.png" alt=""><br>
                        {$val.name}<br>
                        <a href="{:U('oauth/index', array('type'=>'unbind', 'mod'=>$val['code']))}" onclick='return confirm("确定取消绑定?")'>已绑定</a>
                    </span>
                    <else />
                    <span>
                        <img src="/static/jwap/images/wap_{$val.code}.png" alt=""><br>
                        {$val.name}<br>
                        <a href="{:U('oauth/index', array('type'=>'bind', 'mod'=>$val['code']))}">去绑定</a>
                    </span>
                    </if>
                    </volist>
                   
                </div>
                 <else />
                 对不起，此功能暂未开放，敬请期待!<br /><br /><br />
                 </notempty>
            </div>
        </div>
    </div>
    
    <include file="public:footer_user" />
    
</body>
</html>