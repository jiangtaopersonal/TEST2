 <?php
require("01_init.php");
session_start();
$uid=$_SESSION["uid"];
$ppid=$_REQUEST["ppid"];
$num=$_REQUEST["num"];
$sql = " select sid from shopcart where uuid = '$uid' & ppid = $ppid";
$result = mysqli_query($conn,$sql);
$results = mysqli_fetch_row($result);
if ($results!=null) {
	$sql1 = " UPDATE shopcart SET num= '$num' ";
	mysqli_query($conn,$sql1);
	echo json_encode(["ok"=>"商品修改成功"]);
}else{
	$sql2 = "INSERT INTO shopcart VALUES ( default,'$uid','$ppid','$num')";
	mysqli_query($conn,$sql2);
	echo json_encode(["ok"=>"商品添加成功"]);
}
?>