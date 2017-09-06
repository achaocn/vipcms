<!DOCTYPE html>
<html lang="en">
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<include file="public:head" />
<link rel="stylesheet" type="text/css" href="/static/tkjidicms/css/search.css">

<link rel="stylesheet" href="/static/tkjidicms/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="/static/tkjidicms/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/static/tkjidicms/css/search.css">


</head>
<body>
<include file="public:header" />
<div class="v_cont ">
    <div class="q_out " style="height:160px">
        <div class="q_title ">超级搜(专享大额、全网券查询)</div>
        	<div  class="q_form" style="margin-bottom:20px;position:relative;">
            <span class="chadae" style="display: block;position: absolute;width: 150px;height:48px;right: 45px;font-size: 14px;text-align: center;line-height: 48px;">商品数量3亿条以上...
            </span>
            <input class="q_text q_input" placeholder="请输入搜索查询的商品关键字/或商品全标题查券" type="text" name="k" id="k">
            <img class="chadaeImg" src="__STATIC__/tkjidicms/images/clear.png " alt="">
            <input class="q_search " value="搜索" type="submit">
        	</div>
    </div>

    <div class="container " style="width: 1300px;margin: 0 auto">
       <div id="jc" style="text-align:center"><img src="/static/tkjidicms/images/process.jpg" alt="" style="margin-top:10px"></div>
       <div style="overflow: hidden;width: 1300px; display:none;" id="result">
        <div style="width: 1300px;text-align: center;;margin: 20px 0">
            <div style="width: 130px;float: left;font-size: 12px;margin-left: 500px;margin-right: 40px;color: #666">
                <button class="click_"></button>
                <br>
                (券面值大，独家隐藏)
            </div>
            <div style="width: 130px;float: left;font-size: 12px;color: #666">
                <button class="click_1"></button> <br>
                (全网查券，必有所需)
            </div>
            <div class="clear"></div>
        </div>
            <div style="background: #fff;overflow-y: scroll;overflow-x: hidden;width: calc(100% + 20px);position:relative; min-height:400px; margin-bottom:20px;">
                <div style="border: 1px #dcdcdc solid;width: 1300px;border-bottom: 0;height:86px;background: #fff">
                    <h3 class="text-center" style="margin: 30px;color: #fb3434" id="biaoti">独家大额券查询结果</h3>
                </div>
                <div style="border: 1px #dcdcdc solid;width: 1300px;border-bottom: 0;background: #fff" class="gaoshai">
                  <ul class="add-screen_" >
                      <li style="margin-left: 10px">
                          <div id="checkbox1" class="fl">
                              <label class="unit-box li1" rel="2">
                                  <span>聚划算</span>
                              </label>
                              
                              <div class="clear"></div>
                          </div>
                      </li>
                      <li style="margin-left: 10px">
                          <div id="checkbox2" class="fl">
                              <label class="unit-box li1" rel="1">
                                  <span>淘抢购</span>
                              </label>
                              <div class="clear"></div>
                          </div>
                      </li>
                      <li style="margin-left: 10px">
                          <div id="checkbox3" class="fl">  
                              <label class="unit-box li2" rel="3">
                                  <span>天猫</span>
                              </label>
                              <div class="clear"></div>
                          </div>
                      </li>
                      <li style="margin-left: 10px">
                          <div id="checkbox4" class="fl">
                              <label class="unit-box li2" rel="4">
                                  <span>金牌卖家</span>
                              </label>
                              <div class="clear"></div>
                          </div>
                      </li>
                      <li style="margin-left: 10px">
                          <div id="checkbox5" class="fl">
                              
                              <label class="unit-box li3" rel="1">
                                  <span>运费险</span>
                              </label>
                              <div class="clear"></div>
                          </div>
                      </li>

                  </ul>
                  <div class="clear"></div>
                </div>
                
                <ul class="screen_">
                    <li class="screen-active" rel="1"><a href="javascript:;">最新</a></li>
                    <li rel="2"><a href="javascript:;">销量</a></li>
                    <li rel="5"><a href="javascript:;">券价格</a></li>
                    <li rel="4"><a href="javascript:;">价格</a></li>
                    <div class="clear"></div>
                </ul>
                <ul class="screen_" style="top: 86px;">
                    <li rel="0"  class="screen-active"><a href="javascript:;">综合</a></li>
                    <li rel="1"><a href="javascript:;">天猫</a></li>
                    <li rel="2"><a href="javascript:;">销量</a></li>
                    <li rel="3"><a href="javascript:;">有券商品</a></li>
                    <div class="clear"></div>
                </ul>
                
      
                <div class="sos" style="position:absolute; left:620px; top:240px; display:none;"><img src="http://gtms01.alicdn.com/tps/i1/T1o4IbFflcXXbWRS2f-43-11.gif" /></div>
                <table class="table table-hover table-bordered" style="width: 1300px">
                    <tr>
                        <th class="text-center" width="400">商品信息</th>
                        <th class="text-center" width="150">原价</th>
                        <th class="text-center" width="150">券后价</th>
                        <th class="text-center" width="150">优惠券</th>
                        <th class="text-center" width="150">操作</th>
                    </tr>
                    <tbody class="quanwang_so" rel="" style="display:none;"></tbody>
                    <tbody class="quanwang_so" rel="" style="display:none;"></tbody>
                </table>
                <div class="quan_more" style="cursor:pointer; display:none;"> 加载更多</div>
            </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>

