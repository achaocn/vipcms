<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/>
    <div class="banner">
        <div class="headerImg">
            <img src="{:avatar($visitor['id'], 100)}">
        </div>
        <a href="{:U('user/shai')}"><p class="noLogin">去晒单</p></a>
        <div class="baName">
            <p>{:$info['nickname']?$info['nickname']:$info['username']}</p>
            <p>晒单积分:<span>{:$info['shai_score']?$info['shai_score']:0}</span>分</p>
        </div>
    </div>
    <div class="content">
        <ul class="list1">
            <a href="{:U('shai/index')}"><li>全部晒单</li></a>
            <a href="{:U('user/shailist')}"><li class="active">我的晒单</li></a>
            <a href="{:U('shai/order')}"><li class="last">晒单排行榜</li></a>
        </ul>
        <notempty name="shailist">
        <ul class="list2">
        	<input type="hidden" id="page" value="1" />
            <volist name="shailist" id="item">
            <li>
                <div class="top">
                    <div class="left">
                    <span>订单号:</span>
                    {$item.order_num}
                    	状态：<if condition="$item.status eq 1"><span>通过<elseif condition="$item.status eq 2" />【拒绝】 <else /> 审核中...</span></if>
                     </div>
                    <div class="right">
                        <p class="time">{:date('Y-m-d',$item['addtime'])}<span>{:date('H:i:s',$item['addtime'])}</span></p>
                        <p class="price">
                            <span>到手价:</span>
                            <span class="sp1">{$item.orderprice}元</span>
                            <span class="sp2">奖励积分:</span>
                            <span class="sp3">{$item.score}</span>
                        </p>
                    </div>
                </div>
                <div class="bottom">
                    <div class="text">
                        <p>{:nl2br($item['desc'])}</p>
                    </div>
                    <div class="img">
                        <img src="/{$item.shai_pic}" width="100%">
                    </div>
                </div>
            </li>	
            </volist>
        </ul>
        </notempty>
       
        <div class="dt-more" style="display:none">
        	<img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
        	<span>奋力加载中</span>
    	</div>
    </div>
    <!--没有晒单-->
    <empty name="shailist">
    <input type="hidden" id="page" value="0" />
    <div class="noneDan">
        <div class="img"><img src="__STATIC__/tkjidicms/wap/img/square/small.png"></div>
        <p class="text">抱歉你还没有晒过单</p>
        <a class="shaidan" href="{:U('user/shai')}">这就晒单去</a>
    </div>
    </empty>
    <!--底部-->
    <include file='public:footer'/>
</div>
  <script type="text/javascript">
var FTXIAER = {
 root: "__ROOT__",
 site: "{:C('ftx_site_url')}",
 uid: "{$visitor['id']}", 
 loginurl:"{:U('user/login')}",
 userurl:"{:U('user/index')}",
 username:"{$visitor['username']}",
 face:"{:avatar($visitor['id'], 64)}",
 url:{}
}
</script>
<script>
var flagScroll=true;
$(window).scroll(function(){
	if(flagScroll){
		   var $top = $(document).scrollTop();//距顶部的高度			   
		   var c=document.body.scrollHeight//网页高度
		   var b=$(window).height()//可视窗口高度
		   var d=c-b-$top	
		   var page=$("#page").val();
		  
		   if(d>-0.5 && d<=0){
			 flagScroll=false;
			  if(page>0)
			  {
				  page++;
				  $.getJSON(FTXIAER.root+'/?m=user&a=shailist&page='+page, function(datas){
						$(".dt-more").show();
						if(datas.status=="200"||datas.status==200)
						{
						  $("#page").val(page);
						  var dd='';
						   for (var i = 0; i < datas.data.length; i++) {
									dd='<li>'
						+'<div class="top">'
							+'<div class="left">'
							+'<span>订单号:</span>'
							+datas.data[i].order_num
								+'状态：';
							if(datas.data[i].status==1)
							{
								dd+='通过';
							}
							else if(datas.data[i].status==2)
							{
								dd+='【拒绝】';
							}
							else
							{
								dd+='审核中...';
							}
								
							 dd+='</div>'
							+'<div class="right">'
								+'<p class="time">'+datas.data[i].time1+'<span>'+datas.data[i].time2+'</span></p>'
								+'<p class="price">'
									+'<span>到手价:</span>'
									+'<span class="sp1">'+datas.data[i].orderprice+'元</span>'
									+'<span class="sp2">奖励积分:</span>'
									+'<span class="sp3">'+datas.data[i].score+'</span>'
								+'</p>'
							+'</div>'
						+'</div>'
						+'<div class="bottom">'
							+'<div class="text">'
								+'<p>'+datas.data[i].desc+'</p>'
							+'</div>'
							+'<div class="img">'
								+'<img src="/'+datas.data[i].shai_pic+'" width="100%">'
							+'</div>'
						+'</div>'
					+'</li>'
									
							  $(".list2").append(''+dd+'');
							  flagScroll=true;
						   } 
						}
						else
						{
						   $("#page").val(0);
						   $(".dt-more").html('<span>已达到底线1</span>');
						   $('.dt-more').delay(3000).hide(0);
						  
						}
					  });
		
			  }
			  else
			  {
				  $(".dt-more").html('<span>已达到底线</span>');
				  $('.dt-more').delay(3000).hide(0);
			  }
			  
		   }
		   else
		   {
			   $('.dt-more').hide(2000);
			  
			}
	}
  
});
</script>
</body>
</html>