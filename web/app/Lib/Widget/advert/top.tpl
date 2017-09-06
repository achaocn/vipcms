<volist name="ad_list" id="ad">
<div style="cursor: pointer; max-height:149px;min-width:1200px; position:relative"><a href="{$ad.url}" target="_blank"><img src="{:attach($ad['content'],'banner')}" width="100%;"></a>
<div onclick="closetop(this)" style="position:absolute; right:10px; top:5px; width:24px; height:24px; z-index:99"><img src="__STATIC__/tkjidicms/images/topClose.png" /></div>
</div>
</volist>
<script>
	function closetop(obj)
	{
		$(obj).parent().hide();
	}
</script>