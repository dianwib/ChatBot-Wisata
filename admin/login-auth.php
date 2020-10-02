<?php
include('../database.php');

$username=$_POST['nama'];
$password=($_POST['password']);


$login="select * from admin where username='$username' and password='$password'";
$res=mysqli_query($con,$login);


if(mysqli_num_rows($res)>0){
    session_start();
    $_SESSION['masuk']=True;
    $_SESSION['username']=$username;
    $_SESSION['password']=$password;
    header('location:index.php');
}
else{
    header('location:login.php');
    
}


?>
