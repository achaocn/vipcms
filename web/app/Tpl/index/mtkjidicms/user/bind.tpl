<!DOCTYPE html>
<html>
<head>
   <include file='public:head'/> 
</head>
<body>
	<div class="big">
    	<include file='public:header'/>
    <!--列表-->
      <ul class="center">
      	<notempty name="oauth_list">
      	 <volist name="oauth_list" key="k" id="val">
        
         <if condition="$val.isbind eq 1">
         <a href="{:U('oauth/index', array('type'=>'unbind', 'mod'=>$val['code']))}" onclick='return confirm("确定取消绑定?")'>
          <li>
              <div class="cn-img"><img src="/static/jwap/images/wap_{$val.code}.png"></div>
              <p>{$val.name}</p>
              
              <div class="centerRight">
                  <input type="checkbox" checked="checked" name="sex" id="male{$k}" class="chooseBtn" onClick="alert('确定取消绑定?'); window.location.href='{:U('oauth/index', array('type'=>'unbind', 'mod'=>$val['code']))}'" />
                  <label for="male{$k}" class="choose-label"></label>
              </div>	
             			
          </li>
           </a>	
          <else />
           <a href="{:U('oauth/index', array('type'=>'bind', 'mod'=>$val['code']))}">
          <li>
              <div class="cn-img"><img src="/static/jwap/images/wap_{$val.code}.png"></div>
              <p>{$val.name}</p>
             
              <div class="centerRight">
                  <input type="checkbox"  name="sex" id="male{$k}" class="chooseBtn" onClick="window.location.href='{:U('oauth/index', array('type'=>'bind', 'mod'=>$val['code']))}'" />
                  <label for="male{$k}" class="choose-label"></label>
              </div>	
             	
          </li>
           </a>			
          </if>
          </volist>	
          <else />
          <br /><br /><center>对不起，此功能暂未开放，敬请期待!</center><br /><br /><br />
          </notempty>	
      </ul>
  </div>
		
	</body>
</html>