  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="<?= site_url('assets/woox/') ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?= site_url('assets/woox/') ?>vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="<?= site_url('assets/woox/') ?>assets/js/isotope.min.js"></script>
  <script src="<?= site_url('assets/woox/') ?>assets/js/owl-carousel.js"></script>
  <script src="<?= site_url('assets/woox/') ?>assets/js/wow.js"></script>
  <script src="<?= site_url('assets/woox/') ?>assets/js/tabs.js"></script>
  <script src="<?= site_url('assets/woox/') ?>assets/js/popup.js"></script>
  <script src="<?= site_url('assets/woox/') ?>assets/js/custom.js"></script>

  <script>
    function bannerSwitcher() {
      next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
      if (next.length) next.prop('checked', true);
      else $('.sec-1-input').first().prop('checked', true);
    }

    var bannerTimer = setInterval(bannerSwitcher, 5000);

    $('nav .controls label').click(function() {
      clearInterval(bannerTimer);
      bannerTimer = setInterval(bannerSwitcher, 5000)
    });
  </script>

  </body>

</html>
