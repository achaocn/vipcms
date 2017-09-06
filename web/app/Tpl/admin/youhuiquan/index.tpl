<include file="public:header" />
<!--商品列表-->
<div class="pad_lr_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="youhuiquan" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
					<if condition="$sm neq ''"><input type="hidden" name="sm" value="{$sm}" /></if>
                    发布时间 :
                    <input type="text" name="time_start" id="J_time_start" class="date" size="16" value="{$search.time_start}">
                    -
                    <input type="text" name="time_end" id="J_time_end" class="date" size="16" value="{$search.time_end}">
                    

					&nbsp;&nbsp;分类 :
                    <select class="J_cate_select mr10" data-pid="0" data-uri="{:U('youhuiquan_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$search.selected_ids}"></select>
                    <input type="hidden" name="cate_id" id="J_cate_id" value="{$search.cate_id}" />
                   <!-- &nbsp;&nbsp;状态 :
                    <select name="pass">
                    <option value="1" <if condition="$pass eq 1">selected="selected"</if>>已审核</option>
                    <option value="0" <if condition="$pass eq 0">selected="selected"</if>>未审核</option>
                    </select>-->
                    
                    <div class="bk8"></div>

                    价格区间 :
                    <input type="text" name="price_min" class="input-text" size="5" value="{$search.price_min}" />
                    -
                    <input type="text" name="price_max" class="input-text" size="5" value="{$search.price_max}" />
					
					<!--&nbsp;&nbsp;佣金比率 :
					<input type="text" name="rates_min" class="input-text" size="5" value="{$search.rates_min}" />
                     - 
                    <input type="text" name="rates_max" class="input-text" size="5" value="{$search.rates_max}" />

					-->

                    &nbsp;&nbsp;关键字 :
                    <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
					
					&nbsp;&nbsp;商品IID :
                    <input name="num_iid" type="text" class="input-text" size="25" value="{$search.num_iid}" />
                    <input type="submit" name="search" class="btn" value="搜索" />
					
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
 



    <div class="J_tablelist table_list" data-acturi="{:U('youhuiquan/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="10"><span data-tdtype="order_by" data-field="id">ID</span></th>
				<th width="50" align="center">缩略图</th>
                <th width="100"><span data-tdtype="order_by" data-field="title">商品名称</span></th>
                <th width="50"><span data-tdtype="order_by" data-field="cate_id">分类</span></th>
              
				<th width="40"><span data-tdtype="order_by" data-field="price">原价</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="coupon_price">券后价</span></th>
				<th width="40"><span data-tdtype="order_by" data-field="coupon_rate">优惠券</span></th>
			
				<th width="40"><span data-tdtype="order_by" data-field="commission_rate">佣率</span></th>
				
				<th width="40"><span data-tdtype="order_by" data-field="volume">销量</span></th>
				
				<th width="20">每日必拍</th>
				<th width="20">大牌券</th>
				<th width="40"><span data-tdtype="order_by" data-field="hits">转链状态</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="ordid">{:L('sort_order')}</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="pass">{:L('pass')}</span></th>
                <th width="60"><span data-tdtype="order_by" data-field="add_time">发布时间</span></th>
                <th width="80">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
        	<notempty name="list">
            1
            <else />
            2
            </notempty>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="right">
                    <div class="img_border"><a href="http://item.taobao.com/item.htm?id={$val.taobao_id}" target="_blank"><img src="{:changepic($val['thumb'],'item')}" width="50" height="50" class="J_preview" data-bimg="{:changepic($val['thumb'],'item')}"></a></div>
                </td>
                <td align="left"><span data-tdtype="edit" data-field="buss_name" data-id="{$val.id}" class="tdedit">【{:$val['tmall']==1?"天猫":"淘宝"}】{$val.buss_name}</span></td>
                <td align="center"><b>{$cate_list[$val['cate_id']]}</b></td>
                
                <td align="center" class="red">{$val.price_order}</td> 
                <td align="center" class="red">{$val.price_youhui}</td> 
				<td align="center" class="red">{$val.price_youhuiquan}</td>
						
				<td align="center" class="red">{$val.commission_rate}</td>
				
				<td align="center" class="red">{$val.sales}</td>
				
				<td align="center" class="red"><img data-tdtype="toggle" data-id="{$val.id}" data-field="ismust" data-value="{$val.ismust}" src="__STATIC__/images/admin/toggle_<if condition="$val.ismust eq 0">disabled<else/>enabled</if>.gif" /></td>
				<td align="center" class="red"><img data-tdtype="toggle" data-id="{$val.id}" data-field="isbig" data-value="{$val.isbig}" src="__STATIC__/images/admin/toggle_<if condition="$val.isbig eq 0">disabled<else/>enabled</if>.gif" /></td>
				<td align="center"><span class="red">{:$val["clicks"]==2?"是":"否"}</span></td>
                <td align="center"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit">{$val.ordid}</span></td>
                <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="pass" data-value="{$val.pass}" src="__STATIC__/images/admin/toggle_<if condition="$val.pass eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center">{$val.add_time|frienddate}</td>
                <td align="center"><a href="{:u('youhuiquan/edit', array('id'=>$val['id'], 'menuid'=>$menuid))}">{:L('edit')}</a> | <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('youhuiquan/delete', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['title'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>
</div>





    <div class="btn_wrap_fixed">
        <label class="select_all mr10"><input type="checkbox" name="checkall" class="J_checkall">{:L('select_all')}/{:L('cancel')}</label>
		<input type="button" class="btn btn_submit" data-tdtype="batch_action" data-acttype="ajax_form" data-id="pass" data-uri="{:U('youhuiquan/pass')}" data-name="id" data-title="批量设置状态" value="状态" />
		
        <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('youhuiquan/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />
        <div id="pages">{$page}</div>
    </div>
</div>
<include file="public:footer" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script>
Calendar.setup({
	inputField : "J_time_start",
	ifFormat       :    "%Y-%m-%d %H:%M",
	showsTime      :    'true',
	timeFormat     :    "24"
});
Calendar.setup({
	inputField : "J_time_end",
	ifFormat       :    "%Y-%m-%d %H:%M",
	showsTime      :    'true',
	timeFormat     :    "24"
});
$('.J_preview').preview(); //查看大图
$('.J_cate_select').cate_select({top_option:lang.all}); //分类联动
$('.J_tooltip[title]').tooltip({offset:[10, 2], effect:'slide'}).dynamic({bottom:{direction:'down', bounce:true}});
</script>
</body>
</html>