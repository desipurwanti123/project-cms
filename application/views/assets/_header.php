<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="main-nav">
          <!-- ***** Logo Start ***** -->
          <a href="<?= base_url('auth') ?>" class="logo">
            <img src="assets/upload/logo.png" alt="">
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
            <li><a href="<?= base_url('home') ?>" class="active">Beranda</a></li>
            <?php foreach ($kategori as $kate) { ?>
              <li>
                <a href="<?= base_url('home/kategori/' . $kate['id_kategori']) ?>">
                  <?= $kate['nama_kategori'] ?>
                </a>
              </li>
            <?php } ?>
          </ul>
          <a class='menu-trigger'>
            <span>Menu</span>
          </a>
          <!-- ***** Menu End ***** -->
          <a href="<?= base_url('auth') ?>" style="margin-top: 15px;">
            <button type="button" class="btn btn-warning">Login</button>
          </a>
        </nav>
      </div>
    </div>
  </div>
</header>
<!-- ***** Header Area End ***** -->