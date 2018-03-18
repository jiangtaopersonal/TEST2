<?php
require("01_init.php");
$uname="ff";
$email="ff";
$upwd="ff";
if($uname&&$email&&$upwd){
	$sql="INSERT INTO `user`(`uid`, `upwd`, `uname`, `email`) VALUES (default,'$upwd','$uname','$email')";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	session_start();
	$_SESSION["uid"]=$row[0];
	echo "true";
}else{
	echo "false";
}
?>