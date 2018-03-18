<?php
require("01_init.php");
$pid = $_REQUEST["pid"];
$sql = " SELECT * FROM products where pid = $pid";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
echo json_encode($row);
?>