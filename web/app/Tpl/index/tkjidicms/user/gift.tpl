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
                <a href="{:U('gift/index')}" target="_blank">去积分商城</a>

            </div>
            <div class="tal_bottom">
                <img src="__STATIC__/tkjidicms/images/v_score.png" alt="">
                积分兑换记录
            </div>
            

             <notempty name="order_list">
					
            <table cellspacing="0"  cellpadding="0">
                <tr class="t-title">
                    <th class="t_detail">商品详情</th>
                    <th class="t_pris">价格</th>
                    <th class="t_code2">积分</th>
                    <th class="t_type">类型</th>
                    <th class="t_addr">地址</th>
                    <th class="t_time">时间</th>
                    <th class="t_status">状态</th>
                </tr>
                <volist name="order_list" id="val">
                <tr>
                    <td class="in_detail" bgcolor="#FFF">
                        <img src="{:attach(str_replace('_s.'.array_pop(explode('.', $val['pro']['img'])), '_b.'.array_pop(explode('.', $val['pro']['img'])), $val['pro']['img']), 'score_item')}" alt="">
                        <span>
                            {$val.item_name}
                        </span>
                    </td>
                    <td class="in_color" bgcolor="#FFF">￥{:$val['pro']['price']}</td>
                    <td class="in_color" bgcolor="#FFF">{$val.order_score}</td>
                    <td bgcolor="#FFF">积分抽奖</td>
                    <td bgcolor="#FFF">{$val.province}{$val.city}{$val.area}{$val.address}</td>
                    <td bgcolor="#FFF">{$val.add_time|frienddate}</td>
                    <td class="in_status" bgcolor="#FFF"><if condition="$val['status'] eq 2"><a href="{:U('user/msg',array('do'=>'send'))}" title="请联系客服">订单异常</a><elseif condition="$val['status'] eq 1" />已发货<br><span style="font-weight:normal; font-size:12px;">物流：{$val['ems_name']}({$val['ems_id']})</span><else/>订单审核中</if></td>
                </tr>
                </volist>
                <tr align="right">
                    <td colspan="7" class="t_page">
                        {$page}
                    </td>
                </tr>
            </table>
            <else/>
              <div class="find_gift">
                  <p style="padding-left:100px;">您还没有<a href="{:U('gift/index')}" target="_blank" style="color:#333">兑换礼品</a>哦，赶快兑取你喜欢的礼品吧~</p>
              </div>
          </notempty>
        </div>
	</div>
    <include file="public:footer_user" />
</body>
</html>