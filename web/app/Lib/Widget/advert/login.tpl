<volist name="ad_list" id="ad">
<div class="login-l-img fr">
<if condition="$ad.url neq '#'">
<a href="{$ad.url}" target="_blank"><img src="{:attach($ad['content'],'banner')}" width="{$ad.width}px" height="{$ad.height}px" alt="{$ad.name}" title="{$ad.desc}"></a><br />
<else />
<img src="{:attach($ad['content'],'banner')}" width="{$ad.width}px" height="{$ad.height}px" alt="{$ad.name}" title="{$ad.desc}"><br />
</if>
</div>
</volist>
