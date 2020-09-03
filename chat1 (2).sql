-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Sep 2020 pada 18.12
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akar_tf_idf`
--

CREATE TABLE IF NOT EXISTS `akar_tf_idf` (
  `id_hint` int(11) NOT NULL,
  `akar` float(7,4) DEFAULT NULL,
  KEY `id_hint` (`id_hint`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akar_tf_idf`
--

INSERT INTO `akar_tf_idf` (`id_hint`, `akar`) VALUES
(21, 7.5288),
(22, 6.1462),
(23, 6.1572),
(24, 6.1462),
(25, 6.1572),
(26, 6.1462),
(27, 6.1572),
(28, 7.1443),
(29, 7.1538),
(30, 8.9999),
(31, 9.0075),
(32, 4.3980),
(33, 6.4301),
(34, 6.4407),
(35, 6.4301),
(36, 6.4407),
(37, 6.4301),
(38, 6.4407),
(39, 5.4625),
(40, 5.4750),
(41, 5.4625),
(42, 5.4750),
(43, 5.4625),
(44, 5.4750),
(46, 5.4625),
(47, 5.4750),
(48, 5.4625),
(49, 5.4750),
(50, 7.5288),
(51, 5.6560),
(52, 5.6681),
(53, 7.1443),
(54, 7.1538),
(55, 8.7072),
(56, 8.7150),
(57, 7.5288),
(58, 7.1443),
(59, 7.1538),
(60, 5.5656),
(61, 5.5778),
(62, 5.5656),
(63, 5.5778),
(64, 5.5656),
(65, 5.5778),
(66, 5.5656),
(67, 5.5778),
(68, 7.4666),
(69, 7.4757),
(70, 5.5656),
(71, 5.5778),
(72, 7.4666),
(73, 7.4757),
(74, 9.6131),
(75, 6.8754),
(76, 6.8852),
(77, 9.6156),
(78, 7.5320),
(79, 8.8394),
(80, 9.3125),
(81, 9.3197),
(82, 9.3396),
(83, 8.7852),
(84, 7.1763);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbot_hints`
--

CREATE TABLE IF NOT EXISTS `chatbot_hints` (
  `id_hint` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `reply` varchar(500) NOT NULL,
  PRIMARY KEY (`id_hint`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data untuk tabel `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id_hint`, `question`, `reply`) VALUES
(21, 'Daftar wisata alam Sumenep', 'Pantai Lombang, Pantai Slopeng, Pantai Badur, Goa Payudan, Wisata Batu Kapur Putih'),
(22, 'Tentang Pantai Lombang', 'Pantai Lombang merupakan salah satu pantai di Sumenep dengan pemandangan hamparan pasir putih halus dan pohon cemara udang yang rimbun.'),
(23, 'Lokasi Pantai Lombang', 'Pantai Lombang terletak di sebelah timur Sumenep, lebih tepatnya di Desa Lombang, Kecamatan Batang-Batang dengan jarak kurang lebih 30 Km dari Kota Sumenep.'),
(24, 'Tentang Pantai Slopeng', 'Pantai Slopeng merupakan pantai di Sumenep yang terkenal dengan hamparan pasirnya yang menggunung dan dikelilingi dengan berbagai pepohonan yang rimbun seperti pohon siwalan, pohon kelapa, dan pohon cemara udang. '),
(25, 'Lokasi Pantai Slopeng', 'Pantai Slopeng terletak di arah utara Sumenep, tepatnya di Desa Sema’an, Kecamatan Dasuk dengan jarak kurang lebih 21 Km dari Kota Sumenep.'),
(26, 'Tentang Pantai Badur', 'Pantai Badur merupakan salah satu pantai di Sumenep yang memiliki pemandangan indah pasir putih dan rerimbunan pohon. Daya tarik lain dari pantai ini adalah terdapat aliran air tawar dari sungai yang langsung terhubung dengan laut pada sisi barat pantai.'),
(27, 'Lokasi Pantai Badur', 'Pantai Badur terletak di Desa Badur, Kecamatan Batuputih dengan jarak kurang lebih 18 Km dari Kota Sumenep.'),
(28, 'Tentang Goa Payudan', 'Goa Payudan merupakan salah satu obyek wisata di Sumenep yang terkenal bukan hanya karena pemandangan alamnya namun juga makna religi dan sejarah yang terkandung di dalamnya. Goa ini merupakan tempat bertapa/semedi dari orang-orang penting termasuk raja-raja Sumenep terdahulu.'),
(29, 'Lokasi Goa Payudan', 'Goa ini terletak di atas pegunungan yang biasa disebut Gunung Payudan di Desa Payudan Daleman, Kecamatan Guluk-Guluk dengan jarak kurang lebih 30 Km ke arah barat dari Kota Sumenep'),
(30, 'Tentang Wisata Batu Kapur Putih', 'Wisata ini merupakan salah satu obyek wisata baru di Sumenep yang terkenal dengan keindaan batu kapur putihnya yang terpahat dengan indah.'),
(31, 'Lokasi Wisata Batu Kapur Putih', 'Wisata batu kapur putih ini terletak di Desa Juruan Daya, Kecamatan Batuputih dengan jarak kurang lebih 30 Km dari Kota Sumenep.'),
(32, 'Daftar Kepulauan Sumenep', 'Pulau Gili Iyang, Pulau Gili Labak, Pulau Gili Genting, Pulau Mamburit, Pulau Sapeken, Pulau Kangean, Pulau Raas, dan Pulau Sepudi.'),
(33, 'Tentang Pulau Gili Iyang', 'Pulau Gili Iyang dijuluki sebagai "Pulau Oksigen" karena merupakan pulau dengan kadar oksigen tertinggi di Indonesia dan tertinggi kedua di dunia. '),
(34, 'Lokasi Pulau Gili Iyang', 'Pulau ini terletak di Desa Dungkek, Kecamatan Dungkek dengan jarak sekitar 28 Km dari pusat Kota Sumenep. Setelah melalui perjalanan darat, untuk mencapai pulau ini harus menempuh penyeberangan laut selama kurang lebih 45 Menit dari Pelabuhan Dungkek.'),
(35, 'Tentang Pulau Gili Labak', 'Pulau Gili Labak merupakan salah satu destinasi wisata kepulauan paling terkenal dari Sumenep. Pulau ini menyuguhkan panorama pulau tropis yang eksotis disertai dengan pantai yang bersih dan jernih.'),
(36, 'Lokasi Pulau Gili Labak', 'Pulau ini terletak di Desa Kombang, Kecamatan Talango dengan jarak tempuh menuju pulau kurang lebih 2 jam dengan menggunakan kapal via Pelabuhan Kalianget.'),
(37, 'Tentang Pulau Gili Genting', 'Pulau Gili Genting merupakan salah satu destinasi wisata kepulauan di Sumenep yang terkenal akan keindahan pantainya yang membentuk angka sembilan, sehingga pantai ini sering disebut sebagai Pantai Sembilan.'),
(38, 'Lokasi Pulau Gili Genting', 'Pulau ini terletak di Desa Bringsang, Kecamatan Gili Genting dengan jarak sekitar 40 Menit dari Kota Sumenep dan dilanjutkan dengan perjalanan laut kurang lebih 30 Menit via Pelabuhan Tanjung Saronggi.'),
(39, 'Tentang Pulau Mamburit', 'Pulau Mamburit merupakan salah satu destinasi wisata kepulauan di Sumenep yang menyuguhkan pemandangan alam yang indah serta kearifan budaya lokal. Pulau ini hanya berpenduduk sebanyak 47 KK yang terkenal akan keramahan dan budaya mereka.'),
(40, 'Lokasi Pulau Mamburit', 'Pulau ini terletak di Kecamatan Arjasa pada wilayah Kepulauan Kangean. Untuk mencapai pulau ini dapat dilakukan dengan menyeberang melalui Pelabuhan Kalianget.'),
(41, 'Tentang Pulau Sapeken', 'Pulau Sapeken merupakan salah satu wisata kepulauan unik di Madura. Karena meskipun secara administrative masuk ke wilayah Kabupaten Sumenep namun masyarakatnya tidak ada yang bisa berbahasa Madura. Mayoritas masyarakat yang tinggal adalah Suku Bugis. Pulau ini menawarkan keindahan terumbu karang dan gunungan pasir sebagai wisata alam'),
(42, 'Lokasi Pulau Sapeken', 'Pulau ini secara administrative terletak di Kecamatan Sapeken yang berada di wilayah Kepulauan Kangean. Untuk mencapai pulau ini dibutuhkan waktu tempuh menggunakan kapal yang cukup lama yaitu sekitar 12 jam dari Sumenep.'),
(43, 'Tentang Pulau Kangean', 'Pulau Kangean merupakan salah satu pulau yang berada di wilayah Kepulauan Kangean. Pulau ini merupakan pulau terbesar sekaligus pulau paling menonjol di wilayah kepulauan ini.'),
(44, 'Lokasi Pulau Kangean', 'Pulau Kangean terletak di Kecamatan Kangean yang termasuk dalam wilayah Kepulauan Kangean. Untuk mencapai pulau ini diperlukan waktu kurang lebih 9 hingga 10 jam menyeberangi laut dari Pelabuhan Kalianget.'),
(46, 'Tentang Pulau Raas', 'Pulau Raas merupakan salah satu destinasi wisata di Sumenep yang menyuguhkan keindahan pantai dan wisata terumbu karang yang indah.'),
(47, 'Lokasi Pulau Raas', 'Pulau ini terletak di Kecamatan Raas. Untuk mencapai pulau ini dapat dicapai dengan menempuh perjalanan laut selama 5 hingga 6 jam dari Pelabuhan Dungkek'),
(48, 'Tentang Pulau Sapudi', 'Pulau Sapudi merupakan salah satu destinasi wisata kepulauan di Sumenep yang menyuguhkan wisata bahari hutan tropis bawah laut dan pantai pesisir yang dilengkapi dengan komunitas mangrove disekitar pulau Sapudi'),
(49, 'Lokasi Pulau Sapudi', 'Pulau ini terletak di wilayah Kabupaten Sumenep dan tebagi menjadi dua kecamatan yaitu Kecamatan Nonggunong di utara dan Kecamatan Gayam di selatan. Pulau ini dapat dicapai dengan menempuh waktu penyeberangan di laut selama kurang lebih dua jam dari Pelabuhan Dungkek maupun Pelabuhan Kalianget.'),
(50, 'Daftar wisata sejarah Sumenep', 'Keraton Sumenep, Taman Sare, Kota Tua Kalianget'),
(51, 'Tentang Keraton Sumenep', 'Keraton Sumenep adalah kediaman resmi dari para Adipati atau Raja-Raja Sumenep terdahulu untuk menjalankan roda pemerintahan. Keraton ini terkenal akan keindahan arsitekturnya yang merupakan perpaduan arsitektur bergaya Eropa, Arab, dan Cina.'),
(52, 'Lokasi Keraton Sumenep', 'Keraton Sumenep terletak di tengah pusat kota Sumenep, lebih tepatnya di Desa Pajagalan di wilayah Kecamatan Kota.'),
(53, 'Tentang Taman Sare', 'Taman Sare merupakan tempat pemandian putri-putri kerajaan Sumenep pada zaman dahulu.'),
(54, 'Lokasi Taman Sare', 'Taman ini terletak di bagian timur Pendopo Agung Keraton Sumenep'),
(55, 'Tentang Kota Tua Kalianget', 'Kota Tua Kalianget merupakan obyek wisata di Sumenep yang merupakan salah satu simbl pengingat di Madura sebagai penghasil garam terbesar di Indonesia'),
(56, 'Lokasi Kota Tua Kalianget', 'Obyek wisata ini terletak di Kecamatan Kalianget, Kabupaten Sumenep.'),
(57, 'Daftar wisata religi Sumenep', 'Masjid Jamik, Asta Tinggi, Asta Katandur, Asta Jokotole, Asta Gumok, Asta Lor Wetan, Asta Yusuf, dan Asta K. Faqih'),
(58, 'Tentang Masjid Jamik', 'Masjid ini merupakan salah satu dari 10 masjid tertua di Indonesia yang selesai dibangun pada tahun 1787 oleh Panembahan Somala. Masjid ini merupakan salah satu landmark terkenal di Pulau Madura.'),
(59, 'Lokasi Masjid Jamik', 'Masjid ini berlokasi di Dalem Anyar, Bangselok, Kotasumenep, Kabupaten Sumenep'),
(60, 'Tentang Asta Tinggi', 'Asta tinggi merupakan asta/makam para raja, anak keturunan beserta kerabat-kerabatnya yang dibangun sekitar tahun 1750M. Kawasan Pemakaman ini direncanakan awalnya oleh Panembahan Somala dan dilanjutkan pelaksanaanya oleh Sultan Abdurrahman Pakunataningrat I dan Panembahan Natakusuma II'),
(61, 'Lokasi Asta Tinggi', 'Asta ini terletak di Jl. Asta Tinggi, Temor Lorong, Kebunagung, Kotasumenep, Kabupaten Sumenep'),
(62, 'Tentang Asta Katandur', 'Asta Katandur merupakan asta/makam dari Pangeran Katandur (Syekh Ahmad Baidhowi) salah satu ulama yang menyebarkan ajaran agama Islam di Sumenep.'),
(63, 'Lokasi Asta Katandur', 'Asta ini terletak di Desa Bangkal, Kota Sumenep.'),
(64, 'Tentang Asta Jokotole', 'Asta Jokotole merupakan asta/makan dari Pangeran Setyodiningrat III atau Pangeran Jokotole yang menjadi raja Sumenep yang ke 13 selama 45 tahun (1415-1460).'),
(65, 'Lokasi Asta Jokotole', 'Asta ini terletak di Dusun Sa’asa, Desa Lanjuk, Kecamatan Manding.'),
(66, 'Tentang Asta Gumok', 'Asta Gumok merupakan salah satu kompleks pemakaman dari warga Kalimo’aok dan sekitarnya. Yang menjadikan lokasi ini terkenal adalah adanya makam dari salah satu ulama mahsyur di Sumenep yaitu K. Muhammad Ali (Brambang).'),
(67, 'Lokasi Asta Gumok', 'Asta ini terletak Desa Kalimo’aok di sebelah timur bandar udara Trunojoyo.'),
(68, 'Tentang Asta Lor Wetan', 'Asta Lor Wetan merupakan komplekas asta/makam dari keluarga Raja/Adipati Sumenep yaitu Pangeran Lor, Pangeran Wetan, dan Pangeran Ario Kanduruan.'),
(69, 'Lokasi Asta Lor Wetan', 'Asta ini terletak di Desa Karangduak, Kota Sumenep.'),
(70, 'Tentang Asta Yusuf', 'Asta Yusuf merupakan asta/makam dari salah satu ulama terkenal di Sumenep atau lebih tepatnya di Talango yaitu Sayyid Yusuf.'),
(71, 'Lokasi Asta Yusuf', 'Asta ini terletak di Desa Padike, Kecamatan Talango'),
(72, 'Tentang Asta K. Faqih', 'Asta K. Faqih merupakan asta/makam dari ulama besar fikih terkenal di Sumenep yaitu Kyai Pekke atau Kyai Faqih.'),
(73, 'Lokasi Asta K. Faqih', 'Asta ini terletak di Kecamatan Lenteng.'),
(74, 'Daftar wisata edukasi budaya Sumenep', 'Wisata Kerajinan Batik, Wisata Kerajinan Ukir Topeng, Wisata Kerajinan Ukir Kayu, Wisata Kerajinan Keris, Wisata Kasur Pasir, Wisata Karapan Sapi dan Adat Sumenep'),
(75, 'Tentang Wisata Kerajinan Batik', 'Batik Tulis Sumenep merupakan salah satu warisan budaya dari Keraton Sumenep. Secara umum batik tulis ini hampir sama dengan batik tulis di Madura pada umumnya, namun yang membedakan dari daerah lain, selain pewarnaannya yang cenderung kontras, batik tulis Sumenep mempunyai motif yang unik. '),
(76, 'Lokasi Wisata Kerajinan Batik', 'Salah satu sentra batik tulis Sumenep yang terkenal berada di Desa Pakandangan Kecamatan Bluto.'),
(77, 'Wisata Kerajinan Ukir Topeng', 'Sentra kerajinan topeng Sumenep dapat dikunjungi di Desa Sloppeng Kecamatan Dasuk'),
(78, 'Wisata Kerajinan Keris', 'Sentra kerajinan keris Sumenep dapat dikunjungi di Desa Aeng Tong-Tong, Kecamatan Saronggi.'),
(79, 'Tentang Wisata Kasur Pasir', 'Wisata ini menyuguhkan pengalaman unik yaitu budaya untuk tidur atau ngaso di hamparan pasir di rumah penduduknya.'),
(80, 'Tentang Wisata Karapan Sapi dan Adat Sumenep', 'Wisata ini merupakan perlombaan pacuan sapi khas Madura. Pada perlombaan ini, sepasang sapi yang menarik semacam kereta dari kayu (tempat joki berdiri dan mengendalikan pasangan sapi tersebut) dipacu dalam lomba adu cepat melawan pasangan-pasangan sapi lain. Trek pacuan tersebut biasanya sekitar 100 meter dan lomba pacuan dapat berlangsung sekitar sepuluh detik sampai satu menit. '),
(81, 'Lokasi Wisata Karapan Sapi dan Adat Sumenep', 'Terdapat beberapa tempat untuk melihat karapan sapi di Sumenep seperti di Kecamatan Bluto, Guluk-Guluk, Kota Sumenep, Batu Putih, Ambunten, dan Sapudi.'),
(82, 'Daftar kuliner khas Sumenep', 'Rujak Madura, Kaldu Kokot, Sate Gulai, Soto Sabrang, Marco, Keripik Singkong, Rengginang, Apen, Getthas dan Patthola'),
(83, 'Transportasi menuju Sumenep', 'Pesawat menuju bandara kecil yaitu Bandar Udara Trunojoyo, Travel atau Bus bisa dari Terminal Bungurasih Surabaya dan Kendaraan Pribadi'),
(84, 'Daftar penginapan di Sumenep', 'Comfort Room at Family Nur Jl. Sultan Abdurrahman 1 Sumenep, Hotel C1 Jl. Sultan Abdurahman Kolor Kota Sumenep, Hotel Surabaya Sumenep Jl. Mustika No. 1 Kota Sumenep, Hotel Dubai Sumenep Jl. Payudan Barat 14.A Kota Sumenep, Mitraland Hotel Jl. Trunojoyo 191 Kota Sumenep, Adhirasa House Sumenep Jl. Adirasa No 09 Sumenep, Hotel Wijaya I Jl. Trunojoyo 45-47 Sumenep, Hotel Wijaya II Jl. Wahid Hasyim No. 3 Sumenep, Pantai Sembilan Seaview Jl. Pulau Giligenting Sumenep, Gili Labak Homestay Islan Gili ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `df_idf`
--

CREATE TABLE IF NOT EXISTS `df_idf` (
  `kategori` varchar(3) NOT NULL,
  `daftar` float(7,4) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `alam` float(7,4) NOT NULL,
  `sumenep` float(7,4) NOT NULL,
  `tentang` float(7,4) NOT NULL,
  `pantai` float(7,4) NOT NULL,
  `lombang` float(7,4) NOT NULL,
  `lokasi` float(7,4) NOT NULL,
  `slopeng` float(7,4) NOT NULL,
  `badur` float(7,4) NOT NULL,
  `goa` float(7,4) NOT NULL,
  `payudan` float(7,4) NOT NULL,
  `batu` float(7,4) NOT NULL,
  `kapur` float(7,4) NOT NULL,
  `putih` float(7,4) NOT NULL,
  `pulau` float(7,4) NOT NULL,
  `gili` float(7,4) NOT NULL,
  `iyang` float(7,4) NOT NULL,
  `labak` float(7,4) NOT NULL,
  `genting` float(7,4) NOT NULL,
  `mamburit` float(7,4) NOT NULL,
  `sapeken` float(7,4) NOT NULL,
  `kangean` float(7,4) NOT NULL,
  `raas` float(7,4) NOT NULL,
  `sapudi` float(7,4) NOT NULL,
  `sejarah` float(7,4) NOT NULL,
  `keraton` float(7,4) NOT NULL,
  `taman` float(7,4) NOT NULL,
  `sare` float(7,4) NOT NULL,
  `kota` float(7,4) NOT NULL,
  `tua` float(7,4) NOT NULL,
  `kalianget` float(7,4) NOT NULL,
  `religi` float(7,4) NOT NULL,
  `masjid` float(7,4) NOT NULL,
  `jamik` float(7,4) NOT NULL,
  `asta` float(7,4) NOT NULL,
  `tinggi` float(7,4) NOT NULL,
  `katandur` float(7,4) NOT NULL,
  `jokotole` float(7,4) NOT NULL,
  `gumok` float(7,4) NOT NULL,
  `lor` float(7,4) NOT NULL,
  `wetan` float(7,4) NOT NULL,
  `yusuf` float(7,4) NOT NULL,
  `k` float(7,4) NOT NULL,
  `faqih` float(7,4) NOT NULL,
  `edukasi` float(7,4) NOT NULL,
  `budaya` float(7,4) NOT NULL,
  `rajin` float(7,4) NOT NULL,
  `batik` float(7,4) NOT NULL,
  `ukir` float(7,4) NOT NULL,
  `topeng` float(7,4) NOT NULL,
  `keris` float(7,4) NOT NULL,
  `kasur` float(7,4) NOT NULL,
  `pasir` float(7,4) NOT NULL,
  `karapan` float(7,4) NOT NULL,
  `sapi` float(7,4) NOT NULL,
  `adat` float(7,4) NOT NULL,
  `kuliner` float(7,4) NOT NULL,
  `khas` float(7,4) NOT NULL,
  `transportasi` float(7,4) NOT NULL,
  `tuju` float(7,4) NOT NULL,
  `inap` float(7,4) NOT NULL,
  PRIMARY KEY (`kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `df_idf`
