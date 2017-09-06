$(function() {
	//首页非公有行为
	var mySwiper1 = new Swiper('.banner1', {
		loop : true,
		autoplay: 3000,
		spaceBetween : 10,
		paginationClickable :true,
		autoplayDisableOnInteraction : false,
		pagination : '.page1'
	});
	var mySwiper2 = new Swiper('.swip2', {
		loop : true,
		autoplay: 2000,
		spaceBetween : 10,
		paginationClickable :true,
		autoplayDisableOnInteraction : false,
		pagination : '.page2'
	});
	var a=0,that,height;
	$(".over").on("anit",function() {
		that=$(this);
		a=(that.find(".num_1").text())/(that.find(".num_2").text())*(that.width());
		that.find(".over_left").animate({width:a},1500,"swing");
	})
	height=$(window).scrollTop();
	if(height>=560){
		 $('.over').trigger("anit");
	}
	$(window).scroll(function() {
		height=$(window).scrollTop();
		if(height>=560){
			 $('.over').trigger("anit");
		}
	})

})