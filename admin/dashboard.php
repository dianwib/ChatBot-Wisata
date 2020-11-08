
<?php
//memasukkan file config.php
include('../database.php');

?>
 <!-- <meta name="csrf-token" content="{{ csrf_token() }}"> -->
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
  <title>DataTables example - Bootstrap 3</title>
  <!-- <link rel="shortcut icon" type="image/png" href="/media/images/favicon.png"> -->
  <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap.min.css">
  <!-- <style type="text/css" class="init"> -->
  
  </style>
  <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap.min.js"></script>
  <!-- <script type="text/javascript" language="javascript" src="../resources/demo.js"></script> -->
  <script type="text/javascript" class="init"></script>
 

    <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Halaman Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="?hal=dashboard">Dashboard</a></li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>

    <!-- Main content -->
   <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <!-- <h3 class="card-title">Bordered Table</h3> -->
                              
          
    <!-- <table class="table table-bordered data-table"> -->
                        </div>    
                    <div class="card-body">
                        <div class="card-body table-responsive p-0">
                       
            <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Top 10 ChatBot </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                                      

                                      <div class="pieID pie">
                                         </div>
                                         <ul class="pieID legend">
                                    <?php
                                        $no=1;
                                        $cb = mysqli_query($con,"SELECT count(*) as total, chatbot_hints.question FROM log inner join chatbot_hints on log.id_hint_id=chatbot_hints.id_hint where log.id_hint_id is not null group by id_hint_id order by total desc limit 5;");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo '<li>
                                                    <em>'.$row['question'].'</em>
                                                    <span>'.$row['total'].'</span>
                                                    </li>';
                              
                              

                                        }
                                    ?>
                            
                      
                                    <?php
                                        $no=1;
                                        $cb = mysqli_query($con,"SELECT count(*) as total, chatbot_hints_eng.question FROM log inner join chatbot_hints_eng on log.id_hint_eng=chatbot_hints_eng.id_hint where log.id_hint_eng is not null group by id_hint_eng order by total desc limit 5;");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo '<li>
                                                    <em>'.$row['question'].'</em>
                                                    <span>'.$row['total'].'</span>
                                                    </li>';
                              
                              

                                        }
                                    ?>
                                  </ul>
                        </div>
                      </div>
                      
                      <!-- /.card -->
                    </div>

                           

                     <div class="col-md-12">
                              <div class="card">
                                <div class="card-header">
                                  <h3 class="card-title">*</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                  <table class="table table-bordered">
                                    <thead>                  
                                      <tr>
                                        <th style="width: 10px">No</th>
                                        <th>ChatBot</th>
                                        <th>Terakhir Dilihat</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                   
                                    <?php
                                        $no=1;
                                        $cb = mysqli_query($con,"SELECT chatbot_hints_eng.question,date FROM log inner join chatbot_hints_eng on log.id_hint_eng=chatbot_hints_eng.id_hint  order by date desc limit 2 ;");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo "<tr>
                                            <td>".$no."</td>
                                            <td>".$row['question']."</td>
                                            <td>".$row['date']."</td>";
                                        $no+=1;
                                        }
                                        $cb = mysqli_query($con,"SELECT chatbot_hints.question,date FROM log inner join chatbot_hints on log.id_hint_id=chatbot_hints.id_hint order by date desc limit 2 ;");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo "<tr>
                                            <td>".$no."</td>
                                            <td>".$row['question']."</td>
                                            <td>".$row['date']."</td>";
                                        $no+=1;
                                        }
                                    ?>
                            </tbody>
                          </table>
                        </div>
                      </div>
                      
                      <!-- /.card -->
                    </div>

                     


                        </div>
                    </div>
                </div>
            </div>
        </div>

 <style type="text/css">
   .pieID {
  display: inline-block;
  vertical-align: top;
}
.pie {
  height: 220px;
  width: 220px;
  position: relative;
  margin: 0 30px 30px 0;
}
.pie::before {
  content: "";
  display: block;
  position: absolute;
  z-index: 1;
  width: 100px;
  height: 100px;
  background: #EEE;
  border-radius: 50%;
  top: 50px;
  left: 50px;
}
.pie::after {
  content: "";
  display: block;
  width: 120px;
  height: 2px;
  background: rgba(0,0,0,0.1);
  border-radius: 50%;
  box-shadow: 0 0 3px 4px rgba(0,0,0,0.1);
  margin: 220px auto;
  
}
.slice {
  position: absolute;
  width: 220px;
  height: 220px;
  clip: rect(0px, 220px, 220px, 100px);
  animation: bake-pie 1s;
}
.slice span {
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  background-color: black;
  width: 200px;
  height: 200px;
  border-radius: 50%;
  clip: rect(0px, 200px, 200px, 100px);
}
.legend {
  list-style-type: none;
  padding: 0;
  margin: 0;
  background: #FFF;
  /*padding: 15px;*/
  font-size: 13px;
  /*box-shadow: 1px 1px 0 #DDD,
              2px 2px 0 #BBB;*/
}
.legend li {
  width: 103%;
  height: 1.25em;
  margin-bottom: 0.7em;
  padding-left: 0.5em;
  border-left: 1.25em solid black;
}
.legend em {
  font-style: normal;
}
.legend span {
  float: right;
}


 </style>
