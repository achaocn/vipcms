$(function() {
	//商品详情非共有行为
	var mySwiper = new Swiper('.v_swiper',{
            direction : 'vertical',
            slidesPerView : 3,
            slidesPerGroup : 3,
            spaceBetween : 8,
            autoplay : 5000,
            autoplayDisableOnInteraction : false,
            loop : true
        })
        $(".v_down").click(function() {
        mySwiper.slidePrev();
        })
        $(".v_up").click(function() {
            mySwiper.slideNext();
        })
        var mySwiper2 = new Swiper('.v_swiper2',{
            slidesPerView : 4,
            slidesPerGroup : 4,
            spaceBetween : 8,
            autoplay : 3000,
            speed:1000,
            loop : true,
            paginationClickable :true,
            autoplayDisableOnInteraction : false,
            pagination : '.v_page',
        })
        $(".slid_up").click(function() {
            $(".v_hide").stop(true,false).slideUp(1000);
        })
})