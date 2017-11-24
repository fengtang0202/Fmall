<?php
#登陆页面
#接收从前端传递过来的数据 uname upwd
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
require("init.php");
$sql="SELECT * FROM mg_user WHERE uname='$uname' AND upwd='$upwd'";
$result=mysqli_query($conn,$sql);
//从数据库中抓取账户，与密码
$row=mysqli_fetch_row($result);
//判断数据库里面是否存在
if($row==true){
    echo "0";
}else{
    echo "1";
}









?>