<script type="text/javascript">
  function sliceSize(dataNum, dataTotal) {
  return (dataNum / dataTotal) * 360;
}
function addSlice(sliceSize, pieElement, offset, sliceID, color) {
  $(pieElement).append("<div class='slice "+sliceID+"'><span></span></div>");
  var offset = offset - 1;
  var sizeRotation = -179 + sliceSize;
  $("."+sliceID).css({
    "transform": "rotate("+offset+"deg) translate3d(0,0,0)"
  });
  $("."+sliceID+" span").css({
    "transform"       : "rotate("+sizeRotation+"deg) translate3d(0,0,0)",
    "background-color": color
  });
}
function iterateSlices(sliceSize, pieElement, offset, dataCount, sliceCount, color) {
  var sliceID = "s"+dataCount+"-"+sliceCount;
  var maxSize = 179;
  if(sliceSize<=maxSize) {
    addSlice(sliceSize, pieElement, offset, sliceID, color);
  } else {
    addSlice(maxSize, pieElement, offset, sliceID, color);
    iterateSlices(sliceSize-maxSize, pieElement, offset+maxSize, dataCount, sliceCount+1, color);
  }
}
function createPie(dataElement, pieElement) {
  var listData = [];
  $(dataElement+" span").each(function() {
    listData.push(Number($(this).html()));
  });
  var listTotal = 0;
  for(var i=0; i<listData.length; i++) {
    listTotal += listData[i];
  }
  var offset = 0;
  var color = [
    "cornflowerblue", 
    "olivedrab", 
    "orange", 
    "tomato", 
    "crimson", 
    "purple", 
    "turquoise", 
    "forestgreen", 
    "navy", 
    "gray"
  ];
  for(var i=0; i<listData.length; i++) {
    var size = sliceSize(listData[i], listTotal);
    iterateSlices(size, pieElement, offset, i, 0, color[i]);
    $(dataElement+" li:nth-child("+(i+1)+")").css("border-color", color[i]);
    offset += size;
  }
}
createPie(".pieID.legend", ".pieID.pie");

</script>

    
    </section>
 
 <script type="text/javascript">
   $('#tambah_data').click(function (){  
  jQuery('#modal-judul-detil').text("TAMBAH DATA");
  $('#tambah-edit-modal').modal('show');

 });

function hapus_data(id){
  console.log(id)
}

function preview_map(data){
  console.log(data);
  if (data != ''){

   var map_objek=cek_map(data);
      console.log(map_objek);
      jQuery('#preview_map').empty();
      var html = '<iframe src="'+map_objek+'" allowfullscreen style="width:100%;height:150px;"></iframe>';
      jQuery('#preview_map').append(html);      
  }
  else{
      jQuery('#preview_map').empty();

  }

}

function preview_video(data){
  console.log(data);
if (data != ''){
   var video_objek=cek_video(data);
      console.log(video_objek);
      jQuery('#preview_video').empty();
      var html = '<iframe src="'+video_objek+'" allowfullscreen style="width:100%;height:150px;"></iframe>';
      jQuery('#preview_video').append(html);      
}
else{
      jQuery('#preview_video').empty();

}
}

