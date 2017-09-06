<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
<link rel="stylesheet" href="__STATIC__/tkjidicms/css/idangerous.swiper.css">
</head>
<body>
<include file="public:header" />

<div class="v_cont">
        <div class="v_cont_inner">
        	<include file="public:banner" />
            <div class="v_hot">
                <div class="hot_left">
                    <ul class="h_top">
                        <li class="til">资讯分类</li>
                        <volist name="acats" id="vol">
                        <li><a class="<if condition='$vol.id eq $cid'>on</if>" href="{:U('article/index',array('cid'=>$vol['id']))}">{$vol.name}</a></li>
                        </volist>
                        
                    </ul>
                    <notempty name="orderlist">
                    <div class="h_bottom">
                        <div class="til">
                            热门晒单
                        </div>
                        <div class="swiper-container m_swiper">
                            <div class="swiper-wrapper">
                            	<volist name="orderlist" id="item" key="key">
                                 <a href="javascript:;" class="swiper-slide m_slide">
                                    <img src="/{$item.shai_pic}" alt="">
                                    <span>
                                        <span class="m_name">{$key}名</span><br>
                                        <span class="m_asse">{$item.desc}</span>
                                        <span class="m_code">
                                            奖励:{$item.score}积分
                                        </span>
                                    </span>
                                </a>
                                </volist>
                            </div>
                        </div>
                        <div class="up_down">
                            <img class="v_up" src="__STATIC__/tkjidicms/images/v_up.png" alt="">
                            <img class="v_down" src="__STATIC__/tkjidicms/images/v_down.png" alt="">
                        </div>
                    </div>  
                    </notempty>  
                </div>
                <div class="hot_right">
                    <div class="h_title">
                        当前位置：<a href="{:C('ftx_site_url')}">首页</a>/<a href="{:U('article/index')}">热门资讯</a>{:empty($cid)?"":"/".$title}
                    </div>
                    <div class="h_cont">
                    	
                       <empty name="article_list"><center>暂无相关信息</center></empty>
                        
                        <volist name="article_list" id="article">
                        <div class="h_list">
                            <img src="{$article.mpic}" alt="">
                            <div class="h_right">
                                <span class="h_r">
                                    {$article.title}
                                </span><br>
                                <span class="h_cont2">
                                {$article.info}...
                                </span>
                                <div class="h_out">
                                    <span class="h_time">{$article.add_time|date="Y-m-d",###}</span>
                                    <a href="{:U('article/read',array('id'=>$article['id']))}" target="_blank">
                                        查看详情
                                    </a>
                                </div>
                            </div>
                        </div>
                        </volist>
                    </div>
                </div>
            </div>
            <div class="f_page">
            	{$page}
            </div>
        </div>
    </div>
<include file="public:footer" />
<script src="__STATIC__/tkjidicms/js/idangerous.swiper.min.js"></script>
<script src="__STATIC__/tkjidicms/js/top_info.js"></script>

</body>
</html>
