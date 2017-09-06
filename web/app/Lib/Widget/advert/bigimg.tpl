<div class="banner1 swiper-container">
    <div class="swiper-wrapper">
    	<volist name="ad_list" id="ad">
        <a href="{$ad.url}" target="_blank" class="swiper-slide">
            <img src="{:attach($ad['content'],'banner')}" alt="{$ad.name}" title="{$ad.name}">
        </a>
        </volist>
    </div>
    <div class="swiper-pagination page1"></div>
</div>
