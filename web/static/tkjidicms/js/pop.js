$(function() {
	// 未登录状态弹出层
	$(".v_tips").height($(window).height());
	$(".vt_top img").click(function() {
		$(".v_tips").fadeOut();
	});
	$(".v_phone,.v_word").blur(function() {
		var that=$(this);
		that.next().addClass("show");
		$.post("../a.json",$(".log_form").serialize(),function(data){
			var reg=data.reg;
			if(reg==0){
				$(".tip_info div").removeClass("tip_info_inner")
				that.next().addClass("rect")
			}else{
				$(".tip_info div").addClass("tip_info_inner");
				that.next().removeClass("rect");
				$(".tip_info div span").text(that.prev().text());
			}
		})
	})
})