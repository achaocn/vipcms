<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
<div class="big">
	<include file='public:header'/>
	<!--地址提示-->
      <div class="prompt">
          <div class="proImg"><img src="__STATIC__/tkjidicms/wap/img/add/por.png"></div>
          <p>只能设置<span>1个</span>收货地址哦!
          </p>
      </div>
		
			<!--联系人地址-->
			<div class="add">
            	
                <empty name="addressinfo">
                <div class="none">暂无收货地址</div>
				<div class="reladd" style="display:none">
                <else />
                <div class="reladd" style="display:block">
                </empty>
					<div class="top">
						<div class="frist">
							<p class="addName">{$addressinfo.realname}</p>
							<p class="addNum">{$addressinfo.mobile}</p>
						</div>
						<div class="addtext"><span>{$addressinfo.province}</span>省<span>{$addressinfo.city}</span>市<span>{$addressinfo.area}</span><span>{$addressinfo.address}</span></div>
					</div>
					<div class="bottom">
						<div class="moRen"></div>
						<p class="moRenText">默认地址</p>
						<div class="editor">
							<div class="edImg">
								<img src="__STATIC__/tkjidicms/wap/img/add/edImg.png" />
							</div>
							<p>编辑</p>
						</div>
					</div>
				</div>
                
				<!--新增收件人-->
				<div class="new">
                	<input type="hidden" name="addressid" id="addressid" value="0" />
 					<div class="newName">
						<p>新增收件人信息</p>
						<span><img src="__STATIC__/tkjidicms/wap/img/login/close.png" ></span>
					</div>
					<div class="box"><input id="people" type="text" placeholder="收货人" value="" /></div>
					<div class="box"><input id="phoneNum" type="tel" placeholder="联系电话" value="" /></div>
					<input type="text" readonly placeholder="Click me to pick an address" id="myAddrs" name="addr" data-key="3-73-1142" value="所选地区" />
                    <input type="hidden" id="province" value="" />
                    <input type="hidden" id="city" value="" />
                    <input type="hidden" id="area" value="" />

					<input class="xiangxi" type="" placeholder="请填写详细地址，不少于5个字"  value="" />
				</div>
				<!--保存按钮-->
				<div class="save">
					<a href="#">保存</a>
				</div>
			</div>	
            <empty name="addressinfo">
			<div class="newBtn">新增收货地址</div>
            </empty>
		</div>
		<script>
				
		   var text;
			$(function() {
		        /**
		         * 通过数组id获取地址列表数组
		         *
		         * @param {Number} id
		         * @return {Array} 
		         */ 
		        function getAddrsArrayById(id) {
		            var results = [];
		            if (addr_arr[id] != undefined)
		                addr_arr[id].forEach(function(subArr) {
		                    results.push({
		                        key: subArr[0],
		                        val: subArr[1]
		                    });
		                });
		            else {
		                return;
		            }
		            return results;
		        }
		        /**
		         * 通过开始的key获取开始时应该选中开始数组中哪个元素
		         *
		         * @param {Array} StartArr
		         * @param {Number|String} key
		         * @return {Number} 
		         */         
		        function getStartIndexByKeyFromStartArr(startArr, key) {
		            var result = 0;
		            if (startArr != undefined)
		                startArr.forEach(function(obj, index) {
		                    if (obj.key == key) {
		                        result = index;
		                        return false;
		                    }
		                });
		            return result;
		        }
		
		        //bind the click event for 'input' element
		        $("#myAddrs").click(function() {
		            var PROVINCES = [],
		                startCities = [],
		                startDists = [];
		            //Province data，shall never change.
		            addr_arr[0].forEach(function(prov) {
		                PROVINCES.push({
		                    key: prov[0],
		                    val: prov[1]
		                });
		            });
		            //init other data.
		            var $input = $(this),
		                dataKey = $input.attr("data-key"),
		                provKey = 1, //default province 北京
		                cityKey = 36, //default city 北京
		                distKey = 37, //default district 北京东城区
		                distStartIndex = 0, //default 0
		                cityStartIndex = 0, //default 0
		                provStartIndex = 0; //default 0
		
		            if (dataKey != "" && dataKey != undefined) {
		                var sArr = dataKey.split("-");
		                if (sArr.length == 3) {
		                    provKey = sArr[0];
		                    cityKey = sArr[1];
		                    distKey = sArr[2];
		
		                } else if (sArr.length == 2) { //such as 台湾，香港 and the like.
		                    provKey = sArr[0];
		                    cityKey = sArr[1];
		                }
		                startCities = getAddrsArrayById(provKey);
		                startDists = getAddrsArrayById(cityKey);
		                provStartIndex = getStartIndexByKeyFromStartArr(PROVINCES, provKey);
		                cityStartIndex = getStartIndexByKeyFromStartArr(startCities, cityKey);
		                distStartIndex = getStartIndexByKeyFromStartArr(startDists, distKey);
		            }
		            var navArr = [{
		                title: "省",
		                id: "scs_items_prov"
		            }, {
		                title: "市",
		                id: "scs_items_city"
		            }, {
		                title: "区",
		                id: "scs_items_dist"
		            }];
		            //获得省市区text
		            SCS.init({
		                navArr: navArr,
		                onOk: function(selectedKey, selectedValue) {
		                    text=$input.val(selectedValue).attr("data-key", selectedKey)[0].value;							
		                    console.log(selectedKey);
							var text1=text.split(" ");
							console.log(text1)
							$("#province").val(text1[0].replace("省",""));
							$("#city").val(text1[1].replace("市",""));
							$("#area").val(text1[2]);
		                    $(".addtext span").eq(0).html(text1[0]);
							$(".addtext span").eq(1).html(text1[1]);
							$(".addtext span").eq(2).html(text1[2]);
							//console.log(text1[1])
		                }	                
		            });
		            var distScroller = new SCS.scrollCascadeSelect({
		                el: "#" + navArr[2].id,
		                dataArr: startDists,
		                startIndex: distStartIndex
		            });
		            var cityScroller = new SCS.scrollCascadeSelect({
		                el: "#" + navArr[1].id,
		                dataArr: startCities,
		                startIndex: cityStartIndex,
		                onChange: function(selectedItem, selectedIndex) {
		                    distScroller.render(getAddrsArrayById(selectedItem.key), 0); //re-render distScroller when cityScroller change
		                }
		            });
		            var provScroller = new SCS.scrollCascadeSelect({
		                el: "#" + navArr[0].id,
		                dataArr: PROVINCES,
		                startIndex: provStartIndex,
		                onChange: function(selectedItem, selectedIndex) { //re-render both cityScroller and distScroller when provScroller change
		                    cityScroller.render(getAddrsArrayById(selectedItem.key), 0);
		                    distScroller.render(getAddrsArrayById(cityScroller.getSelectedItem().key), 0);
		                }
		            });
		        });
		    });
			$(".shadow").hide()
			var FTXIAER = {
			 root: "__ROOT__",
			 site: "{:C('ftx_site_url')}",
			 uid: "{$visitor['id']}", 
			 loginurl:"{:U('user/login')}",
			 userurl:"{:U('user/index')}",
			 username:"{$visitor['username']}",
			 face:"{:avatar($visitor['id'], 64)}",
			 url:{}
			}
			
			
			/*验证用户名*/
			var flag1=true;
			$("#people").blur(function(){
				var a=$(this).val();
				if(a.length>=16){
					alert("收货人姓名过长");
					flag1=false;
				}else{
					flag1=true;
				}
			})
			/*验证手机号*/
			var myreg = /^1[3458]\d{9}$/;
			var flag2=true;
			$("#phoneNum").blur(function(){
				var inpVal = this.value;
				if (!myreg.exec(inpVal)){
					alert('请输入正确的手机号');
					flag2=false;
				}else{
					flag2=true;
				}
			})
			
			/*默认地址选择*/
			//var flag1=false; 	
			/*$(".moRen").click(function(){
				if(flag1){
					$(".moRen").css({"background":"url(img/add/moren.png)","background-size":"cover"})
					//flag1=false;
				}else{
					$(".moRen").css("background","#e8e8e8");
					//flag1=true
				}
			})*/
			var userID;
			/*判断userID*/
			if(userID){
				
			}else{
				/*添加地址按钮*/
				var newName=$("#people").val();
				var newphoneNum=$("#phoneNum").val();
				//var 
				$(".newBtn").click(function(){
					$("#people").val("");
					$("#phoneNum").val("");
					$("#myAddrs").val("所选地区");
					$(".xiangxi").val("");
					$(".none").hide();
					$(".new").show();
					$(".save").show();
					$(this).hide();
				})
			}
			/*保存按钮*/
			
			$(".save a").click(function(){
				
				var people=$("#people").val();
				var phoneNum=$("#phoneNum").val();
				var place=$("#myAddrs").val();
				var xiangxi=$(".xiangxi").val();
				
				var str="script";
				var regExp=/.*script.*/gi
				if(regExp.test(xiangxi))
				{
					alert("输入的详细地址有误");
					return false;
				}
				
				var province=$("#province").val();
				var city=$("#city").val();
				var area=$("#area").val();
				var address_id=$("#address_id").val();
				
				if(people!="" && phoneNum!="" && place!="" &&xiangxi!="" && flag1 && flag2){
					var Add1=place
					var allAdd=Add1+xiangxi+"";
					$(".addName").html(people);
					$(".addNum").html(phoneNum);					
					$(".addtext span").eq(0).html(province);
					$(".addtext span").eq(1).html(city);
					$(".addtext span").eq(2).html(area);
					$(".addtext span").eq(3).html(xiangxi);
					
					$(".reladd").show();
					$(".new").hide();
					$(this).parent().hide();
					 $.ajax({
						 type: "post",
						 url: "{:U('user/addresslist')}",
						 data: {addressid:$("#addressid").val(), realname:people,mobile:phoneNum,address:xiangxi,cho_Province:province,cho_City:city,cho_Area:area},
						 dataType: "json",
						 async:false,
						 success: function(data){
							if(data.status==1)
							{
								
								/*var people=$("#people").val();
								var phoneNum=$("#phoneNum").val();
								var place=$("#myAddrs").val();
								var xiangxi=$(".xiangxi").val();
								
									var Add1=$(".addtext").html()
									var allAdd=Add1+xiangxi+""
									$(".addName").html(people);
									$(".addNum").html(phoneNum);					
									$(".addtext").html(allAdd);
									$(".reladd").show();
									$(".new").hide();
									$(this).parent().hide();*/
							}
							
						 }
					 });
					
					
					
				}else{
					alert("请输入有效地址");
					return false;
				}
				
				
			})
			/*关闭新增地址*/
			$(".newName span").click(function(){
				$(".new").hide();
				$(".save").hide();
				if($(".reladd").css("display")=="block"){
					console.log("a")
				}else{
					$(".none").show();
					$(".newBtn").show()
				}
			})
			/*编辑地址*/
			$(".editor").click(function(){
				$(".new").show();
				$(".save").show();
				$("#addressid").val(1);
				$(".newName p").html("编辑收货人信息")
				$("#people").val($(".addName").html());
				$("#phoneNum").val($(".addNum").html());
				$("#myAddrs").val($(".addtext span").eq(0).html()+"省"+$(".addtext span").eq(1).html()+"市"+$(".addtext span").eq(2).html());
				console.log($(".addtext span").eq(0).html())
				$("#province").val($(".addtext span").eq(0).html());
				$("#city").val($(".addtext span").eq(1).html());
				$("#area").val($(".addtext span").eq(2).html());
				$(".xiangxi").val($(".addtext span").eq(3).html());
				
				var ishave=$("#province").val().length;
				if(ishave>0)
				{
					var count1;
					var count2;
					var count3;
					var sheng=$("#province").val();
					var shi=$("#city").val();
					var qu=$("#area").val();
					for(var i=0;i<addr_arr[0].length;i++){
						var $sheng=addr_arr[0][i][1]
						if($sheng.indexOf(sheng)>-1){
							count1=addr_arr[0][i][0];
							break;
						}
					}
					//console.log(count1)
					for(var i=0;i<addr_arr[count1].length;i++){
						var $shi=addr_arr[count1][i][1]
						if($shi.indexOf(shi)>-1){
							count2=addr_arr[count1][i][0]
						}
					}
					//console.log(count2)
					for(var i=0;i<addr_arr[count2].length;i++){
						var $qu=addr_arr[count2][i][1]
						if($qu.indexOf(qu)>-1){
							count3=addr_arr[count2][i][0]
						}
					}
					$("#myAddrs").attr('data-key',count1+"-"+count2+"-"+count3)
					//console.log(count1+" "+count2+" "+count3)
				}
				
				
			})
		
		</script>
	</body>
</html>

