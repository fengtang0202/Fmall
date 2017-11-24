<?php
//根据 shop_uname查询 数据库mg_user_shop中的所有内容
	header('Content-Type: application/json;charset=UTF-8');
	require_once("init.php");
	@$uname=$_REQUEST["shop_name"];
	
    //读取商品ID的详细信息	
	$sql="SELECT *  FROM mg_user_shop WHERE shop_name='$uname' AND type=0 ORDER BY id DESC";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_all($result,MYSQLI_ASSOC);
	echo json_encode($row);
?>