<?php
require_once 'app/functions/MY_model.php';

$dokter = mysqli_query($conn, "SELECT * FROM dokter");
$count_dokter = mysqli_num_rows($dokter);

$pasien = mysqli_query($conn, "SELECT * FROM pasien");
$count_pasien = mysqli_num_rows($pasien);

$ruang = mysqli_query($conn, "SELECT * FROM ruang");
$count_ruang = mysqli_num_rows($ruang);

$obat = mysqli_query($conn, "SELECT * FROM obat");
$count_obat = mysqli_num_rows($obat);

$poliumum = mysqli_query($conn, "SELECT * FROM poliumum");
$count_poliumum = mysqli_num_rows($poliumum);

$poligigi = mysqli_query($conn, "SELECT * FROM poligigi");
$count_poligigi = mysqli_num_rows($poligigi);

$polikandungan = mysqli_query($conn, "SELECT * FROM polikandungan");
$count_polikandungan = mysqli_num_rows($polikandungan);

// $_SESSION['title'] = 'Dashboard';
?>
<!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">
  <div class="row">
    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-primary p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-users text-primary font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_dokter; ?></h2>
          <p class="mb-0">Dokter</p>
        </div>
        <div class="card-content">
          <!-- <div id="dokter-chart"></div> -->
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-primary p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-users text-primary font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_pasien; ?></h2>
          <p class="mb-0">Pasien</p>
        </div>
        <div class="card-content">
          <!-- <div id="pasien-chart"></div> -->
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-primary p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-check-square text-primary font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_ruang; ?></h2>
          <p class="mb-0">Ruang</p>
        </div>
        <div class="card-content">
          <!-- <div id="ruang-chart"></div> -->
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-warning p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-package text-warning font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_obat; ?></h2>
          <p class="mb-0">Obat</p>
        </div>
        <div class="card-content">
          <!-- <div id="obat-chart"></div> -->
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-primary p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-pie-chart text-primary font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_poliumum; ?></h2>
          <p class="mb-0">Antrian Poli Umum</p>
        </div>
        <div class="card-content">
          <!-- <div id="pasien-chart"></div> -->
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-primary p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-pie-chart text-primary font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_poligigi; ?></h2>
          <p class="mb-0">Antrian Poli Gigi</p>
        </div>
        <div class="card-content">
          <!-- <div id="pasien-chart"></div> -->
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 col-12">
      <div class="card">
        <div class="card-header d-flex flex-column align-items-start pb-0">
          <div class="avatar bg-rgba-primary p-50 m-0">
            <div class="avatar-content">
              <i class="feather icon-pie-chart text-primary font-medium-5"></i>
            </div>
          </div>
          <h2 class="text-bold-700 mt-1 mb-25"><?= $count_polikandungan; ?></h2>
          <p class="mb-0">Antrian Poli Kandungan</p>
        </div>
        <div class="card-content">
          <!-- <div id="pasien-chart"></div> -->
        </div>
      </div>
    </div>

  </div>
</section>
<!-- Dashboard Analytics end -->

<script>
  var count_dokter = '<?php echo $count_dokter; ?>';
</script>
<?php
$addon_script = ['assets/vendors/js/charts/apexcharts.min.js', 'assets/js/pages/dashboard.js'];
$prepend_style = ['assets/css/pages/dashboard.css'];
?>