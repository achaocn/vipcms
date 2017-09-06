$(function() {
	//热门资讯
    var mySwiper = new Swiper('.m_swiper',{
	    // direction : 'vertical',
        mode: 'vertical',
	   // slidesPerView : 5,
	    autoplay : 3000,
        autoplayDisableOnInteraction : false,
	    loop : true
	    })
    $(".v_down").click(function(e) {
        e.preventDefault()
   	 mySwiper.swipePrev();
    })
    $(".v_up").click(function(e) {
        e.preventDefault()
        mySwiper.swipePrev();
    })
    $(".h_cont2").on("cut",function() {
        var str=$(this).text();
        var str2=str.trim().substring(0,130);
        $(this).text(str2+"...");
    })
    $(".h_cont2").trigger("cut");
})