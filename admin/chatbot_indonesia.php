
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
              <h1 class="m-0 text-dark">Halaman Chatbot Indonesia</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="?hal=dashboard">Dashboard</a></li>
                <li class="breadcrumb-item active">Chatbot Indonesia </li>
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
                              <a href="javascript:void(0)" class="btn btn-success mb-2" id="tambah_data">Add New</a> 
          
    <!-- <table class="table table-bordered data-table"> -->
                        </div>    
                    <div class="card-body">
                        <div class="card-body table-responsive p-0">
                           

                           <table id="tabel" class="table table-striped table-bordered" style="width:100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Input Chat</th>
                  <th>Jawaban</th>
                  <th>Map</th>
                  <th>Video</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                

                                    <?php
                                        $no=1;
                                        $cb = mysqli_query($con,"select * from chatbot_hints");
                                        while($row = mysqli_fetch_array($cb))
                                        {
                                            echo "<tr>
                                            <td>".$no."</td>
                                            <td  style='text-align: justify;'>".$row['question']."</td>
                                            <td  style='text-align: justify;'>".$row['reply']."</td>"?>
                                            <?php if ($row['map']!=''){
                                            echo "<td><a href='javascript:void(0)'  data-map='".$row['map']."' data-toggle='tooltip' title='Lihat Map' class='badge badge-success view-map'><i class='far fa fa-search'></i> Map</a></td>";                          
                                            }  
                                            else{
                                            echo "<td><span class='badge badge-danger'><i class='far fa fa-times'></i> Map</span></td>";                       
                                            }
                                            if ($row['video']!=''){
                                            echo "<td><a href='javascript:void(0)' data-video='".$row['video']."' data-toggle='tooltip' title='Lihat Video' class='badge badge-success view-video'><i class='far fa fa-search'></i> Video</a></td>";
                                            }  
                                            else{
                                            echo "<td><span class='badge badge-danger'><i class='far fa fa-times'></i> Video</span></td>";
                                          }
                                            
                                            echo"<td>
                                            <a href='javascript:void(0)' data-id='".$row['id_hint']."' data-question='".$row['question']."' data-reply='".$row['reply']."' data-map='".$row['map']."' data-video='".$row['video']."'  data-toggle='tooltip' title='Edit Data' class='badge badge-primary edit-post'><i class='far fa fa-edit'></i> Edit Data</a>
                                            <a href='javascript:void(0)' data-id='".$row['id_hint']."' data-question='".$row['question']."' data-toggle='tooltip' title='Hapus Data' class='badge badge-warning hapus-post'><i class='far fa-trash-alt'></i> Hapus Data</a>
                                              </td>       
                                        </tr>";
                                        $no+=1;
                                        }
                                    ?>
              </tfoot>
            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 
   <!-- MULAI MODAL KONFIRMASI DELETE-->

 <div class="modal fade" tabindex="-1" role="dialog" id="konfirmasi-modal" data-backdrop="false">
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">PERHATIAN</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="text-hapus"></div>
                    <p>*data tersebut hilang selamanya, apakah anda yakin?</p>
                </div>
                <div class="modal-footer bg-whitesmoke br">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="button" class="btn btn-danger"  name="tombol-hapus" id="tombol-hapus">Hapus
                        Data</button>
                </div>
            </div>
        </div>
    </div>

    <!-- MULAI MODAL FORM TAMBAH/EDIT-->
    <div class="modal fade" id="tambah-edit-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="modal-judul-detil" style="font-weight: bold;"></div>

                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="" method="POST" id="form-tambah-edit" name="form-tambah-edit" class="form-horizontal">
                       <div class="form-group row">
                                  <div class="col-md-12">
                                  <label >Input Chat</label>
                                   <textarea name="input" id="input" class="form-control" required placeholder="Teks Input ChatBot"  rows="2"></textarea>
                                  </div>
                                </div>
                                
                                <div class="form-group row">
                                  <div class="col-md-12">
                                  <label>Jawaban ChatBot</label>
                                     <textarea name="jawaban" id="jawaban" class="form-control" placeholder="Teks Jawaban ChatBot" rows="2"></textarea>
                                  </div>
                                </div>

                                <div class="form-group row">
                                  <div class="col-md-6">
                                    <label>Keyword Map</label>
                                    <input type="text" name="map" id="map" class="form-control" placeholder="Nama Lokasi" onchange="preview_map(this.value)">
                                  </div>
                                  <div class="col-md-6">
                                    <label>URL Youtube Video</label>
                                    <input type="text" name="video" id="video" class="form-control"  placeholder="URL Video Youtube" onchange="preview_video(this.value)">
                                  </div>
                                </div>

                                 <div class="form-group row">
                                 <div class="col-md-6">
                                  <!-- <label>*</label> -->
                                    <div id="preview_map"></div>
                                  </div>
                                  <div class="col-md-6">
                                    <!-- <label>*</label> -->
                                    <div id="preview_video"></div>
                                  </div>
                                </div>

                                <hr>
                                <div class="form-group row ">
                                  <div class="col-md-12">
                                     <input type="hidden" name="id" id="id" class="form-control">
                                    <input type="submit" name="submit" class="btn btn-primary" value="SIMPAN">
                                  </div>
                                </div>
                              </form>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>


 <div class="modal fade" id="detail_map_video" role="dialog" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="modal-judul-detil" style="font-weight: bold;"></div>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                <div class="row" id="isi-modal-detil">
                </div>
                </div>
                <div class="modal-footer">
                <div style="text-align: center; width:100%; " id="modal-bawah-detil"></div>
                </div>
            </div>
        </div>
    </div>

    
    </section>
 
 <script type="text/javascript">
   $('#tambah_data').click(function (){  
  jQuery('#modal-judul-detil').text("TAMBAH DATA");
   $('#id').val('');
        $('#input').val('');
        $('#jawaban').val('');
        $('#map').val('');
        $('#video').val('');
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
        jQuery('#preview_map').empty();
        jQuery('#preview_video').empty();

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
        var data_question = $(this).data('question');

        console.log(data_id);
        $('#text-hapus').text(data_question);
        $('#konfirmasi-modal').modal('show');

        $('#tombol-hapus').click(function(){
        $.ajax({
          url: "hapus_ajax.php",
          type: "POST",
          data:{
            id: data_id,
            tabel:'chatbot_hints'
          },
          success: function(dataResult){
            var dataResult = JSON.parse(dataResult);
            console.log("hapus",dataResult);
            if(dataResult.status=='success'){
            alert("Berhasil menghapus data."); document.location="update_IR.php";
               var oTable = $('#tabel').dataTable(); //inialisasi datatable
                                oTable.fnDraw(false); //reset datatable

            
          }
        }
        });
        $('#konfirmasi-modal').modal('hide');


        })

  
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
