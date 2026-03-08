<?php
session_start();
require_once '../../functions/MY_model.php';
$pasien_id = $_POST['pasien_id'];
$keterangan1 = $_POST['keterangan1'];
$query = "INSERT INTO poliumum VALUES('', '$pasien_id', '$keterangan1')";
if (create($query) === 1) {
  echo '<script>document.location.href="../../../?page=ant-poliumum";</script>';
} else {
  echo mysqli_error($conn);
}
