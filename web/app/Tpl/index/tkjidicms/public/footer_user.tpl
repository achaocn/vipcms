<div class="f_inner2">
    <span class="f_link">
        友情链接：
        <ftx:link type="lists">	
            <volist name="data" id="val" offset="0" length='10'> 
                <a href="{$val.url}" target="_blank">{$val.name}</a>　
            </volist>
        </ftx:link>
    </span><br>
    <span class="f_copyright">
        {:C('ftx_site_name')}  <?php $site_icp=C('ftx_site_icp');  if(!empty($site_icp)){ ?><a href="http://www.miibeian.gov.cn" target="_blank">{:C('ftx_site_icp')}</a><?php } ?>  Copyright © 2017 - 2020  
    </span>
</div>
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
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<script type="text/javascript" src="__STATIC__/js/jquery/plugins/formvalidator.js" ></script>
<script type="text/javascript" src="__STATIC__/red/js/placeholder.js"></script> 
<script type="text/javascript" src="__STATIC__/js/ftxia.js" ></script>
<script type="text/javascript" src="__STATIC__/js/dialog.js" ></script>
<script src="__STATIC__/tkjidicms/js/conmen.js"></script>
<script type="text/javascript" src="__STATIC__/js/user.js" ></script>
