<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<div class="shadow">
        <div id="sign">
            <img class="close" src="__STATIC__/tkjidicms/wap/img/login/close.png" />
            <p class="siBuy">淘口令购买</p>
            <div class="empty">
                <p class="ready">淘口令复制成功</p>
                <p id="foo" class="taoText"></p>
            </div>
            <p class="sitext"><span>使用说明:</span>复制淘口令后打开【手机淘宝】即可领取优惠券购买！</p>
            <p class="sitext1"><span>微信提示:</span>手机无【手机淘宝】者，可选择浏览器购买方式哦~</p>
        </div>
    </div>	
	<header>
        <img src="__STATIC__/tkjidicms/wap/img/detail/deback.png" />
    </header>
  <if condition="$info.act_type eq 1">   
  <div class="veoDetail">
  <else />
   <div class="detail">
  </if>
  		<if condition="$info.act_type eq 1">
        <img class="play" src="__STATIC__/tkjidicms/wap/img/play.png">
        <video id="myvideo" src="{$info['video_url']}" loop="loop" poster="{$info['thumb']}"></video>
        <else />
  		<img class="deImg" src="{$info['thumb']}" style="width:100%">
        </if>
        
        <div class="de-bottom">
           <a href="/?m=quan&a=quan_browser&link={:base64_encode($info['couponlink'])}" class=""> <div class="de-name">
                <div class="name-img"><img src="__STATIC__/tkjidicms/images/v_tm{:($info['tmall']==1)?1:0}.png"></div>
                <p class="name-text">{$info['buss_name']}</p>
            </div>
            </a>
            <div class="explain">{$info['introduce']}</div>
            <div class="price" style="display:block">
                <span class="sp1">{$info['price_youhui']}</span>
                <span class="sp2">券后</span>
                <span class="sp3">市场价:￥{$info['price_order']}</span>
            </div>
            
        </div>
    </div>
  
  
  <div class="more">图文详情</div>
  <div class="content">{$info['content']}</div>
  <if condition="$open_weixin eq 1">
  <div class="footer1" style="display:none">
      <div class="footerLeft1">
          <a href="mqq://im/chat?chat_type=wpa&uin={:C('ftx_qq')}&version=1&src_type=web"><div class="leftImg"><img src="__STATIC__/tkjidicms/wap/img/detail/small.png">
          <p class="footerText1" style="color:#333">联系客服</p>
          </div>
          </a>
      </div>
      <a href="/?m=quan&a=quan_browser&link={:base64_encode($info['couponlink'])}" class="footerCenter1">浏览器购买</a>
      <a href="#" class="footeRight1 copy" data-clipboard-target="#foo">淘口令购买</a>
  </div>
  </if>
  <div class="footer" style="display:none">
  	  <a href="mqq://im/chat?chat_type=wpa&uin={:C('ftx_qq')}&version=1&src_type=web">
      <div class="footerLeft">
          <div class="leftImg"><img src="__STATIC__/tkjidicms/wap/img/detail/small.png"></div>
          <p>客服</p>
          
      </div>
      </a>
      <div class="footerCenter">
          <span class="sp1">券后:</span>
          <span class="sp2">￥{$info['price_youhui']}</span>					
      </div>

      <a href="/?m=quan&a=quan_browser&link={:base64_encode($info['couponlink'])}" class="footeRight">
          <span class="sp1">省￥{$info['price_youhuiquan']}</span><br />
          <span>领券购买</span>
      </a>
  </div>
  <!--回到顶部-->
  <a href="#">
      <div class="backtop">
          <span><img src="__STATIC__/tkjidicms/wap/img/index/backtop.png" /></span>
      </div>
  </a>
