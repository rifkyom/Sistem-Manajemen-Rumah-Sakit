<?php
session_start();
require_once '../functions/MY_model.php';
require_once '../functions/config.php';

$url = 'http://localhost/medis/';
if (isset($_SESSION['user'])) {
  echo '<script>document.location.href="' . $url . '"</script>';
  exit;
}

if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];

  $query = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username' ");

  if (mysqli_num_rows($query) === 1) {
    $row = mysqli_fetch_assoc($query);

    if (password_verify($password, $row['password'])) {
      $_SESSION['user'] = $row;
      echo '<script>document.location.href="' . $url . '"</script>';
      exit;
    }
  }
}
?>
<!DOCTYPE html>
<html lang="en" class="loading" data-textdirection="ltr"> 
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Admin</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="Vuesax admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
  <meta name="keywords" content="admin template, Vuesax admin template, dashboard template, flat admin template, responsive admin template, web app">
  <meta name="author" content="PIXINVENT">
  <title>Login Page</title>
  <link rel="apple-touch-icon" href="../../assets/images/ico/apple-icon-120.png">
  <link rel="shortcut icon" type="image/x-icon" href="../../assets/images/ico/favicon.ico">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="pos/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="pos/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="pos/dist/css/adminlte.min.css">
  <style>

 body{
  background-image: url('../../assets/images/profile/kliniik.jpeg');
  background-size: cover; 
  background-position: center center; 
  background-repeat: no-repeat; 
  background-attachment: fixed; 
  height: 100vh; 
  margin: 0;
}
</style>
</head>

<body class="hold-transition login-page" >
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="#" class="h1"><b>KLINIK</b><br>PRATAMA MARKO</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form action="" method="post">
        <div class="input-group mb-3">
          <input type="text" name="username" class="form-control" id="user-name" placeholder="Username" required >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password"  class="form-control" name="password" id="user-password" placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
       
          <!-- /.col -->
          <div class="col-4">
            <button type="submit"  name="login"class="btn btn-primary btn-block">Log In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="pos/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="pos/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="pos/dist/js/adminlte.min.js"></script>
</body>
</html>
