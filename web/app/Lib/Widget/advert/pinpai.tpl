<volist name="ad_list" id="ad">
<a href="{$ad.url}" target="_blank">
    <img src="{:attach($ad['content'],'banner')}">
    <div>
        {$ad.name}
    </div>
</a>
</volist>