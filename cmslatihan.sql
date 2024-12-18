-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2024 at 11:48 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmslatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id_carosel` int NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id_carosel`, `judul`, `foto`) VALUES
(6, 'banner1', '20241211145307.jpg'),
(7, 'banner2', '20241211145338.jpg'),
(8, 'banner3', '20241211145359.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Wisata'),
(13, 'Rumah Makan dan Restoran'),
(14, 'Akomodasi');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'Woox', 'Woox adalah sebuah website yang menyediakan rekomendasi tempat wisata, restoran atau rumah makan, dan akomodasi atau penginapan di Kabupaten Karanganyar.', 'https://www.instagram.com/desdxy', 'https://www.facebook.com/DesiPurwanti', 'mailto:desipurwanti2007@gmail.com', 'karangpandan', '6281225881284');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int NOT NULL,
  `judul` varchar(60) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `fasilitas` text NOT NULL,
  `kontak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `foto`, `keterangan`, `slug`, `id_kategori`, `tanggal`, `username`, `alamat`, `fasilitas`, `kontak`) VALUES
(10, 'Goa Sari River Tubing', '20241206080249.jpg', 'Terletak di Kecamatan Ngargoyoso, Kabupaten Karanganyar, Goa Sari merupakan tempat wisata yang bisa menjadi salah satu pilihan untuk menikmati wahana river tubing. Para wisatawan bisa menikmati tubing di aliran sungai yang menyegarkan dan mendebarkan. Goa Sari sendiri menyediakan paket tubing, makan dan jeep.\r\n\r\nSeperti namanya, Goa Sari juga memiliki gua buatan yang bisa dikunjungi wisatawan. Tidak hanya itu, wisatawan juga bisa memesan makanan karena Goa Sari juga menyediakan rumah makan sehingga mereka tidak perlu khawatir kelaparan setelah tubing.\r\n\r\nDisekitar lokasi, para wisatawan bisa melihat taman bunga yang ternyata tanaman-tanaman itu bisa dibeli sebagai cinderamata.\r\n\r\nUntuk HTM (Harga Tiket Masuk) dari Tubing yaitu:\r\n\r\nShort :  Rp 35.000 \r\nLong  :  Rp 60.000\r\n\r\nUntuk HTM Goa Sari adalah FREE atau gratis.', 'Goa-Sari-River-Tubing', '12', '2024-12-06', 'admin', 'Jl. Ngranten Wetan No.Rt 04, Puntuk, Puntukrejo, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793', 'mushola, toilet, lesehan gazebo, taman bunga, Ruang Meeting', 'https://www.instagram.com/goasaria/'),
(11, 'Dandang Gulo Cafe dan Resto', '20241206081406.jpg', 'Dandang Gulo Café & Resto merupakan salah satu cafe dan restoran di Karanganyar yang beralamat di jl Pampung, Dukun, Karang Wetan, Plumbon, Kec. Tawangmangu, Kabupaten Karanganyar. Cafe dan resto ini memiliki tema etnik indonesia yang membuat para pengunjung ingin berfoto karena nuansanya yang instagramable.\r\n\r\nDandang Gulo Café & Resto memiliki fasilitas-fasilitas seperti mushola, toilet, ruang meeting,dll. Menu spesial yang disedikan Dandang Gulo Café & Resto adalah gurame asam manis, minuman rempah, kopigula aren. Range harga menu berkisar dari Rp 15.000 s/d Rp 60.000. ', 'Dandang-Gulo-Cafe-dan-Resto', '13', '2024-12-06', 'admin', 'Jl Pampung, Dukun, Karang Wetan, Plumbon, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57791', 'Mushola, Toilet, Ruang Meeting, Karaoke, Wedding Venue, Kolam Renang, Free Wifi, Parkir Luas.', 'nomor hp: 081225888800  atau Instagram :  @dandanggulo_cafe.'),
(12, 'Tenggir Park', '20241206104936.jpg', 'Lokasi wisata ini masih berada di kawasan Taman Hutan Raya (Tahura) Karanganyar atau tepatnya di sisi timur Candi Sukuh. Sehingga saat datang ke lokasi, pengunjung akan disambut dengan udara sejuk bahkan cenderung dingin. Tenggir Park menyediakan beragam spot foto, seperti taman bunga, spot sepeda, rumah pohon, spot rumah honai, spot ranjang layang, air terjun bidadari, kolam renang, hingga permadani atau karpet terbang. Tenggir Park merupakan kawasan yang tergolong masih baru, namun tempat ini sudah banyak dikunjungi wisatawan dari Karanganyar maupun luar Karanganyar untuk mengisi waktu libur.', 'Tenggir-Park', '12', '2024-12-06', 'admin', '94CJ+WWH, Tambak, Berjo, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793', 'Cafe, Outbond, Glamping, Outbond, Flying Fox, Tempat Parkir, Toilet', 'kunjungi instagram kami @tenggir.park'),
(13, 'Kemuning Sky Hills', '20241208120234.jpg', 'Kemuning Sky Hills merupakan Daya Tarik Wisata di Kemuning Ngargoyoso. Yang mana telah diresmikan oleh Bupati Karanganyar Bapak Juliyatmono pada malam pergantian tahun 2022 - 2023. Jembatan kaca sepanjang 120 meter dengan ketinggian mencapai 60 meter dengan ketebalan kaca berkisar 3 cm. Di sini pengunjung dapat melihat hamparan kebun teh yang luas dengan suasana yang sejuk serta pemandangan yang indah dan mempesona. Buka mulai pukul 09.00-18.30 WIB dengan harga tiket masuk sebesar Rp 10.000,-.', 'Kemuning-Sky-Hills', '12', '2024-12-08', 'admin', 'Jl. Karangpandan-Ngargoyoso, Sumbersari, Kemuning, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah , Indonesia, 5779.', 'Jl. Karangpandan-Ngargoyoso, Sumbersari, Kemuning, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah , Indonesia, 5779.', '0881-5806-068'),
(14, 'Intan Pari Educational Park', '20241209131333.jpg', 'Kolam renang Intanpari merupakan Badan Usaha Milik Daerah (BUMD) yang hingga sampai saat ini menjadi kebanggaan warga masyarakat Kabupaten Karanganyar. Tidak hanya kolam renang akan tetapi terdapat fasilitas ruang bermain dan belajar tentang kedirgantaraan.  Edupark Intanpari buka setiap hari mulai pukul 05.30 hingga 17.00 WIB. Harga tiket masuk untuk wisatawan domestik dan mancanegara: \r\n\r\nWeekdays                               : Rp 10.000\r\nWeekend                                 : Rp 15.000\r\nLibur Nasional/Cuti Bersama: Rp 20.000\r\nKartu Member:\r\n\r\nKartu Perdana   : Rp 100.000\r\nTop Up Kartu     : Rp 80.000 \r\n(Untuk 12x masuk)', 'Intan-Pari-Educational-Park', '12', '2024-12-09', 'admin', 'Jl. Jend. Gatot Subroto, Beningrejo, Gaum, Kec. Tasikmadu, Kabupaten Karanganyar, Jawa Tengah 57716', 'mushola, parkir, kamar mandi, toilet, dan kantin', '@intanpari_waterpark dan no (0271)4990121  atau 08895599428'),
(15, 'Rumah Atsiri Indonesia', '20241210122314.jpg', 'Rumah Atsiri Indonesia merupakan hasil revitalisasi Pabrik Citronella yang berdiri pada tahun 1963. Pabrik Citronella saat itu dibangun atas kerja sama Pemerintah Indonesia dan Bulgaria untuk mengolah minyak atsiri dengan bahan dasar sereh wangi atau citronella. Pada tahun 1986, Pabrik Citronella tersebut berpindah tangan dari pihak pemerintah ke swasta. Lalu pada sekitar tahun 2015, pabrik ini telah berhenti beroperasi karena adanya masalah dengan ketersediaan bahan baku dan perekonomian. Kemudian, PT Rumah Atsiri Indonesia mengambil alih dan merevitalisasi bangunan pabrik menjadi tempat rekreasi Rumah Atsiri. Rumah Atsiri Indonesia mulai beroperasi dan dibuka untuk umum sebagai salah satu destinasi wisata aromatic wellness pada bulan Mei 2018. Memiliki luas sebesar 2,5 hektar, Rumah Atsiri Indonesia merujuk pada konsep wisata edukasi alam terkait minyak atsiri dan pemanfaatannya. Rumah Atsiribuka dari jam 10.00-17.00 WIB setiap hari termasuk hari libur nasional.Harga tiket masuk untuk wisatawan lokal dan mancanegara berkisarRp50.000,- per orang.', 'Rumah-Atsiri-Indonesia', '12', '2024-12-10', 'admin', 'Jl. Watusambang, Watusambang, Plumbon, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792', 'fasilitas meliputi MICE butik, sejumlah atraksi, fasilitas seperti kebun tanaman atsiri, fasilitas laboratorium, rumah produksi, pusat pelatihan, restoran, toko, glamping, museum, area parkir, toilet dan mushola', 'nomor +6281211122263 atau mengunjungi akun media sosial Rumah Atsiri di @Rumahatsiri via Instagram '),
(16, 'Air Terjun Jumog', '20241211045422.jpg', 'Air terjun jumog dibuka resmi untuk umum oleh Bupati Karanganyar pada tgl 7 agustus 2004. Air terjun dengan tinggi kurang lebih 30 meter ini bersumber dari mata air asli pegunungan ini tidak pernah surut. Aliran air terjun Jumog mengalir ke tiga cabang yaitu Klueng, Kusumajati, dan Jubleg. Seperti pada Air Terjun Grojogan Sewu, Air Terjun Jumog juga memiliki jembatan di depan air terjunnya yang mana juga menjadi spot foto yang diminati pengunjung. Air Terjun Jumog  buka dari jam 08.00 – 16.00 pada saat weekday dan jam 08.00 -17.30 pada saat weekand. Harga tiket masuk untuk wisatawan lokal maupun wisatawan mancanegara Rp.20.000,-.', 'Air-Terjun-Jumog', '12', '2024-12-11', 'admin', 'Taman batu tiban, Jl. Jumog, Gandu, Berjo, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793', 'Warung makan, Gazebo, Area Bermain, Mushola, Kolam Renang, Live Music, Toilet, Tempat Parkir, Aula, Toko Oleh-Oleh dan Cinderamata', 'nomor hp  082 324 026 339 atau @airterjun_jumog'),
(17, 'Ndalem Seniyor', '20241211050413.jpg', 'Ndalem Seniyor merupakan salah satu resort di Karanganyar yang beralamat di Jl. Pawiro Sutar, Telap, Karang, Kec. Karangpandan, Kabupaten Karanganyar. Terletak di dalam kawasan Ndalem Seniyor, resort ini menyediakan fasilitas yang ramah untuk lansia serti difabel. Jenis kamar yang terdapat di Ndalem Seniyor adalah: \r\n\r\nSuite Room 2 Lantai\r\nDeluxe Room\r\nDeluxe Super Room\r\nDeluxe Super Family\r\nDeluxe Premium\r\nRange harga per kamar berkisar dari Rp 500.000 s/d Rp 1.800.000.', 'Ndalem-Seniyor', '14', '2024-12-11', 'admin', 'Jl. Pawiro Sutar, Telap, Karang, Kec. Karangpandan, Kabupaten Karanganyar, Jawa Tengah 57791', 'Water heater, Free Breakfast dan Dinner (2 Orang), Free Tiket Berenang, Sofa, TV, Wifi, Amenities', 'nomor hp  +6281329533709 atau mengunjungi Instagram Ndalem Seniyor di @ndalem_seniyor'),
(18, 'New Balepongan Heritage Resto', '20241211112408.jpg', 'Balepongan merupakan salah satu restoran di Karanganyar yang beralamat di Jl. Lawu No.119, Popongan, Kec. Karanganyar, Kabupaten Karanganyar. Terletak di pinggir jalan, Balepongan menjadi resto yang memiliki akses yang mudah dikunjungi. Balepongan memiliki nuansa yang teduh dan memiliki design resto yang cantik sehingga restoran ini bisa menjadi pilihan terbaik untuk makan dan menghabiskan waktu bersama dengan teman dan keluarga. Range harga menu berkisar dari Rp 10.000 s/d Rp 45.000. ', 'New-Balepongan-Heritage-Resto', '13', '2024-12-11', 'admin', 'Jl. Lawu No.119, Popongan, Kec. Karanganyar, Kabupaten Karanganyar, Jawa Tengah 57715', 'Mushola, Tolet, Ruang Meeting, Wedding Venue, kolam ikan, gazebo, Playground, free wifi.', ' nomor hp 085819862097 atau mengunjungi Instagram Balepongan di @baleponganresto'),
(19, 'Blumbang Resto', '20241211113749.jpg', 'Resto yang sangat cocok untuk berkumpul bersama teman dan keluarga dan dengan view pemandang alam yang indah. memilki tipe ruangan indoor dan outdoor. Menyedikan berbagai pilihan menu dengan kisaran harga 20.000-50.000.', 'Blumbang-Resto', '13', '2024-12-11', 'admin', 'Ombang- Ombang, Blumbang, Tawangmangu, Karanganyar Regency, Central Java 57792', 'Menyediakan tempat duduk di area terbuka · Ada Wi-Fi · Ada menu anak', 'no hp 0813-3742-0895'),
(20, 'Sate Lawu Tawangmangu', '20241211114254.jpg', 'Resto yang sangat cocok untuk berkumpul bersama teman dan keluarga dan memiliki tempat yang strategis. Menu utama resto ini adalah sate tetspi juga menyedikan berbagai olahan daging sapi, kambing dan ayam serta bebrapa menu masakan khas nusantara dengan kisaran harga 20.000-50.000. Tempatnya luas, nyaman dan bersih.', 'Sate-Lawu-Tawangmangu', '13', '2024-12-11', 'admin', 'Jl Baru No.2, Kramat, Kalisoro, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792', 'Ruang Meeting, Mushola, Toilet, Parkir luas, Free wifi', 'no hp 0818-294-333 atau bisa mengunjungi instagram sate lawu @satelawu'),
(21, 'Sakaw Coffee dan Bites', '20241211115823.jpg', 'Sejuknya udara Tawangmangu. Sambil minum kopi ditengah remang cahaya bulan. Suasana garden resto yang indah dengan lampu hias yang menerangi garden. Kesejukan udara Tawangmangu akan nyaman jika dipadukan dengan makan menu andalan kami yaitu dadar bestik yang hangat dan segar. Kopi yang selalu fresh dan siap dihidangkan untuk anda. Cafe yang sangat cocok untuk bersama teman maupun keluarga. Tempatnya bersih dan nyaman pelayanan ramah. Menyediakan menu dengan harga terjangaku kisaran 25.000-50.000.', 'Sakaw-Coffee-dan-Bites', '13', '2024-12-11', 'admin', 'Jl. Lawu Lestari, Kalisoro, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792', 'Toilet, Mushola, Parkir Luas, free wifi', 'no hp (0271) 696148 atau kunjungi akun instagram @sakawcoffee'),
(22, 'The Nikmat Coffee Resto', '20241211120817.jpg', 'Cafe dengan 3 lantai yang memiliki view super cantik sesuai dengan namanya Cafe ini memiliki menu yang enak dan nikmat-nikmat. Bisa sambil menikamti hidangan dengan memandang pegunungnan. Harga makanan di sini sangat terjangkau kisaran (15.000-40.000) .Ada Spot tempat indoor maupun outdoor dan pada saat sore hari kalian bisa menikmati Senja di lantai 3 rooftopnya', 'The-Nikmat-Coffee-Resto', '13', '2024-12-11', 'admin', 'Jln. Alternatif Cemoro Sewu, Dawuhan, Blumbang, Tawangmangu, Karanganyar Regency, Central Java 57792', 'Toilet, Mushola, Parkir Luas, free wifi', 'no hp 0821-4356-7619 atau mengujungi instagram @the_nikmat_cofe_resto'),
(23, 'Supercamp Sakura Hills', '20241211121441.jpg', 'Supercamp Sakura Hills merupakan salah satu glamping di Karanganyar yang beralamat di Area Hutan, Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792.  Jenis kamar yang terdapat di Supercamp Sakura Hills adalah Oshin Deluxe\r\nOshin Cottage\r\nOshin Superior\r\nSupercamp\r\nRumah Kaca\r\n kamar. Range harga per kamar berkisar dari 400.000 s/d 650.000.', 'Supercamp-Sakura-Hills', '14', '2024-12-11', 'admin', 'Area Hutan, Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792', 'Free Breakfast, Free Tiket Masuk Wisata, Kamar mandi dalam', ' nomor hp 6281395206060 atau mengunjungi instagram @sakurahills_tawangmangu'),
(24, 'Penginapan Embun Lawu', '20241211123320.jpg', 'Penginapan Embun Lawu merupakan salah satu glamping di Karanganyar yang beralamat di Jl. Raya Matesih-Tawangmangu No.16, Area Hutan, Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792.. Jenis kamar yang terdapat di Penginapan Embun Lawu adalah Cottage C.D\r\nCottage E.F\r\nCottage Lawasan\r\nCottage Lumbung\r\nCottage Rainbow\r\nCottage Glamping kamar. Range harga per kamar berkisar dari Weekday: 330.000 s/d 550.000\r\nWeekend: 440.000 s/d 770.000', 'Penginapan-Embun-Lawu', '14', '2024-12-11', 'admin', 'Jl. Raya Matesih-Tawangmangu No.16, Area Hutan, Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792', 'Kamar mandi dalam dengan water heater ,TV, Teko pemanas minuman ,Air mineral ,Teh & kopi ,Aminitis, Free WIfi, Breakfast', 'nomor hp 6282120000343 6281215253344  atau mengunjungi instagram @embunlawu'),
(25, 'Mountain Cottage by D\'Lawu', '20241211124613.jpg', 'Mountain Cottage by D\'Lawu merupakan salah satu villa dan glamping di Karanganyar yang beralamat di Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar. Mountain Cottage by D\'Lawu juga merupakan salah satu tujuan wisata karena selain bisa melihat indahnya Gunung Lawu, para tamu bisa menikmati makanan lezat di bistro yang ada disana serta mengunjungi minizoo dan kebun strawberrynya. Jenis kamar yang terdapat di Mountain Cottage by D\'Lawu adalah: \r\n\r\nCluster Unit 15\r\nCluster Unit 9\r\nContainer Floor 2\r\nContainer Room\r\nDtrans Room\r\nMatrix Room\r\nSuite City Room\r\nSuite Country\r\nSuite Country Room\r\nSuite Culture Room\r\nSuite Dtrans Room\r\nSuite Family Room\r\nSuite Fruit Room\r\nThe Hobbit Room\r\nTiny Dtrans Room\r\nWood Suite Room\r\nRange harga per kamar Mountain Cottage by D\'Lawu sendiri berkisar dari Rp 350.000 s/d Rp 1.100.000. ', 'Mountain-Cottage-by-D\'Lawu', '14', '2024-12-11', 'admin', 'Jl. Raya Tawangmangu-Sarangan Kilometer 9. Bulakrejo RT 3 RW 6, Gondosuli Kidul, Gondosuli, Kec. Tawangmangu, Kabupaten Karanganyar, Jawa Tengah 57792', 'Wifi ,Parkir, Breakfast ,24 hour room services ,Swimming Pool, 24 hour security ,Playground.', 'no hp 0817-210-821 atau mengunjungi instagram @dlawumountaincottage'),
(26, 'The Mongkrang Villa', '20241211125338.jpg', 'The Mongkrang Villa merupakan salah satu glamping di Karanganyar yang beralamat di Gondosuli Kidul, Gondosuli, Tawangmangu, Karanganyar. Terletak di belakang restoran The Mongkrang, tamu dapat melihat pemandangan bukit Mongkrang yang Indah. Bahkan, jika tamu ingin hiking ke Gunung Mongkrang. Range harga per kamar berkisar dari Rp 380.000 s/d Rp 490.000 belum termasuk pajak.', 'The-Mongkrang-Villa', '14', '2024-12-11', 'admin', 'Gondosuli Kidul, Gondosuli, Tawangmangu, Karanganyar Regency, Central Java 57792', 'View Bukit Mongkrang, Kamar Mandi ,Bed yang nyaman ,Wifi ,Tempat Parkir', 'nomor hp 081387044442 atau mengunjungi Instagram @themongkrang');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Desi', 'Admin'),
(5, 'kontributor', '827ccb0eea8a706c4c34a16891f84e7b', 'Desi', 'Kontributor'),
(6, 'aish', 'c32bcd02d43ddd15b9f035b4e22bcc59', 'aisyah', 'kontributor'),
(7, 'desi', '069e2dd171f61ecffb845190a7adf425', 'desi', 'kontributor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carosel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carosel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
