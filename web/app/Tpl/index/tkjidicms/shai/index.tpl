<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
</head>
<body>
<include file="public:header" />
    <div class="sun_cont_out">
        <div class="sun_cont" style="padding-top:20px;">
            <include file="public:banner" />
            <div class="new_sun">
                <img src="__STATIC__/tkjidicms/images/v_sun2.png" alt="">
                最新晒单
            </div>
            <div id="masonry" class="container-fluid">
            	<input type="hidden" id="currentPage" value="1"/>
                <div class="box box_no">
                	<empty name="visitor">
                    <div class="info">
                        <div class="info_top">
                            <img class="img_top use_pic" src="__STATIC__/tkjidicms/images/v_user3.png" alt="">
                            <div class="info_inner">
                                <div class="no_login">
                                    未登录,<a href="javascript:;" class="sign_btn">马上登陆</a>
                                </div>
                            </div>
                        </div>
                        <div class="info_bottom">
                            <img src="__STATIC__/tkjidicms/images/v_mine.png" alt="">
                            <a href="{:U('user/shai')}">我要晒单</a>
                        </div>
                    </div>
                    <else />
                    
                    <div class="info">
                        <div class="info_top">
                            <img class="img_top use_pic" src="{:avatar($visitor['id'], 100)}" alt="">
                            <div class="info_inner">
                                <div>
                                    <img src="__STATIC__/tkjidicms/images/v_user_2.png" alt="">
                                    用户名：{:$info['nickname']?$info['nickname']:$info['username']}
                                </div>
                                <div>
                                    <img src="__STATIC__/tkjidicms/images/v_code2.png" alt="">
                                    积分：{$info.shai_score}分
                                </div>
                                <div>
                                    <img src="__STATIC__/tkjidicms/images/v_rank.png" alt="">
                                    排名：{$info.rownum}名
                                </div>
                            </div>
                        </div>
                        <div class="info_bottom">
                            <img src="__STATIC__/tkjidicms/images/v_mine.png" alt="">
                            <a href="{:U('user/shai')}">我要晒单</a>
                        </div>
                    </div>
                    </empty>
                    <div class="som_rank">
                        <div class="rank_title">
                            <span class="cout_1 on">积分排行榜</span>
                            <span class="cout_2">晒单次数排行榜</span>
                            <span class="cout_3">月排行榜</span>
                        </div>
                        <div class="rank_cont">
                            <div id='cout_1' class="on">
                            	<volist name="orderlist1" key="key" id="item">
                                <div>
                                    <span class="a_num a_num{:($key<4)?$key:""}">{$key}</span>
                                    <a>{:anonymous($item['nickname']?$item['nickname']:$item['username'])}</a>
                                    <span class="a_point">{$item.shai_score}积分</span>
                                </div>
                                </volist>
                            </div>
                            <div id='cout_2' >
                                
                                <volist name="orderlist2" key="key" id="item">
                                <div>
                                    <span class="a_num a_num{:($key<4)?$key:""}">{$key}</span>
                                    <a>{:anonymous($item['nickname']?$item['nickname']:$item['username'])}</a>
                                    <span class="a_point">{$item.shai_num}次</span>
                                </div>
                                </volist>
                            </div>
                            <div id='cout_3' >
                            	<volist name="orderlist3" key="key" id="item">
                                <div>
                                    <span class="a_num a_num{:($key<4)?$key:""}">{$key}</span>
                                    <a>{$item.uname}</a>
                                    <span class="a_point">{$item.sumscore}积分</span>
                                </div>
                                </volist>
                            </div>
                        </div>
                    </div>
                </div>
                <volist name="item_list" id="item">
                <div class="box">
                    <a><img class="b_img" src="/{$item.shai_pic}"></a>
                    <div class="b_title">
                        <!--<a  class="b_title1">
                            {$item.desc}
                        </a>-->
                        <div class="b_title2">
                            {$item.desc}
                        </div>
                    </div>
                    <div class="b_cont">
                        <img src="{:avatar($item['user_id'], 100)}" alt="{$item.username}">
                        <span class="b_cont2">
                           {$item.username}晒单<br>
                            <span class="b_pric">
                                到手价：<span>￥{$item.orderprice}</span>
                            </span>
                            <span>
                                奖励积分：<span>{$item.score}</span>
                            </span>
                        </span>
                    </div>
                </div>
                </volist>
                
            </div>
            <div class="b_load" id="loading" style="display:none">
                <img src="__STATIC__/tkjidicms/images/5-121204193R5-50.gif" alt="">
                加载更多中...
            </div>
        </div>
    </div>
    
<include file="public:footer" />
</body>
<script src="__STATIC__/tkjidicms/js/masonry-docs.min.js"></script>
<script src="__STATIC__/tkjidicms/js/load.js"></script>
<script>
    $(function() {
        var $container = $('#masonry');
        $container.imagesLoaded(function() {
            $container.masonry({
                itemSelector: '.box',
                gutter: 18
            });
        });
        $(".rank_title span").click(function() {
            var clas=$(this).attr("class");
            var sclas=clas.split(" ");
            // console.log("#"+sclas[0]);
            $("#"+sclas[0]).addClass("on").siblings().removeClass("on");
            $(this).addClass("on").siblings().removeClass("on");
        })
    })
</script>
<script type="text/javascript">

	var height1=$("#cout_1").height()+70;
        var height2=$("#cout_2").height()+70;
        var height3=$("#cout_3").height()+70;
        var array=[height1,height2,height3];
        var a=Math.max.apply(Math,array);
        $(".som_rank").height(a);

	
	var totalheight = 0;
	var loading = false;
	$(window).scroll(function () {
		loadData();
	});  
</script>
</html>