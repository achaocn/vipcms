<volist name="ad_list" id="ad">
<a href="{$ad.url}" target="_blank">
<img src="{:attach($ad['content'],'banner')}" alt="{$ad.name}" title="{$ad.desc}" style="margin-top:20px;">
</a>
</volist>