<?php 
include('../database.php');
 
//jika benar mendapatkan GET id dari URL
if(isset($_POST['id'])){
	//membuat variabel $id yang menyimpan nilai dari $_GET['id']
	 $id=$_POST['id'];
 $tabel=$_POST['tabel'];
 // alert($id,$tabel);
	$output= "Maaf keyword kurang lengkap / di bawah threshold";
	    	$list_output = array($output);
	
	//melakukan query ke database, dengan cara SELECT data yang memiliki id yang sama dengan variabel $id
	$cek = mysqli_query($con, "SELECT * FROM `".$tabel."` WHERE id_hint='$id'") or die(mysqli_error($con));
	
	//jika query menghasilkan nilai > 0 maka eksekusi script di bawah
	if(mysqli_num_rows($cek) > 0){
		//query ke database DELETE untuk menghapus data dengan kondisi id=$id
		$del = mysqli_query($con, "DELETE FROM `".$tabel."` WHERE id_hint='$id'") or die(mysqli_error($con));
		if($del){
			echo json_encode(array("id"=>$id,"tabel"=>$tabel,"status"=>"success"));

			// echo '<script>alert("Berhasil menghapus data."); document.location="update_IR.php";</script>';
		}else{
			// echo '<script>alert("Gagal menghapus data."); document.location="index.php";</script>';
		}
	}else{
		// echo '<script>alert("ID tidak ditemukan di database."); document.location="index.php";</script>';
	}
}else{
	// echo '<script>alert("ID tidak ditemukan di database."); document.location="index.php";</script>';
}
 
?>