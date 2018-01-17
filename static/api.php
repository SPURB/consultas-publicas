<?php
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, PATCH, OPTIONS');
	header('Access-Control-Allow-Headers: token, Content-Type');
	header('Access-Control-Max-Age: 1728000');
	header('Content-Length: 0');
	die();
}
header('Access-Control-Allow-Origin: *');
header("Content-type: application/json");

include "dbinfo.php";
$connection = new mysqli($db_host, $db_user, $db_pass, $db_name);


if ($connection->connect_error) {
	die("Connection failed: " . $connection->connect_error);
}
 
$out = array('error' => false);
 
$crud = 'read';
 
if(isset($_GET['crud'])){
	$crud = $_GET['crud'];
}
 
if($crud = 'read'){
	$sql = "select * from wp_comments";
	$query = $connection->query($sql);
	$comments = array();
 
	while($row = $query->fetch_array()){
		array_push($comments, $row);
	}
	$out['comments'] = $comments;
}

if($crud == 'update'){
	$out = "change api.php to update";
}

if($crud == 'delete'){
	$out = "change api.php to delete";
}

if($crud == 'create'){
	$out = "change api.php to create";
}

$connection->close();
 
// header('Content-Type: application/json');
// echo json_encode($out);

echo json_encode($out);
die();
 
?>