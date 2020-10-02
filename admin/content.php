<?php
if (isset($_GET['hal'])){
	if ($_GET['hal']=='indonesia'){
		include ('chatbot_indonesia.php');
	}
	else if ($_GET['hal']=='inggris'){
		include ('chatbot_inggris.php');
	}
	else if ($_GET['hal']=='signout'){
		session_destroy();
	}

}

?>