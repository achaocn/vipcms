<!DOCTYPE html>
<html lang="en">
<head>

<include file="public:head_user" />
</head>
<body>
	<include file="public:toper" />
    <include file="public:header_user" />
    
    <div class="c_center">
    	<include file="user/left" />
        
        <div class="cen_right">
            <include file="user/top" />
            <div class="r_bottom2">
               <p>请选择一个新照片进行上传编辑。</p>
				<p>头像保存后，您可能需要刷新一下本页面(按F5键)，才能查看最新的头像效果</p>朋友们！ 
                <div>

					<div class="fl">
					<div class="imgupload">
						<a id="J_upload_avatar" class="smt upload_btn smt_file_fake ">{:L('upload_avatar')}</a>
					</div>
					<!-- 展示头像 -->
					<div style="margin: 80px 0 10px;">
						<h2>头像展示：</h2>
						<div>
							<img id="J_avatar" src="{:avatar($info['id'], 200)}" title="100*100" width="100px" height="100px"/>
							<img id="J_avatar1" src="{:avatar($info['id'], 100)}" title="64*64"  width="64px" height="64px"/>
							<img id="J_avatar2" src="{:avatar($info['id'], 100)}" title="32*32"  width="32px" height="32px"/>
						</div>
					</div>
					<!-- /展示头像 -->
					<div class="fl ml15"></div>
					</div>
                    
                </div>
            </div>
        </div>
    </div>
    <script src="__STATIC__/js/fileuploader.js"></script>
    <include file="public:footer_user" />

<script>
  $('#J_upload_avatar').uploader({
		action_url: FTXIAER.root + '/?m=user&a=upload_avatar',
		input_name: 'avatar',
		onComplete: function(id, fileName, result){
			if(result.status == '1'){
				$('#J_avatar').attr('src', result.data);
				$('#J_avatar1').attr('src', result.data);
				$('#J_avatar2').attr('src', result.data);
			}
		}
   });
</script>
</body>
</html>