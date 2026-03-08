<?php
session_start();
require_once '../../functions/MY_model.php';

$id = $_POST['id'];
$pasien_id = $_POST['pasien_id'];
$keterangan = $_POST['keterangan'];
$query = "UPDATE poligigi SET pasien_id = '$pasien_id', keterangan = '$keterangan' WHERE id = '$id'";
if (create($query) === 1) {
  echo '<script>document.location.href="../../../?page=ant-poligigi";</script>';
} else {
  echo mysqli_error($conn);
}
