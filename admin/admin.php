
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
                       
           
                              <?php
                                        $cb = mysqli_query($con,"SELECT * FROM admin ;");
                                        while($row = mysqli_fetch_array($cb))
                                        {?>
                                        

              <div class="col-12 col-sm-12 d-flex align-items-stretch">
              <div class="card bg-light">
               
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <div id="txt_user" class="lead"><?php echo $row['username'] ?></div>
                      <div id="txt_pass"><?php echo $row['password'] ?></div>
                      
                    </div>
                    <div class="col-5 text-center">
                      <img src="lte/dist/img/user2-160x160.jpg" alt="" class="img-circle img-fluid">
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    
                   <?php echo "<a href='javascript:void(0)' data-id='".$row['id_admin']."' data-username='".$row['username']."' data-password='".$row['password']."' data-toggle='tooltip' title='Edit Data Admin' class='badge badge-primary edit-post'><i class='far fa fa-edit'></i> Edit Data</a>";?>
                  </div>
                </div>
              </div>
            </div>
            <?php }?>
        
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
                    <div class="modal-title" id="modal-judul-detil" style="font-weight: bold;"></div>

                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="" method="POST" id="form-tambah-edit" name="form-tambah-edit" class="form-horizontal">
                       
                                <div class="form-group row">
                                  <div class="col-md-6">
                                    <label>Username</label>
                                    <input type="text" name="username" id="username" class="form-control" placeholder="Username" >
                                  </div>
                                  <div class="col-md-6">
                                    <label>Password</label>
                                    <input type="text" name="password" id="password" class="form-control" placeholder="Password" >

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
    
    </section>
 
 <script type="text/javascript">

   // EDIT
    $('body').on('click', '.edit-post', function () {
        var data_id = $(this).data('id');
        var data_username = $(this).data('username');
        var data_password = $(this).data('password');
        jQuery('#modal-judul-detil').text("EDIT DATA");
        $('#id').val(data_id);
        $('#username').val(data_username);
        $('#password').val(data_password);
        $('#tambah-edit-modal').modal('show');
        // $('#username_judul b').html(data_username);
        // $('#password_judul b').html(data_password);
            
       });


</script>


   <?php
    if(isset($_POST['submit'])){


       $id  = $_POST['id'];
       $username    = $_POST['username'];
       $password    = $_POST['password'];



      if($id!=""){
        $sql = mysqli_query($con, "UPDATE admin SET username='$username', password='$password' WHERE id_admin='$id'") or die(mysqli_error($con));
      
      if($sql){
        echo '<script>alert("Berhasil mengupdate data."); document.location="index.php?hal=admin";</script>';
      }else{
        echo '<div class="alert alert-warning">Gagal melakukan proses edit data.</div>';
      }
      }

      else{
        $sql = mysqli_query($con, "INSERT INTO admin(username,password) VALUES('$username','$password')") or die(mysqli_error($con));
        
        if($sql){
          echo '<script>alert("Berhasil menambahkan data.");';
        }else{
          echo '<div class="alert alert-warning">Gagal melakukan proses tambah data.</div>';
        }
      }
    }
    ?>
