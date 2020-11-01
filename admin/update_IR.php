<?php
include('../database.php');
require '../vendor/autoload.php';
 

parse_corpus_tf_idf();#aktifin pertama kali ataio pas ada perubahan data
calc_df_idf_data();
$all_id=get_all_id('tf');
for ($i=0; $i <count($all_id) ; $i++) { 
	calc_tf_idf_data($all_id[$i]);

}

echo '<script>alert("Selesai."); document.location="index.php?hal=indonesia";</script>';


function parse_corpus_tf_idf()#penjabaran korpus perhitungan tf dan bobot tf
{

	// CREATE TABEL
include('../database.php');
$list_corpus=array();
$temp_corpus="";
// $list_id_dokumen=array();
$data_input_tabel="SELECT * from chatbot_hints";
$res=mysqli_query($con,$data_input_tabel);

$del_sql = "DROP TABLE tf";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE tf(id_hint INT(11)  NOT NULL,FOREIGN KEY (id_hint) REFERENCES chatbot_hints(id_hint) ON UPDATE CASCADE ON DELETE CASCADE)";
mysqli_query($con, $sql);

// $del_sql = "DROP TABLE bobot_tf";
// mysqli_query($con, $del_sql);
// $sql= "CREATE TABLE bobot_tf(id_hint INT(11)  NOT NULL,FOREIGN KEY (id_hint) REFERENCES chatbot_hints(id_hint) ON UPDATE CASCADE ON DELETE CASCADE)";
// mysqli_query($con, $sql);


$del_sql = "DROP TABLE df_idf";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE df_idf(kategori  VARCHAR(3)  NOT NULL PRIMARY KEY)";
mysqli_query($con, $sql);


$del_sql = "DROP TABLE tf_idf";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE tf_idf(id_hint INT(11)  NOT NULL,FOREIGN KEY (id_hint) REFERENCES chatbot_hints(id_hint)ON UPDATE CASCADE ON DELETE CASCADE)";
mysqli_query($con, $sql);


$del_sql = "DROP TABLE akar_tf_idf";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE akar_tf_idf(id_hint INT(11)  NOT NULL, akar FLOAT(7,4),FOREIGN KEY (id_hint) REFERENCES chatbot_hints(id_hint)ON UPDATE CASCADE ON DELETE CASCADE)";
mysqli_query($con, $sql);




if(mysqli_num_rows($res)>0){
while($row = mysqli_fetch_assoc($res)) {
	// require 'vendor/autoload.php';
	
	// prepocessing
	$corpus_perdata= preg_replace('#[0-9]*#', '', $row['question']);
	// Meload library Stopword Sastrawi
	$stopWordRemoverFactory = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
	$stopword = $stopWordRemoverFactory->createStopWordRemover();
	$outputstopword = $stopword->remove($corpus_perdata);

	// Meload library Stemmer Sastrawi
	$stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
	$stemmer  = $stemmerFactory->createStemmer();
 
	// Menjalankan stemming pada kalimat yang ditentukan
	$output   = $stemmer->stem($outputstopword);
 	

	$temp_corpus_perdata=explode( " ", $output);
	for ($i=0; $i < count($temp_corpus_perdata); $i++) { 
	if (!in_array($temp_corpus_perdata[$i], $list_corpus))
	{
		// create tabel 

		create_table_tf($temp_corpus_perdata[$i]);
		// create_table_bobot_tf($temp_corpus_perdata[$i]);
		create_table_df_idf($temp_corpus_perdata[$i]);
		create_table_tf_idf($temp_corpus_perdata[$i]);
		array_push($list_corpus, $temp_corpus_perdata[$i]);

	}
}
	// CALC CORPUS TF
	calc_tf_data($row["id_hint"],$output);
	
}
}

}


function create_table_tf($corpus)
{
	include('../database.php');
	$sql="ALTER TABLE tf ADD COLUMN ".$corpus." INT(2) DEFAULT 0 NOT NULL";
	mysqli_query($con, $sql);

}


// function create_table_bobot_tf($corpus)
// {
// 	include('../database.php');
// 	$sql="ALTER TABLE bobot_tf ADD COLUMN ".$corpus." FLOAT(7,4) NOT NULL";
// 	mysqli_query($con, $sql);
// }

function create_table_df_idf($corpus)
{
	include('../database.php');
	$sql="ALTER TABLE df_idf ADD COLUMN ".$corpus." FLOAT(7,4) NOT NULL";
	mysqli_query($con, $sql);
}

function create_table_tf_idf($corpus)
{
	include('../database.php');
	$sql="ALTER TABLE tf_idf ADD COLUMN ".$corpus." FLOAT(7,4) NOT NULL";
	mysqli_query($con, $sql);
}


