<?php
session_start();
require_once '../../functions/MY_model.php';
$pasien_id = $_POST['pasien_id'];
$keterangan = $_POST['keterangan'];
$query = "INSERT INTO polikandungan VALUES('', '$pasien_id', '$keterangan')";
if (create($query) === 1) {
  echo '<script>document.location.href="../../../?page=ant-polikan";</script>';
} else {
  echo mysqli_error($conn);
}
