<?php
 require("01_init.php");
$kw=$_REQUEST["kw"];
if($kw==null) $kw="";
if ($kw=="") {
	$pageNo=$_REQUEST["pageNo"];
	if($pageNo==null) $pageNo=1;
	$pageSize=$_REQUEST["pageSize"];
	if($pageSize==null) $pageSize=5;
	$target=$_REQUEST["target"];
	$sql=" SELECT * FROM ".$target." limit ".($pageNo-1)*$pageSize.",$pageSize ";
	$result=mysqli_query($conn,$sql);
	$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);
	$sql1="SELECT aid FROM articles";
	$result1=mysqli_query($conn,$sql1);
	$data=mysqli_fetch_all($result1,1);
	$count=count($data);
	$pageCount=ceil(($count/$pageSize));
	$output=[
	"rows"=>$rows,
	"pageNo"=>$pageNo,
	"pageCount"=>$pageCount,
	];
echo json_encode($output);
}else{
	$sql=" SELECT * FROM  products";
	$kws=explode(" ",$kw);
	for($i=0;$i<count($kws);$i++){
		$kws[$i]=" title like '%$kws[$i]%' ";
	}
	$where=implode(" and ",$kws);
	$sql.=" where $where ";
	$result=mysqli_query($conn,$sql);
	$rows = mysqli_fetch_all($result,1);
	$output=[
	"rows"=>$rows,
	"pageNo"=>"1",
	"pageCount"=>"5",
	];
	echo json_encode($output);
}

?>
