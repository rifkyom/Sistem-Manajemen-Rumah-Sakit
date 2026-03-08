<?php
session_start();
require_once '../../functions/MY_model.php';

$id = $_POST['id'];
$pasien_id = $_POST['pasien_id'];
$keterangan1 = $_POST['keterangan1'];
$query = "UPDATE poliumum SET pasien_id = '$pasien_id', keterangan1 = '$keterangan1' WHERE id = '$id'";
if (create($query) === 1) {
  echo '<script>document.location.href="../../../?page=ant-poliumum";</script>';
} else {
  echo mysqli_error($conn);
}
