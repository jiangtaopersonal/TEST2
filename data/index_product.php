<?php
require("01_init.php");
$sql = "SELECT  pid,imgway,priceage,title,way FROM products limit 0,8";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>