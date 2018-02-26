<?php
include_once "./admin/Jm3uGyhDWjJrNfVqxX69xR4qdmpSUb8udG9dUs9gYWTryB9wejACwJMBSffaYfnXaMTGz.php";
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$out = array('error' => false);

$crud = 'read';

if(isset($_GET['crud'])){
	$crud = $_GET['crud'];
}

if($crud == 'read'){
	$sql = "SELECT memid, name, content, commentdate, postid, commentid FROM members WHERE public = '1'";
	$query = $conn->query($sql);
	$members = array();

	while($row = $query->fetch_array()){
		array_push($members, $row);
	}
	$out['members'] = $members;
}


/* 
POST FUNCTIONS (requires a token from vue component)
*/
if (isset($_POST['token'])){

	$token = $_POST['token'];

	$comment = 'comment/' . $token;

	if($crud == $comment){

		$name = $_POST['name'];
		$email = $_POST['email'];
		$postid = $_POST['postid'];

		$date = $_POST['commentdate']; //'02/07/2009 00:07:00';
		$date = preg_replace('#(\d{2})/(\d{2})/(\d{4})\s(.*)#', '$3-$2-$1 $4', $date);

		$commentid = $_POST['commentid'];
		$context = $_POST['commentcontext'];
		$content = $_POST['content'];

		$sql = "INSERT INTO members (
								name, 
								email, 
								postid, 
								commentdate,
								commentid, 
								commentcontext, 
								content)
							VALUES 	(
								'$name', 
								'$email', 
								'$postid', 
								'$date',
								'$commentid', 
								'$context', 
								'$content')";

		$query = $conn->query($sql);

		if($query){
			$out['message'] = "Coment Added Successfully";
		}
		else{
			$out['error'] = true;
			$out['message'] = "Could not add Comment";
		}
	}

	//Login 
	$login = 'login/' . $token;

	if ($crud == $login) {
		if (isset($_POST['email']) and isset($_POST['pass'])){

			function isAdmin($email, $pass){

				include_once './admin/ZCbC6xhaUCzeAYHDdLDJfTMzDStB6GqJKMfUASs5KagAYR4Z3YFK5W76RhkGnc56kanAt.php';
				// $admin = array(
				// 	'José' => array(
				// 		'email' => 'ze@ninguem.com',
				// 		'pass'  => '123456'
				// 	),
				// 	'Maria' => array(
				// 		'email' => 'maria@ninguem.com',
				// 		'pass'  => '123456'
				// 	)
				// );

				foreach ($admin as $name => $check) {
					if ($email == $check['email'] and $pass == $check['pass']) {
						return $name;
					}
					else{
						return false;
					}
				}
			}

			$email = $_POST['email'];
			$pass = $_POST['pass'];

			$out['user'] = isAdmin($email, $pass);
		}
	}

	// read all for admin
	if($crud == $token){

		$sql = "SELECT * FROM members";
		$query = $conn->query($sql);
		$members = array();

		while($row = $query->fetch_array()){
			array_push($members, $row);
		}
		$out['members'] = $members;

		if($query){
			$out['message'] = "Sucesso";
		}
		else{
			$out['error'] = true;
			$out['message'] = "Falhou";
		}
	}

	$approve = 'approve/' . $token;

	if($crud == $approve){
		$memid = $_POST['memid'];
		$public = $_POST['public'];

		$sql = "UPDATE members SET public='$public' WHERE memid='$memid'";
		$query = $conn->query($sql);

		if($query){
			$out['message'] = "Comentário adicionado com sucesso";
		}
		else{
			$out['error'] = true;
			$out['message'] = "Não foi possível adicionar comentário";
		}
	}

	$trash = 'trash/' . $token;

	if($crud == $trash ){
		$memid = $_POST['memid'];
		$trash = $_POST['trash'];

		$sql = "UPDATE members SET trash = '$trash' WHERE memid='$memid'";
		$query = $conn->query($sql);

		if($query){
			$out['message'] = "Comentário adicionado com sucesso";
		}
		else{
			$out['error'] = true;
			$out['message'] = "Não foi possível adicionar comentário";
		}
	}
}

// if($crud == 'delete'){

// 	$memid = $_POST['memid'];

// 	$sql = "delete from members where memid='$memid'";
// 	$query = $conn->query($sql);

// 	if($query){
// 		$out['message'] = "Member Deleted Successfully";
// 	}
// 	else{
// 		$out['error'] = true;
// 		$out['message'] = "Could not delete Member";
// 	}
	
// }


$conn->close();

header("Content-type: application/json");
// header("Content-Type: text/html; charset=ISO-8859-1", true); 
echo json_encode($out);
die();
 
?>