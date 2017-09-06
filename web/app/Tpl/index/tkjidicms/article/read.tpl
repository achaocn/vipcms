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
            <div class="v_hot">
                <div class="hot_left">
                    <ul class="h_top">
                        <li class="til">资讯分类</li>
                        <volist name="acats" id="vol">
                        <li><a class="<if condition='$vol.id eq $article["cate_id"]'>on</if>" href="{:U('article/index',array('cid'=>$vol['id']))}">{$vol.name}</a></li>
                        </volist>
                        
                    </ul>
                     
                </div>
                <div class="hot_right">
                    <div class="h_title">
                        当前位置：<a href="{:C('ftx_site_url')}">首页</a>/<a href="{:U('article/index')}">热门资讯</a>/{$article_cate_name}
                    </div>
                    <div class="h_cont">
                    	
                       <h2>{$article.title}</h2>
                      <p class="gray tc mt10">发布时间：{$article.add_time|date="Y-m-d H:i:s",###}&nbsp;&nbsp;&nbsp;&nbsp;来源：{$article.author}&nbsp;&nbsp;&nbsp;&nbsp;点击：{$article.hits}</p>			
                      <div class="about_content mt30">
                      {$article.info}
                      </div>
                      <div class="nextatc">
                      <span class="nec"><if condition="$preid eq 0"><else /><b>上一篇：</b><a href="{:U('article/read',array('id'=>$preid))}" target="_blank" >{$articlep.title}</a></if></span>
                      <span class="nec"> <if condition="$lastid eq $nid"><b>下一篇：</b>没有了<else /><b>下一篇：</b><a href="{:U('article/read',array('id'=>$nid))}" target="_blank">{$articlen.title}</a></if></span>
                      </div>
  
                    </div>
                </div>
            </div>
            
        </div>
    </div>
<include file="public:footer" />
</body>
</html>