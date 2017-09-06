$(function() {
	var have=$(".left_li").find(".on").length;
	
	if(have)
	{
		$(".left_li").find(".on").next().show().slideDown();
		$(".left_li").find(".on").find("span").css("background","url(./static/tkjidicms/images/v_line.jpg)");
	}
	
	$(".v_cen").click(function() {
        $(this).addClass("on").parent().siblings().find(".v_cen").removeClass("on");
        $(this).parent().siblings().find("ul").slideUp();
        $(this).parent().siblings().find(".v_cen").find("span").css("background","url(./static/tkjidicms/images/v_line2.jpg)");
        console.log( $(this).parent().siblings().find(".v_cen").find("span"));
        var msg=$(this).parent().find("ul").css("display");
        if(msg=="none"){
            $(this).find("span").css("background","url(./static/tkjidicms/images/v_line.jpg)")
        }else{
            $(this).find("span").css("background","url(./static/tkjidicms/images/v_line3.png)")
        }
        $(this).parent().find("ul").stop().slideToggle();
    })
	
})