<?php
require("01_init.php");
$aid = $_REQUEST["aid"];
$sql = "SELECT * FROM articles where aid = $aid ";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
echo json_encode($row);
?>