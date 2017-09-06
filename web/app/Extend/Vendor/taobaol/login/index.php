<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/5/12
 * Time: 16:59
 */
session_start();
require_once('config.php');

//保存时间请求参数
$state = time();
$_SESSION["tb_state"] = $state;
$ret_url = get_auth_url($state);
//$ret_url = "http://192.168.1.112/b.php";

//保存来路URL，最后将返回
$back_url = empty($_GET['callback']) ? "/index.php":$_GET['callback'];
$_SESSION["back_url"] = $back_url;

//header("location:".$ret_url);
echo "<script language='javascript' type='text/javascript'>window.location.href='".$ret_url."';</script>";

//配置url路径
function get_auth_url($state){
	//	$url= https://oauth.taobao.com/authorize?response_type=code&client_id=21234035&redirect_uri=http://www.zocms.com/oauthLogin.php&state=1
	$url= "https://oauth.taobao.com/authorize";
	$params = array(
		"response_type"	=>	"code",
		"client_id"		=>	tb_appid,
		"redirect_uri"	=>	tb_callback_url,
		"state"			=>	$state
	);
	$get = array();
	foreach($params as $key=>$val){
		$get[] = $key."=".urlencode($val);
	}
//	die(join("&", $get));
	return $url."?".join("&", $get);
}