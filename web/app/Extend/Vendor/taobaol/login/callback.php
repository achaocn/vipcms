<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/5/12
 * Time: 17:01
 */
session_start();
header("Content-type:text/html; charset=UTF-8;");
require_once('config.php');

echo $_SESSION["tb_state"]."<br/>";

if(!isset($_GET["state"]) || empty($_GET["state"]) || !isset($_GET["code"]) || empty($_GET["code"])) {
    echo "请求非法或超时!&nbsp;&nbsp;<a href='/index.php'>返回首页</a>";
    exit;
} else {
    //参数验证
    if($_GET["state"] != $_SESSION["tb_state"]) {
        //echo "网站获取用于第三方应用防止CSRF攻击失败。";
        echo "请求非法或超时!&nbsp;&nbsp;<a href='/index.php'>返回首页</a>";
        exit;
    }

    // 通过访问https://oauth.taobao.com/authorize获取code
    $code = $_GET["code"];

    // 请求参数
    $postfields = array (
        'grant_type' => "authorization_code",
        'client_id' => tb_appid,
        'client_secret' => tb_appkey,
        'code' => $code,
        'redirect_uri' => tb_callback_url
    );

    $url = 'https://oauth.taobao.com/token';

    $token = json_decode ( curl ( $url, $postfields ) );
	echo "<pre>";
	var_dump($token);
	echo "</pre>";
	exit();
    $access_token = $token->access_token;
    $_SESSION['tb_access_token'] = $access_token;

    //保存用户信息
    /*$user_info['user_id'] = $token -> taobao_user_id;
    $user_info['user_name'] = $token -> taobao_user_nick;
    $user_info['user_domain'] = "";
    $user_info['user_profile'] = "";
    $user_info['user_token'] = $token -> access_token;
    $user_info['user_type'] = "taobao";
    $_SESSION['user_info'] = $user_info;*/

    $uname = $token -> taobao_user_nick;
    $openid = $token -> taobao_user_id;
    $sign = md5($uname.$openid.substr($openid, 2, 4));

    $go_url = "/member/oauthreg/?uname=".$uname."&openid=".$openid."&sign=".$sign;
//	$go_url = "https://www.baidu.com/";

    echo $_SESSION["tb_state"];
    //header("location:".$go_url);
}

//POST请求函数
function curl($url, $postFields = null)
{
    $ch = curl_init ();
    curl_setopt ( $ch, CURLOPT_URL, $url );
    curl_setopt ( $ch, CURLOPT_FAILONERROR, false );
    curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, true );

    if (is_array ( $postFields ) && 0 < count ( $postFields )) {
        $postBodyString = "";
        foreach ( $postFields as $k => $v ) {
            $postBodyString .= "$k=" . urlencode ( $v ) . "&";
        }
        unset ( $k, $v );
        curl_setopt ( $ch, CURLOPT_SSL_VERIFYPEER, 0 );
        curl_setopt ( $ch, CURLOPT_SSL_VERIFYHOST, 0 );
        curl_setopt ( $ch, CURLOPT_POST, true );
        curl_setopt ( $ch, CURLOPT_POSTFIELDS, substr ( $postBodyString, 0, - 1 ) );
    }
    $reponse = curl_exec ( $ch );
    if (curl_errno ( $ch )) {
        throw new Exception ( curl_error ( $ch ), 0 );
    } else {
        $httpStatusCode = curl_getinfo ( $ch, CURLINFO_HTTP_CODE );
        if (200 !== $httpStatusCode) {
            throw new Exception ( $reponse, $httpStatusCode );
        }
    }
    curl_close ( $ch );
    return $reponse;
}