<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">首页参数 - 设置</h1>
</div>
<div class="pad_lr_10">
	<form id="info_form" action="{:u('setting/edit')}" method="post">
	<table width="100%" class="table_form contentWrap">

		<tr>
            <th width="150">券价格 :</th>
            <td>
				最低：<input type="text" name="setting[index_mix_quan]" size="5" class="input-text" value="{:C('ftx_index_mix_quan')}" />&nbsp; 
				最高：<input type="text" name="setting[index_max_quan]" size="5" class="input-text" value="{:C('ftx_index_max_quan')}" />
			</td>
        </tr>	
		<tr>
            <th width="150">价格 :</th>
            <td>
				最低：<input type="text" name="setting[index_mix_price]" size="5" class="input-text" value="{:C('ftx_index_mix_price')}" />&nbsp; 
				最高：<input type="text" name="setting[index_max_price]" size="5" class="input-text" value="{:C('ftx_index_max_price')}" />
			</td>
        </tr>

		<tr>
            <th width="150">销量 :</th>
            <td>
				最低：<input type="text" name="setting[index_mix_volume]" size="5" class="input-text" value="{:C('ftx_index_mix_volume')}" />&nbsp; 
				最高：<input type="text" name="setting[index_max_volume]" size="5" class="input-text" value="{:C('ftx_index_max_volume')}" />
			</td>
        </tr>

		
		
	</table>

	<table width="100%" class="table_form contentWrap">
    	
        
		
    	
    	<tr>
        	<th width="150">悬浮式分享代码 :</th>
        	<td>
            	<textarea rows="5" cols="50" name="setting[weibo_code]">{:C('ftx_weibo_code')}</textarea>
            	<span class="gray">第三方网站提供的分享代码，例如http://share.baidu.com/、http://www.bshare.cn/、http://www.jiathis.com/getcode/、http://www.zuidaima.com/</span>
            </td>
    	</tr> 
    	<tr>
        	<th width="150">悬浮式广告代码 :</th>
        	<td>
            	<textarea rows="5" cols="50" name="setting[tencent_code]">{:C('ftx_tencent_code')}</textarea>
            	<span class="gray">申请第三方悬浮式广告代码可以填到这里。</span>
            </td>
    	</tr>
    	
   
        <tr>
        	<th></th>
        	<td><input type="hidden" name="menuid"  value="{$menuid}"/><input type="submit" class="smt mr10" name="do" value="{:L('submit')}"/></td>
    	</tr>
	</table>
	</form>
</div>
<include file="public:footer" />
</body>
</html>