--

INSERT INTO `df_idf` (`kategori`, `daftar`, `wisata`, `alam`, `sumenep`, `tentang`, `pantai`, `lombang`, `lokasi`, `slopeng`, `badur`, `goa`, `payudan`, `batu`, `kapur`, `putih`, `pulau`, `gili`, `iyang`, `labak`, `genting`, `mamburit`, `sapeken`, `kangean`, `raas`, `sapudi`, `sejarah`, `keraton`, `taman`, `sare`, `kota`, `tua`, `kalianget`, `religi`, `masjid`, `jamik`, `asta`, `tinggi`, `katandur`, `jokotole`, `gumok`, `lor`, `wetan`, `yusuf`, `k`, `faqih`, `edukasi`, `budaya`, `rajin`, `batik`, `ukir`, `topeng`, `keris`, `kasur`, `pasir`, `karapan`, `sapi`, `adat`, `kuliner`, `khas`, `transportasi`, `tuju`, `inap`) VALUES
('df', 7.0000, 13.0000, 1.0000, 12.0000, 27.0000, 6.0000, 2.0000, 26.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 17.0000, 6.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 1.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 1.0000, 2.0000, 2.0000, 14.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 1.0000, 1.0000, 4.0000, 2.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000, 2.0000, 2.0000, 2.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000),
('idf', 3.1699, 2.2768, 5.9773, 2.3923, 1.2224, 3.3923, 4.9773, 1.2768, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 1.8898, 3.3923, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 5.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 5.9773, 4.9773, 4.9773, 2.1699, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 4.9773, 5.9773, 5.9773, 3.9773, 4.9773, 5.9773, 5.9773, 5.9773, 5.9773, 5.9773, 4.9773, 4.9773, 4.9773, 5.9773, 5.9773, 5.9773, 5.9773, 5.9773);

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id_log_message` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id_log_message`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=914 ;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id_log_message`, `message`, `added_on`, `type`) VALUES
(913, 'Selamat datang', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf`
--

