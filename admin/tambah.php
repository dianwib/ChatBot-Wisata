
		<?php
include('../database.php');
		
		if(isset($_POST['submit'])){

			$input	= $_POST['input'];
			$jwb		= $_POST['jawaban'];
			
				$sql = mysqli_query($con, "INSERT INTO chatbot_hints(question, reply) VALUES('$input', '$jwb')") or die(mysqli_error($con));
				
				if($sql){
					echo '<script>alert("Berhasil menambahkan data."); document.location="update_IR.php";</script>';
				}else{
					echo '<div class="alert alert-warning">Gagal melakukan proses tambah data.</div>';
				}
			
		}
		?>
		
		