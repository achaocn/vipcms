<include file="public:header" />
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post" enctype="multipart/form-data">
	<table width="100%" class="table_form">
		<tr>
            <th width="150">{:L('site_url')} :</th>
            <td><input type="text" name="setting[site_url]" class="input-text" size="30" value="{:C('ftx_site_url')}">
	    <span class="gray ml10">网站地址必须以http:// 开头 / 斜杠结尾</span>
	    </td>
        </tr>
        <tr>
        <tr>
            <th width="150">{:L('site_name')} :</th>
            <td><input type="text" name="setting[site_name]" class="input-text" size="30" value="{:C('ftx_site_name')}"><span class="red ml10">尽量简短</span></td>
        </tr>
        
        <tr>
            <th width="150">授权码:</th>
            <td><input type="text" name="setting[site_secret]" class="input-text" size="40" value="{:C('ftx_site_secret')}">
              <span class="gray ml10">请联系我们 官方客服中心：<a href="http://www.tkjidi.com/contact.html" target="_blank">http://www.tkjidi.com/contact.html</a></span></td>
        </tr>
            </tr>

		<tr>
            <th width="150">网站SEO标题 :</th>
            <td><input type="text" name="setting[site_title]" class="input-text" size="80" value="{:C('ftx_site_title')}">
              关键字请进去<a href="/index.php?g=admin&amp;m=seo&amp;a=page&amp;menuid=282">SEO设置</a>里设置</td>
        </tr>
        <tr>
            <th width="150">网站SEO关键字 :</th>
            <td><input type="text" name="setting[site_keyword]" class="input-text" size="80" value="{:C('ftx_site_keyword')}">
              关键字请进去<a href="/index.php?g=admin&amp;m=seo&amp;a=page&amp;menuid=282">SEO设置</a>里设置</td>
        </tr>
		<tr>
            <th width="150">网站SEO描述 :</th>
            <td>
			<textarea rows="4" cols="80" name="setting[site_description]">{:C('ftx_site_description')}</textarea>			
			</td>
        </tr>
        <tr>
            <th>{:L('site_icp')} :</th>
            <td><input type="text" name="setting[site_icp]" class="input-text" size="30" value="{:C('ftx_site_icp')}"></td>
        </tr>
		<tr>
            <th>QQ :</th>
            <td><input type="text" name="setting[qq]" class="input-text" size="30" value="{:C('ftx_qq')}"></td>
        </tr>
        <tr>
            <th>{:L('statistics_code')} :</th>
            <td><textarea rows="4" cols="80" name="setting[statistics_code]">{:C('ftx_statistics_code')}</textarea><span class="gray ml10">放网站统计代码,以及QQ新浪百度等header验证代码,验证后请删除验证代码</span></td>
        </tr>
        
        <tr><th>QQ登陆回调地址 :</th><td><input type="text" name="setting[site_uri]" class="input-text" size="100" value="{:C('ftx_site_uri')}"><span class="red ml10">必须与申请QQ登陆时填写的回调地址保持一致 教程<a href="http://daxue.tkjidi.com/forum.php?mod=viewthread&tid=520&extra=page%3D1" target="_blank">http://daxue.tkjidi.com/forum.php?mod=viewthread&tid=520&extra=page%3D1</a></span></td></tr>
        
       
		 <tr>
            <th width="150">{:L('ipban_switch')} :</th>
            <td>
                <label><input type="radio" <if condition="C('ftx_ipban_switch') eq '1'">checked="checked"</if> value="1" name="setting[ipban_switch]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" <if condition="C('ftx_ipban_switch') eq '0'">checked="checked"</if> value="0" name="setting[ipban_switch]"> {:L('close')}</label>
                <span class="gray ml10">如果本站没有添加禁止IP地址库，建议关闭改功能提升性能</span>
            </td>
        </tr>
		 <tr>
            <th width="150">数据推送token :</th>
            <td><input type="text" name="setting[site_token]" class="input-text" size="80" value="{:C('ftx_site_token')}">
			<span class="gray ml10">百度站长工具链接主动推送授权token，请登陆百度站长工具获取</span>
			<a href="http://daxue.tkjidi.com/forum.php?mod=viewthread&tid=519&extra=page%3D1" target="_blank">申请教程</a></td>
        </tr>
		<!--<tr>
            <th width="150">手机wap版地址 :</th>
            <td>
                <textarea rows="1" cols="80" name="setting[header_html]">{:C('ftx_header_html')}</textarea>
                <span class="gray ml10"><br>填写后用手机访问pc网站将自动跳转到手机wap网站</span>
            </td>
        </tr>-->
		<tr>
        	<th>是否开启微信打开网站触发淘口令 :</th>
        	<td>
            	<label><input type="radio" class="J_change_weixin" <if condition="C('ftx_open_weixin') eq '1'">checked="checked"</if> value="1" name="setting[open_weixin]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_weixin" <if condition="C('ftx_open_weixin') eq '0'">checked="checked"</if> value="0" name="setting[open_weixin]"> {:L('close')}</label>
				<span class="gray ml10">请去 系统接口 -> API接口里设置您的appkey和 App Secret（开启后淘口令api是收费的，更换状态后需清理缓存）</span>
            </td>
    	</tr>

    	<tr>
        	<th>{:L('site_status')} :</th>
        	<td>
            	<label><input type="radio" class="J_change_status" <if condition="C('ftx_site_status') eq '1'">checked="checked"</if> value="1" name="setting[site_status]"> {:L('open')}</label> &nbsp;&nbsp;
                <label><input type="radio" class="J_change_status" <if condition="C('ftx_site_status') eq '0'">checked="checked"</if> value="0" name="setting[site_status]"> {:L('close')}</label>
            </td>
    	</tr>
        <tr id="J_closed_reason" <if condition="C('ftx_site_status') eq 1">class="hidden"</if>>
        	<th>{:L('closed_reason')} :</th>
        	<td><textarea rows="4" cols="50" name="setting[closed_reason]" id="closed_reason">{:C('ftx_closed_reason')}</textarea></td>
    	</tr>
        <tr width="150">
            <th>每页显示条数 :</th>
            <td><input type="text" name="setting[index_page_size]" size="5" class="input-text" value="{:C('ftx_index_page_size')}" /></td>
        </tr>
        
        <tr>
            <th width="150">左上角欢迎语 :</th>
            <td>
                <input type="text" name="setting[qq_qun_intro]" size="100" class="input-text" value="{:C('ftx_qq_qun_intro')}" />
            </td>
        </tr>
        <tr>
            <th width="150">群链接 :</th>
            <td>
                <input type="text" name="setting[qq_qun]" size="100" class="input-text" value="{:C('ftx_qq_qun')}" /> <br />（例如：http://shang.qq.com/wpa/qunwpa?idkey=d82e577358fe325512f23757dbf4d7958c5637c3f7ce89430dbcd6ae2e9e026c）
            </td>
        </tr>
        
        
         <tr><th width="150">优惠券高佣金PID:</th><td><input type="text" name="setting[yhq_pid]" class="input-text" size="80" value="{:C('ftx_yhq_pid')}"><span class="gray ml10"><br></span></td></tr>
        
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" value="{:L('submit')}"/></td>
    	</tr>
        
        
        
	</table>
	</form>
</div>
<include file="public:footer" />
<script>
$(function(){
    $('.J_change_status').live('click', function(){
        if($(this).val() == '0'){
            $('#J_closed_reason').fadeIn();
        }else{
            $('#J_closed_reason').fadeOut();
        }
    });
});
</script>
</body>
</html>