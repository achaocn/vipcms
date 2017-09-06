<include file="public:header" />
<!--添加商品-->
<div class="subnav">
    <h1 class="title_2 line_x">添加商品</h1>
</div>
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<script src="/static/js/fileuploader.js"></script>

<form id="info_form" name="info_form" action="{:u('youhuiquan/add')}" method="post" enctype="multipart/form-data">	
<div class="pad_lr_10">
	<div class="col_tab">
		<ul class="J_tabs tab_but cu_li">
			<li class="current">基本信息</li>
			<li>SEO设置</li>
		</ul>
		<div class="J_panes">
        <div class="content_list pad_10">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">宝贝链接：</th>
                <td><input type="text" id="good_link" name="link" class="input-text" size="100" >
					<input type="button" value="一键采集" id="J_get_info" name="click_url_btn" class="btn">				     
				</td>
			</tr>
			<tr>
				<th width="120">所属分类 :</th>
                <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('youhuiquan_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" />
                </td>
			</tr>
			<tr>
				<th>IID :</th>
				<td>
                	<input type="text" name="taobao_id" id="J_num_iid" class="input-text" size="20" value="">
                </td>
			</tr>
			
            <tr>
				<th>商品名称 :</th>
				<td><input type="text" name="buss_name" id="J_title" class="input-text" size="60" ></td>
			</tr>		
			<tr>
                <th>商品简介 :</th>
                <td><textarea name="introduce" id="J_intro" cols="80" rows="2"></textarea></td>
            </tr>
			<tr>
                <th>商品详情 :</th>
				
				<td><script name="content" id="desc" type="text/plain" style="width:100%;height:300px"></script></td>				
                
            </tr>
            
			<tr>
				<th>商品图片 :</th>
				<td><img id="J_pic_url_img"  width="100" ><br />
					<input type="text" name="thumb" id="J_pic_url" class="input-text" size="100" >
					<div id="J_upload_img" class="upload_btn"><span>上传</span></div>
				</td>
 			</tr>
			
			<!--<tr>
				<th>商品标签 :</th>
				<td>
                	<input type="text" name="tags" id="J_tags" class="input-text" size="50" >
                    <input type="button" value="点击获取" id="J_gettags" name="tags_btn" class="btn">
                </td>
			</tr>-->
			<tr>
            	<th width="120">商品来源 :</th>
            	<td>
                <select name="tmall" id="shop_type">
                <volist name="orig_list" id="val">
            	<option value="{$val.type}">{$val.name}</option>
            	</volist>
                
                </select></td>
            </tr>
			<tr>
				<th>销量 :</th>
				<td>
                	<input type="text" name="sales" id="J_volume" class="input-text" size="10">
                </td>
			</tr>
			<tr>
				<th width="120">商品价格 :</th>
				<td><input type="text" name="price_order" id="J_price"size="10" class="input-text" > 元</td>
				<p class="s1" id="prices" style="display:none"></p>
                            <p class="tips"></p>
			</tr>
            
            <tr>
				<th>券后价格 :</th>
				<td><input type="text" name="price_youhui" size="10" class="input-text" value=""> 元</td>
			</tr>
            
            <tr>
            <th>结束时间 :</th>
            <td><input type="text" name="end_time" id="coupon_end_time" class="date" value=""/></td>
            </tr>
			<tr>
             <th>优惠券价格:</th>
				<td>
                	<input type="text" name="price_youhuiquan" id="quan" class="input-text" size="10" value="">
                	元
                </td>
			</tr>
            <tr>
             <th>优惠券推广链接:</th>
				<td>
                	<input type="text" name="quan_link" id="quanurl" class="input-text" size="100" value="">
                </td>
             <tr>
             <th>优惠券总数量:</th>
				<td>
                	<input type="text" name="quan_num_zong" id="Quan_surplus" class="input-text" size="20" value="">
                </td>
			</tr>	
			<tr>
             <th>优惠券已领数量:</th>
				<td>
                	<input type="text" name="quan_num_ling" id="Quan_receive" class="input-text" size="20" value="">
                </td>
			</tr>
            
			<tr>
             <th>佣金比率:</th>
				<td>
                	<input type="text" name="commission_rate" id="commission_rate" class="input-text" size="20" value="">%
                </td>
			</tr>
            
		</table>
		</div>
 
		<div class="content_list pad_10 hidden">
		<table width="100%" cellpadding="2" cellspacing="1" class="table_form">
			<tr>
				<th width="120">{:L('seo_title')} :</th>
 				<td><input type="text" name="seo_title" class="input-text" size="60" value="{$info.seo_title}"></td>
			</tr>
			<tr>
				<th>{:L('seo_keys')} :</th>
				<td><input type="text" name="seo_keys" class="input-text" size="60" value="{$info.seo_keys}"></td>
			</tr>
			<tr>
				<th>{:L('seo_desc')} :</th>
				<td><textarea name="seo_desc" cols="80" rows="8">{$info.seo_desc}</textarea></td>
			</tr>
		</table>
		</div>
	
        	
        </div>
		<div class="mt10"><input type="submit" value="{:L('submit')}" id="dosubmit" name="dosubmit" class="smt mr10" style="margin:0 0 10px 150px;"></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="{$menuid}"/>
</form>

<include file="public:footer" />
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.config.js"></script>
<script charset="utf-8" src="__STATIC__/js/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
$('.J_cate_select').cate_select('请选择');
//var ue = UE.getEditor('info');  
var ue = UE.getEditor('desc');  
	
$(function() {

  //上传图片
    var img_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_img'),
        multiple: false,
        action: "{:U('youhuiquan/ajax_upload_img')}",
        inputName: 'img',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_img').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
           // $('#J_pic_url').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_pic_url').val(result.data);
				$('#J_pic_url_img').attr('src','/data/upload/item/'+result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });

	
	    var extimg_uploader = new qq.FileUploaderBasic({
        allowedExtensions: ['jpg','gif','jpeg','png','bmp','pdg'],
        button: document.getElementById('J_upload_extimg'),
        multiple: false,
        action: "{:U('youhuiquan/ajax_upload_img')}",
        inputName: 'extimg',
        forceMultipart: true, //用$_FILES
        messages: {
            typeError: lang.upload_type_error,
            sizeError: lang.upload_size_error,
            minSizeError: lang.upload_minsize_error,
            emptyError: lang.upload_empty_error,
            noFilesError: lang.upload_nofile_error,
            onLeave: lang.upload_onLeave
        },
        showMessage: function(message){
            $.ftxia.tip({content:message, icon:'error'});
        },
        onSubmit: function(id, fileName){
            $('#J_upload_extimg').addClass('btn_disabled').find('span').text(lang.uploading);
        },
        onComplete: function(id, fileName, result){
            $('#J_upload_extimg').removeClass('btn_disabled').find('span').text(lang.upload);
            if(result.status == '1'){
                $('#J_extimg').val(result.data);
            } else {
                $.ftxia.tip({content:result.msg, icon:'error'});
            }
        }
    });
	
	$('ul.J_tabs').tabs('div.J_panes > div');
	//自动获取标签
	$('#J_gettags').live('click', function() {
		var title = $.trim($('#J_title').val());
		if(title == ''){
			$.ftxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("youhuiquan/ajax_gettags")}', {title:title}, function(result){
			if(result.status == 1){
				$('#J_tags').val(result.data);
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});
	

	
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#good_link").formValidator({onshow:'请填写宝贝链接',onfocus:'请填写宝贝链接'}).inputValidator({min:1,onerror:'请填写宝贝链接'});
	$("#J_title").formValidator({onshow:'请填写商品名称',onfocus:'请填写商品名称'}).inputValidator({min:1,onerror:'请填写商品名称'});	
	$("#J_num_iid").formValidator({onshow:"请填写iid",onfocus:"请填写iid",oncorrect:"填写正确",onempty:"请填写iid"}).inputValidator({min:9,max:12,onerror:"iid应该为9-12位之间的数字"}).regexValidator({regexp:"^[1-9][0-9]*$",onerror:"请填写整数"});
	$("#J_price").formValidator({onshow:"请填写原价",onfocus:"请填写价格",oncorrect:"填写正确",onempty:"请填写价格"}).inputValidator({min:1,max:100,onerror:"请正确填写价格"});	//$("#J_pic_url").formValidator({onshow:"请填写宝贝地址",onfocus:"请填写宝贝地址",oncorrect:"填写正确",onempty:"请填写宝贝地址"}).inputValidator({min:50,onerror:"请正确填写宝贝地址"});
	//$("#coupon_price").formValidator({onshow:"请填写秒杀价",onfocus:"请填写秒杀价",oncorrect:"填写正确",onempty:"请填写秒杀价"}).inputValidator({min:1,max:100,onerror:"请填写秒杀价"});
	//$("#coupon_start_time").formValidator({onshow:"请选择秒杀开始时间",onfocus:"请选择秒杀开始时间",oncorrect:"填写正确",onempty:"请填写秒杀开始时间"}).inputValidator({min:15,max:30,onerror:"请正确选择秒杀开始时间"});
	$("#coupon_end_time").formValidator({onshow:"请选择秒杀结束时间",onfocus:"请选择秒杀开结束时间",oncorrect:"填写正确",onempty:"请填写秒杀开结束时间"}).inputValidator({min:15,max:30,onerror:"请正确选择开结束时间"});
	$("#J_volume").formValidator({onshow:"请输入宝贝销量",onfocus:"请输入宝贝销量",oncorrect:"填写正确",onempty:"请输入宝贝销量"}).inputValidator({min:1,max:100,onerror:"请输入正确的数字"});	//$("#J_nick").formValidator({onshow:"请填写掌柜",onfocus:"请填写掌柜",oncorrect:"填写正确",onempty:"请填写标题"}).inputValidator({min:3,max:100,onerror:"请正确填写掌柜"});
	
	
		$('#J_get_info').live('click', function() {
			
			var link = $("#good_link").val();
			
			//ajax获取数据
			  $.getJSON('{:U("youhuiquan/ajaxGetItem")}',{link:link},function(result){
				
                if(result.status===1)
                {   
					
                    var info=result.data;
					
					if(info['type']=="B")
					{
						$('#shop_type').val(1);
					}
					else
					{
						$('#shop_type').val(0);
					}
					
					//$('#commission').val(info['commission']);
					//$('#commission_rate').val(info['commission_rate']);
					
					$('#J_item_url').val(info['item_url']);
					$('#J_click_url').val(info['click_url']);
					$('#J_pic_url').val(info['pic_url']);
					$('#J_pic_urls').val(info['pic_urls']);
                    $('#J_title').val(info['title']);
					$('#J_tags').val(info['tags']);
                    $('#J_pic_url_img').attr('src',info['pic_url']);     
					$('#J_pic_urls_img').attr('src',info['pic_urls']); 
                    $('#J_volume').val(info['volume']);					
					$('#coupon_rate').val(info['coupon_rate']);
                    $('#J_price').val(info['price']);
                    $('#orig_id').val(info['orig_id']);
					$("#coupon_price").val(info['coupon_price']);
					$("#J_gettags").trigger('click');					
					$("#J_nick").val(info['nick']);
					$("#J_inventory").val(info['inventory']);
					$("#J_like").val(info['like']);
					$("#J_commission_rate").val(info['commission_rate']);
					$("#J_commission").val(info['commission']);
					$("#J_coupon_price").val(info['coupon_price']);
					$("#J_sellerId").val(info['sellerId']);
					//alert(info['desc']);
					ue.setContent(info['desc']);
					$("#J_cu").val(info['cu']);
					$("#J_intro").val(info['intro']);										
					$("#J_nicker").val(info['nicker']);
					$("#J_feedback").val(info['feedback']);	
					$("#J_headPic").val(info['headPic']);
					$('#J_headPic_img').attr('src',info['headPic']);										
					$("#J_nicker1").val(info['nicker1']);
					$("#J_feedback1").val(info['feedback1']);
					$("#J_headPic1").val(info['headPic1']);
					$('#J_headPic1_img').attr('src',info['headPic1']);
					$("#J_feedback2").val(info['feedback2']);					
					$("#J_nicker2").val(info['nicker2']);
					$("#J_headPic2").val(info['headPic2']);
					$('#J_headPic2_img').attr('src',info['headPic2']);
					$("#J_feedback3").val(info['feedback3']);					
					$("#J_nicker3").val(info['nicker3']);
					$("#J_headPic3").val(info['headPic3']);
					$('#J_headPic3_img').attr('src',info['headPic3']);
					$("#J_feedback4").val(info['feedback4']);					
					$("#J_nicker4").val(info['nicker4']);
					$("#J_headPic4").val(info['headPic4']);
					$('#J_headPic4_img').attr('src',info['headPic4']);
					
                }else
                {
                    $.ftxia.tip({icon:'alert',content:data.msg});
                }
            });
			
			
		});

});
$(function() {    
	//自动获取标签	
	$('#J_get_info').live('click', function() {
		var url = $.trim($('#good_link').val());
		if(url == ''){
			$.ftxia.tip({content:lang.article_title_isempty, icon:'alert'});
			return false;
		}
		$.getJSON('{:U("youhuiquan/ajax_getid")}', {url:url}, function(result){
			if(result.status == 1){
				$('#J_num_iid').val(result.data);				
			}else{
				$.ftxia.tip({content:result.msg});
			}
		});
	});	
});
</script>
 <script language="javascript" type="text/javascript">
	                       /* Calendar.setup({
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });*/
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
</body>
</html>