function calc_tf_data($id,$corpus_perdata)#hitung term frequency data
{
	include('../database.php');
	$array_count_corpus=array_count_values(explode( " ", $corpus_perdata));
    $insql_tf="INSERT INTO tf (id_hint";
    $valsql_tf="VALUES (".$id;
    // $insql_bobot_tf="INSERT INTO bobot_tf (id_hint";
    // $valsql_bobot_tf="VALUES (".$id;
    foreach ($array_count_corpus as $key => $value) {
    	if ($key !='' and $key!=' '){
    	
    	$insql_tf=$insql_tf.",".$key;
    	$valsql_tf=$valsql_tf.",".$array_count_corpus[$key];

    	// $insql_bobot_tf=$insql_bobot_tf.",".$key;
    	// $temp_log=1+log10($array_count_corpus[$key]);
    	// $valsql_bobot_tf=$valsql_bobot_tf.",".$temp_log;
    	}
	
    }
		
		$sql_tf=$insql_tf.") ".$valsql_tf.")";
		mysqli_query($con, $sql_tf);

		// $sql_bobot_tf=$insql_bobot_tf.") ".$valsql_bobot_tf.")";
		// mysqli_query($con, $sql_bobot_tf);



}


function calc_df_idf_data()
{
	include('../database.php');

	$all_kolom=get_all_name_column('tf');

	$delsql_df="DELETE FROM df_idf WHERE kategori='df'";
	mysqli_query($con, $delsql_df);
	$delsql_idf="DELETE FROM df_idf WHERE kategori='idf'";
	mysqli_query($con, $delsql_idf);



	$insql_df="INSERT INTO df_idf (kategori";
    $valsql_df="VALUES ('df'";
    $insql_idf="INSERT INTO df_idf (kategori";
    $valsql_idf="VALUES ('idf'";

    $total_data=get_count_all_data('tf');

	for ($i=1; $i < count($all_kolom); $i++) { 

		$sql = 'SELECT * FROM tf WHERE '.$all_kolom[$i].'>0'; 
		$res = mysqli_query($con, $sql);
		$df = mysqli_num_rows($res); 
		
		// $sql = 'SELECT SUM('.$all_kolom[$i].') AS count FROM tf'; 
		#df
		// $res = mysqli_query($con, $sql);
		// $row = mysqli_fetch_assoc($res); 
		// $df = $row['count'];
		
		$insql_df=$insql_df.",".$all_kolom[$i];
    	$valsql_df=$valsql_df.",".$df;

		#idf 
		$idf=log($total_data/$df,2);
		$insql_idf=$insql_idf.",".$all_kolom[$i];
    	$valsql_idf=$valsql_idf.",".$idf;
	}
		$sql_df=$insql_df.") ".$valsql_df.");";
		$sql_idf=$insql_idf.") ".$valsql_idf.");";
		mysqli_query($con, $sql_df);
		mysqli_query($con, $sql_idf);

	
}

function get_record_tf($id){
	
	include('../database.php');
	$sql="SELECT * FROM tf WHERE id_hint=".$id;
	$res=mysqli_query($con, $sql);
	$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
	return $array; 
}

function get_record_idf(){
	
	include('../database.php');
	$sql="SELECT * FROM df_idf WHERE kategori='idf'";
	$res=mysqli_query($con, $sql);
	$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
	return $array; 
}


function calc_tf_idf_data($id)
{
	include('../database.php');

	$delsql_tf_idf="DELETE FROM tf_idf WHERE id_hint=".$id;
	mysqli_query($con, $delsql_tf_idf);

	$delsql_akar_tf_idf="DELETE FROM akar_tf_idf WHERE id_hint=".$id;
	mysqli_query($con,	$delsql_akar_tf_idf);

	
	$all_kolom=get_all_name_column('tf');
	$insql_tf_idf="INSERT INTO tf_idf (id_hint";
    $valsql_tf_idf="VALUES (".$id;

    $data_tf=get_record_tf($id)[0];
    $data_idf=get_record_idf()[0];

    $temp_pangkat_tf_idf=0.0;
 	for ($i=1; $i < count($all_kolom); $i++) { 
    	
    	$kata=$all_kolom[$i];
    	$insql_tf_idf=$insql_tf_idf.",".$kata;
    	$temp_tf_idf=  $data_tf[$kata] * $data_idf[$kata];
    	$temp_pangkat_tf_idf+=pow($temp_tf_idf, 2);
    	$valsql_tf_idf=$valsql_tf_idf.",".$temp_tf_idf;
    	}
		
		$sql_tf_idf=$insql_tf_idf.") ".$valsql_tf_idf.")";
		mysqli_query($con, $sql_tf_idf);

		$temp_akar_tf_idf=sqrt($temp_pangkat_tf_idf);
		$insql_akar_tf_idf="INSERT INTO akar_tf_idf (id_hint,akar) VALUES (".$id.",".$temp_akar_tf_idf.")";
		mysqli_query($con,	$insql_akar_tf_idf);
}


function get_all_id($tabel)
{
	include('../database.php');
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
	include('../database.php');
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
	include('../database.php');
	$sql="SELECT * from ".$tabel;
	$res=mysqli_query($con,$sql);
	$total_data=mysqli_num_rows($res);
	return $total_data;
}

?>