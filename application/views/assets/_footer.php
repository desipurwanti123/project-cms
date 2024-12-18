<div class="call-to-action" style="background-color: #04364e; color: #fff; padding: 40px 20px;">
    <div class="container">
      <div class="row">
        <!-- Kolom Profil -->
        <div class="col-lg-4">
            <h3 style="color: #fff;margin-bottom:5px;"><?= $konfig->judul_website; ?></h3>
            <p style="color: #fff;"><?= $konfig->profil_website; ?></p>
            <div style="display: flex; gap: 10px;">
                <a href="<?= $konfig->facebook; ?>" style="color: #fff; font-size: 24px;"><i class="fab fa-facebook"></i></a>
                <a href="<?= $konfig->instagram; ?>" style="color: #fff; font-size: 24px;"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
        <!-- Kolom Kontak -->
        <div class="col-lg-4">
            <h3 style="color: #fff;margin-bottom:5px;">Contact Us</h3>
            <ul style="list-style: none; padding: 0;margin-bottom:5px;">
                <li style="margin-bottom:5px;"><strong>Alamat:</strong> <?= $konfig->alamat; ?></li>
                <li style="margin-bottom:5px;"><strong>Email:</strong> <a href="mailto:contoh@gmail.com" style="color: #fff;"><?= $konfig->email; ?></a></li>
                <li style="margin-bottom:5px;"><strong>Phone:</strong> <?= $konfig->no_wa; ?></li>
            </ul>
        </div>
        <!-- Kolom Quick Links -->
        <div class="col-lg-4">
            <h3 style="color: #fff;margin-bottom:5px;">Quick Links</h3>
            <ul style="list-style: none; padding: 0;">
                <li><a href="<?= base_url() ?>" style="color: #fff; text-decoration: none;">Home</a></li>
                <?php foreach ($kategori as $kategori) { ?>
                <li><a href="<?= base_url('home/kategori/'.$kategori['id_kategori']) ?>" style="color: #fff; text-decoration: none;"><?= $kategori['nama_kategori'] ?></a></li>
                <?php } ?>
            </ul>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
        <p>Copyright © 2024 <a href="#">Woox</a> Company. All rights reserved. 
        </div>
      </div>
    </div>
  </footer>