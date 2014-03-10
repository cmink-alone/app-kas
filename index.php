<?php
session_start();
if (empty($_SESSION['id'])) {
  echo"<script>
  location='index_user.php';
  </script>";
} else {
	echo"<script>
	location='index_admin.php';
	</script>";
}
?>