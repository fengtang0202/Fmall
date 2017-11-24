<?php
@$shop_name=$_REQUEST["shop_name"];
@$shop_id=$_REQUEST["shop_id"];
@$shop_color=$_REQUEST["shop_color"];
@$shop_img=$_REQUEST["shop_img"];
@$shop_size=$_REQUEST["shop_size"];
@$shop_title=$_REQUEST["shop_title"];
@$shop_price=$_REQUEST["shop_price"];

require("init.php");
$sql="INSERT INTO mg_user_shop(shop_name,shop_id,shop_color,shop_img,shop_size,shop_title,shop_price) VALUES('$shop_name','$shop_id','$shop_color','$shop_img','$shop_size','$shop_title','$shop_price')";
$result=mysqli_query($conn,$sql);
if($result==true){
    echo  "0";
}else{
    echo "1";
}




?>