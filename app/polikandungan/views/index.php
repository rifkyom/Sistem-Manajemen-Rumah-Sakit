<?php
require_once 'app/functions/MY_model.php';
$polikandungans = get("SELECT * FROM polikandungan");
$polikandungans = get("SELECT *, pk.id as pk_id FROM polikandungan pk
INNER JOIN pasien ON pk.pasien_id = pasien.id ");

$no = 1;

?>


<section id="column-selectors1">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Ruang Poli Kandungan</h4>
          <a href="?page=tambah-polikan" class="btn btn-primary round waves-effect waves-light">
            Tambah Pasien
          </a>
        </div>
        <div class="card-content">
          <div class="card-body card-dashboard">
            <div class="table-responsive">
              <table class="table table-striped dataex-html5-selectors">
                <thead>
                  <tr>
                    <th></th>
                    <th>Nama</th>
                    <th>Keterangan</th>
                    <th>Aksi</th>

                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($polikandungans as $polikandungan) : ?>
                    <tr>
                      <td><?= $no++ ?></td>
                      <td><?= $polikandungan['nama_pasien']; ?></td>
                      <td><?= $polikandungan['keterangan']; ?></td>
                      <td>
                        <a href="?page=edit-polikan&id=<?= $polikandungan['pk_id']; ?>"><i class="m-1 feather icon-edit-2"></i></a>
                        <a href="?page=hapus-polikan&id=<?= $polikandungan['pk_id']; ?>" class="btn-hapus"><i class="feather icon-trash"></i></a>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>