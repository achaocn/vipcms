<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>淘客基地vipcms</title>
<style>
tr,td,div{background:#FFF; height:40px; line-height:40px; font-size:14px; font-family:"微软雅黑"}
td{padding-left:10px;}
#button{width:120px; margin-top:5px; background:#0099FF; color:#FFF; font-weight:bold; border-radius:5px; height:25px; border:none}
.input{margin-top:0px; height:25px; line-height:24px; border:#0099FF; width:200px; border-radius:5px; border:#CCC 1px solid;}
div{width:200px; height:200px; line-height:200px; margin:0 auto; text-align:center; font-size:24px; color:#0099FF; font-weight:bold;}
p{width:500px; font-size:12px; margin:0 auto; text-align:left; padding-top:10px;}
</style>
<script src="http://cmspic.judacdn.com/tkjidicms/cms/js/jquery-1.9.1.js"></script>
</head>

<body>
<?php
header("Content-type:text/html;charset=utf-8");


if (is_file('./data/install.lock')) 
{
	header('Location: ./index.php');
	exit;
} 

if($_POST)
{
	if(empty($_POST['database_ip'])||empty($_POST['database_user'])||empty($_POST['database_pwd'])||empty($_POST['database_name']))
	{
		echo "信息错误";
		exit;
	}
	$database="<?php return array (
  'DB_HOST' => '".$_POST['database_ip']."',
  'DB_NAME' => '".$_POST['database_name']."',
  'DB_USER' => '".$_POST['database_user']."',
  'DB_PWD' => '".$_POST['database_pwd']."',
  'DB_PORT' => '3306',
  'DB_PREFIX' => 'tkjd_',
); ?>";
	
	$link=@mysql_connect($_POST['database_ip'],$_POST['database_user'],$_POST['database_pwd']); 
	
	if(!$link)
	{
		echo "FAILD!连接错误，用户名密码不对"; 
	}
	else
	{

		  file_put_contents('./data/config/db.php',$database);
		  $db_selected = @mysql_select_db($_POST['database_name']);
		  
		  //mysql_query("set names utf8"); 
			if(!$db_selected)  //不存在
			{
				$sql = "CREATE DATABASE ".$_POST['database_name'];
				$con=@mysqli_connect($_POST['database_ip'],$_POST['database_user'],$_POST['database_pwd']); 
			if (mysqli_query($con, $sql))
			{
				$_mysqli = new mysqli($_POST['database_ip'],$_POST['database_user'],$_POST['database_pwd']);
				$_mysqli->query("SET NAMES utf8");
				$sqlpath = './data/vipcms.sql';
				$sqlstr = file($sqlpath);
				$sqlstr = str_replace('
	', '', implode('', $sqlstr));
				$sqlstr_arr = explode(";|", $sqlstr);
				$_mysqli->query("USE ".$_POST['database_name']);
				$count = count($sqlstr_arr);
				for ($i = 0; $i < $count; $i++) {
					$sqlstr_arr[$i] = trim($sqlstr_arr[$i], ' 
		;');
					if (!empty($sqlstr_arr[$i])) {
						$_mysqli->query($sqlstr_arr[$i].';');
						
					}
				}
				$_mysqli->close();
				$_mysqli = null;
				
				$counter_file='./data/install.lock';
				$fopen = fopen($counter_file,'wb'); 
				
				echo "<script>alert('配置完成')</script>";
				header('Location: index.php');
			}
			else
			{
			echo "创建失败";
			}
			///////////////////////////////
		  }
		  else
		  {
			  /////////////
			    $_mysqli = new mysqli($_POST['database_ip'],$_POST['database_user'],$_POST['database_pwd']);
				$_mysqli->query("SET NAMES utf8");
				$sqlpath = './data/vipcms.sql';
				$sqlstr = file($sqlpath);
				$sqlstr = str_replace('
	', '', implode('', $sqlstr));
				$sqlstr_arr = explode(";|", $sqlstr);
				$_mysqli->query("USE ".$_POST['database_name']);
				
				$count = count($sqlstr_arr);
				for ($i = 0; $i < $count; $i++) {
					$sqlstr_arr[$i] = trim($sqlstr_arr[$i], ' 
		;');
					if (!empty($sqlstr_arr[$i])) {
						
						$_mysqli->query($sqlstr_arr[$i].';');
						
					}
				}
				$_mysqli->close();
				$_mysqli = null;
				
				$counter_file='./data/install.lock';
				$fopen = fopen($counter_file,'wb'); 
				
				echo "<script>alert('配置完成')</script>";
				header('Location: index.php');
			  ////////////////
		  }
		
		
	}
	
}
?>

<div>淘客基地vipcms</div>
<table width="500" border="0" cellpadding="0" cellspacing="1" bgcolor="#0099FF" style="margin:0 auto;">
  <form id="form1" name="form1" method="post" action="">
  <tr>
    <td width="155">数据库地址：</td>
    <td width="342"><input class="input" type="text" name="database_ip" id="database_ip" value="localhost" /></td>
  </tr>
  <tr>
    <td>数据库用户名：</td>
    <td><input class="input" type="text" name="database_user" id="database_user" value="root" /></td>
  </tr>
  <tr>
    <td>数据库密码：</td>
    <td><input class="input" type="password" name="database_pwd" id="database_pwd" value="" /></td>
  </tr>
  <tr>
    <td>数据库名字：</td>
    <td><input class="input" type="text" name="database_name" id="database_name" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center" ><input type="submit" name="button" id="button" value="配置数据库" /></td>
  </tr>
  </form>
</table>
<p>注意：数据库名字不要填写中文</p>
<script>
	$("#button").click(function(){
		if($("#database_ip").val()==""||$("#database_user").val()==""||$("#database_pwd").val()==""||$("#database_name").val()=="")
		{
			alert("请输入正确信息，不能为空");
			return false;
		}
		else
		{
			//$(this).attr('disabled',true);
			$(this).css('background','#ccc');
			$("p").html("请耐心等待一下...");
			return true;
		}
		
	})
</script>
</body>
</html>