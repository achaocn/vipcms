<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/>
	<div class="banner">
        <empty name="visitor">
        <div class="headerImg">
           <img src="__STATIC__/tkjidicms/wap/img/person/bnheader1.png">
        </div>
        
        <a href="{:U('user/login')}"><p class="nogo">未登录</p></a>
        <else />
        <div class="headerImg">
           <img src="{:avatar($visitor['id'], 100)}">
        </div>
        <a href="{:U('user/shai')}"><p class="go">去晒单</p></a>
        <div class="baName">
            <p>{:$info['nickname']?$info['nickname']:$info['username']}</p>
            <p>晒单积分:<span>{:$info['shai_score']?$info['shai_score']:0}</span>分</p>
        </div>
        </empty>
    </div>
    <div class="content">
        <ul class="list1">
            <a href="{:U('shai/index')}"><li class="active">全部晒单</li></a>
            <a href="{:U('user/shailist')}"><li>我的晒单</li></a>
            <a href="{:U('shai/order')}"><li class="last">晒单排行榜</li></a>
        </ul>
        <notempty name="item_list">
        <input type="hidden" id="page" value="1" />
        <ul class="list2">
		   
           <volist name="item_list" id="item" offset="0" length="10">
            <li>
                <div class="top">
                    <div class="left"><img src="{:avatar($item['user_id'], 100)}"></div>
                    <div class="right">
                        <p class="name">{$item.username}</p>
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
                        <p>{$item.desc}</p>
                    </div>
                    <div class="img">
                        <img src="/{$item.shai_pic}" width="100%">
                    </div>
                </div>
            </li>
            </volist>
        </ul>
        <else />
        <input type="hidden" id="page" value="0" />
        暂无信息
        </notempty>
        <div class="dt-more" style="display:none">
        	<img src="__STATIC__/tkjidicms/wap/img/index/dt-more.gif" />
        	<span>奋力加载中</span>
    	</div>
    </div>
    <!--底部-->
    <include file='public:footer'/>
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
				
				  $.getJSON(FTXIAER.root+'/?m=shai&a=index&page='+page, function(datas){
						$(".dt-more").show();
						if(datas.status=="200"||datas.status==200)
						{
						  $("#page").val(page);
						  var dd='';
						   for (var i = 0; i < datas.data.length; i++) {
									dd='<li>'
									  +'<div class="top">'
										  +'<div class="left"><img src="'+datas.data[i].thumb+'"></div>'
										  +'<div class="right">'
											  +'<p class="name">'+datas.data[i].username+'</p>'
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
											  +'<img src="./'+datas.data[i].shai_pic+'" width="100%">'
										  +'</div>'
									  +'</div>'
								  +'</li>';
									
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
  </html>