<?php require_once('assets/_css.php') ?>

<body style="background-color:#fff;">

  <?php require_once('assets/_header.php') ?>
  
  <div class="visit-country">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h2 style="color: #000;"><?= $nama_kategori; ?></h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8">
          <div class="items">
            <div class="row">
              <?php foreach ($konten as $aa) { ?>
              <div class="col-lg-12">
                <div class="item">
                  <div class="row">
                    <div class="col-lg-4 col-sm-5">
                      <div class="image">
                        <img src="<?= base_url('assets/upload/konten/'.$aa['foto']) ?>" alt="">
                      </div>
                    </div>
                    <div class="col-lg-8 col-sm-8">
                      <div class="right-content">
                        <h4 style="color: #000;"><?= $aa['judul']; ?></h4>
                        <span><?= $aa['nama_kategori']; ?></span>
                        <div class="main-button">
                          <a href="<?= base_url('home/artikel/'.$aa['slug']) ?>">Selengkapnya</a>
                        </div>
                        <ul class="info mt-3">
                          <li><i class="fa fa-home"></i><?= $aa['alamat']; ?></li>
                        </ul>
                        <p><?= $aa['slug']; ?></p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php require_once('assets/_footer.php') ?>

  <?php require_once('assets/_js.php') ?>
