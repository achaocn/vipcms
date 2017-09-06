<div class="r_top">
    <div class="r_top1">
        <img src="{:avatar($info['id'], 100)}" alt="">
        <span class="top1_info">
            hi~<span>{:$info['nickname']?$info['nickname']:$info['username']}</span>,你好！<br>
            <a href="javascript:;">更换头像</a>
           <!-- {:U('user/avatar')}-->
        </span>
    </div>
    <div class="r_top2">
        <span>
            <img src="__STATIC__/tkjidicms/images/bill_min.png" alt="">当前积分：<span>{$info.score}分</span><br>
            <a href="{:U('user/gift')}">花积分</a>
        </span>
        <span>
            <img src="__STATIC__/tkjidicms/images/sun.png" alt="">当前晒单：<span>5次</span><br>
            <a href="晒单广场.html">去晒单</a>
        </span>
    </div>
</div>