<!--<input type='hidden' id="nextk" value="">
<input type='hidden' id="nextqk" value="">
<input type="hidden" id="ord" value="">
<input type="hidden" id="big_page" value="2">
<input type="hidden" id="quan_ord" value="">
<input type="hidden" id="quan_page" value="2">-->

<input type="hidden" id="page_1" value="1" />
<input type="hidden" id="page_2" value="1" />
<include file="public:footer" />
  <script>
  $(".click_").click(function () {
        $("#dae").show()
        $("#quanwang").hide()
        $(".click_1").css("background","url(__STATIC__/tkjidicms/images/021.jpg)")
        $(".click_").css("background","url(__STATIC__/tkjidicms/images/022.png)")
    })

    $(".click_1").click(function () {
        $("#quanwang").show()
        $("#dae").hide()
        $(".click_").css("background","url(__STATIC__/tkjidicms/images/022.jpg)")
        $(".click_1").css("background","url(__STATIC__/tkjidicms/images/021.png)")
    })
  </script>


<script>
	$(".gaoshai").show();
	$(".screen_").eq(0).show();
	$(".screen_").eq(1).hide();
	var ord=1;
	var aord=0;
	var activity_type=0;
	var tm_gold=0;
	var is_freight=0;
	$(".q_search").click(function(){
		var value=$(".q_input").val();
		
		if(value=="")
		{
			alert("请输入搜索查询的商品关键字/或商品全标题查券");
			return false;
		}
		
		ord=1;
		aord=0;
		activity_type=0;
		tm_gold=0;
		is_freight=0;
		
		$("#page_1").val(1);
		$("#page_2").val(1);
		$(".quanwang_so").eq(0).attr("rel","");
		$(".quanwang_so").eq(1).attr("rel","");
		$(".add-screen_").find(".unit-box").removeClass("checked");
		
		$(".screen_ li").removeClass("screen-active");
		$(".add-screen_ span").css("color","#555");
		$(".screen_").eq(0).find("li").eq(0).addClass("screen-active");
		$(".screen_").eq(1).find("li").eq(0).addClass("screen-active");
		$("#biaoti").html("独家大额券查询结果");
		$(".quanwang_so").eq(0).show();
		$(".quanwang_so").eq(1).hide();
		
		
		 $("#dae").show()
        $("#quanwang").hide()
        $(".click_1").css("background","url(__STATIC__/tkjidicms/images/021.jpg)")
        $(".click_").css("background","url(__STATIC__/tkjidicms/images/022.png)")
		
		search_big();
		
	})
	
	$(".click_").click(function(){									
		var value=$(".q_input").val();
		if(value=="")
		{
			alert("请输入搜索查询的商品关键字/或商品全标题查券");
			return false;
			
		}
		$(".gaoshai").show();
		$(".screen_").eq(0).show();
		$(".screen_").eq(1).hide();
		
		$("#biaoti").html("独家大额券查询结果");
		
		$(".quanwang_so").eq(0).show();
		$(".quanwang_so").eq(1).hide();
		
		if($(".quanwang_so").eq(0).html().indexOf("底部")>-1||$(".quanwang_so").eq(0).html().indexOf("没有相关信息")>-1)
		{
			$(".quan_more").hide();
		}
		
		$content=$(".quanwang_so").eq(0).html();
		if($content==""||$(".q_input").val()!=$(".quanwang_so").eq(0).attr("rel"))
		{
			$("#page_1").val(1);
			search_big();
		}
		
	})
	$(".click_1").click(function(){
		
		var value=$(".q_input").val();
		if(value=="")
		{
			alert("请输入搜索查询的商品关键字/或商品全标题查券");
			return false;
			
		}
		$(".gaoshai").hide();
		$(".screen_").eq(0).hide();
		$(".screen_").eq(1).show();
		$("#biaoti").html("全网超级搜查询结果");

		$(".quanwang_so").eq(0).hide();
		$(".quanwang_so").eq(1).show();
		
		if($(".quanwang_so").eq(1).html().indexOf("底部")>-1||$(".quanwang_so").eq(1).html().indexOf("没有相关信息")>-1)
		{
			$(".quan_more").hide();
		}
		
		$content=$(".quanwang_so").eq(1).html();
		if($content==""||$(".q_input").val()!=$(".quanwang_so").eq(1).attr("rel"))
		{
			$("#page_2").val(1);
			
			search_quan();
		}
		
	})
	
	$(".quan_more").click(function(){
		$contents=$("#biaoti").html();
		if($contents.indexOf("独家")>-1) //查商品库
		{
			$(".quanwang_so").eq(0).append('<tr class="jz"><td  colspan="6" align="center"><img src="http://gtms01.alicdn.com/tps/i1/T1o4IbFflcXXbWRS2f-43-11.gif" /></td></tr>');
			page=$("#page_1").val();
			if(page>0)
			{
				page++;
				$("#page_1").val(page);
				search_big();
			}
		}
		else
		{
			$(".quanwang_so").eq(1).append('<tr class="jz"><td  colspan="6" align="center"><img src="http://gtms01.alicdn.com/tps/i1/T1o4IbFflcXXbWRS2f-43-11.gif" /></td></tr>');
			
			page=$("#page_2").val();
			if(page>0)
			{
				page++;
				$("#page_2").val(page);
				search_quan();
			}
		}
	})
	
	$(".screen_").eq(0).find("li").click(function(){
		$(this).addClass("screen-active").siblings().removeClass("screen-active");
		ord=$(this).attr("rel");
		$("#page_1").val(1);
		$("#page_2").val(1);
		search_big();
	})
	
	$(".screen_").eq(1).find("li").click(function(){
		$(this).addClass("screen-active").siblings().removeClass("screen-active");
		aord=$(this).attr("rel");
		$("#page_1").val(1);
		$("#page_2").val(1);
		search_quan();
	})
	
	$(".li1").click(function(){
		$("#page_1").val(1);
		if($(this).hasClass('checked')){ //取消
			$(this).removeClass('checked');
			$(this).find("span").css("color","#555");
			activity_type=0;
		}else{
			$(this).addClass("checked");
			
			$(this).parents("li").siblings().find(".li1").removeClass("checked");
			$(this).parents("li").siblings().find(".li1 span").css("color","#555");
			$(this).find("span").css("color","#fb3434");
			activity_type=$(this).attr("rel");
		}
		$("#page_1").val(1);
		$("#page_2").val(1);
		search_big();
		
	})
	
	
	$(".li2").click(function(){
		
		$("#page_1").val(1);
		if($(this).hasClass('checked')){
			$(this).removeClass('checked');
			$(this).find("span").css("color","#555");
			tm_gold=0;
		}else{
			$(this).addClass("checked");
			$(this).parents("li").siblings().find(".li2").removeClass("checked");
			$(this).parents("li").siblings().find(".li2 span").css("color","#555");
			$(this).find("span").css("color","#fb3434");
			tm_gold=$(this).attr("rel");
		}
		$("#page_1").val(1);
		$("#page_2").val(1);
		search_big();
		
		//activity_type=$(this).attr("rel");
	})
	$(".li3").on('click',function(){
		
		$("#page_1").val(1);
		if($(this).hasClass('checked')){
			$(this).removeClass('checked');
			$(this).find("span").css("color","#555");
			is_freight=0;
		}else{
			$(this).addClass('checked');
			$(this).find("span").css("color","#fb3434");
			is_freight=1;
		}
		$("#page_1").val(1);
		$("#page_2").val(1);
		search_big();
	})
	
	
	function search_big()
	{
		$('.quan_more').hide();
		page=$("#page_1").val();
			$(".quanwang_so").eq(0).show();
			$(".quanwang_so").eq(1).hide();
			value= $(".q_input").val();
			if(value=="")
			{
				alert("请输入关键字");
				return false;
			}
			$("#jc").hide();
			$("#result").show();
			if(page==1)
			{
			$(".sos").show();
			}
			var url="";
			url="/?m=search&a=index&k="+value+"&act=1&activity_type="+activity_type+"&tm_gold="+tm_gold+"&is_freight="+is_freight+"&sort="+ord+"&p="+page;
			$(".quanwang_so").eq(0).attr("rel",value);
			//console.log(url);
			 $.ajax({
				  type : "get",
				  async : true,  //同步请求
				  url : url,
				  success:function(dates){
					  $(".sos").hide();
					  
					  if(dates)
					  {
					 	 if(page==1)
						 {
						 $(".quanwang_so").eq(0).html(dates);
						
						 }
						 else
						 {
							$(".quanwang_so").eq(0).append(dates); 
					     }
						 $('.jz').remove(); //清除加载图标
						 $('.quan_more').show();
					  }
					  else
					  {
						   if(page==1)
						   {
								$(".quanwang_so").eq(0).html('<tr class=""><td  colspan="6" align="center"><br/><br/>没有相关信息</td></tr>');
								$("#page_1").val(0);
								
						   }
						   else
						   {
							   $(".quanwang_so").eq(0).append('<tr class=""><td  colspan="6" align="center">已到底部</td></tr>');
							   $("#page_1").val(0);
							   
						   }
						   $('.quan_more').hide();
						   $('.jz').remove();
						   
					  }
				  },
				  error: function() {
					alert("失败，请稍后再试！");
				 }
			 });
	}
	
	function search_quan()
	{
		$('.quan_more').hide();
		page=$("#page_2").val();
		$(".quanwang_so").eq(0).hide();
		$(".quanwang_so").eq(1).show();
		
		value= $(".q_input").val();
		if(value=="")
		{
			alert("请输入关键字");
			return false;
		}
		$("#jc").hide();
		$("#result").show();
		if(page==1)
		{
		$(".sos").show();
		}
		var url="";
		var url = "/?m=quan&a=cha&act=1&key_name="+value+"&ord="+aord+"&page="+page; 
		$(".quanwang_so").eq(1).attr("rel",value);
		//console.log(url);
		 $.ajax({
			  type : "get",
			  async : true,  //同步请求
			  url : url,
			  success:function(dates){
				  $(".sos").hide();
				  if(dates)
				  {
					  if(page==1)
					 {
						$(".quanwang_so").eq(1).html(dates);
					 }
					 else
					 {
						$(".quanwang_so").eq(1).append(dates); 
					 }
					 $('.jz').remove();
					 $('.quan_more').show();

				  }
				  else
				  {
					  if(page==1)
					 {
					  $(".quanwang_so").eq(1).html('<tr class=""><td  colspan="6" align="center">没有相关信息</td></tr>');
					  $("#page_2").val(0);
					  
					 
					 }
					 else
					 {
						 $(".quanwang_so").eq(1).append('<tr class=""><td  colspan="6" align="center">已到底部</td></tr>');
						 $("#page_2").val(0);
						
					  }
					  $('.quan_more').hide();
					  $('.jz').remove();
					  
				  }
			  },
			  error: function() {
				alert("失败，请稍后再试！");
			 }
		 });
	}
	
	if($(".q_text").val()!=""){
		$(".chadae").hide();
	}
	$(".q_text").keyup(function(){
        	if($(this).val()=="" || $(this).val()=="请输入搜索查询的商品关键字/或商品全标题查券"){
        		$(".chadae").eq(0).show();
        	}else{
        		$(".chadae").eq(0).hide();
        	}
        });
	$(".chadaeImg").eq(0).click(function(){
		$(".q_text").eq(0).val("");
		$(".chadae").eq(0).show();
	})
	
	
</script>
</body>
</html>