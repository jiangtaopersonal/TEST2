<?php
require("01_init.php");
$sql = "SELECT * FROM articles limit 0,4";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($rows);
?>

