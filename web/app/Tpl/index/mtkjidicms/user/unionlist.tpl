<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
	<include file='public:header'/>
    	<div class="content">
        <notempty name="union_list">
		<input id="page" type="hidden" value="1" />
        <ul class="listTop">
            <li>类别</li>
            <li>奖励</li>
            <li>邀请时间</li>
        </ul>
        <volist name="union_list" id="val">
        <ul class="listBottom">
            <li><if condition="$val['ousername']">邀请注册<else/>邀请访问</if></li>
            <li><span class="sp1">+{$val.score}</span>积分</li>
            <li class="liTime"><span>{:date('Y.m.d',$val['add_time'])}</span><br/><span>{:date('H:i:s',$val['add_time'])}</span></li>
        </ul>
        </volist>
        <else />
        	<input type="hidden" id="page" value="0" />
        	<div class="find_gift">
            <p>还没有好友通过您的邀请注册哦！</p>
            <p>邀请好友，得金币！<a href="{:U('user/union')}">赶快行动吧！</a></p>
            </div>
        </notempty>			
    </div>
    <div class="dt-more" style="display:none">
        <img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
        <span>奋力加载中</span>
    </div>
</div>
</body>
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
					  $.getJSON(FTXIAER.root+'/?m=user&a=mingxi&page='+page, function(datas){
							$(".dt-more").show();
							if(datas.status=="200"||datas.status==200)
							{
							  $("#page").val(page);
							   var mod=0;
							   var classs="";
							   for (var i = 0; i < datas.data.length; i++) {
								   
								   var dd='<ul class="listBottom">'
					+'<li><if condition="'+datas.data[i].ousername+'">邀请注册<else/>邀请访问</if></li>'
					+'<li><span class="sp1">+'+datas.data[i].score+'</span>积分</li>'
					+'<li class="liTime"><span>'+datas.data[i].time1+'</span><br/><span>'+datas.data[i].time2+'</span></li>'
				+'</ul>';
								  $(".content").append(''+dd+'');
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
</html>