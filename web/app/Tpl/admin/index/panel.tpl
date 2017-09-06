<include file="public:header" />
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/ftxia.js"></script>
<script src="__STATIC__/js/admin.js"></script>
<div class="pad_10">
	<div class="clearfix">

		<div class="col-2 fl mr10" style="width:48%">
			<h6>我的个人信息</h6>
			<div class="content">
				您好，<b style="color:#06C"> {$my_admin.username}</b> &nbsp;[超级管理员] &nbsp;&nbsp;&nbsp;<a class="red" href="{:u('index/logout')}">[{:L('logout')}]</a><br />
				登录IP： {$ip} [ {$time}]<br />
                
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>
       
		<div class="col-2 col-auto">
        	<h6>淘宝授权</h6>
			<div class="content" style="color:#F00;">
            	<div>提示：淘宝授权要和设置好的pid对应，这样的话可以实现网站商品实时最高佣金转链接。请定期查看授权状态，这样才可确保网站佣金最高。</div>
				<div class="bk20 hr"><hr /></div>
					{$tokenstr}
			</div>
          
            
			<h6>提示建议</h6>
			<div class="content">
            	<div>提示：淘宝授权要和设置好的pid对应，这样的话可以实现网站商品实时最高佣金转链接。请定期查看授权状态，这样才可确保网站佣金最高。</div>
				<div class="bk20 hr"><hr /></div>
                	
					<notempty name="message">
						<volist name="message" id="val">
						<div class="on{$val.type}">&nbsp;{$val.content}</div><br />
						</volist>
					</notempty>
			</div>
		</div>
		<div class="bk10"></div>
		<div class="col-2 fl mr10" style="width:48%">
			<h6>系统信息</h6>
			<div class="content">
				{:L('ftxia_version')}：<font style="color:#090">{$system_info.ftxia_cms}</font>{$system_info.ftxia_version}<br />
				{:L('server_os')}：{$system_info.server_os}<br />
				{:L('web_server')}：{$system_info.web_server}<br />
				{:L('php_version')}：{$system_info.php_version}<br />
				支持函数：<span class="{$system_info.curl}">远程读取</span>
				<span class="onCorrect">编码转换</span>
				<span class="{$system_info.zlib}">页面压缩</span>
				<br />
			</div>
		</div>
		<div class="col-2 col-auto">
			<h6>授权信息</h6>
			<div class="content">
				授权类型：<span><font color="green">淘客基地授权</font></span><br />
				授权域名：<span><font color="green"><a href="{:C('ftx_site_url')}" target="_blank">{$system_info.server_domain}</a></font></span><br />
				<div class="bk20 hr"><hr /></div>
				淘客论坛：<a href="http://daxue.tkjidi.com" target="_blank">daxue.tkjidi.com</a> <br />
                <div class="bk20 hr"><hr /></div>
                提示：授权域名一旦设置成功激活码对应，非此域名无法打开网站信息。<br />
				技术支持：淘客基地API高级服务QQ群 453577321
				
			</div>
		</div>
        <div class="bk10"></div>
        <div class="col-2 fl mr10" style="width:48%">
			<h6>官方动态</h6>
			<div class="content">
				
                <script type="text/javascript" src="http://daxue.tkjidi.com/api.php?mod=js&bid=11"></script>
                <style>
                .press{display:block;}
                </style>
				<div class="bk20 hr"><hr /></div>
			</div>
		</div>   
	</div>
</div>
</body>
</html>