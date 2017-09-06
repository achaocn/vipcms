<link rel=stylesheet type=text/css href="__STATIC__/tkjidicms/css/global.css" />
<div class="alert_duihuan">
<div class="alert_content">
	<div class="top_tips none jifen" style="display: block; ">本次兑换需花费 <em class="org exchange-num">{$item.score}</em> 个积分，您有积分 <em class="org">{$info.score}</em> 个</div>
    <form id="J_address_form" name="J_address_form" method="post" action="{:U('gift/address')}" onsubmit="return check(this)">
	<div class="address">
		<ul>
			<li>
				<div class="user">
					<label>兑换数量：</label>
					<input type="text" class="ddinput" style="width:100px;" value="1" name="num" tabindex="1">
				</div>
				<!--<div class="error-box">
					<label class="warn" style="display: none; ">最多兑换{$item.user_num}件</label>
					<label for="num" generated="true" class="error ok" style="">OK!</label>
				</div>-->
			</li>
            <notempty name="addressinfo">
			<li>
				<div class="user"><label>姓 名：</label>
				<input name="realname" type="text" id="realname" value="{:$addressinfo['realname']?$addressinfo['realname']:$info['realname']}" style="width:150px;" class="ddinput" readonly="readonly"/></div>
				<!--<div class="error-box">
					<label class="warn">您的真实姓名，收货姓名</label>
				</div>-->
			</li>
			<li>
				<div class="user"><label>手机号码：</label>
				<input name="mobile" type="text" id="mobile" value="{:$addressinfo['mobile']?$addressinfo['mobile']:$info['mobile']}" style="width:150px;" class="ddinput" readonly="readonly"/></div>
				<!--<div class="error-box">
					<label class="warn">您的手机号码，收货时联系</label>
				</div>-->
			</li>
			
			<li>
				<div class="user infolist"><label>所在地区：</label>
						<div class="infolist">
                        
                         <div id="city">
                           {:$addressinfo['province']}{:$addressinfo['city']}{:$addressinfo['area']}
                           <input name="cho_Province" type="hidden" value="{:$addressinfo['province']}" readonly="readonly" />
                           <input name="cho_City" type="hidden" value="{:$addressinfo['city']}" readonly="readonly" />
                           <input name="cho_Area" type="hidden" value="{:$addressinfo['area']}" readonly="readonly" />
                        </div>
                    </div>
               
				</div>
				
			</li>
			<li>
				<div class="user"><label>详细地址：</label>
				<input name="address" type="text" class="ddinput" style="width:300px;" value="{:$addressinfo['address']?$addressinfo['address']:$info['address']}" id="address" tabindex="7"  readonly="readonly">
				</div>
				<!--<div class="error-box">
					<label class="warn">请填写收货地址</label>
				</div>-->
			</li>
            <else />
            <li>
				<div class="user"><label>姓 名：</label>
				<input name="realname" type="text" id="realname" value="{:$addressinfo['realname']?$addressinfo['realname']:$info['realname']}" style="width:150px;" class="ddinput"/></div>
				<!--<div class="error-box">
					<label class="warn">您的真实姓名，收货姓名</label>
				</div>-->
			</li>
			<li>
				<div class="user"><label>手机号码：</label>
				<input name="mobile" type="text" id="mobile" value="{:$addressinfo['mobile']?$addressinfo['mobile']:$info['mobile']}" style="width:150px;" class="ddinput"/></div>
				<!--<div class="error-box">
					<label class="warn">您的手机号码，收货时联系</label>
				</div>-->
			</li>
			
			<li>
				<div class="user infolist"><label>所在地区：</label>
                	<div class="infolist">
                        
                        <div id="city">
                            <select class="prov" name="cho_Province"></select> 
                            <select class="city" disabled="disabled" name="cho_City"></select>
                            <select class="dist" disabled="disabled" name="cho_Area"></select>
                        </div>
                    </div>
				</div>
				
			</li>
			<li>
				<div class="user"><label>详细地址：</label>
				<input name="address" type="text" class="ddinput" style="width:300px;" value="{:$addressinfo['address']?$addressinfo['address']:$info['address']}" id="address" tabindex="7">
				</div>
				<!--<div class="error-box">
					<label class="warn">请填写收货地址</label>
				</div>-->
			</li>
            </notempty>
			<li>
				<input type="hidden" id="id" name="id" value="{$item.id}">
                <input type="hidden" id="addressid" name="addressid" value="{$addressinfo.id}">
				<input type="hidden" id="iid" name="iid" value="{$item.num_iid}">
				<input type="submit" class="smt smt1 fl ShiftClass" value="确认兑换" tabindex="9">
				<input type="button" class="smt smt2 fl smt_close " value="取消兑换" tabindex="10">
			</li>
		</ul>
	</div>
	</form>
</div>
</div>

<script src="__STATIC__/tkjidicms/js/jquery.cityselect.js"></script>
<script>

function check(i) {
	
    var $realname=i.realname.value;
    var $mobile=i.mobile.value;
	
    var $cho_Province=i.cho_Province.value;
	
	var $cho_City=i.cho_City.value;
	var $cho_Area=i.cho_Area.value;
	var $address=i.address.value;
	var $num=i.num.value;
	var maxnum="{$item.user_num}";
	if(!(/^[1-9]\d*$/.test($num)))
	 {
        alert("兑换数量为数字")
	   
        return false;
    }
	else
	{
		 if(parseInt($num)>parseInt(maxnum)||parseInt($num)<1)
		{
			alert("最多兑换"+maxnum+"件");
			return false;
		}
	}
	
	
    if($realname==""){
        alert("请输入收货人姓名");
        return false;
    }
	 if(!(/^1[3|4|5|8|6|7][0-9]\d{4,8}$/.test($mobile))){ 
        alert("请填写正确的手机号码"); 
      
        return false; 
    } 
    if($cho_Province==""||$cho_Province=="请选择省份"){
        alert("请选择省份");
        return false;
    }
	if($cho_City==""||$cho_City=="请选择城市"){
        alert("请选择城市");
        return false;
    }
	/*if($cho_Area==""||$cho_Area=="请选择地区"){
        alert("请选择地区");
        return false;
    }*/
	if($address==""){
        alert("请填写详细街道地址");
        return false;
    }
	
	
	return true;
	
}

$(function(){
	$('.smt_close').click(function(){
		 $.dialog.get('gift_address').close();
	});
	
	$("#city").citySelect({
        required:false,
		 nodata:"none"
    });
	
	/*$("#city").citySelect({
            prov:"{:$addressinfo['province']?$addressinfo['province']:""}", 
            city:"{:$addressinfo['city']?$addressinfo['city']:""}",
            dist:"{:$addressinfo['area']?$addressinfo['area']:""}",
            nodata:"none",
        });*/

});
</script>