</div>
<script>

  /*图文展开*/
 
  var flag=true;
  $(".more").click(function(){
      if(flag){
		  var imgcon=$(".content").html();
		  if(imgcon==""||imgcon==undefined)
		  {
			  var con='{:empty($info['content'])?get_pro_con($info['taobao_id']):$info['content']}';
			  $(".content").html(con);
		  }
		  
          $(".content").show();
          flag=false;
      }else{
          $(".content").hide();
          flag=true;
      }
  })
	$("header").click(function(){
		window.history.back()
	})
	
	if($(".footer1").length>0){
		/*微信浏览器*/
		if(is_weixin()){
			$(".footer").hide();
			$(".footer1").show();
		}else{
			$(".footer").show();
			$(".footer1").hide();
		}
	function is_weixin(){
		
		var ua = navigator.userAgent.toLowerCase();
		if(ua.match(/MicroMessenger/i)=="micromessenger") {
			return true;
		} else {
			return false;
		}
	}
		/*淘口令弹出窗*/
		if(getOS()){
			//ios设备复制
			$(".copy").on("click",function(){
			var c=document.body.scrollHeight;
			$(".shadow").css("height",c+"px")
			$(".shadow").show();
			$(".close").bind("click  touchstart",function(){
				$(".shadow").hide()
			})	
			/////////////////////////////
			value=$("#foo").html();
			if(value==""||value==undefined)
			{
				var data = {};//查询参数
				data.couponLink = "{:base64_encode($info['couponlink'])}";
				data.title = "{$info.buss_name}";
				$.ajax({
					type: "POST",
					url:'/?m=pro&a=erheyi',
					data: data,
					async: false,
					dataType: "html",
					success: function (html) {
						html = jQuery.trim(html);
					
						
						if(html=="")
						{
							alert("生成失败")
						}
						else
						{
							$("#foo").html(html);
							//value=html;
							//ctrlv(value);
							var clipboard = new Clipboard('.copy');
							clipboard.on('success', function(e) {
								console.info('Action:', e.action);
								console.info('Text:', e.text);
								console.info('Trigger:', e.trigger);
							
								e.clearSelection();
							});	
						}
						
					}, error: function () {
						alert("加载失败");
					}
				});
			}else{
				var clipboard = new Clipboard('.copy');		
				clipboard.on('success', function(e) {
					console.info('Action:', e.action);
					console.info('Text:', e.text);
					console.info('Trigger:', e.trigger);
				
					e.clearSelection();
				});	
			}					
					//////////////////////////////
		})							
		}else{
			//安卓设备复制
			$(".copy").click(function(){
					var c=document.body.scrollHeight;
					$(".shadow").css("height",c+"px")
					value=$("#foo").html();
					
					if(value==""||value==undefined)
					{
						var data = {};//查询参数
						data.couponLink = "{:base64_encode($info['couponlink'])}";
						data.title = "{$info.buss_name}";
						$.ajax({
							type: "POST",
							url:'/?m=pro&a=erheyi',
							data: data,
							async: false,
							dataType: "html",
							success: function (html) {
								html = jQuery.trim(html);
								if(html=="")
								{
									alert("生成失败")
								}
								else
								{
									$("#foo").remove();
									var text1="<textarea id='foo' class='taoText'></textarea>";
									$(".empty").append(text1);
									$("#foo").val(html);
									$(".shadow").show();
									var e=document.getElementById("foo");//对象是contents 
									e.select(); //选择对象 
									document.execCommand("Copy"); //执行浏览器复制命令
									$("#foo").remove();
									var fooid="<p id='foo' class='taoText'></p>";
									$(".empty").append(fooid);	
									$("#foo").html(html);
									
									$(".close").bind("click  touchstart",function(){
										$(".shadow").hide()
									})
								}
								
							}, error: function () {
								alert("加载失败");
							}
						});
					 }
					else
					{
						$("#foo").remove();
						$(".empty").append("<textarea id='foo' class='taoText'>"+value+"</textarea>");	
						$(".shadow").show();
						var e=document.getElementById("foo");//对象是contents 
						e.select(); //选择对象 
						document.execCommand("Copy"); //执行浏览器复制命令
					  
						$("#foo").remove();
						$(".empty").append("<p id='foo' class='taoText'>"+value+"</p>");	
						
					}
					 ///
					
				})

			////
			$(".copy").on("click",function(){
				var c=document.body.scrollHeight;
				$(".shadow").css("height",c+"px")
				$(".shadow").show();
				$(".close").bind("click  touchstart",function(){
					$(".shadow").hide()
				})
			})
		}
	}
	else
	{
		$(".footer").show();
	}
	
	function getOS(){
		var ua = window.navigator.userAgent.toLowerCase(),
			iPhone = /iphone/i.test(ua) ? true : false,
			android = /android/i.test(ua) ? true : false;
			if(iPhone){
				return true;
			}else{
				return false;
			}
	}
	$(function(){
		if(getOS()){
			$(".play").hide();	
		}		   
	})
	/*展开*/
	var wid=$(".footer").height();
	$(".more").css("margin-bottom",wid+"px");
	
	var videois=$("#myvideo").length;
	if(videois>0){
	
	/*视频播放*/
	var video=document.getElementById("myvideo");
	$(".play").click(function(){				
			$(this).hide();
			video.play();
			video.controls=true;
	})
	/////////////////////////////
	video.addEventListener("pause",function(){
		if(getOS()){
			video.controls=true;	
		}else{
			$(".play").show();
			video.controls=false;
		}		
	})
	}
	/////////////////////////////////////
		/*回到顶部*/
	$(".backtop").hide()
	$(window).scroll(function(){
		var $top = $(document).scrollTop();//距顶部的高度
		if($top>=0){
			$(".backtop").show()
		}
		if($top==0){
			$(".backtop").hide()
		} 
		/*if($top=$height){
			console("刷新")
		}*/
	   var c=document.body.scrollHeight//网页高度
	   var b=$(window).height()//可视窗口高度
	   var d=c-b-$top		   
	});

</script>
</body>
</html>
