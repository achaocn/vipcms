<include file="public:header" />
<!--会员列表-->
<div class="pad_10" >
    <form name="searchform" method="get" >
    <table width="100%" cellspacing="0" class="search_form">
        <tbody>
            <tr>
                <td>
                <div class="explain_col">
                    <input type="hidden" name="g" value="admin" />
                    <input type="hidden" name="m" value="shai" />
                    <input type="hidden" name="a" value="index" />
                    <input type="hidden" name="menuid" value="{$menuid}" />
                    &nbsp;关键字 :
                    <input name="keyword" type="text" class="input-text" size="25" value="{$search.keyword}" />
                    
                    <label>
                  
                      <select name="stat" id="stat">
                        <option value="">请选择</option>
                        <volist name="status" id="item" key="key">
                        <option value="{:($key-1)}" <if condition="$search.status neq '' and $search.status eq ($key-1)">selected="selected"</if>>{$item}</option>
                        </volist>
                      </select>
                    </label>
                    <input type="submit" name="search" class="btn" value="搜索" />
                </div>
                </td>
            </tr>
        </tbody>
    </table>
    </form>

    <div class="J_tablelist table_list">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
                <th width=25><input type="checkbox" id="checkall_t" class="J_checkall"></th>
                <th width="58"><span data-tdtype="order_by" data-field="id">ID</span></th>
                <th width="117">会员id</th>
                <th width="125" align="left">会员用户名</th>
                <th width="158" align="left"><span data-tdtype="order_by" data-field="email">订单号</span></th>
                <th width="112">晒图图片</th>
                <th width="183" align="left">描述</th>
                <th width="159"><span data-tdtype="order_by" data-field="reg_time">晒单时间</span></th>
                <th width="83">状态</th>
                <th width="101"><span data-tdtype="order_by" data-field="status">所得积分</span></th>
                <th width="175">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val" >
            <tr>
                <td align="center"><input type="checkbox" class="J_checkitem" value="{$val.id}"></td>
                <td align="center">{$val.id}</td>
                <td align="center">{$val.user_id}</td>
                <td align="left">{$val.username}</td>
                <td align="left">{$val.order_num}<br />到手价：{$val.orderprice}</td>
                <td align="center">
                 <a href="./{$shai_pic}" target="_blank"><img src="./{$val.shai_pic}" width="150" /></a>
                </td>
                <td align="left">{$val.desc}</td>
                <td align="center">{$val.addtime|frienddate}</td>
                <td align="center">{:$status[$val['status']]}<br >{$val.deny_desc}</td>
                <td align="center">{:$val['score']?$val['score']:""}</td>
                <td align="center">
                <if condition="$val.status eq 0">
                
                 <a href="javascript:void(0);" class="J_showdialog" data-uri="{:u('shai/checkok', array('id'=>$val['id'], 'menuid'=>$menuid))}" data-title="审核通过 - {$val.id}" data-id="add_check" data-width="400" data-height="120">审核通过</a>
                 | 
                 <a href="javascript:void(0);" class="J_showdialog" data-uri="{:u('shai/status', array('id'=>$val['id'], 'menuid'=>$menuid))}" data-title="拒绝晒单 - {$val.id}" data-id="add_score" data-width="400" data-height="170">拒绝通过</a>|
                <else />
                
                </if>
                
               <a href="javascript:void(0);" class="J_confirmurl" data-uri="{:u('shai/del', array('id'=>$val['id']))}" data-acttype="ajax" data-msg="{:sprintf(L('confirm_delete_one'),$val['id'])}">{:L('delete')}</a></td>
            </tr>
            </volist>
    	</tbody>
    </table>
    <div class="btn_wrap_fixed">
<!--<label class="select_all"><input type="checkbox" name="checkall" class="J_checkall" id="check1">{:L('select_all')}/{:L('cancel')}</label>
       
         <input type="button" class="btn" data-tdtype="batch_action" data-acttype="ajax" data-uri="{:U('shai/delete')}" data-name="id" data-msg="{:L('confirm_delete')}" value="{:L('delete')}" />-->
        <div id="pages">{$page}</div>
    </div>

    </div>
</div>
<include file="public:footer" />
<script>
	/*$("#check1").click(function(){
		var vl=document.getElementById("check1").checked;
		
			$(".J_checkitem").attr('checked',vl);
		
	})*/
	//alert(document.getElementById("check1").checked);
</script>
</body>
</html>



