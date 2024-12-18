<?php require_once('assets/_css.php') ?>

<body style="background-color:#fff;">

  <?php require_once('assets/_header.php') ?>

  <!-- ***** Main Banner Area Start ***** -->
  <div class="about-main-content">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
            <div class="blur-bg"></div>
            <h2><?= $konten->judul; ?></h2>
            <div class="line-dec"></div>
            <p style="font-size:20px;"><?= $konten->keterangan; ?></p>
            <!-- <div class="main-button">
              <a href="reservation.html">Discover More</a>
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ***** Main Banner Area End ***** -->

  <div class="more-about">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="left-image">
            <img src="<?= base_url('assets/upload/konten/'.$konten->foto) ?>" alt="">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="section-heading">
            <h2>Informasi Umum</h2>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <div class="info-item">
                <h4 style="color:#22b3c1;">Kontak</h4>
                <span style="color: #000;"><?= $konten->kontak; ?></span>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="info-item">
                <h4 style="color:#22b3c1;">Alamat</h4>
                <span style="color: #000;"><?= $konten->alamat; ?></span>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="info-item">
                <h4 style="color:#22b3c1;">Fasilitas</h4>
                <span style="color: #000;"><?= $konten->fasilitas ?></span>
              </div>
            </div>
          </div>  
        </div>
      </div>
    </div>
  </div>

  <?php require_once('assets/_footer.php') ?>

  <?php require_once('assets/_js.php') ?>