function cek_video(data){
    var srcContent = data.replace('watch?v=','embed/');
    return srcContent;
}
function cek_map(data){
    var linkKey = "https://www.google.com/maps/embed/v1/search?key=AIzaSyBK73HewkhHBVVs9nI98-HY_N7cZM_kdjE";
    var zoom = 14;
    srcContent = linkKey + "&q=" + data + "&zoom=" + zoom;
    return srcContent;
};

   // EDIT
    $('body').on('click', '.edit-post', function () {
        var data_id = $(this).data('id');
        var data_question = $(this).data('question');
        var data_reply = $(this).data('reply');
        var data_map = $(this).data('map');
        var data_video = $(this).data('video');   
        jQuery('#modal-judul-detil').text("EDIT DATA");
        $('#id').val(data_id);
        $('#input').val(data_question);
        $('#jawaban').val(data_reply);
        $('#map').val(data_map);
        $('#video').val(data_video);
        $('#tambah-edit-modal').modal('show');
            
       });


   // HAPUS
    $('body').on('click', '.hapus-post', function () {
        var data_id = $(this).data('id');
        console.log(data_id);
      $.ajax({
      url: "hapus_ajax.php",
      type: "POST",
      data:{
        id: data_id,
        tabel:'chatbot_hints'
      },
      success: function(dataResult){
        var dataResult = JSON.parse(dataResult);
        if(dataResult.status=='success'){
          // alert("success");
        alert("Berhasil menghapus data."); document.location="update_IR.php";
           var oTable = $('#tabel').dataTable(); //inialisasi datatable
                            oTable.fnDraw(false); //reset datatable

        
      }
    }
    });
    });

// VIEW MAP
    $('body').on('click', '.view-map', function () {
      var objek= $(this).data('map');
      var map_objek=cek_map(objek);
      console.log(map_objek);
      jQuery('#isi-modal-detil').empty();
      var html = '<iframe src="'+map_objek+'" allowfullscreen style="width:100%;height:300px;"></iframe>';
      jQuery('#isi-modal-detil').append(html);      
      jQuery('#modal-bawah-detil').text(objek);
      jQuery('#modal-judul-detil').text("Via Google Maps");
      $('#detail_map_video').modal('show');

          });
// VIEW VIDEO
    $('body').on('click', '.view-video', function () {
      var objek= $(this).data('video');
      var video_objek=cek_video(objek);
      console.log(video_objek);
      jQuery('#isi-modal-detil').empty();
      var html = '<iframe src="'+video_objek+'" allowfullscreen style="width:100%;height:300px;"></iframe>';
      jQuery('#isi-modal-detil').append(html);      
      jQuery('#modal-bawah-detil').text("URL Youtube : "+objek);
      jQuery('#modal-judul-detil').text("Via Youtube");
      $('#detail_map_video').modal('show');
          });


//DATA TABLE 
$(document).ready(function() {
    $('#tabel').DataTable();
} );

</script>


   <?php
    if(isset($_POST['submit'])){


       $id  = $_POST['id'];
      $input  = $_POST['input'];
      $jwb    = $_POST['jawaban'];
      $map    = $_POST['map'];
      $video    = $_POST['video'];


      if($id!=""){
        $sql = mysqli_query($con, "UPDATE chatbot_hints SET question='$input', reply='$jwb', map='$map', video='$video' WHERE id_hint='$id'") or die(mysqli_error($con));
      
      if($sql){
        echo '<script>alert("Berhasil mengupdate data."); document.location="update_IR.php";</script>';
      }else{
        echo '<div class="alert alert-warning">Gagal melakukan proses edit data.</div>';
      }
      }

      else{
        $sql = mysqli_query($con, "INSERT INTO chatbot_hints(question, reply,map,video) VALUES('$input', '$jwb','$map','$video')") or die(mysqli_error($con));
        
        if($sql){
          echo '<script>alert("Berhasil menambahkan data."); document.location="update_IR.php";</script>';
        }else{
          echo '<div class="alert alert-warning">Gagal melakukan proses tambah data.</div>';
        }
      }
    }
    ?>
