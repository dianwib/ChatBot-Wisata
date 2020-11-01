
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
                <h3 class="card-title">Top 5 ChatBot Indonesia</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 10px">No</th>
                      <th>Pertanyaan</th>
                      <th>Jumlah View</th>
                      </tr>
                  </thead>
                  <tbody>
                   
                                    <?php
                                        $no=1;
                                        $cb = mysqli_query($con,"SELECT count(*) as total, chatbot_hints.question FROM log inner join chatbot_hints on log.id_hint_id=chatbot_hints.id_hint where log.id_hint_id is not null group by id_hint_id limit 5;");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo "<tr>
                                            <td>".$no."</td>
                                            <td>".$row['question']."</td>
                                            <td>".$row['total']."</td>";
                                        $no+=1;
                                        }
                                    ?>
                            </tbody>
                          </table>
                        </div>
                      </div>
                      
                      <!-- /.card -->
                    </div>


                     <div class="col-md-12">
                              <div class="card">
                                <div class="card-header">
                                  <h3 class="card-title">Top 5 ChatBot English</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                  <table class="table table-bordered">
                                    <thead>                  
                                      <tr>
                                        <th style="width: 10px">No</th>
                                        <th>Pertanyaan</th>
                                        <th>Jumlah View</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                   
                                    <?php
                                        $no=1;
                                        $cb = mysqli_query($con,"SELECT count(*) as total, chatbot_hints_eng.question FROM log inner join chatbot_hints_eng on log.id_hint_eng=chatbot_hints_eng.id_hint where log.id_hint_eng is not null group by id_hint_eng limit 5;");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo "<tr>
                                            <td>".$no."</td>
                                            <td>".$row['question']."</td>
                                            <td>".$row['total']."</td>";
                                        $no+=1;
                                        }
                                    ?>
                            </tbody>
                          </table>
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
                                        <th>Pertanyaan</th>
                                        <th>Waktu</th>
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
