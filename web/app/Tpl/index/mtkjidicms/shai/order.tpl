<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
   <style>
   .con{display:none;}
   </style>
   <script>
   function ajaxlist(typeid,page)
			{
				var data={typeid:typeid,page:page,randnum:Math.random()};
					$.ajax({
					   url: '{:U("shai/ajaxlist")}',
					   type: "post",
					   async:false,
					   data: data,
					   dataType: "json",
					   success: function (e) {   //成功后回调
					   if(e.status=="200"||e.status==200)
					   {
							var data=e.data;
							var str='';
							//alert(data[0].thumb);
							//return false;
							for(var i=0;i<data.length;i++)
							{
								if(typeid==2)
								{
									str="<ul class='list4'><li>"+(i+1)+"</li><li><div class='listImg'><img src='"+data[i].thumb+"'></div><p>"+data[i].username+"</p></li><li>"+data[i].shai_num+"</li></ul>";
								}
								else
								{
									str="<ul class='list4'><li>"+(i+1)+"</li><li><div class='listImg'><img src='"+data[i].thumb+"'></div><p>"+data[i].username+"</p></li><li>"+data[i].shai_score+"</li></ul>";
								}
								
								$(".con").eq((typeid-1)).append(str);
								
							}
					   }
					  
							/*$(".content .top").append("<ul class='list4'><li>4</li><li><div class='listImg'><img src='img/square/head1.png'></div><p>漠小米***</p></li><li>112</li></ul><ul class='list4'><li>5</li><li><div class='listImg'><img src='img/square/head2.png'></div><p>漠小米***</p></li><li>112</li></ul><ul class='list4'><li>6</li><li><div class='listImg'><img src='img/square/head3.png'></div><p>漠小米***</p></li><li>112</li></ul>")*/
        			   },
				   });
			}
   </script>
</head>
<body>
<div class="big">
	<include file='public:header'/>
	<div class="banner">
        <empty name="visitor">
        <div class="headerImg">
           <img src="__STATIC__/tkjidicms/wap/img/person/bnheader1.png">
        </div>
        <a href="{:U('user/shai')}"><p class="go">去晒单</p></a>
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
				<div class="top">
					<!--晒单标题-->
					
                    <ul class="list1">
                        <a href="{:U('shai/index')}"><li>全部晒单</li></a>
                        <a href="{:U('user/shailist')}"><li>我的晒单</li></a>
                        <a href="{:U('shai/order')}"><li class="active">晒单排行榜</li></a>
                    </ul>	
					<!--排行切换-->
					<ul class="list2">
						<a class="#"><li class="active">积分排行</li></a>
						<a class="#"><li>次数排行</li></a>
						<a class="#"><li class="last">月排行</li></a>
					</ul>
					<!--晒单排行标题-->
					<ul class="list3">
						<li>排行</li>
						<li>用户</li>
						<li>积分</li>
					</ul>
					<!--排行详情-->
                    <div class="con" style="display:block" rel="1">
                    <script>ajaxlist(1,1);</script>
                    </div>
                    <div class="con" rel="1">
                    	<script>ajaxlist(2,1);</script>
                    </div>
                    <div class="con" rel="1"><script>ajaxlist(3,1);</script></div>
				</div>
				<div class="more" style="display:none">
					点击查看更多
				</div>
			</div>
			<!--底部-->
			<include file='public:footer'/>
		</div>
		<script>
			
			/*返回*/
			
			/*积分排行切换*/
			$(".content .list2 li").click(function(){
				var index=$(".content .list2 li").index(this);
				if(index==1)
				{
					$(".content .list3 li").eq(2).html("次数");
				}
				else
				{
					$(".content .list3 li").eq(2).html("积分");
				}
				$(this).addClass("active").parent().siblings().find("li").removeClass("active");
				$(".con").eq(index).show().siblings('.con').hide();
				
			})
			/*加载更多*/
			$(".more").click(function(){
				  var indexli=$(".list1 a li").index(".active");
				  var page=$(".list1 a li").eq(indexli).attr('rel');
				  page++;
				  ajaxlist(indexli++,page);
				
			})
		</script>
	</body>

  </html>