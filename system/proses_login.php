<?php

include("../configuration/config.php");

$user = $_POST['username'];
$pass = $_POST['password'];

if (isset($_POST['btnLogin'])) {
	if ($user == "" && $pass == "") {
		echo 	"<script>
					alert('Username Dan Password Harus Diisi !!');
					location='../form/halaman_login.php';
				</script>";
	} else {
		$que = mysql_query("select * from m_user where username = '$user' and password = '$pass'");
		$arr = mysql_fetch_array($que);
	
		$id 		= $arr['id'];
		$username 	= $arr['username'];
		$password 	= $arr['password'];
	
		if($user == $username && $pass == $password) {
			session_start();
			$_SESSION['id'] = $id;
			$_SESSION['username'] = $username;
			$_SESSION['password'] = $password;
		
			
			echo "<script>
				alert('Berhasil !!');
				location='../index_admin.php';
			</script>";
		} else {
			echo "<script>
				alert('Username Dan Password SALAH !!');
				location='../form/halaman_login.php';
			</script>";
		}
	}

} else {
	echo "<script>
		location='../';
	</script>";
}

?>
