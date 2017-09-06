<!DOCTYPE html>
<html lang="en">
<head>

<include file="public:head_user" />
<style>
	#city{
		padding-top: 8px;
	}
	#city select{
		outline: none;
		width: 230px;
		height: 36px;
		display: inline-block;
		border: 1px solid #E8E8E8;
		border-radius: 4px;
		line-height: 36px;
	}
	#city select option{
		outline: none;
	}
</style>
</head>
<body>
	<include file="public:toper" />
    <include file="public:header_user" />
    
    <div class="c_center">
    	<include file="user/left" />
        
        <div class="cen_right">
            <include file="user/top" />
            <div class="r_bottom">
                <div class="a_descrip">
                    说明：此收货地址用于奖品兑换成功后邮寄奖品
                </div>
                <notempty name="addressinfo">
                <div class="a_now">
                    当前地址：<span class="a_s">{$addressinfo.province}</span>省<span class="a_c">{$addressinfo.city}</span>市<span class="a_l">{$addressinfo.area}</span><span class="a_d">{$addressinfo.address}</span>，姓名：<span class="a_name">{$addressinfo.realname}</span>，电话：<span class="a_phone">{$addressinfo.mobile}</span>
                    <a href="javascript:;">修改</a>
                </div>
                </notempty>
                <form class="a_form" action="{:U('user/addresslist')}" method="post" id="editform" onSubmit="return check(this);">
                    <label class="label" for="">收货人：</label>
                    <input class="a_input a_name0" type="text" placeholder="填写收货人姓名" name="realname"><br>
                    <label class="label" for="">手机号码：</label>
                    <input class="a_input a_phone0" type="text" placeholder="填写收货人手机号" name="mobile"><br>
                    
                    <div class="infolist">
                        <label class="a_label" for="">所在地区：</label>
                        <div id="city">
                            <select class="prov" name="cho_Province"></select> 
                            <select class="city" disabled="disabled" name="cho_City"></select>
                            <select class="dist" disabled="disabled" name="cho_Area"></select>
                        </div>
                    </div><br>
                    
                    <!--<div class="infolist">
                        <label class="a_label" for="">所在地区：</label>
                        <div class="liststyle">
                            <span id="Province">
                                <i>请选择省份</i>
                                <ul>
                                    <li><a href="javascript:void(0)" alt="请选择省份">请选择省份</a></li>
                                </ul>
                                <input type="hidden" name="cho_Province" value="">
                            </span>
                            <span id="City">
                                <i>请选择城市</i>
                                <ul>
                                    <li><a href="javascript:void(0)" alt="请选择城市">请选择城市</a></li>
                                </ul>
                                <input type="hidden" name="cho_City" value="">
                            </span>
                            <span id="Area">
                                <i>请选择地区</i>
                                <ul>
                                    <li><a href="javascript:void(0)" alt="请选择地区">请选择地区</a></li>
                                </ul>
                                <input type="hidden" name="cho_Area" value="">
                            </span>
                        </div>
                    </div><br>-->
                    <label style="margin-top:-5px" class="label" for="">街道地址：</label>
                    <input class="detail_a" type="text" placeholder="建议您如实填写详细收货地址，例如街道名称，门牌号码，楼层和房间号等信息" name="address"><br>
                    <input type="hidden" name="addressid" value="" id="addressid" />
                    <input class="a_submit" type="submit" value="保存">
                </form>
            </div>
        </div>
    </div>
    
    <include file="public:footer_user" />
    
</body>

<script src="__STATIC__/tkjidicms/js/jquery.cityselect.js"></script>
<script>
function check(i) {

    var $realname=i.realname.value;
    var $mobile=i.mobile.value;
	
    var $cho_Province=i.cho_Province.value;
	
	var $cho_City=i.cho_City.value;
	var $cho_Area=i.cho_Area.value;
	var $address=i.address.value;
	
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
	if(($cho_Area==""||$cho_Area=="请选择地区")&&$cho_Province!="北京"&&$cho_Province!="天津"&&$cho_Province!="上海"&&$cho_Province!="重庆"&&$cho_Province!="香港"&&$cho_Province!="澳门"&&$cho_Province!="台湾"){
        alert("请选择地区");
        return false;
    }
	if($address==""){
        alert("请填写详细街道地址");
        return false;
    }
	return true;
	
}
$(function() {
    $(".a_now a").click(function() {
        $(".a_name0").val($(".a_name").text());
        $(".a_phone0").val($(".a_phone").text());
        /*$("#Province i").text($(".a_s").text());
        $("#City i").text($(".a_c").text());
        $("#Area i").text($(".a_l").text());
        $("input[name='cho_Province']").val($(".a_s").text());
        $("input[name='cho_City']").val($(".a_c").text());
        $("input[name='cho_Area']").val($(".a_l").text());*/
        $(".detail_a").val($(".a_d").text());
		
		var a=$(".a_s").text();
        var b=$(".a_c").text();
        var c=$(".a_l").text();
		$("#addressid").val(1);
        $("#city").citySelect({
            prov:a, 
            city:b,
            dist:c,
            nodata:"none"
        });
		
		
    })
	 $("#city").citySelect({
        required:false,
		 nodata:"none"
    }); 
})
</script>

</html>
