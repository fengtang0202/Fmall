<?php
header('Content-Type: application/json;charset=UTF-8');
@$description=$_REQUEST["description"];
require_once("init.php");
@$pno=$_REQUEST["pno"];
if(!$pno){
    $pno=1;
}else{
    $pno=intval($pno);
}
$pageSize=8;
$output=["recodeCount"=>0,"pageCount"=>0,"pno"=>$pno,"data"=>null,"pageSize"=>$pageSize];

$start = ($output["pno"]-1)*$output["pageSize"];
$count = $output["pageSize"];
$sql="SELECT count(*) FROM mg_laptop WHERE description='$description' " ;
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_row($result);
$output["recodeCount"]=$rows[0];
$output["pageCount"]=ceil($rows[0]/$pageSize);

$sql=" SELECT title,price,price_fall,img ";
$sql.=" FROM mg_laptop WHERE description='$description' LIMIT $start,$count";
$result=mysqli_query($conn,$sql);
$output["data"]=mysqli_fetch_all($result,MYSQLI_ASSOC);

if($output==null){
	echo "404";
}else{
	echo json_encode($output);
}

?>