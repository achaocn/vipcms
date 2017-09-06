<volist name="ad_list" id="ad">
<a href="{$ad.url}" target="_blank">
<img class="f_img" src="{:attach($ad['content'],'banner')}" alt="{$ad.name}" title="{$ad.desc}" width="{$kuan}px" height="{$gao}px">
</a>
</volist>