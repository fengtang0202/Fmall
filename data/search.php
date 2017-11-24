<?php
  header("Content-Type:application/json;charset=utf-8");
  require_once("init.php");
  $kw=$_REQUEST["kw"];
  $sql="SELECT * FROM mg_laptop WHERE subdivision LIKE '%$kw%'";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
  if($row==false){
	echo "404";
  }else{
	echo json_encode($row);
  }
 
?>