<?php
/**
* 根据产品编号sid查询商品的所有信息
* 参数： sid
* 返回：{
*     "details":{ "title"..., "price"..., } 商品详情信息
*     "color_pic":{ 商品颜色图}
*	  'detail_pic':{商品详细图片}
*     'pic' :{商品穿衣效果图}
*  }
*/
	header('Content-Type: application/json;charset=UTF-8');
	require_once("init.php");
	@$sid=$_REQUEST["sid"];
	$output = [
	  'details'=>[],
	  'color_pic'=>[],
	  'detail_pic'=>[],
	  'pic'=>[]
	];
		if(!$sid){
			$sid=1;
		}
    //读取商品ID的详细信息,全文字	
	$sql="SELECT *  FROM mg_laptop WHERE sid=$sid";
	$result=mysqli_query($conn,$sql);
	$output['details']=mysqli_fetch_assoc($result);
	
	//读取商品所有颜色图片
	$sql="SELECT color,color_small_pic,color_big_pic  FROM mg_laptop_color_pic WHERE laptop_id=$sid";
	$result=mysqli_query($conn,$sql);
	$output['color_pic']=mysqli_fetch_all($result,MYSQLI_ASSOC);
	
	//读取商品详细所有颜色图片
	$sql="SELECT detail_big_pic,detail_small_pic FROM mg_laptop_detail_pic	WHERE laptop_id=$sid";
	$result=mysqli_query($conn,$sql);
	$output['detail_pic']=mysqli_fetch_all($result,MYSQLI_ASSOC);

	//读取商品所有穿衣效果图片
	$sql="SELECT pic FROM mg_laptop_pic	WHERE laptop_id=$sid";
	$result=mysqli_query($conn,$sql);
	$output['pic']=mysqli_fetch_all($result,MYSQLI_ASSOC);
	echo json_encode($output);
?>