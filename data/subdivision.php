<?php
#登陆页面
#接收从前端传递过来的数据 subdivision
header('Content-Type: application/json;charset=UTF-8');
@$subdivision=$_REQUEST["subdivision"];
if(!$subdivision){
	$subdivision="连衣裙";
}
$output=["data"=>0];
require("init.php");
$sql="SELECT title,price,price_fall,img,synopsis FROM mg_laptop WHERE subdivision='$subdivision'";
$result=mysqli_query($conn,$sql);
//从数据库中抓取账户
$output["data"]=mysqli_fetch_All($result,MYSQLI_ASSOC);
//读取内容
if($output==null){
	echo "404";
}else{
	echo json_encode($output);
}
