<?php
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
	// header('Access-Control-Allow-Origin: *');
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
	// $comment_ID = $_POST['comment_ID'];
	// $comment_approved = $_POST['comment_approved'];
	// $out['message'] = $comment_ID . " | " . $comment_approved;

	// $sql = "update wp_comments set comment_approved='$comment_approved' where comment_ID='$comment_ID'";
	// $query = $conn->query($sql);

	// if($query){
		// $out['message'] = "Member Updated Successfully";
	// }
	// else{
		$out['error'] = true;
		$out['message'] = "Could not update Member";
	// }
}

$connection->close();
 
// header('Content-Type: application/json');
// echo json_encode($out);

echo json_encode($out);
die();
 
?>