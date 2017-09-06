<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
</head>
<body>
<include file="public:header" />
<div class="v_cont">
        <div class="v_cont_inner">
        	<include file="public:banner" />
            <div class="goods_title">
                <span class="line_left"></span>
                <img src="__STATIC__/tkjidicms/images/v_live4.png" alt="">
                <span class="line_left"></span>
            </div>
            
            <div class="f_num">
                <a href="{:U('search/index'.$q)}" <if condition="$sort eq 0">class="f_on"</if>>综合</a>
                <a href="{:U('search/index'.($q?$q.'&sort=1':'?sort=1'))}" <if condition="$sort eq 1">class="f_on"</if>>最新</a>
                <a href="{:U('search/index'.($q?$q.'&sort=2':'?sort=2'))}" <if condition="$sort eq 2">class="f_on"</if>>销量</a>
                <a href="{:U('search/index'.($q?$q.'&sort=3':'?sort=3'))}" <if condition="$sort eq 3">class="f_on"</if>>领券量</a>
                <a href="{:U('search/index'.($q?$q.'&sort=4':'?sort=4'))}" <if condition="$sort eq 4">class="f_on"</if>>价格</a>
                 <a href="{:U('search/index'.($q?$q.'&sort=5':'?sort=5'))}" <if condition="$sort eq 5">class="f_on"</if>>券价格</a>
                <div class="f_num_right">
                   {$pageup}
                </div>
            </div>
            <include file="public:itemlist" />
        </div>
    </div>


<include file="public:footer" />
</body>
</html>