<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<!--头部-->
    <include file='public:header'/> 
    <!--搜索模块-->
    <div class="search">
        <span class="sr-left"></span>
        <form name="form1"  action="" class="search">
        	<input type="hidden" name="m" value="search">
        	<input type="hidden" name="a" value="index">
        	<input id="search" type="text" name="k" value="" placeholder='请输入搜索关键字' />	
        </form>	
        
    </div>
   
    <!--分类标题-->
    <h3>所有分类</h3>
    <div class="content">
        <ul>
        	<volist name="cate_data" key="key" id="item" mod="3"> 
            <a href="{:U('quan/index?cate_id='.$item['id'])}">
            <eq name="mod" value="2">
            <li  class="last">
            <else />
            <li>
            </eq>
				<img src="{$imgurl}cont{$key}.jpg" alt="{$item.class_name}" title="{$item.class_name}">
				<p class="p1">{$item.class_name}</p>
                <p class="p2">{$item.desc}</p>
			</li></a>
            </volist>
            
        </ul>
        <div style="height: 1.8rem;"></div>
    </div>
   <include file='public:footer'/> 
</div>
		<script>
			/*搜索模块*/
			$(".search input").focus(function(){
				$(this).val("")
			})
			//
			$('.sr-left').click(function(){
				var val=$("#search").val() 
				if(val==""){
					alert("请在输入框内输入关键字");
					$('#search').focus();
					return false;
				}else{
					$('.search').submit()
				}
			})
			$('.search').bind('keypress',function(event){
	            if(event.keyCode == "13"){
	            	var val=$(this).find("#search").val() 
					if(val==""){
						alert("请在输入框内输入关键字");
						$(this).siblings('#search').focus();
						return false;
					}else{
						$(this).submit()
					}
	            }    
	        })
		</script>
	</body>
</html>
