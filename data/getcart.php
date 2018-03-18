 <?php
require("01_init.php");
session_start();
$uid=$_SESSION["uid"];
$sql="select pid,title,imgway,priceage from products inner join shopcart on ppid=pid where uuid = $uid ";
$result=mysqli_query($conn,$sql);
$res = mysqli_fetch_all($result,1);
echo json_encode($res);
?>