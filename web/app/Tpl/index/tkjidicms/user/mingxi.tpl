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
                    当前总积分：共<span class="tal_core">{$score_total}</span>积分
                </span>
               <!-- <a href="个人中心-幸运抽奖.html">幸运抽奖</a>-->
                <a href="{:U('user/gift')}">积分兑换</a>

            </div>
            <div class="tal_bottom">
                <img src="__STATIC__/tkjidicms/images/v_del.png" alt="">
                积分明细
            </div>
            <table cellspacing="0"  cellpadding="0">
                <tr class="t-title">
                    <th class="j_type">
                        积分类型
                        <div class="j_select">
                            <span class="j_cont">
                                {$typestr}
                            </span>
                            <span class="j_tria"></span>
                            <ul>
                            	<li><a href="{:U('user/mingxi')}">全部</a></li>
                                <li><a href="{:U('user/mingxi?t=1')}">近三个月记录</a></li>
                                <li><a href="{:U('user/mingxi?t=2')}">积分进账记录</a></li>
                                <li><a href="{:U('user/mingxi?t=3')}">积分消耗记录</a></li>
                                
                            </ul>
                        </div>
                    </th>
                    <th class="t_source">来源</th>
                    <th class="t_cont">积分数量</th>
                    <th class="t_time">操作时间</th>
                </tr>
                <notempty name="logs_list">
					<volist name="logs_list" id="val">
                <tr>
                    <td bgcolor="#FFF">
                        {:($val['score']>0)?"积分进账":"积分消耗"}
                    </td>
                    <td bgcolor="#FFF">{:L($val['action'])}</td>
                    <td class="t_use{:($val['score']>0)?1:2}" bgcolor="#FFF">{:($val['score']>0)?"+":""}{$val.score}</td>
                    <td bgcolor="#FFF">{$val.add_time|frienddate}</td>
                </tr>
                	</volist>
                    <tr align="right">
                    <td colspan="4" class="t_page">
                        {$page}
                    </td>
                </tr>
                <notempty>
            </table>
           
        </div>
        
        
    </div>
    
    <include file="public:footer_user" />
    
</body>
<script>
    $(function() {
        $(".j_select").click(function() {
            $(".j_select ul").slideToggle();
        })
    })
</script>
</html>
