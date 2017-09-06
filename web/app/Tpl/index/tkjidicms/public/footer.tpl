<div class="v_footer">
		<div class="f_inner">
			<table>
				<tr>
					<th>商务合作</th>
					<th>帮助中心</th>
					<th>用户中心</th>
					<th>关于我们</th>
                    <th>关注我们</th>
				</tr>
				<tr>
					<td>
						<ul>
							
							
							<li><a href="{:U('help/read',array('id'=>2))}" target="_blank">广告合作</a></li>
							<li><a href="{:U('help/read',array('id'=>5))}" target="_blank">免责声明</a></li>
						</ul>
					</td>
					<td>
						<ul>
							<li><a href="{:U('help/read',array('id'=>6))}" target="_blank">常见问题</a></li>
							<li><a href="{:U('help/read',array('id'=>8))}" target="_blank">消费保障</a></li>
						</ul>
					</td>
					<td>
						<ul>
							<li><a href="{:U('user/info')}" target="_blank">个人资料</a>
							</li>
							<li><a href="{:U('gift/index')}" target="_blank">积分商城</a>
							</li>
							<li><a href="{:U('user/shailist')}" target="_blank">我的晒单</a>
							</li>
						</ul>
					</td>
                    <td>
						<ul>
							<li><a href="{:U('help/read',array('id'=>1))}" target="_blank" title="关于我们">关于我们</a>
							</li>
							<li><a href="{:U('help/read',array('id'=>3))}" target="_blank" title="联系我们">联系我们</a>
							</li>
							
						</ul>
					</td>
					<td>
						<ul>
							<li><a href="{:C('ftx_sina_url')}" target="_blank">新浪微博</a></li>
							<li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin={:C('ftx_qq')}&amp;site=qq&amp;menu=yes" target="_blank">QQ</a></li>
						</ul>
					</td>
				</tr>
			</table>
			<div class="f_code">
            	
				{:C('ftx_site_weixin')?'<img src="'.C('ftx_site_weixin').'" alt=""><br>':''}
				扫描二维码关注公众号
			</div>
			<div class="f_service">
				<img src="__STATIC__/tkjidicms/images/v_user.png" alt="">
				<span>
					周一至周六<br>
					9:00-22:00
				</span>
			</div>
		</div>
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
				{:C('ftx_site_name')}  <a href="http://www.miibeian.gov.cn" target="_blank">{:C('ftx_site_icp')}</a>  Copyright © 2017 - 2020 
			</span>
            
		</div>
	</div>
    <include file="public:rnav" />
    <div style="display:none">{:C('ftx_statistics_code')}</div>
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

<!--<script src="__STATIC__/tkjidicms/js/swiper.min.js"></script>-->

<script src="__STATIC__/tkjidicms/js/conmen.js"></script>
<script src="__STATIC__/tkjidicms/js/pop.js"></script>
<script src="__STATIC__/tkjidicms/js/goods.js"></script>

<script type="text/javascript" src="__STATIC__/js/jquery/plugins/jquery.tools.min.js" ></script>
<script type="text/javascript" src="__STATIC__/js/jquery/plugins/formvalidator.js" ></script>
<script type="text/javascript" src="__STATIC__/js/fileuploader.js" ></script>
<script type="text/javascript" src="__STATIC__/js/ftxia.js" ></script>
<script type="text/javascript" src="__STATIC__/js/front.js" ></script>

<script type="text/javascript" src="__STATIC__/js/dialog.js" ></script>
<script type="text/javascript" src="__STATIC__/js/item.js" ></script>
<script type="text/javascript" src="__STATIC__/js/user.js" ></script>

<script type="text/javascript" src="__STATIC__/red/js/comment.js" ></script>
<script type="text/javascript" src="__STATIC__/red/js/comm.js" ></script>


<script src="__STATIC__/newpi/js/lightbox.js" type="text/javascript"></script>
<script src="__STATIC__/newpi/js/goodlist.js" type="text/javascript"></script> 

<script type="text/javascript" src="__STATIC__/newpi/js/pg-index.js" ></script>
<script>
	$(function() {
		/*搜索*/
		$(".topOne-right").click(function(){
			var text=$(".top-search").val();
			
			if(text!=""){
				$(".topOne-search").submit();
			}else{
				alert("请输入相关信息")	
			}
			
		})
		/*顶部*/
		$(window).scroll(function(){
			if($(window).scrollTop()>=300){
				$(".out").fadeIn(300);
			}else{
				$(".out").fadeOut(300);
			}
		})
	})
</script>
{:C('ftx_weibo_code')}
{:C('ftx_tencent_code')}