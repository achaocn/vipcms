<?php
/**
 * 淘宝自定义登录接口
 */
session_start();
require_once('config.class.php');

class login{
	
	public function tb_login(){
		$state = time();
		$_SESSION["tb_state"] = $state;

		// 保存来路URL，最后将返回
		// $back_url = empty($_GET['callback']) ? "/index.php":$_GET['callback'];
		// $_SESSION["back_url"] = $back_url;

		$tb_config = new config();
		$ret_url = $this->get_auth_url($state, $tb_config->tb_appid, $tb_config->tb_callback_url);
		header("location:".$ret_url);
	}

	//配置url路径
	public function get_auth_url($state, $appId, $callBackUrl){

		//	$url= https://oauth.taobao.com/authorize?response_type=code&client_id=21234035&redirect_uri=http://www.zocms.com/oauthLogin.php&state=1

		$url= "https://oauth.taobao.com/authorize";

		$params = array(

			"response_type"	=>	"code",
			"client_id"		=>	$appId,
			"redirect_uri"	=>	$callBackUrl,
			"state"			=>	$state

		);

		$get = array();

		foreach($params as $key=>$val){
			$get[] = $key."=".urlencode($val);
		}

		return $url."?".join("&", $get);
	}

}
