<!DOCTYPE html>
<html lang="en">
<head>

<include file="public:head_user" />
</head>
<body>
	<include file="public:toper" />
    <include file="public:header_user" />
    <div class="c_center">
    	<include file="user/left" />
        
        <div class="cen_right2">
            <div class="r2_title">
                 <img src="{:avatar($info['id'], 100)}" alt="">
                <span>
                    {:$info['nickname']?$info['nickname']:$info['username']}<br>
                    晒单得积分：您共晒单<span>{$shai_num}</span>次，获得<span>{:$shai_score?$shai_score:0}</span>积分
                </span>
                <a href="{:U('user/shai')}">我要晒单</a>
            </div>
            <notempty name="shailist">
            <table cellspacing="0"  cellpadding="0">
                <tr class="t-title">
                    <th class="t_name">订单号</th>
                    <th class="t_con">评论内容</th>
                    <th class="t_pic">图片</th>
                    <th class="t_code">获得积分</th>
                    <th class="t_status">审核状态</th>
                    <th class="t_time">时间</th>
                    
                    
                    


                </tr>
                <volist name="shailist" id="item">
                <tr>
                    <td class="t_name2" bgcolor="#FFFFFF">{$item.order_num}</td>
                    <td class="t_con2" bgcolor="#FFFFFF">{:nl2br($item['desc'])}</td>
                    <td bgcolor="#FFFFFF"><img src="/{$item.shai_pic}" alt=""></td>
                    <if condition="$item.status eq 1">
                    <td bgcolor="#FFFFFF">
                    {$item.score}
                    </td>
                    <td class="" bgcolor="#FFFFFF">通过</td>
                    <elseif condition="$item.status eq 2" />
                    <td bgcolor="#FFFFFF">
                    </td>
                    <td class="t_ing">【拒绝】<br />{$item['deny_desc']}</td>
                    <else />
                    <td bgcolor="#FFFFFF">
                    
                    </td>
                    <td class="t_ing" bgcolor="#FFFFFF">审核中...</td>
                    </if>
                    <td bgcolor="#FFFFFF">{:date("Y-m-d",$item['addtime'])}</td>
                </tr>
                </volist>
                
                <if condition="$totalPages gt 1">
                <tr align="right">
                    <td colspan="6" class="t_page">
                        {$page}
                    </td>
                </tr>
                </if>
            </table>
            <else />
            <center>没有晒单记录</center>
            </notempty>
        </div>
        

	</div>
    <include file="public:footer_user" />
    
</body>
</html>