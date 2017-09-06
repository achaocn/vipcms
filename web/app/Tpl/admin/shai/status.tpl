<div class="dialog_content">
	<form id="info_form" action="{:u('shai/status')}" method="post">
	<table width="100%" class="table_form">
		<tr>
			<th width="100">id :</th>
			<td>{$info.id}</td>
		</tr>
       
<tr>
			<th>拒绝理由 :</th>
			<td><label>
			  <textarea name="deny_desc" id="deny_desc" cols="45" rows="5"></textarea>
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