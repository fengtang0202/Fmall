<?php
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
@$email=$_REQUEST["email"];
@$phone=$_REQUEST["phone"];
@$user_name=$_REQUEST["user_name"];
@$gender=$_REQUEST["gender"];
require("init.php");
$sql="INSERT INTO mg_user(uname,upwd,email,phone,user_name,gender) VALUES('$uname','$upwd','$email','$phone','$user_name','$gender')";
$result=mysqli_query($conn,$sql);
if($result==true){
    echo  "0";
}else{
    echo "1";
}




?>