<header>
    <img class="back" src="__STATIC__/tkjidicms/wap/img/register/back.png" />
    <p class="hd-name">{$page_title}</p>
</header>
<script>
		/*����*/
		$(".back").click(function(){
			if(window.history.length<=1){
				window.location.href="index.html"	
			}else{
				window.history.go(-1);
				console.log(window.history.length)
			}			
		})
		$(".backtop").hide();
    	$(window).scroll(function(){
		    var $top = $(document).scrollTop();//�ඥ���ĸ߶�
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
		    	console("ˢ��")
		    }*/
		   var c=document.body.scrollHeight//��ҳ�߶�
		   var b=$(window).height()//���Ӵ��ڸ߶�
		   var d=c-b-$top		   
		});
</script>