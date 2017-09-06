<div class="dialog_content">
	<form id="info_form" action="{:u('shai/checkok')}" method="post">
	<table width="100%" class="table_form">
		<tr>
			<th width="100">id :</th>
			<td>{$info.id}</td>
		</tr>
       
<tr>
			<th>奖励积分 :</th>
			<td><label>
			    <input type="text" name="score" id="score" value="{$score}" />
	        </label></td>
		</tr>
	</table>
	<input type="hidden" name="id" value="{$info.id}" />
	</form>
</div>
<script>
  
$(function(){
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	 
	$('#info_form').ajaxForm({success:complate,dataType:'json'});
	function complate(result){
		if(result.status == 1){
			$.dialog.get(result.dialog).close();
            $.ftxia.tip({content:result.msg});
            window.location.reload();
		} else {
			$.ftxia.tip({content:result.msg, icon:'alert'});
		}
	}
	 
});
</script>