<footer>
    <ul class="ft-list">
    	<a href="{:C('ftx_site_url')}">
        <li>
            <div><span></span><img src="__STATIC__/tkjidicms/wap/img/index/footer1<if condition='MODULE_NAME eq "index"'>x</if>.png" /></div>
            <p <if condition='MODULE_NAME eq "index"'>class="fo-active"</if>>首页</p>
        </li>
        </a>
        <a href="{:U('cate/index')}">
            <li>
                <div><img src="__STATIC__/tkjidicms/wap/img/index/footer2<if condition='MODULE_NAME eq "cate"'>x</if>.png" /></div>
                <p <if condition='MODULE_NAME eq "cate"'>class="fo-active"</if>>分类</p>
            </li>
        </a>
        <a href="{:U('gift/index')}">
        <li>
            <div><img src="__STATIC__/tkjidicms/wap/img/index/footer3<if condition='MODULE_NAME eq "gift"'>x</if>.png" /></div>
            <p <if condition='MODULE_NAME eq "gift"'>class="fo-active"</if>>积分商城</p>
        </li>
        </a>
        <a href="{:U('shai/index')}">
        <li>
            <div><img src="__STATIC__/tkjidicms/wap/img/index/footer4<if condition='MODULE_NAME eq "shai"'>x</if>.png" /></div>
            <p <if condition='MODULE_NAME eq "shai"'>class="fo-active"</if>>晒单广场</p>
        </li>
        </a>
        <a href="{:U('user/person')}">
        <li>
            <div><img src="__STATIC__/tkjidicms/wap/img/index/footer5<if condition='MODULE_NAME eq "user"'>x</if>.png" /></div>
            <p <if condition='MODULE_NAME eq "user"'>class="fo-active"</if>>个人中心</p>
        </li>
        </a>
    </ul>
</footer>
<script type="text/javascript">
var FTXIAER = {
 root: "__ROOT__",
 site: "{:C('ftx_site_url')}",
 uid: "{$visitor['id']}", 
 loginurl:"{:U('user/login')}",
 userurl:"{:U('user/index')}",
 username:"{$visitor['username']}",
 face:"{:avatar($visitor['id'], 64)}",
 url:{}
}


</script>