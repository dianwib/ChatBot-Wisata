<?php
	include('database.php');
	$tabel = mysqli_real_escape_string($con,$_POST['txt']);
	if($tabel=='eng'){
	// $cek = mysqli_query($con, "SELECT * FROM `".$tabel."` WHERE id_hint='$id'") or die(mysqli_error($con));
	  $cb = mysqli_query($con,"SELECT count(*) as total, chatbot_hints_eng.question as question FROM log inner join chatbot_hints_eng on log.id_hint_eng=chatbot_hints_eng.id_hint where log.id_hint_eng is not null group by id_hint_eng order by total desc limit 4;")or die(mysqli_error($con));
		if(mysqli_num_rows($cb) > 0){
		$arraySugges=array('Welcome on board @SampangTourismoBot. Im here to help you with all Sampang halal tourism information. feel free to ask me questions. :)');
		while($row = mysqli_fetch_array($cb))
            {
                array_push($arraySugges,$row['question']);
      		 }
		
		echo json_encode($arraySugges);
		}  

	else{
		// echo '<script>alert("ID tidak ditemukan di database."); document.location="index.php";</script>';
	}
}
	else if($tabel=='indo'){
	  $cb = mysqli_query($con,"SELECT count(*) as total, chatbot_hints.question FROM log inner join chatbot_hints on log.id_hint_id=chatbot_hints.id_hint where log.id_hint_id is not null group by id_hint_id order by total desc limit 4;")or die(mysqli_error($con));
	if(mysqli_num_rows($cb) > 0){
		$arraySugges=array('Selamat datang di @SampangTourismoBot. Saya disini akan membantu anda mengenai informasi wisata halal di Sampang. Jangan sungkan untuk bertanya. :)');
		while($row = mysqli_fetch_array($cb))
            {
                array_push($arraySugges,$row['question']);
      		 }
		
		echo json_encode($arraySugges);
		}  


	else{
		// echo '<script>alert("ID tidak ditemukan di database."); document.location="index.php";</script>';
	}

}
?>