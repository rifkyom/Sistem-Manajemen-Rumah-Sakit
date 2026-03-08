<?php
require_once 'app/functions/MY_model.php';

$id = $_GET['id'];
$poliumum = get_where("SELECT * FROM poliumum WHERE id = '$id' ");
$pasiens = get("SELECT * FROM pasien");
?>
<div class="content-header row">

  <div class="content-header-right col-md-12">
    <a href="?page=ant-poliumum" class="btn btn-light float-right mb-2">Kembali</a>
  </div>
</div>
<section id="basic-horizontal-layouts">
  <div class="row match-height">
    <div class="col-md-12 col-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Edit Pasien</h4>
        </div>
        <div class="card-content">
          <div class="card-body">
            <form action="app/poliumum/proses/update.php" method="post">
              <input type="hidden" name="id" value="<?= $poliumum['id']; ?>">
              <div class="form-body">
                <div class="row">
                  <div class="col-12">
                    <div class="form-group row">
                      <div class="col-md-4">
                        <label>Nama </label>
                      </div>
                      <div class="col-md-8">
                      <select class="select2 form-control" name="pasien_id" required>
                          <?php foreach ($pasiens as $pasien) : ?>
                            <option value="<?= $pasien['id']; ?>"><?= $pasien['nama_pasien']; ?></option>
                          <?php endforeach; ?>
                        </select>
                      </div>
                    </div>
                  </div>

                  <div class="col-12">
                    <div class="form-group row">
                      <div class="col-md-4">
                        <label>Keterangan</label>
                      </div>
                      <div class="col-md-8">
                        <input type="text" placeholder="Keterangan" class="form-control" name="keterangan1" value="<?= $poliumum['keterangan1']; ?>">
                      </div>
                    </div>
                  </div>

                  <div class="col-md-8 offset-md-4">
                    <button type="submit" name="save" class="btn btn-primary">Save</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>