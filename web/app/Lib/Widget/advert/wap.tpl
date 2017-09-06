<div class="bn-top swiper-wrapper">
	<volist name="ad_list" id="ad">
    <div class="swiper-slide"><a href="{$ad.url}" target="_blank"><img src="{:attach($ad['content'],'banner')}" /></a></div>
    </volist>   
</div>