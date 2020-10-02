<?php
//memasukkan file config.php
include('../database.php');

?>
 <!-- <meta name="csrf-token" content="{{ csrf_token() }}"> -->
    <!-- Content Header (Page header) -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Halaman Chatbot Indonesia</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="/">Dashboard</a></li>
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
                            <table class="table table-striped table-bordered" id="tabel" >
                                <thead>
                                <tr>
								 <th>NO.</th>
                    <th>INPUT PESAN</th>
                    <th>JAWABAN</th>
                    <th>AKSI</th>
                                </tr>
                                </thead>
                                 <tbody>
                <?php
                //query ke database SELECT tabel mahasiswa urut berdasarkan id yang paling besar
                $sql = mysqli_query($con, "SELECT * from chatbot_hints ORDER BY id_hint ASC") or die(mysqli_error($con));
                //jika query diatas menghasilkan nilai > 0 maka menjalankan script di bawah if...
                if(mysqli_num_rows($sql) > 0){
                    //membuat variabel $no untuk menyimpan nomor urut
                    $no = 1;
                    //melakukan perulangan while dengan dari dari query $sql
                    while($data = mysqli_fetch_assoc($sql)){
                        //menampilkan data perulangan
                        echo '
                        <tr>
                            <td>'.$no.'</td>
                            <td>'.$data['question'].'</td>
                            <td>'.$data['reply'].'</td>
                            <td>
                                <a href="edit.php?id='.$data['id_hint'].'" class="badge badge-warning">Edit</a>
                                <a href="hapus.php?id='.$data['id_hint'].'" class="badge badge-danger" onclick="return confirm(\'Yakin ingin menghapus data ini?\')">Delete</a>
                            </td>
                        </tr>
                        ';
                        $no++;
                    }
                //jika query menghasilkan nilai 0
                }else{
                    echo '
                    <tr>
                        <td colspan="6">Tidak ada data.</td>
                    </tr>
                    ';
                }
                ?>
            <tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 


    <!-- MULAI MODAL FORM TAMBAH/EDIT-->
    <div class="modal fade" id="tambah-edit-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modal-judul"></h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="tambah.php" method="POST" id="form-tambah-edit" name="form-tambah-edit" class="form-horizontal">
                       <div class="form-group row">
        <label class="col-sm-2 col-form-label">INPUT PESAN</label>
        <div class="col-sm-10">
          <input type="text" name="input" id="input" class="form-control" required>
        </div>
      </div>
      
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">JAWABAN</label>
        <div class="col-sm-10">
          <input type="text" name="jawaban" id="jawaban" class="form-control" required>
        </div>
      </div>
      
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">&nbsp;</label>
        <div class="col-sm-10">
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

    
    </section>
 
 <script type="text/javascript">
   $('#tambah_data').click(function (){  
  $('#tambah-edit-modal').modal('show');

 });

   <?php
    if(isset($_POST['submit'])){

      $input  = $_POST['input'];
      $jwb    = $_POST['jawaban'];
      
        $sql = mysqli_query($con, "INSERT INTO chatbot_hints(question, reply) VALUES('$input', '$jwb')") or die(mysqli_error($con));
        
        if($sql){
          echo '<script>alert("Berhasil menambahkan data."); document.location="update_IR.php";</script>';
        }else{
          echo '<div class="alert alert-warning">Gagal melakukan proses tambah data.</div>';
        }
      
    }
    ?>
 </script>