CREATE TABLE IF NOT EXISTS `tf` (
  `id_hint` int(11) NOT NULL,
  `daftar` int(2) NOT NULL,
  `wisata` int(2) NOT NULL,
  `alam` int(2) NOT NULL,
  `sumenep` int(2) NOT NULL,
  `tentang` int(2) NOT NULL,
  `pantai` int(2) NOT NULL,
  `lombang` int(2) NOT NULL,
  `lokasi` int(2) NOT NULL,
  `slopeng` int(2) NOT NULL,
  `badur` int(2) NOT NULL,
  `goa` int(2) NOT NULL,
  `payudan` int(2) NOT NULL,
  `batu` int(2) NOT NULL,
  `kapur` int(2) NOT NULL,
  `putih` int(2) NOT NULL,
  `pulau` int(2) NOT NULL,
  `gili` int(2) NOT NULL,
  `iyang` int(2) NOT NULL,
  `labak` int(2) NOT NULL,
  `genting` int(2) NOT NULL,
  `mamburit` int(2) NOT NULL,
  `sapeken` int(2) NOT NULL,
  `kangean` int(2) NOT NULL,
  `raas` int(2) NOT NULL,
  `sapudi` int(2) NOT NULL,
  `sejarah` int(2) NOT NULL,
  `keraton` int(2) NOT NULL,
  `taman` int(2) NOT NULL,
  `sare` int(2) NOT NULL,
  `kota` int(2) NOT NULL,
  `tua` int(2) NOT NULL,
  `kalianget` int(2) NOT NULL,
  `religi` int(2) NOT NULL,
  `masjid` int(2) NOT NULL,
  `jamik` int(2) NOT NULL,
  `asta` int(2) NOT NULL,
  `tinggi` int(2) NOT NULL,
  `katandur` int(2) NOT NULL,
  `jokotole` int(2) NOT NULL,
  `gumok` int(2) NOT NULL,
  `lor` int(2) NOT NULL,
  `wetan` int(2) NOT NULL,
  `yusuf` int(2) NOT NULL,
  `k` int(2) NOT NULL,
  `faqih` int(2) NOT NULL,
  `edukasi` int(2) NOT NULL,
  `budaya` int(2) NOT NULL,
  `rajin` int(2) NOT NULL,
  `batik` int(2) NOT NULL,
  `ukir` int(2) NOT NULL,
  `topeng` int(2) NOT NULL,
  `keris` int(2) NOT NULL,
  `kasur` int(2) NOT NULL,
  `pasir` int(2) NOT NULL,
  `karapan` int(2) NOT NULL,
  `sapi` int(2) NOT NULL,
  `adat` int(2) NOT NULL,
  `kuliner` int(2) NOT NULL,
  `khas` int(2) NOT NULL,
  `transportasi` int(2) NOT NULL,
  `tuju` int(2) NOT NULL,
  `inap` int(2) NOT NULL,
  KEY `id_hint` (`id_hint`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tf`
--

INSERT INTO `tf` (`id_hint`, `daftar`, `wisata`, `alam`, `sumenep`, `tentang`, `pantai`, `lombang`, `lokasi`, `slopeng`, `badur`, `goa`, `payudan`, `batu`, `kapur`, `putih`, `pulau`, `gili`, `iyang`, `labak`, `genting`, `mamburit`, `sapeken`, `kangean`, `raas`, `sapudi`, `sejarah`, `keraton`, `taman`, `sare`, `kota`, `tua`, `kalianget`, `religi`, `masjid`, `jamik`, `asta`, `tinggi`, `katandur`, `jokotole`, `gumok`, `lor`, `wetan`, `yusuf`, `k`, `faqih`, `edukasi`, `budaya`, `rajin`, `batik`, `ukir`, `topeng`, `keris`, `kasur`, `pasir`, `karapan`, `sapi`, `adat`, `kuliner`, `khas`, `transportasi`, `tuju`, `inap`) VALUES
(21, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(81, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(82, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(83, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),
(84, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf_idf`
--

CREATE TABLE IF NOT EXISTS `tf_idf` (
  `id_hint` int(11) NOT NULL,
  `daftar` float(7,4) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `alam` float(7,4) NOT NULL,
  `sumenep` float(7,4) NOT NULL,
  `tentang` float(7,4) NOT NULL,
  `pantai` float(7,4) NOT NULL,
  `lombang` float(7,4) NOT NULL,
  `lokasi` float(7,4) NOT NULL,
  `slopeng` float(7,4) NOT NULL,
  `badur` float(7,4) NOT NULL,
  `goa` float(7,4) NOT NULL,
  `payudan` float(7,4) NOT NULL,
  `batu` float(7,4) NOT NULL,
  `kapur` float(7,4) NOT NULL,
  `putih` float(7,4) NOT NULL,
  `pulau` float(7,4) NOT NULL,
  `gili` float(7,4) NOT NULL,
  `iyang` float(7,4) NOT NULL,
  `labak` float(7,4) NOT NULL,
  `genting` float(7,4) NOT NULL,
  `mamburit` float(7,4) NOT NULL,
  `sapeken` float(7,4) NOT NULL,
  `kangean` float(7,4) NOT NULL,
  `raas` float(7,4) NOT NULL,
  `sapudi` float(7,4) NOT NULL,
  `sejarah` float(7,4) NOT NULL,
  `keraton` float(7,4) NOT NULL,
  `taman` float(7,4) NOT NULL,
  `sare` float(7,4) NOT NULL,
  `kota` float(7,4) NOT NULL,
  `tua` float(7,4) NOT NULL,
  `kalianget` float(7,4) NOT NULL,
  `religi` float(7,4) NOT NULL,
  `masjid` float(7,4) NOT NULL,
  `jamik` float(7,4) NOT NULL,
  `asta` float(7,4) NOT NULL,
  `tinggi` float(7,4) NOT NULL,
  `katandur` float(7,4) NOT NULL,
  `jokotole` float(7,4) NOT NULL,
  `gumok` float(7,4) NOT NULL,
  `lor` float(7,4) NOT NULL,
  `wetan` float(7,4) NOT NULL,
  `yusuf` float(7,4) NOT NULL,
  `k` float(7,4) NOT NULL,
  `faqih` float(7,4) NOT NULL,
  `edukasi` float(7,4) NOT NULL,
  `budaya` float(7,4) NOT NULL,
  `rajin` float(7,4) NOT NULL,
  `batik` float(7,4) NOT NULL,
  `ukir` float(7,4) NOT NULL,
  `topeng` float(7,4) NOT NULL,
  `keris` float(7,4) NOT NULL,
  `kasur` float(7,4) NOT NULL,
  `pasir` float(7,4) NOT NULL,
  `karapan` float(7,4) NOT NULL,
  `sapi` float(7,4) NOT NULL,
  `adat` float(7,4) NOT NULL,
  `kuliner` float(7,4) NOT NULL,
  `khas` float(7,4) NOT NULL,
  `transportasi` float(7,4) NOT NULL,
  `tuju` float(7,4) NOT NULL,
  `inap` float(7,4) NOT NULL,
  KEY `id_hint` (`id_hint`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tf_idf`
--

INSERT INTO `tf_idf` (`id_hint`, `daftar`, `wisata`, `alam`, `sumenep`, `tentang`, `pantai`, `lombang`, `lokasi`, `slopeng`, `badur`, `goa`, `payudan`, `batu`, `kapur`, `putih`, `pulau`, `gili`, `iyang`, `labak`, `genting`, `mamburit`, `sapeken`, `kangean`, `raas`, `sapudi`, `sejarah`, `keraton`, `taman`, `sare`, `kota`, `tua`, `kalianget`, `religi`, `masjid`, `jamik`, `asta`, `tinggi`, `katandur`, `jokotole`, `gumok`, `lor`, `wetan`, `yusuf`, `k`, `faqih`, `edukasi`, `budaya`, `rajin`, `batik`, `ukir`, `topeng`, `keris`, `kasur`, `pasir`, `karapan`, `sapi`, `adat`, `kuliner`, `khas`, `transportasi`, `tuju`, `inap`) VALUES
(21, 3.1699, 2.2768, 5.9773, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(22, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 3.3923, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(23, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 4.9773, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(24, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 3.3923, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(25, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 0.0000, 1.2768, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(26, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 3.3923, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(27, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 0.0000, 1.2768, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(28, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(29, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(30, 0.0000, 2.2768, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(31, 0.0000, 2.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(32, 3.1699, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(33, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 3.3923, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(34, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 3.3923, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(35, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 3.3923, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(36, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 3.3923, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(37, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 3.3923, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(38, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 3.3923, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(39, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(40, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(41, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(42, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(43, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(44, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(46, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(47, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(48, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(49, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8898, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(50, 3.1699, 2.2768, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(51, 0.0000, 0.0000, 0.0000, 2.3923, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(52, 0.0000, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(53, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(54, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(55, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(56, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(57, 3.1699, 2.2768, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(58, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(59, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(60, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(61, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(62, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(63, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(64, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(65, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(66, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(67, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(68, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(69, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(70, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(71, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(72, 0.0000, 0.0000, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(73, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.1699, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(74, 3.1699, 2.2768, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773, 5.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(75, 0.0000, 2.2768, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(76, 0.0000, 2.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(77, 0.0000, 2.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.9773, 0.0000, 5.9773, 5.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(78, 0.0000, 2.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.9773, 0.0000, 0.0000, 0.0000, 5.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(79, 0.0000, 2.2768, 0.0000, 0.0000, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773, 5.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(80, 0.0000, 2.2768, 0.0000, 2.3923, 1.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(81, 0.0000, 2.2768, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 1.2768, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.9773, 4.9773, 4.9773, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(82, 3.1699, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773, 5.9773, 0.0000, 0.0000, 0.0000),
(83, 0.0000, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773, 5.9773, 0.0000),
(84, 3.1699, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.9773);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akar_tf_idf`
--
ALTER TABLE `akar_tf_idf`
  ADD CONSTRAINT `akar_tf_idf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tf`
--
ALTER TABLE `tf`
  ADD CONSTRAINT `tf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tf_idf`
--
ALTER TABLE `tf_idf`
  ADD CONSTRAINT `tf_idf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
