//翻页
//翻页
function loadData() {
	
	   // FTXIAER.root + '/?m=baoming&a=ajaxGetItem
        totalheight=parseFloat($(window).height()) + parseFloat($(window).scrollTop());
        if ($(document).height() <= totalheight) 
        {
            //alert($(document).height()+'-'+$(window).height()+'-'+$(window).scrollTop());
            //说明滚动条已达底部
            /*这里使用Ajax加载更多内容*/
            var container = $("#masonry");//加载容器
            //当前页
            var currentPage = parseInt(container.find('#currentPage').val());
			
			
           // var maxPage = parseInt(container.find('#maxPage').val());
            if (currentPage>0 && !loading) {
           
                loading = true;
                var data = {};//查询参数
                data.page = (currentPage + 1);
                jQuery.ajax({
                    type: "POST",
                    url:FTXIAER.root +'?m=shai&a=ajax',
                    data: data,
                    dataType: "html",
                    beforeSend: function (XMLHttpRequest) {
                        $("#loading").css('display', 'block');
                    }, success: function (html) {
						
                        html = jQuery.trim(html);
						
						if(html=="")
						{
							container.find('#currentPage').val(0);
							$("#loading").html("已加载全部");
							
							
						}
						else
                        {
                            
                            $("#masonry").append(html);
							//alert($("#masonry").text());
                           // var img_width = $('.list_img1').width();
                           // $('.list_img1').css('height', img_width + 'px');
                			container.masonry('reload'); 
							container.find('#currentPage').val(container.find('#currentPage').val()+1);
						
                        }
                        $("#loading").css('display', 'none');

                    }, error: function () {
                        alert("加载失败");
                    }, complete: function () {
                        loading = false;
                    }
                });
            }
        }
    }