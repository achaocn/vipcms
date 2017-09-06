$(function() {
	//头部，右侧固定栏共同行为
	$(".select_cont,datalist").hover(function() {
			$("datalist").css("display","block");
		},function() {
			$("datalist").css("display","none");
		});
	$("datalist div").click(function() {
		 var rel=$(this).attr("data-rel");
		 $("#cate_type").val(rel);
		$(".select_on").text($(this).text());
		$("datalist").hide();
	});
	$(".v_right a").hover(function() {
		$(this).find(".v_mask,.icon_3_code").css("display","block")
		},function() {
			$(this).find(".v_mask,.icon_3_code").css("display","none")
		});
	$(".v_icon6_out").click(function() {
		$("html,body").animate({scrollTop:0},1000);
	})
	$(".v_center").hover(function() {
		$(".center_hide").css("display","block")
		},function() {
			$(".center_hide").css("display","none")
	})
})