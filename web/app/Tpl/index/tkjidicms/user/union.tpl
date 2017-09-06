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
                <div class="a_invit">
                    通过您的专属邀请链接邀请好友访问{:C('ftx_site_name')},注册账号，您将获得{$union.per_visit}{:L('exchange')}积分，您每个月最多可以获得{$union.count_visit}个{:L('exchange')}个积分！<br>
                    邀请注册：通过您的专属邀请链接邀请好友访问，并使用手机成功注册账号，您将获得{$union.per_reg}{:L('exchange')}积分，您每个月最多可以获得{$union.count_reg}个{:L('exchange')}个积分！                   
                </div>
                
                <span class="link_title">
                    这是您的专用邀请链接，请通过社交软件发送给好友：
                </span><br>
                
                <span class="a_link">
                   {$union_url}
                </span>
                <button class="a_btn" data-clipboard-action="copy" data-clipboard-target=".a_link">一键复制</button>
            </div>
        </div>
    </div>
    
    <include file="public:footer_user" />
    
</body>
<script src="__STATIC__/tkjidicms/js/clipboard.min.js"></script>
<script>
    var clipboard = new Clipboard('.a_btn');
    clipboard.on('success', function(e) {
        alert("复制成功");
         console.log(e);
    });
    clipboard.on('error', function(e) {
        console.log(e);
    });

</script>
</html>