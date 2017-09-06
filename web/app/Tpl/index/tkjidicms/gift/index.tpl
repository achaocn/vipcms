<!DOCTYPE html>
<html lang="en">
<head>
<include file="public:head" />
</head>
<body>
<include file="public:header" />
    <div class="v_cont">
        <div class="shop_in">
            <div class="s_title">当前位置：<a href="{:C('ftx_site_url')}" title="首页">首页</a>>积分商城</div>
            <ul class="s_tab">
                <li>
                    <a class="on">
                        积分商城
                    </a>
                </li>
                <!--<li>
                    <a href=".html">
                        积分兑换
                    </a>
                </li>
                <li>
                    <a href=".html">
                        幸运抽奖
                    </a>
                </li>-->
            </ul>
            <div class="s_user">
                <empty name="visitor">
                <div class="s_user_l">
                    <div class="l_top">
                        <img src="__STATIC__/tkjidicms/images/v_user3.png" alt="">
                        <div class="l_info">
                            <div class="info_no">
                                未登录, <a class="login_bnt" href="javascript:;"><!--<a href="{:U('user/login')}">-->马上登陆</a>
                            </div>
                        </div>
                    </div>
                    <div class="l_bottom">
                        <span><a href="{:U('user/mingxi')}" title="我的积分" target="_blank">我的积分</a></span>
                        <span><a href="{:U('user/addresslist')}" title="收货地址" target="_blank">收货地址</a></span>
                    </div>
                </div>
                <else />
                <div class="s_user_l">
                    <div class="l_top">
                        <img src="{:avatar($visitor['id'], 70)}" alt="">
                        <div class="l_info">
                            <div>
                                <img src="__STATIC__/tkjidicms/images/v_user_2.png" alt="">
                                用户名：{:$visitor['nickname']?$visitor['nickname']:$visitor['username']}
                            </div>
                            <div>
                                <img src="__STATIC__/tkjidicms/images/v_code2.png" alt="">
                                积分：{$info.score}分
                            </div>
                        </div>
                    </div>
                    <div class="l_bottom">
                        <span><a href="{:U('user/mingxi')}" title="我的积分" target="_blank">我的积分</a></span>
                        <span><a href="{:U('user/addresslist')}" title="收货地址" target="_blank">收货地址</a></span>
                    </div>
                </div>
                </empty>
                <div class="s_user_r">
                    <div class="s_point">赚取积分</div>
                    <ul>
                        <li>
                            <img src="__STATIC__/tkjidicms/images/v_check3.png" alt="">
                            <span>
                                网站签到<br>
                                可得<span></span>积分<br>
                                <a class="now_check sign_btn" href="javascript:;">
                                    马上签到&gt;&gt;
                                </a>
                            </span>
                        </li>
                        <li>
                            <img src="__STATIC__/tkjidicms/images/v_user2.png" alt="">
                            <span>
                                邀请好友<br>
                                可得<span></span>积分<br>
                                <a href="{:U('user/union')}" target="_blank">
                                    马上邀请&gt;&gt;
                                </a>
                            </span>
                        </li>
                        <li>
                            <img src="__STATIC__/tkjidicms/images/v_sun3.png" alt="">
                            <span>
                                购物晒单<br>
                                可得<span></span>积分<br>
                                <a href="{:U('user/shai')}" target="_blank">
                                    我要晒单&gt;&gt;
                                </a>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="v_exchange">
            <img src="__STATIC__/tkjidicms/images/v_exchange.png" alt="">
            积分兑换
            <!--<a href="#" class="e_more">更多</a>-->
        </div>
        <div class="e_list_out">
            <div class="e_list">
            	<volist name="item_list" id="item" mod="4">
                <div class="e_cont">
                    <a target="_blank" href="{:U('gift/detail', array('id'=>$item['id']))}">
                        <img src="{:attach(str_replace('_s.'.array_pop(explode('.', $item['img'])), '_b.'.array_pop(explode('.', $item['img'])), $item['img']), 'score_item')}" alt="">
                    </a>
                    <span class="e_title">{$item.title}</span>
                    <div class="e_pric">
                        价值：<span class="e_num">￥{$item.price}</span>
                        <span class="e_need">{$item.score}积分</span>
                    </div>
                    <div class="e_chan">
                        <span>{$item.order_count}人</span>已兑换
                        <a href="{:U('gift/detail', array('id'=>$item['id']))}" target="_blank">马上兑换</a>
                    </div>
                </div>
                </volist>
               
            </div>
            {$page}
        </div>
        <!--<div class="v_exchange">
            <img src="images/v_lottery.png" alt="">
            幸运抽奖
            <a href="#" class="e_more">更多</a>
        </div>
        <div class="e_list_out">
            <div class="e_list">
                <div class="e_cont">
                    <a href="#">
                        <img src="images/v_good.jpg" alt="">
                        <span class="has1">
                            结束时间：2017年03月28日17:00
                        </span>
                    </a>
                    <span class="e_title">新娘头饰红色白色套装韩式结婚头花发簪新娘头饰红色白色套装韩式结婚头花发簪</span>
                    <div class="e_pric">
                        <span class="place">
                            价值：10元&nbsp;&nbsp;&nbsp;中奖名额：15
                        </span>
                    </div>
                    <div class="e_chan2">
                        <span>
                            <span class="point">900积分</span><br>
                            <span>25人</span>已参与
                        </span>
                        <a href="#">我要抽奖</a>
                    </div>
                </div>
                
        </div>-->
    </div>
    
    <include file="public:footer" />
</body>

</html>