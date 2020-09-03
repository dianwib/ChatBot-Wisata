
	<?php
	include('database.php');
	$input_text = mysqli_real_escape_string($con,$_POST['txt']);


	require 'vendor/autoload.php';
	 
	// Meload library Stopword Sastrawi
	$stopWordRemoverFactory = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
	$stopword = $stopWordRemoverFactory->createStopWordRemover();
	$outputstopword = $stopword->remove($input_text);

	// Meload library Stemmer Sastrawi
	$stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
	$stemmer  = $stemmerFactory->createStemmer();
	 
	// Menjalankan stemming pada kalimat yang ditentukan
	$output   = $stemmer->stem($outputstopword);
	 // echo $output . "\n"; // Menampilkan hasil stemming

	$input_txt=preg_replace('#[0-9]*#', '', $output);##del contain angka
	// echo "query text : ".$input_txt;

	calc_akar_tf_idf_query($input_txt);




	function calc_akar_tf_idf_query($corpus_perdata)#hitung term frequency data
	{
		include('database.php');
		$THRESHOLD=0.75;

		$array_count_corpus_query=array_count_values(explode( " ", $corpus_perdata));
	    $data_idf=get_record_idf()[0];
	    $array_tf_idf_query = array();
	    $temp_pangkat_tf_idf=0.0;
	    $output="";

	    foreach ($array_count_corpus_query as $key => $value) {
	    	if (array_key_exists($key, $data_idf)){
	    		$temp_bobot_tf=1+log10($array_count_corpus_query[$key]);

	    		$temp_tf_idf = $temp_bobot_tf * $data_idf[$key];
	    		$temp_pangkat_tf_idf+=pow($temp_tf_idf, 2);
	    		$array_tf_idf_query[$key]=$temp_tf_idf;
	    		// array_push($array_tf_idf_query, [$key => $temp_tf_idf]);
	    	}
	    	
	    }

	    if (empty($array_tf_idf_query)){
	    	$output= "Maaf keyword salah";
	    	$sugestion4 = "wisata religi Sumenep";
	    	$sugestion1 = "wisata alam Sumenep";
	    	$sugestion3 = "wisata sejarah Sumenep";
	    	$sugestion2 = "Daftar Kepulauan Sumenep";


	    }

	    else{

	    	$temp_akar_tf_idf_query=sqrt($temp_pangkat_tf_idf);
			$all_id=get_all_id('tf');
			$temp_similarity=array();

			for ($i=0; $i < count($all_id) ; $i++) {
			$id=$all_id[$i];

			// array_push($temp_similarity, [ $id =>cosine_similarity($id,$array_tf_idf_query,$temp_akar_tf_idf_query)]);
			$temp_similarity[$id]=cosine_similarity($id,$array_tf_idf_query,$temp_akar_tf_idf_query);

			}
			arsort($temp_similarity);
			$id_terurut_terbesar_ke_terkecil=(array_keys($temp_similarity));


			$id_sugesst1=$id_terurut_terbesar_ke_terkecil[0];
			$id_sugesst2=$id_terurut_terbesar_ke_terkecil[1];
			$id_sugesst3=$id_terurut_terbesar_ke_terkecil[2];
			$id_sugesst4=$id_terurut_terbesar_ke_terkecil[3];
			


			$id_vip=[21,32,50,57,74,82,84];
			$random_keys=array_rand($id_vip,4);

			if ($temp_similarity[$id_sugesst1]<0.3){
				$id_sugesst1= $id_vip[$random_keys[0]];
			}
			if ($temp_similarity[$id_sugesst2]<0.2){
				$id_sugesst2=$id_vip[$random_keys[1]];
			}
			if ($temp_similarity[$id_sugesst3]<0.1){
				$id_sugesst3=$id_vip[$random_keys[2]];
			}
			
			$id_sugesst4=$id_vip[$random_keys[3]];
			
			// Select SUGGEST 1
			$sql="SELECT * FROM chatbot_hints WHERE id_hint=".$id_sugesst1;
			$res=mysqli_query($con, $sql);
			while($row=mysqli_fetch_assoc($res)){
			$sugestion1= $row['question'];
			}

			// Select SUGGEST 2
			$sql="SELECT * FROM chatbot_hints WHERE id_hint=".$id_sugesst2;
			$res=mysqli_query($con, $sql);
			while($row=mysqli_fetch_assoc($res)){
			$sugestion2= $row['question'];
			}

			// Select SUGGEST 3
			$sql="SELECT * FROM chatbot_hints WHERE id_hint=".$id_sugesst3;
			$res=mysqli_query($con, $sql);
			while($row=mysqli_fetch_assoc($res)){
			$sugestion3= $row['question'];
			}

			// Select SUGGEST 4
			$sql="SELECT * FROM chatbot_hints WHERE id_hint=".$id_sugesst4;
			$res=mysqli_query($con, $sql);
			while($row=mysqli_fetch_assoc($res)){
			$sugestion4= $row['question'];
			}
			// print_r($temp_similarity);
			$max_value= max($temp_similarity);

			// print_r($temp_similarity);
			// echo($max_value);
			
			//cek maksimal value dari cosine similarity
			if ($max_value >= $THRESHOLD){
			$id_max=( array_keys($temp_similarity, max($temp_similarity))[0]);

			// Select JAWABAN BENAR
			$sql="SELECT * FROM chatbot_hints WHERE id_hint=".$id_max;
			$res=mysqli_query($con, $sql);
			while($row=mysqli_fetch_assoc($res)){
			$output= $row['reply'];
			}

		}
			
			else{
			$output= "Maaf keyword kurang lengkap / di bawah threshold";
			}

			
	    }
	    // echo $output;
	    $list_output = array($output,$sugestion1, $sugestion2,$sugestion3,$sugestion4);
		echo json_encode($list_output);
	}


	function cosine_similarity($id,$array_tf_idf_query,$akar_tf_idf_query)
	{
		$array_tf_idf_data=get_record_tf_idf($id)[0];
		$akar_tf_idf_data=get_record_akar_tf_idf($id)[0]['akar'];
		$temp_atas=0;
		
		// print_r($array_tf_idf_query);
		
		foreach ($array_tf_idf_query as $key => $value) {
			
			// echo "<br>KEY".$key."ID".$id."Q".$array_tf_idf_query[$key]."D".$array_tf_idf_data[$key];
			
			$temp_atas+= $array_tf_idf_query[$key] * $array_tf_idf_data[$key];
		}
		$temp_hasil=$temp_atas / ($akar_tf_idf_query*$akar_tf_idf_data);
		// print("ID".$id."ATAS".$temp_atas."AKAR KUARI".$akar_tf_idf_query."AKAR DATA".$akar_tf_idf_data."BAWAH".$akar_tf_idf_query*$akar_tf_idf_data."HASIL".$temp_hasil);

		return $temp_hasil;
		# code...
	}


	function get_record_akar_tf_idf($id){
		include('database.php');
		$sql="SELECT * FROM akar_tf_idf WHERE id_hint=".$id;
		$res=mysqli_query($con, $sql);
		$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
		return $array;
	}

	function get_record_tf_idf($id){
		
		include('database.php');
		$sql="SELECT * FROM tf_idf WHERE id_hint=".$id;
		$res=mysqli_query($con, $sql);
		$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
		return $array; 
	}

	function get_record_idf(){
		
		include('database.php');
		$sql="SELECT * FROM df_idf WHERE kategori='idf'";
		$res=mysqli_query($con, $sql);
		$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
		return $array; 
	}


	function get_all_id($tabel)
	{
		include('database.php');
		$sql='SELECT id_hint FROM '. $tabel;
		$res=mysqli_query($con,$sql);
		$rows = array();
	  while($row = mysqli_fetch_assoc($res)) {
	    $rows[] = $row['id_hint'];
	  }
	  return ($rows);
	}

	function get_all_name_column($tabel)
	{
		include('database.php');
		$sql='DESCRIBE '. $tabel;
		$get=mysqli_query($con, $sql);
		$rows = array();
	  while($row = mysqli_fetch_assoc($get)) {
	    $rows[] = $row['Field'];
	  }
	  return ($rows);
	}

	function get_count_all_data($tabel)
	{
		include('database.php');
		$sql="SELECT * from ".$tabel;
		$res=mysqli_query($con,$sql);
		$total_data=mysqli_num_rows($res);
		return $total_data;
	}




	?>