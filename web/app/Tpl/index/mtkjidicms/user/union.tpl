<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
<!--头部-->
      <header>
          <img class="back" src="__STATIC__/tkjidicms/wap/img/register/back.png" />
          <p class="hd-name">邀请好友</p>
          <a href="{:U('user/unionlist')}"><span class="detail">明细</span></a>
      </header>
      <!--说明-->
      <div class="top">近三个月您已经成功邀请<span>{$union_num}</span>人，累积获得积分<span>{$union_score}</span>积分</div>
      <div class="content">
          <p class="text"><span>邀请注册:</span>通过您的专属邀请链接邀请好友访问，并使用手机成功注册账户，您将获得{$union.per_reg}{:L('exchange')}积分，您每月最多可获得{$union.count_reg}积分!<br/>这是您的专用邀请链接，通过社交软件发送给好友:</p>
          <div class="lianjie">
              <p>嘘！这个秘密我只告诉你，这里有超多精选内部券宝贝，更有全场8.8包邮惊喜哦~</p>
              <p id="foo">{$union_url}</p>
          </div>
          <a href="#" class="copy" data-clipboard-target="#foo" aria-label="复制成功！">一键复制</a>
      </div>
  </div>
  <script>
      /*返回*/
      $(".back").click(function(){
          window.history.back()
      })
	  /*复制*/		
		var clipboard = new Clipboard('.copy');
		clipboard.on('success', function(e) {
			var msg = e.trigger.getAttribute('aria-label');
			alert(msg);
			console.info('Action:', e.action);
			console.info('Text:', e.text);
			console.info('Trigger:', e.trigger);
		
			e.clearSelection();
		});									
			
			$(window).scroll(function(){
		    var $top = $(document).scrollTop();//距顶部的高度
		    if($top>=0){
		    	$("header").css({"position":"fixed","top":"0","z-index":"30"})
				
					$(".backtop").show()	    			    	
		    }
		    if($top==0){
		    	$("header").css({"position":"relative"})
		    	$(".backtop").hide()
		    } 
		    $(".backtop").click(function(){
		    	$(window).scrollTop(0)
		    })
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