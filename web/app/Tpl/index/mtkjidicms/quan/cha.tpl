<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/>
    <form class="myform">
        <div class="search">
            <input id="search" type="text" placeholder="请输入商品关键字"/>
            
            <span class="seaRight">
                <img src="__STATIC__/tkjidicms/wap/img/del.png"/>
            </span>
            <div id="seaSubmit">
                搜索
            </div>
            <div class="clear"></div>
        </div>
        <div class="seaTab">
            
                <div id="tab1">
                    独家大额券
                    <img src="__STATIC__/tkjidicms/wap/img/jiao1.png" />
                </div>
            
            
                <div id="tab2">
                    全网券查券
                    <img src="__STATIC__/tkjidicms/wap/img/jiao2.png" />
                </div>
        </div>
    </form>
    
    <div class="navTop" style="display:none">
      <ul class="navList">
          <span>
          <li class="li1" rel="2">
              <a href="javascript:;">聚划算</a>
          </li>
          <li class="li1" rel="1">
              <a href="javascript:;">淘抢购</a>
          </li>
          </span>
          <span>
          <li class="li2" rel="3">
              <a href="javascript:;">天猫</a>
          </li>
          <li class="li2" rel="4">
              <a href="javascript:;">金牌卖家</a>
          </li>
          </span>
          <li class="li3" rel="1">
              <a href="javascript:;">运费险</a>
          </li>
      </ul>
  </div>
  <div class="navBottom" style=" display:none">
      <ul class="navList">
          <li class="active" rel="1">
              <a href="javascript:;">最新</a>
          </li>
          <li rel="2">
              <a href="javascript:;">销量</a>
          </li>
          <li rel="5">
              <a href="javascript:;">券价格</a>
          </li>
          <li rel="4">
              <a href="javascript:;">价格</a>
          </li>
      </ul>
  </div>
  
  <div class="navBottom" style="display:none;">
      <ul class="navList">
          <li class="active" rel="0">
              <a href="javascript:;">综合排序</a>
          </li>
          <li rel="1">
              <a href="javascript:;">天猫</a>
          </li>
          <li rel="2">
              <a href="javascript:;">月销量</a>
          </li>
          <li rel="3">
              <a href="javascript:;">有券商品</a>
          </li>
      </ul>
  </div>
  
  <div class="content">
  	  <div class="sos" style="display:none"><img src="http://gtms01.alicdn.com/tps/i1/T1o4IbFflcXXbWRS2f-43-11.gif" /></div>
      <input type="hidden" id="page_1" value="1" />
      <input type="hidden" id="page_2" value="1" />
      <div id="jc">
      <img src="/static/tkjidicms/wap/img/inquiry/content.png" width="100%" />
      </div>
      <ul class="list"></ul>
      <ul class="list"></ul>
  </div>
  <include file='public:footer'/> 
    <a href="#">
        <div class="backtop">
            <span><img src="__STATIC__/tkjidicms/wap/img/index/backtop.png" /></span>
        </div>
    </a>
  <script>
		/*返回上一页*/
			$(".back").click(function(){
				if(window.history.length > 1){
					window.history.go(-1)
				}else{
					window.location="index.html"
				}
			})
		/*搜索模块*/
		var flagScroll=true;
		var value= $("#search").val();
		
		var searchCount= 0;
		var ord=1;
		var aord=0;
		var activity_type=0;
		var tm_gold=0;
		var is_freight=0;
		
		function search_big()
		{
			
			page=$("#page_1").val();
			$(".list").eq(0).show();
			$(".list").eq(1).hide();
			
			value= $("#search").val();
			if(value=="")
			{
				alert("请输入关键字");
				return false;
			}
			$("#jc").hide();
			$(".sos").show();
			var url="";
			
			url="/?m=search&a=index&k="+value+"&act=1&activity_type="+activity_type+"&tm_gold="+tm_gold+"&is_freight="+is_freight+"&sort="+ord+"&p="+page;
			$(".list").eq(0).attr("rel",value);
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
						 $(".list").eq(0).html(dates);
						 flagScroll=true;
						 }
						 else
						 {
							$(".list").eq(0).append(dates); 
							flagScroll=true;
					     }
						 $('.jz').remove();
					  }
					  else
					  {
						   if(page==1)
						   {
						  		$(".list").eq(0).html("没有相关信息");
								$("#page_1").val(0);
								flagScroll=true;
						   }
						   else
						   {
							   $(".list").eq(0).append("没有相关信息");
							   $("#page_1").val(0);
							   flagScroll=true;
						   }
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
			
			page=$("#page_2").val();
			$(".list").eq(0).hide();
			$(".list").eq(1).show();
			
			value= $("#search").val();
			if(value=="")
			{
				alert("请输入关键字");
				return false;
			}
			$("#jc").hide();
			$(".sos").show();
			var url="";
			var url = "/?m=quan&a=cha&act=1&key_name="+value+"&ord="+aord+"&page="+page; 
			$(".list").eq(1).attr("rel",value);
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
						 	$(".list").eq(1).html(dates);
							flagScroll=true;
						 }
						 else
						 {
							$(".list").eq(1).append(dates); 
							flagScroll=true;
						 }
						 $('.jz').remove();
					  }
					  else
					  {
						  if(page==1)
						 {
						  $(".list").eq(1).html("没有相关信息");
						  $("#page_2").val(0);
						  flagScroll=true;
						 }
						 else
						 {
							 $(".list").eq(1).append("没有相关信息");
							 $("#page_2").val(0);
							 flagScroll=true;
						  }
						  $('.jz').remove();
					  }
				  },
				  error: function() {
					alert("失败，请稍后再试！");
				 }
			 });
		}
		$('#seaSubmit').click(function(){
			 value= $("#search").val();
			 $(".search").val(value);
			 $("#page_1").val(1);
			 $("#page_2").val(1);
			$(".navList").find("li").removeClass("active");
			$("ul").eq(1).find("li").eq(0).addClass("active");
			$("ul").eq(2).find("li").eq(0).addClass("active");
			
			ord=1;
			aord=0;
			activity_type=0;
			tm_gold=0;
			is_freight=0;
			$("#page_1").val(1);
			$("#page_2").val(1);
			
			
			//$(".navBottom ul li").eq(0).addClass("active");
			//alert($(".navBottom li").eq(0).attr("class"));
			
			if(value != ''){
				/*查大额*/
				
				$(".navTop").show();
				$(".navBottom").eq(0).show();
				if(searchCount == 0){ 
					
					search_big();
					//$('.myform').submit();
					
				}
				/*查全网*/
				else if(searchCount == 1){ 
					$(".navBottom").eq(1).show();
					$(".navTop").hide();
					$(".navBottom").eq(0).hide();
					search_quan();
					//$('.myform').submit();
				}
			}else{
				alert('请输入商品关键字')
			}
		})
		/*清空输入框*/
		$('.seaRight img').click(function(){
			$('#search').val('')
		})
		/*全网大额切换*/
		$("#tab1").click(function(){
			
			searchCount = 0;
			$('.navTop').show();
			//$(".navList").find("li").removeClass("active");
			$(".navBottom .navList").css('border-top','none')
			$('#tab1 img').show();
			$('#tab2 img').hide();
			$('.navBottom').eq(0).show();
			$('.navBottom').eq(1).hide();
			
			$(".list").eq(0).show();
			$(".list").eq(1).hide();
			
			$content=$(".list").eq(0).html();
			if($content==""||$("#search").val()!=$(".list").eq(0).attr("rel"))
			{
				//console.log($("#search").val()+"--"+$(".list").eq(0).attr("rel"));
				$("#page_1").val(1);
				search_big();
			}
				
			
		})
		$("#tab2").click(function(){
								  
			
			searchCount = 1;
			$('.navTop').hide();
			//$(".navList").find("li").removeClass("active");
			$(".navBottom .navList").css({'border-top':'0.1rem solid #bfbfbf'})
			$('#tab2 img').show();
			$('#tab1 img').hide();
			$('.navBottom').eq(0).hide();
			$('.navBottom').eq(1).show();
			$(".list").eq(0).hide();
			$(".list").eq(1).show();
			$content=$(".list").eq(1).html();
			if($content==""||$("#search").val()!=$(".list").eq(1).attr("rel"))
			{
				//console.log($("#search").val()+"--"+$(".list").eq(1).attr("rel"));
				$("#page_2").val(1);
				search_quan();
			}
			//
			
		})
		/*导航1特效*/
		$(".navTop .navList .li1").click(function(){
			$("#page_1").val(1);
			if($(this).hasClass('active')){
				$(this).removeClass('active');
				activity_type=0;
			}else{
				$(this).addClass("active").siblings().removeClass("active");
				activity_type=$(this).attr("rel");
			}
			
			search_big();
			
		})
		$(".navTop .navList .li2").click(function(){
			$("#page_1").val(1);
			if($(this).hasClass('active')){
				$(this).removeClass('active');
				tm_gold=0;
			}else{
				$(this).addClass("active").siblings().removeClass("active");
				tm_gold=$(this).attr("rel");
			}
			search_big();
			//activity_type=$(this).attr("rel");
		})
		$(".navTop .navList .li3").on('click',function(){
			$("#page_1").val(1);
			if($(this).hasClass('active')){
				$(this).removeClass('active')
				is_freight=0;
			}else{
				$(this).addClass('active')
				is_freight=1;
			}
			search_big();
		})
		/*导航2特效*/
		$(".navBottom").eq(0).find("li").click(function(){
			$("#page_1").val(1);
			$(this).addClass("active").siblings().removeClass("active");
			ord=$(this).attr("rel");
			search_big();
		})
		$(".navBottom").eq(1).find("li").click(function(){
			$("#page_2").val(1);
			$(this).addClass("active").siblings().removeClass("active");
			aord=$(this).attr("rel"); //阿里妈妈券排序
			search_quan();
		})
		/*$(".navBottom .navList li").click(function(){
			$(this).addClass("active").siblings().removeClass("active");
			ord=$(this).attr("rel");
			search_big();
		})*/
	</script>
    
    <script>
	//加载翻页
	$(window).scroll(function(){
	if($('#search').val() != ''){
		//console.log($('#search').val())
		if(flagScroll){
			   var $top = $(document).scrollTop();//距顶部的高度			   
			   var c=document.body.scrollHeight//网页高度
			   var b=$(window).height()//可视窗口高度
			   var d=c-b-$top	
			   var page;
			   if(d==0){
				 flagScroll=false;
				 if(searchCount==0)
				 {
				    $(".list").eq(0).append('<img src="http://gtms01.alicdn.com/tps/i1/T1o4IbFflcXXbWRS2f-43-11.gif" class="jz" />');
					
					page=$("#page_1").val();
					if(page>0)
					{
						page++
						$("#page_1").val(page);
						search_big();
						//
						
					}
			     }
				 else if(searchCount==1)
				 {
					page=$("#page_2").val();
					if(page>0)
					{
						page++;
						$("#page_2").val(page);
						search_quan(); 
					}	 
				 }
				 
			   }
		}
		}
	});
</script>
    
	</body>
</html>