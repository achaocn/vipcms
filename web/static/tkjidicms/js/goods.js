$(function() {
	//物品栏共有行为
	if($(".goods_cont").length>0)
	{
	$(".goods_cont").hover(function() {
								
			$(this).find(".get_coupon,.v_good span").show();
				
		},function() {
			$(this).find(".get_coupon,.v_good span").hide();
		})
	}
})