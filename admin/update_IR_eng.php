<?php
include('../database.php');
require '../vendor/autoload.php';
 

parse_corpus_tf_idf();#aktifin pertama kali ataio pas ada perubahan data
calc_df_idf_data();
$all_id=get_all_id('tf_eng');
for ($i=0; $i <count($all_id) ; $i++) { 
	calc_tf_idf_data($all_id[$i]);

}

echo '<script>alert("Selesai."); document.location="index.php?hal=inggris";</script>';


function parse_corpus_tf_idf()#penjabaran korpus perhitungan tf dan bobot tf
{

	// CREATE TABEL
include('../database.php');
$list_corpus=array();
$temp_corpus="";
// $list_id_dokumen=array();
$data_input_tabel="SELECT * from chatbot_hints_eng";
$res=mysqli_query($con,$data_input_tabel);

$del_sql = "DROP TABLE tf_eng";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE tf_eng(id_hint INT(11)  NOT NULL,FOREIGN KEY (id_hint) REFERENCES chatbot_hints_eng(id_hint) ON UPDATE CASCADE ON DELETE CASCADE)";
mysqli_query($con, $sql);

// $del_sql = "DROP TABLE bobot_tf";
// mysqli_query($con, $del_sql);
// $sql= "CREATE TABLE bobot_tf(id_hint INT(11)  NOT NULL,FOREIGN KEY (id_hint) REFERENCES chatbot_hints_eng(id_hint) ON UPDATE CASCADE ON DELETE CASCADE)";
// mysqli_query($con, $sql);


$del_sql = "DROP TABLE df_idf_eng";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE df_idf_eng(kategori  VARCHAR(3)  NOT NULL PRIMARY KEY)";
mysqli_query($con, $sql);


$del_sql = "DROP TABLE tf_idf_eng";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE tf_idf_eng(id_hint INT(11)  NOT NULL,FOREIGN KEY (id_hint) REFERENCES chatbot_hints_eng(id_hint)ON UPDATE CASCADE ON DELETE CASCADE)";
mysqli_query($con, $sql);


$del_sql = "DROP TABLE akar_tf_idf_eng";
mysqli_query($con, $del_sql);
$sql= "CREATE TABLE akar_tf_idf_eng(id_hint INT(11)  NOT NULL, akar FLOAT(7,4),FOREIGN KEY (id_hint) REFERENCES chatbot_hints_eng(id_hint)ON UPDATE CASCADE ON DELETE CASCADE)";
mysqli_query($con, $sql);

function removeCommonWords($input){
 
    // EEEEEEK Stop words
    $commonWords = array('a','able','about','above','abroad','according','accordingly','across','actually','adj','after','afterwards','again','against','ago','ahead','ain\'t','all','allow','allows','almost','alone','along','alongside','already','also','although','always','am','amid','amidst','among','amongst','an','and','another','any','anybody','anyhow','anyone','anything','anyway','anyways','anywhere','apart','appear','appreciate','appropriate','are','aren\'t','around','as','a\'s','aside','ask','asking','associated','at','available','away','awfully','b','back','backward','backwards','be','became','because','become','becomes','becoming','been','before','beforehand','begin','behind','being','believe','below','beside','besides','best','better','between','beyond','both','brief','but','by','c','came','can','cannot','cant','can\'t','caption','cause','causes','certain','certainly','changes','clearly','c\'mon','co','co.','com','come','comes','concerning','consequently','consider','considering','contain','containing','contains','corresponding','could','couldn\'t','course','c\'s','currently','d','dare','daren\'t','definitely','described','despite','did','didn\'t','different','directly','do','does','doesn\'t','doing','done','don\'t','down','downwards','during','e','each','edu','eg','eight','eighty','either','else','elsewhere','end','ending','enough','entirely','especially','et','etc','even','ever','evermore','every','everybody','everyone','everything','everywhere','ex','exactly','example','except','f','fairly','far','farther','few','fewer','fifth','first','five','followed','following','follows','for','forever','former','formerly','forth','forward','found','four','from','further','furthermore','g','get','gets','getting','given','gives','go','goes','going','gone','got','gotten','greetings','h','had','hadn\'t','half','happens','hardly','has','hasn\'t','have','haven\'t','having','he','he\'d','he\'ll','hello','help','hence','her','here','hereafter','hereby','herein','here\'s','hereupon','hers','herself','he\'s','hi','him','himself','his','hither','hopefully','how','howbeit','however','hundred','i','i\'d','ie','if','ignored','i\'ll','i\'m','immediate','in','inasmuch','inc','inc.','indeed','indicate','indicated','indicates','inner','inside','insofar','instead','into','inward','is','isn\'t','it','it\'d','it\'ll','its','it\'s','itself','i\'ve','j','just','k','keep','keeps','kept','know','known','knows','l','last','lately','later','latter','latterly','least','less','lest','let','let\'s','like','liked','likely','likewise','little','look','looking','looks','low','lower','ltd','m','made','mainly','make','makes','many','may','maybe','mayn\'t','me','mean','meantime','meanwhile','merely','might','mightn\'t','mine','minus','miss','more','moreover','most','mostly','mr','mrs','much','must','mustn\'t','my','myself','n','name','namely','nd','near','nearly','necessary','need','needn\'t','needs','neither','never','neverf','neverless','nevertheless','new','next','nine','ninety','no','nobody','non','none','nonetheless','noone','no-one','nor','normally','not','nothing','notwithstanding','novel','now','nowhere','o','obviously','of','off','often','oh','ok','okay','old','on','once','one','ones','one\'s','only','onto','opposite','or','other','others','otherwise','ought','oughtn\'t','our','ours','ourselves','out','outside','over','overall','own','p','particular','particularly','past','per','perhaps','placed','please','plus','possible','presumably','probably','provided','provides','q','que','quite','qv','r','rather','rd','re','really','reasonably','recent','recently','regarding','regardless','regards','relatively','respectively','right','round','s','said','same','saw','say','saying','says','second','secondly','see','seeing','seem','seemed','seeming','seems','seen','self','selves','sensible','sent','serious','seriously','seven','several','shall','shan\'t','she','she\'d','she\'ll','she\'s','should','shouldn\'t','since','six','so','some','somebody','someday','somehow','someone','something','sometime','sometimes','somewhat','somewhere','soon','sorry','specified','specify','specifying','still','sub','such','sup','sure','t','take','taken','taking','tell','tends','th','than','thank','thanks','thanx','that','that\'ll','thats','that\'s','that\'ve','the','their','theirs','them','themselves','then','thence','there','thereafter','thereby','there\'d','therefore','therein','there\'ll','there\'re','theres','there\'s','thereupon','there\'ve','these','they','they\'d','they\'ll','they\'re','they\'ve','thing','things','think','third','thirty','this','thorough','thoroughly','those','though','three','through','throughout','thru','thus','till','to','together','too','took','toward','towards','tried','tries','truly','try','trying','t\'s','twice','two','u','un','under','underneath','undoing','unfortunately','unless','unlike','unlikely','until','unto','up','upon','upwards','us','use','used','useful','uses','using','usually','v','value','various','versus','very','via','viz','vs','w','want','wants','was','wasn\'t','way','we','we\'d','welcome','well','we\'ll','went','were','we\'re','weren\'t','we\'ve','what','whatever','what\'ll','what\'s','what\'ve','when','whence','whenever','where','whereafter','whereas','whereby','wherein','where\'s','whereupon','wherever','whether','which','whichever','while','whilst','whither','who','who\'d','whoever','whole','who\'ll','whom','whomever','who\'s','whose','why','will','willing','wish','with','within','without','wonder','won\'t','would','wouldn\'t','x','y','yes','yet','you','you\'d','you\'ll','your','you\'re','yours','yourself','yourselves','you\'ve','z','zero');
 
    return preg_replace('/\b('.implode('|',$commonWords).')\b/','',$input);
}


if(mysqli_num_rows($res)>0){
while($row = mysqli_fetch_assoc($res)) {
	// require 'vendor/autoload.php';
	
	// prepocessing
	$corpus_perdata = preg_replace('#[0-9]*#', '', $row['question']);
	$corpus_perdata_temp=strtolower($corpus_perdata);
	$output=removeCommonWords($corpus_perdata_temp);

	// // Meload library Stopword Sastrawi
	// $stopWordRemoverFactory = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
	// $stopword = $stopWordRemoverFactory->createStopWordRemover();
	// $outputstopword = $stopword->remove($corpus_perdata);

	// // Meload library Stemmer Sastrawi
	// $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
	// $stemmer  = $stemmerFactory->createStemmer();
 
	// // Menjalankan stemming pada kalimat yang ditentukan
	// $output   = $stemmer->stem($outputstopword);
 	

	$temp_corpus_perdata=explode( " ", $output);
	for ($i=0; $i < count($temp_corpus_perdata); $i++) { 
	if (!in_array($temp_corpus_perdata[$i], $list_corpus) and  $temp_corpus_perdata[$i] != '' and $temp_corpus_perdata[$i] != ' ' )
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
	$sql="ALTER TABLE tf_eng ADD COLUMN ".$corpus." INT(2) DEFAULT 0 NOT NULL";
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
	$sql="ALTER TABLE df_idf_eng ADD COLUMN ".$corpus." FLOAT(7,4) NOT NULL";
	mysqli_query($con, $sql);
}

function create_table_tf_idf($corpus)
{
	include('../database.php');
	$sql="ALTER TABLE tf_idf_eng ADD COLUMN ".$corpus." FLOAT(7,4) NOT NULL";
	mysqli_query($con, $sql);
}


function calc_tf_data($id,$corpus_perdata)#hitung term frequency data
{
	include('../database.php');
	$array_count_corpus=array_count_values(explode( " ", $corpus_perdata));
    $insql_tf="INSERT INTO tf_eng (id_hint";
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

	$all_kolom=get_all_name_column('tf_eng');

	$delsql_df="DELETE FROM df_idf_eng WHERE kategori='df'";
	mysqli_query($con, $delsql_df);
	$delsql_idf="DELETE FROM df_idf_eng WHERE kategori='idf'";
	mysqli_query($con, $delsql_idf);



	$insql_df="INSERT INTO df_idf_eng (kategori";
    $valsql_df="VALUES ('df'";
    $insql_idf="INSERT INTO df_idf_eng (kategori";
    $valsql_idf="VALUES ('idf'";

    $total_data=get_count_all_data('tf_eng');

	for ($i=1; $i < count($all_kolom); $i++) { 

		$sql = 'SELECT * FROM tf_eng WHERE '.$all_kolom[$i].'>0'; 
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
	$sql="SELECT * FROM tf_eng WHERE id_hint=".$id;
	$res=mysqli_query($con, $sql);
	$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
	return $array; 
}

function get_record_idf(){
	
	include('../database.php');
	$sql="SELECT * FROM df_idf_eng WHERE kategori='idf'";
	$res=mysqli_query($con, $sql);
	$array = mysqli_fetch_all ($res, MYSQLI_ASSOC);
	return $array; 
}


function calc_tf_idf_data($id)
{
	include('../database.php');

	$delsql_tf_idf="DELETE FROM tf_idf_eng WHERE id_hint=".$id;
	mysqli_query($con, $delsql_tf_idf);

	$delsql_akar_tf_idf="DELETE FROM akar_tf_idf_eng WHERE id_hint=".$id;
	mysqli_query($con,	$delsql_akar_tf_idf);

	
	$all_kolom=get_all_name_column('tf_eng');
	$insql_tf_idf="INSERT INTO tf_idf_eng (id_hint";
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
		$insql_akar_tf_idf="INSERT INTO akar_tf_idf_eng (id_hint,akar) VALUES (".$id.",".$temp_akar_tf_idf.")";
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