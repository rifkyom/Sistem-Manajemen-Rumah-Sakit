<?php
require_once 'app/functions/MY_model.php';

$poligigis = get("SELECT *, pg.id as pg_id FROM poligigi pg
INNER JOIN pasien ON pg.pasien_id = pasien.id ");

$no = 1;

?>


<section id="column-selectors1">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Ruang Poli Gigi</h4>
          <a href="?page=tambah-poligigi" class="btn btn-primary round waves-effect waves-light">
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
                  <?php foreach ($poligigis as $poligigi) : ?>
                    <tr>
                      <td><?= $no++ ?></td>
                      <td><?= $poligigi['nama_pasien']; ?></td>
                      <td><?= $poligigi['keterangan']; ?></td>
                      <td>
                        <a href="?page=edit-poligigi&id=<?= $poligigi['pg_id']; ?>"><i class="m-1 feather icon-edit-2"></i></a>
                        <a href="?page=hapus-poligigi&id=<?= $poligigi['pg_id']; ?>" class="btn-hapus"><i class="feather icon-trash"></i></a>
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