<?php
if (isset($_GET['hal'])){
	if ($_GET['hal']=='indonesia'){
		include ('chatbot_indonesia.php');
	}
	else if ($_GET['hal']=='inggris'){
		include ('chatbot_inggris.php');
	}
	else if ($_GET['hal']=='dashboard'){
		include ('dashboard.php');
	}
	else if ($_GET['hal']=='signout'){
		session_destroy();
		echo '<script>alert("Keluar"); document.location="login.php";</script>';

	}

}

?>