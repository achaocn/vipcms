<?php
/**
 * 淘宝回调地址，及回传数据处理!
 */
session_start();
require_once('config.class.php');

class tbInfo{

    //获取淘宝用户信息
    public function userInfo(){

        if(!isset($_GET["state"]) || empty($_GET["state"]) || !isset($_GET["code"]) || empty($_GET["code"])){
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

            $tb_config = new config();

            // 请求参数
            $postfields = array (
                'grant_type' => "authorization_code",
                'client_id' => $tb_config->tb_appid,
                'client_secret' => $tb_config->tb_appkey,
                'code' => $code,
                'redirect_uri' => $tb_config->tb_callback_url
            );

            $url = 'https://oauth.taobao.com/token';
            $token = json_decode($this->curl($url, $postfields));

            $go_url = 'http://'.$_SERVER['HTTP_HOST'].'/taobao/tb_userInfo/username/'.urldecode($token->taobao_user_nick).'/third_uid/'.$token->open_uid;

            header("location:".$go_url);
        }
    }

    public function curl($url, $postFields = null){
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
}

$taobao = new tbInfo();
$taobao->userInfo();