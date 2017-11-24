<?php
	header('Content-Type: application/json;charset=UTF-8');
	require_once("init.php");
	@$img=$_REQUEST["img"];
	$sql="SELECT sid  FROM mg_laptop WHERE img='$img'";
	$result=mysqli_query($conn,$sql);
	$row =mysqli_fetch_assoc($result);
	if($row==null){
		echo '{"sid":"-1"}';
	}else{
		echo json_encode($row);
	}

?>