<?php require_once('assets/_css.php') ?>

<body style="background-color:#fff;">
  <?php require_once('assets/_header.php') ?>

  <!-- ***** Main Banner Area Start ***** -->
  <section id="section-1">
    <div class="content-slider mt-8">
      <?php $i = 1;
      foreach ($carousel as $item): ?>
        <input type="radio" id="banner<?= $i ?>" class="sec-1-input" name="banner" <?= $i === 1 ? 'checked' : '' ?>>
        <?php $i++; endforeach; ?>

      <div class="slider">
        <?php $i = 1;
        foreach ($carousel as $item): ?>
          <div id="top-banner-<?= $i ?>" class="banner"
            style="background: url('<?= base_url("assets/upload/carousel/" . $item['foto']) ?>') no-repeat center center; background-size: cover;">
          </div>
          <?php $i++; endforeach; ?>
      </div>

      <nav>
        <div class="controls">
          <?php for ($j = 1; $j <= count($carousel); $j++): ?>
            <label for="banner<?= $j ?>">
              <span class="progressbar"><span class="progressbar-fill"></span></span>
              <span class="text"><?= $j ?></span>
            </label>
          <?php endfor; ?>
        </div>
      </nav>
    </div>
  </section>
  <!-- ***** Main Banner Area End ***** -->

  <div class="visit-country">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h2>Lihat tempat wisata atau lainnya yang kamu sukai sekarang</h2>
            <p>Temukan rekomendasi berbagai tempat yang dapat anda kunjungi bersama teman, pacar, bahkan keluarga di
              woox.</p>
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
                          <img src="<?= base_url('assets/upload/konten/' . $aa['foto']) ?>" alt="">
                        </div>
                      </div>
                      <div class="col-lg-8 col-sm-8">
                        <div class="right-content">
                          <h4><?= $aa['judul']; ?></h4>
                          <span><?= $aa['nama_kategori']; ?></span>
                          <div class="main-button">
                            <a href="<?= base_url('home/artikel/' . $aa['slug']) ?>">Selengkapnya</a>
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