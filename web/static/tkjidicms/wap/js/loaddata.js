// JavaScript Document
/*下拉刷新*/
			var flagScroll=true;
			var $height=$(".li-img").width();
			$(".li-img").css("height",$height+"px");
			$(window).scroll(function(){
				if(flagScroll){					  
					   var $top = $(document).scrollTop();//距顶部的高度			   
					   var c=document.body.scrollHeight//网页高度
					   var b=$(window).height()//可视窗口高度
					   var d=c-b-$top	
					   var page=$("#page").val();
					   var act=$("#act").val();
					   var qry=$("#qry").val();
					   if(qry==undefined)
					   {
						   qry="";
					   }
					   if(act==""||act==undefined)
					   {
							alert("错误信息");
							return false;
						}
						
						//console.log(d);
					   if(d==0){
						    flagScroll=false;
								if(page>0)
								{
									page++;
									 $(".dt-more").show();
									
									$.getJSON(FTXIAER.root+'/?m='+act+'&a=ajax&page='+page+qry, function(datas){
										 
										  if(datas.status=="200"||datas.status==200)
										  {
											$("#page").val(page);
											 var mod=0;
											 var classs="";
											 for (var i = 0; i < datas.data.length; i++) {
												 if(act.indexOf('gift')>=0)
												 {
													var dd='<a href="/?m=gift&a=detail&id='+datas.data[i].id+'">'
														+'<li>'
															+'<div class="dt-ct-img">'
																+'<img src="'+datas.data[i].thumb+'"" />'
															+'</div>'
															+'<div class="content-right">'
																+'<p class="dt-ct-name">'+datas.data[i].title+'</p>'
																+'<p class="dt-ct-explain"><span>价值</span><span class="sp1">￥'+datas.data[i].price+'</span><span class="sp2">{$item.score}积分</span></p>'
																+'<p class="overplus">'
																	+'<span class="sp1">剩余数量</span>'
																	+'<span class="sp2">'+datas.data[i].stock+'</span>'
																	+'<span class="sp3"></span>'
																	+'<span class="sp5">已经兑换</span>'
																	+'<span class="sp4">'+datas.data[i].order_count+'人</span>'									
																+'</p>'
																+'<p class="time">'
																	+'<span class="sp1">截止时间:</span>'
																	+'<span class="sp1">'+datas.data[i].time1+'</span>'
																	+'<span class="sp1"> '+datas.data[i].time2+'</span>'
																+'</p>'
																+'<a class="dt-ct-buy" href="/?m=gift&a=detail&id='+datas.data[i].id+'">我要兑换</a>'
															+'</div>'				
														+'</li>'
													+'</a>';
												 
												 }
												 else
												 {
												if((i+1)%2==0)
												 {
													classs="second";
												  }
												  else
												  {
													  classs="";
												  }
												 var dd='<a href="'+FTXIAER.root+'/?m=pro&a=show&id='+datas.data[i].id+'" target="_self">'
														  +'<li class="'+classs+'">'
															+'<div class="li-img"><img src="'+datas.data[i].thumb+'" alt="'+datas.data[i].buss_name+'">';
													if(datas.data[i].act_type==1)
													{
														dd+='<a href="'+FTXIAER.root+'/?m=pro&a=show&id='+datas.data[i].id+'"><img class="lookInner" src="'+FTXIAER.root+'/static/tkjidicms/wap/img/look.png"/></a>';
													}
														dd+='</div>'
															+'<div class="name">'
																+'<div class="nameImg"><img src="'+FTXIAER.root+'/static/tkjidicms/images/v_tm'+datas.data[i].tmall+'.png" alt=""></div>'
																+'<p>'+datas.data[i].buss_name+'</p>'
															+'</div>'
															+'<div class="price">'
																+'<p>领券价：￥'+datas.data[i].price_youhui+'</p>'
																+'<div class="priceText">'+datas.data[i].price_youhuiquan+'</div>'
																+'<img class="priceImg" src="'+FTXIAER.root+'/static/tkjidicms/wap/img/fengding/pricebg.png">'
															+'</div>'
															+'<p class="though"><span class="sp1">￥'+datas.data[i].price_order+'</span><span class="sp2">销量：'+datas.data[i].sales+'</span></p>'
															+'<div class="ling">领券购买</div>'
														+'</li>'
													 +'</a>';
												 }
												 
												
												$(".list").append(''+dd+'');
												$(".li-img").css("height",$height+"px")
												flagScroll=true;												
											 } 
										  }
										  else
										  {
											 $("#page").val(0);
											 $(".dt-more").html('<span>已达到底线</span>');
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
						   $('.dt-more').hide();
						  
						}
				}			  
			});