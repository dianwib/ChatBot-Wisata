-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2020 pada 09.20
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_sampang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(0, 'adminku', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akar_tf_idf`
--

CREATE TABLE `akar_tf_idf` (
  `id_hint` int(11) NOT NULL,
  `akar` float(7,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akar_tf_idf`
--

INSERT INTO `akar_tf_idf` (`id_hint`, `akar`) VALUES
(85, 6.6564),
(86, 5.8756),
(87, 6.0383),
(88, 6.7846),
(89, 6.9260),
(90, 5.8756),
(91, 6.0383),
(92, 4.7974),
(93, 4.9954),
(94, 5.8756),
(95, 4.7974),
(96, 6.0383),
(97, 4.9954),
(98, 4.6353),
(99, 4.8399),
(100, 5.8756),
(101, 6.0383),
(102, 6.3858),
(115, 4.3923),
(116, 4.3923),
(117, 4.3923);

-- --------------------------------------------------------

--
-- Struktur dari tabel `akar_tf_idf_eng`
--

CREATE TABLE `akar_tf_idf_eng` (
  `id_hint` int(11) NOT NULL,
  `akar` float(7,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akar_tf_idf_eng`
--

INSERT INTO `akar_tf_idf_eng` (`id_hint`, `akar`) VALUES
(85, 6.2990),
(86, 5.3477),
(87, 5.4572),
(88, 6.1750),
(89, 6.2700),
(90, 4.3664),
(91, 4.4998),
(92, 4.3664),
(93, 4.4998),
(94, 5.9811),
(95, 5.1225),
(96, 6.0791),
(97, 5.2367),
(98, 6.2990),
(99, 6.3922),
(100, 5.9811),
(101, 6.0791);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id_hint` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reply` varchar(800) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id_hint`, `question`, `reply`, `map`, `video`) VALUES
(85, 'Wisata Halal Sampang', 'Hutan Kera Nepa, Bebek Songkem Pak Salim, Air Terjun Toroan, Gili Mandangin, Pantai Lon Malang, Bukit Masegit, Masjid Agung Sampang,dan Makam Ratu Ibu', NULL, NULL),
(86, 'Hutan Kera Nepa', 'Konon manusia yang membabat alas Pulau Madura yang disebut \"Raden Segoro\" pertama kali menginjakkan kakinya dipulau madura di tempat ini. Berada di sisi pantura Kabupaten Sampang, sampai saat ini pengunjung masih dapat menyaksikan legenda gerombolan kera - kera yang jinak dan ramah yang konon merupakan jelmaan dari semua anggota kerajaan yang dikutuk menjadi kera, yang dapat dipanggil oleh pemandu \"le ole ole ole\". Pasir pantainya yang putih menghampar menyampaikan pesan kedamaian, menyusuri sungai mangroove pun akan menimbulkan kesan yang berbeda dari tempat ini.', 'Hutan Kera Nepa', ''),
(87, 'Lokasi Hutan Kera Nepa', 'Desa Batioh, Kec. Banyuates Kab. Sampang. Buka pukul 06.00 sampai 17.00 WIB', NULL, NULL),
(88, 'Bebek Songkem Pak Salim', 'Olahan bebek dengan bumbu khas buje \"cabhi\" yang dibungkus daun pisang lalu dikukus dengan pelepah pisang dan menggunakan kayu bakar selama 4 jam menjadikan pamor makanan bebek yang berkolesterol tinggi menjadi bebek non kolesterol yang sedang populer', NULL, NULL),
(89, 'Lokasi Bebek Songkem Pak Salim', 'Jl. Trunojoyo No.9a, Rw. Iii Rong Tengah- Kec. Sampang Kab. Sampang. Buka pukul 07.00 sampai 22.00 WIB', NULL, NULL),
(90, 'Air Terjun Toroan', 'Satu - satunya air terjun di pulau Madura,dan yang paling unik air terjun setinggi 12 meter ini langsung bermuara lepas di laut jawa, pengunjung diundang untuk menikmati keindahan sunset serta kuliner ikan bakar khas madura di rumah makan pinggir air terjun.', '', 'https://www.youtube.com/watch?v=l2Gxb8tyVmY'),
(91, 'Lokasi Air Terjun Toroan', 'Desa Ketapang Timur, Kec. Ketapang Kab. Sampang. Buka pukul 07.00 sampai 19.00 WIB', NULL, NULL),
(92, 'Gili Mandangin', 'Selain memiliki spot memancing yang menarik, pulau dengan luas 1650 m2 dan jumlah penduduk + 20.000 jiwa, dapat dibayangkan betapa padatnya pemukiman dan masyarakat di pulau yang banyak dikenal dengan sebutan Pulau Kambing ini, hidup masyarakat nelayan yang majemuk merupakan pemandangan yang unik berikut dengan cara hidupnya sebagai nelayan.', NULL, NULL),
(93, 'Lokasi Gili Mandangin', 'Pulau Mandangin , Kec. Sampang Kab. Sampang. Buka pukul 05.00 sampai 14.00 WIB', NULL, NULL),
(94, 'Pantai Lon Malang', 'Ini dia pantai yang lagi hits di madura, pesona baru di pesisir utara Kabupaten Sampang, pantai berpasir putih dengan jajaran pohon cemara udang, arena permainan mobil ATV, kuliner sepanjang pantai membuat setiap traveler yang melewati jalur Bangkalan-Sumenep pasti menyempatkan diri untuk mampir.', '', 'https://www.youtube.com/watch?v=m9ZKtf6huMY'),
(95, 'Bukit Masegit', 'Pemandangan kota Sampang yang menawan, bisa dilihat dari atas bukit ini. Kota Sampang terpampang di depan mata, di bawah bukit batu yang menjulang tinggi dan dikelilingi pepohonan hijau. sangat cocok sebagai tempat pelepas stress.', NULL, NULL),
(96, 'Lokasi Pantai Lon Malang', 'Desa Bira Tengah, Kec. Sokobanah Kec. Sampang. Buka pukul 07.00 sampai 18.30 WIB', NULL, NULL),
(97, 'Lokasi Bukit Masegit', 'Desa Masegit, Kec. Omben Kab. Sampang', NULL, NULL),
(98, 'Masjid Agung Sampang', 'Masjid terbesar di Sampang ini mampu menampung jamaah hingga 10.000 orang.', NULL, NULL),
(99, 'Lokasi Masjid Agung Sampang', 'Jalan Pahlawan I, Rw. III, Rong Tengah, Kec. Sampang, Kab. Sampang', NULL, NULL),
(100, 'Makam Ratu Ibu', 'Makam Ratu Ibu yang juga dikenal dengan nama lain Kuburan Madegan merupakan salah satu tempat wisata religi dan sejarah yang cukup populer di kalangan masyarakat Sampang dan sekitarnya.', NULL, NULL),
(101, 'Lokasi Makam Ratu Ibu', 'Desa Polangan, Kab. Sampang', NULL, NULL),
(102, 'Transportasi masjid agung sampang', 'anda bisa naik becak dari alun-alun sampang, atau bisa naik grab dari alun-alun sampang', NULL, NULL),
(115, 'q', 'w', '', ''),
(116, 'a', 's', '', ''),
(117, 'w', 'w', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbot_hints_eng`
--

CREATE TABLE `chatbot_hints_eng` (
  `id_hint` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reply` varchar(800) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chatbot_hints_eng`
--

INSERT INTO `chatbot_hints_eng` (`id_hint`, `question`, `reply`, `map`, `video`) VALUES
(85, 'Sampang Halal Tourism', 'Nepa Monkey Forest, Pak Salim Songkem Duck, Toroan Waterfall, Gili Mandangin, Lon Malang Beach, Masegit Hill, Sampang Grand Mosque, and Queen Mothers Tomb', NULL, NULL),
(86, 'Nepa Monkey Forest', 'It is said that the man who cut down the base of Madura Island called \"Raden Segoro\" for the first time set foot on the island of Madura in this place. Located on the northern coast of Sampang Regency, visitors can still see the legend of the monkey hordes. - a tame and friendly monkey who is said to be the incarnation of all members of the kingdom who are cursed to become monkeys, who can be called by the guide \"le ole ole ole\". The white sand beaches that spread out convey a message of peace, along the mangroove river will give a different impression from this place.', NULL, NULL),
(87, 'Location of Nepa Monkey Forest', 'Batioh Village, Banyuates Subdistrict, Sampang Regency. Open 06.00 to 17.00 WIB', NULL, NULL),
(88, 'Bebek Songkem Pak Salim', 'Processed duck with special spices buje \"cabhi\" wrapped in banana leaves then steamed with banana fronds and using firewood for 4 hours makes the prestige of high cholesterol duck food into a popular non cholesterol duck. ', NULL, NULL),
(89, 'Location of Bebek Songkem Pak Salim', 'Jl. Trunojoyo No.9a, Rw. Iii Rong Tengah- Kec. Sampang District. Sampang. Open 07.00 to 22.00 WIB', NULL, NULL),
(90, 'Toroan Waterfall', 'The only waterfall on the island of Madura, and the most unique is this 12 meter high waterfall which immediately empties into the Java Sea, visitors are invited to enjoy the beauty of the sunset as well as culinary specialties of Madura grilled fish at home. eat the edge of the waterfall. ', NULL, NULL),
(91, 'Toroan Waterfall Location', 'Ketapang Timur Village, Ketapang Subdistrict, Sampang Regency. Open 07.00 to 19.00 WIB', NULL, NULL),
(92, 'Gili Mandangin', 'In addition to having an interesting fishing spot, an island with an area of ??1650 m2 and a population of + 20,000 people, you can imagine how dense the settlements and people on the island are known as Kambing Island, live fishing communities that compound is a unique sight along with his way of life as fishermen. ', NULL, NULL),
(93, 'Gili Mandangin Location', 'Mandangin Island, Sampang Subdistrict, Sampang Regency. Open 05.00 to 14.00 WIB', NULL, NULL),
(94, 'Pantai Lon Malang', 'Here are the beaches that are currently hits in Madura, new charms on the north coast of Sampang Regency, white sandy beaches with rows of cypress trees, ATV car games arena, culinary along the coast makes every traveler pass the route. Bangkalan-Sumenep definitely took the time to stop by. ', NULL, NULL),
(95, 'Bukit Masegit', 'A charming view of the city of Sampang, can be seen from the top of this hill. The city of Sampang is in plain sight, under towering rocky hills surrounded by green trees. It is perfect for stress relief.', NULL, NULL),
(96, 'Location of Lon Malang Beach', 'Bira Tengah Village, Kec. Sokobanah Kec. Sampang. Open 07.00 to 18.30 WIB', NULL, NULL),
(97, 'Masegit Hill Location', 'Masegit Village, Omben District, Sampang Regency', NULL, NULL),
(98, 'Masjid Agung Sampang', 'The largest mosque in Sampang can accommodate worshipers of up to 10,000 people.', NULL, NULL),
(99, 'Location of the Great Mosque of Sampang', 'Jalan Pahlawan I, Rw. III, Rong Tengah, Kec. Sampang, Kab. Sampang', NULL, NULL),
(100, 'Makam Ratu Ibu', 'Tomb of the Queen Mother which is also known by another name Madegans grave is one of the historical and religious tourism spots that is quite popular among the people of Sampang and its surroundings.', NULL, NULL),
(101, 'Location of Ratu Ibu Tomb', 'Desa Polangan, Kab. Sampang', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `df_idf`
--

CREATE TABLE `df_idf` (
  `kategori` varchar(3) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `hutan` float(7,4) NOT NULL,
  `kera` float(7,4) NOT NULL,
  `nepa` float(7,4) NOT NULL,
  `lokasi` float(7,4) NOT NULL,
  `bebek` float(7,4) NOT NULL,
  `songkem` float(7,4) NOT NULL,
  `pak` float(7,4) NOT NULL,
  `salim` float(7,4) NOT NULL,
  `air` float(7,4) NOT NULL,
  `terjun` float(7,4) NOT NULL,
  `toro` float(7,4) NOT NULL,
  `gili` float(7,4) NOT NULL,
  `mandangin` float(7,4) NOT NULL,
  `pantai` float(7,4) NOT NULL,
  `lon` float(7,4) NOT NULL,
  `malang` float(7,4) NOT NULL,
  `bukit` float(7,4) NOT NULL,
  `masegit` float(7,4) NOT NULL,
  `masjid` float(7,4) NOT NULL,
  `agung` float(7,4) NOT NULL,
  `makam` float(7,4) NOT NULL,
  `ratu` float(7,4) NOT NULL,
  `ibu` float(7,4) NOT NULL,
  `transportasi` float(7,4) NOT NULL,
  `q` float(7,4) NOT NULL,
  `a` float(7,4) NOT NULL,
  `w` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `df_idf`
--

INSERT INTO `df_idf` (`kategori`, `wisata`, `halal`, `sampang`, `hutan`, `kera`, `nepa`, `lokasi`, `bebek`, `songkem`, `pak`, `salim`, `air`, `terjun`, `toro`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `bukit`, `masegit`, `masjid`, `agung`, `makam`, `ratu`, `ibu`, `transportasi`, `q`, `a`, `w`) VALUES
('df', 1.0000, 1.0000, 4.0000, 2.0000, 2.0000, 2.0000, 8.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 3.0000, 3.0000, 2.0000, 2.0000, 2.0000, 1.0000, 1.0000, 1.0000, 1.0000),
('idf', 4.3923, 4.3923, 2.3923, 3.3923, 3.3923, 3.3923, 1.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 3.3923, 2.8074, 2.8074, 3.3923, 3.3923, 3.3923, 4.3923, 4.3923, 4.3923, 4.3923);

-- --------------------------------------------------------

--
-- Struktur dari tabel `df_idf_eng`
--

CREATE TABLE `df_idf_eng` (
  `kategori` varchar(3) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `tourism` float(7,4) NOT NULL,
  `nepa` float(7,4) NOT NULL,
  `monkey` float(7,4) NOT NULL,
  `forest` float(7,4) NOT NULL,
  `location` float(7,4) NOT NULL,
  `bebek` float(7,4) NOT NULL,
  `songkem` float(7,4) NOT NULL,
  `pak` float(7,4) NOT NULL,
  `salim` float(7,4) NOT NULL,
  `toroan` float(7,4) NOT NULL,
  `waterfall` float(7,4) NOT NULL,
  `gili` float(7,4) NOT NULL,
  `mandangin` float(7,4) NOT NULL,
  `pantai` float(7,4) NOT NULL,
  `lon` float(7,4) NOT NULL,
  `malang` float(7,4) NOT NULL,
  `bukit` float(7,4) NOT NULL,
  `masegit` float(7,4) NOT NULL,
  `beach` float(7,4) NOT NULL,
  `hill` float(7,4) NOT NULL,
  `masjid` float(7,4) NOT NULL,
  `agung` float(7,4) NOT NULL,
  `great` float(7,4) NOT NULL,
  `mosque` float(7,4) NOT NULL,
  `makam` float(7,4) NOT NULL,
  `ratu` float(7,4) NOT NULL,
  `ibu` float(7,4) NOT NULL,
  `tomb` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `df_idf_eng`
--

INSERT INTO `df_idf_eng` (`kategori`, `sampang`, `halal`, `tourism`, `nepa`, `monkey`, `forest`, `location`, `bebek`, `songkem`, `pak`, `salim`, `toroan`, `waterfall`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `bukit`, `masegit`, `beach`, `hill`, `masjid`, `agung`, `great`, `mosque`, `makam`, `ratu`, `ibu`, `tomb`) VALUES
('df', 3.0000, 1.0000, 1.0000, 2.0000, 2.0000, 2.0000, 8.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 1.0000, 2.0000, 2.0000, 1.0000, 2.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000, 2.0000, 2.0000, 1.0000),
('idf', 2.5025, 4.0875, 4.0875, 3.0875, 3.0875, 3.0875, 1.0875, 3.0875, 3.0875, 3.0875, 3.0875, 3.0875, 3.0875, 3.0875, 3.0875, 4.0875, 3.0875, 3.0875, 4.0875, 3.0875, 4.0875, 4.0875, 4.0875, 4.0875, 4.0875, 4.0875, 4.0875, 3.0875, 3.0875, 4.0875);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_hint_id` int(11) DEFAULT NULL,
  `id_hint_eng` int(11) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_hint_id`, `id_hint_eng`, `date`) VALUES
(88, NULL, '2020-11-01 17:14:45'),
(85, NULL, '2020-11-02 00:21:27'),
(92, NULL, '2020-11-02 00:22:05'),
(85, NULL, '2020-11-02 00:57:15'),
(85, NULL, '2020-11-02 00:57:16'),
(85, NULL, '2020-11-02 00:57:17'),
(NULL, 98, '2020-11-07 21:14:30'),
(NULL, 98, '2020-11-07 21:14:33'),
(NULL, 98, '2020-11-07 21:14:37'),
(NULL, 98, '2020-11-07 21:14:45'),
(NULL, 98, '2020-11-07 21:14:58'),
(NULL, 98, '2020-11-07 21:15:03'),
(NULL, 85, '2020-11-07 21:15:10'),
(NULL, 99, '2020-11-07 21:15:14'),
(NULL, 85, '2020-11-07 21:19:22'),
(NULL, 85, '2020-11-07 21:24:31'),
(NULL, 98, '2020-11-07 21:24:37'),
(85, NULL, '2020-11-07 21:25:26'),
(NULL, 92, '2020-11-07 21:26:16'),
(NULL, 95, '2020-11-07 21:26:51'),
(NULL, 97, '2020-11-07 21:26:56'),
(85, NULL, '2020-11-07 23:27:55'),
(85, NULL, '2020-11-07 23:28:02'),
(NULL, 85, '2020-11-07 23:59:33'),
(85, NULL, '2020-11-07 23:59:42'),
(98, NULL, '2020-11-07 23:59:47'),
(NULL, 98, '2020-11-07 23:59:53'),
(NULL, 98, '2020-11-08 00:00:16'),
(NULL, 85, '2020-11-08 00:00:19'),
(NULL, 99, '2020-11-08 00:00:22'),
(NULL, 98, '2020-11-08 00:43:01'),
(98, NULL, '2020-11-08 00:43:10'),
(99, NULL, '2020-11-08 00:43:13'),
(NULL, 98, '2020-11-08 00:43:19'),
(NULL, 98, '2020-11-08 00:43:24'),
(NULL, 85, '2020-11-08 00:43:26'),
(99, NULL, '2020-11-08 00:43:51'),
(98, NULL, '2020-11-08 00:43:54'),
(98, NULL, '2020-11-08 00:56:43'),
(NULL, 98, '2020-11-08 01:02:10'),
(NULL, 85, '2020-11-08 01:02:46'),
(NULL, 99, '2020-11-08 01:02:53'),
(NULL, 97, '2020-11-08 01:02:58'),
(NULL, 97, '2020-11-08 01:03:03'),
(96, NULL, '2020-11-08 01:03:12'),
(93, NULL, '2020-11-08 01:04:10'),
(92, NULL, '2020-11-08 01:04:13'),
(93, NULL, '2020-11-08 01:04:14'),
(92, NULL, '2020-11-08 01:04:16'),
(93, NULL, '2020-11-08 01:04:17'),
(92, NULL, '2020-11-08 01:04:19'),
(93, NULL, '2020-11-08 01:04:20'),
(92, NULL, '2020-11-08 01:04:21'),
(93, NULL, '2020-11-08 01:04:23'),
(93, NULL, '2020-11-08 01:04:23'),
(92, NULL, '2020-11-08 01:20:18'),
(93, NULL, '2020-11-08 01:20:20'),
(97, NULL, '2020-11-08 01:21:01'),
(93, NULL, '2020-11-08 01:21:03'),
(92, NULL, '2020-11-08 01:21:05'),
(98, NULL, '2020-11-08 01:21:49'),
(102, NULL, '2020-11-08 01:21:51'),
(99, NULL, '2020-11-08 01:21:53'),
(99, NULL, '2020-11-08 01:21:55'),
(85, NULL, '2020-11-08 01:22:05'),
(102, NULL, '2020-11-08 01:22:06'),
(85, NULL, '2020-11-08 01:22:09'),
(100, NULL, '2020-11-08 01:43:51'),
(95, NULL, '2020-11-08 01:43:53'),
(101, NULL, '2020-11-08 01:43:55'),
(99, NULL, '2020-11-08 01:43:59'),
(85, NULL, '2020-11-08 01:44:02'),
(98, NULL, '2020-11-08 01:44:15'),
(102, NULL, '2020-11-08 01:44:28'),
(99, NULL, '2020-11-08 01:52:29'),
(85, NULL, '2020-11-08 01:58:31'),
(98, NULL, '2020-11-08 01:58:36'),
(98, NULL, '2020-11-08 01:59:18'),
(98, NULL, '2020-11-08 02:00:42'),
(98, NULL, '2020-11-08 02:03:03'),
(98, NULL, '2020-11-08 02:04:04'),
(98, NULL, '2020-11-08 02:04:52'),
(98, NULL, '2020-11-08 02:04:53'),
(98, NULL, '2020-11-08 02:04:54'),
(98, NULL, '2020-11-08 02:11:15'),
(99, NULL, '2020-11-08 02:11:18'),
(98, NULL, '2020-11-08 02:11:19'),
(99, NULL, '2020-11-08 02:11:21'),
(98, NULL, '2020-11-08 02:11:23'),
(99, NULL, '2020-11-08 02:11:25'),
(98, NULL, '2020-11-08 02:13:06'),
(102, NULL, '2020-11-08 02:13:07'),
(99, NULL, '2020-11-08 02:13:10'),
(85, NULL, '2020-11-08 02:13:35'),
(102, NULL, '2020-11-08 02:13:39'),
(85, NULL, '2020-11-08 02:13:42'),
(98, NULL, '2020-11-08 02:13:44'),
(100, NULL, '2020-11-08 02:17:33'),
(95, NULL, '2020-11-08 02:17:35'),
(101, NULL, '2020-11-08 02:17:37'),
(99, NULL, '2020-11-08 02:17:40'),
(85, NULL, '2020-11-08 02:21:57'),
(99, NULL, '2020-11-08 02:21:59'),
(102, NULL, '2020-11-08 02:22:02'),
(102, NULL, '2020-11-08 02:22:12'),
(100, NULL, '2020-11-08 02:23:20'),
(101, NULL, '2020-11-08 02:23:23'),
(100, NULL, '2020-11-08 02:23:25'),
(101, NULL, '2020-11-08 02:23:26'),
(98, NULL, '2020-11-08 02:25:42'),
(102, NULL, '2020-11-08 02:25:46'),
(85, NULL, '2020-11-08 02:25:49'),
(102, NULL, '2020-11-08 02:25:51'),
(99, NULL, '2020-11-08 02:25:53'),
(85, NULL, '2020-11-08 02:25:55'),
(99, NULL, '2020-11-08 02:25:59'),
(99, NULL, '2020-11-08 02:26:09'),
(92, NULL, '2020-11-08 02:28:55'),
(96, NULL, '2020-11-08 02:30:05'),
(93, NULL, '2020-11-08 02:30:06'),
(99, NULL, '2020-11-08 02:30:11'),
(102, NULL, '2020-11-08 02:30:12'),
(99, NULL, '2020-11-08 02:30:14'),
(102, NULL, '2020-11-08 02:30:16'),
(99, NULL, '2020-11-08 02:30:17'),
(102, NULL, '2020-11-08 02:30:21'),
(100, NULL, '2020-11-08 02:34:43'),
(85, NULL, '2020-11-08 02:34:49'),
(102, NULL, '2020-11-08 02:34:53'),
(85, NULL, '2020-11-08 02:34:55'),
(102, NULL, '2020-11-08 02:35:20'),
(85, NULL, '2020-11-08 02:35:22'),
(99, NULL, '2020-11-08 02:35:25'),
(85, NULL, '2020-11-08 02:36:40'),
(102, NULL, '2020-11-08 02:36:43'),
(98, NULL, '2020-11-08 02:47:58'),
(102, NULL, '2020-11-08 02:51:13'),
(85, NULL, '2020-11-08 02:51:15'),
(102, NULL, '2020-11-08 02:51:17'),
(102, NULL, '2020-11-08 02:51:19'),
(102, NULL, '2020-11-08 02:51:21'),
(102, NULL, '2020-11-08 02:51:22'),
(98, NULL, '2020-11-08 02:51:24'),
(102, NULL, '2020-11-08 02:51:27'),
(102, NULL, '2020-11-08 02:53:07'),
(98, NULL, '2020-11-08 02:53:09'),
(85, NULL, '2020-11-08 02:53:11'),
(NULL, 94, '2020-11-08 02:53:38'),
(NULL, 100, '2020-11-08 02:53:40'),
(NULL, 94, '2020-11-08 02:53:46'),
(NULL, 100, '2020-11-08 02:53:50'),
(100, NULL, '2020-11-08 02:54:24'),
(95, NULL, '2020-11-08 02:54:25'),
(85, NULL, '2020-11-08 02:54:27'),
(100, NULL, '2020-11-08 02:55:17'),
(95, NULL, '2020-11-08 02:55:19'),
(100, NULL, '2020-11-08 02:55:42'),
(95, NULL, '2020-11-08 02:55:43'),
(97, NULL, '2020-11-08 02:55:45'),
(95, NULL, '2020-11-08 02:55:47'),
(97, NULL, '2020-11-08 02:55:48'),
(95, NULL, '2020-11-08 02:55:49'),
(95, NULL, '2020-11-08 02:55:51'),
(85, NULL, '2020-11-08 02:55:52'),
(100, NULL, '2020-11-08 02:56:27'),
(100, NULL, '2020-11-08 02:56:29'),
(85, NULL, '2020-11-08 02:56:30'),
(85, NULL, '2020-11-08 02:57:02'),
(102, NULL, '2020-11-08 02:57:09'),
(99, NULL, '2020-11-08 02:57:11'),
(NULL, 100, '2020-11-08 03:02:57'),
(100, NULL, '2020-11-08 03:05:17'),
(100, NULL, '2020-11-08 03:06:00'),
(100, NULL, '2020-11-08 03:06:04'),
(85, NULL, '2020-11-08 09:44:50'),
(100, NULL, '2020-11-08 09:44:50'),
(85, NULL, '2020-11-08 09:44:50'),
(85, NULL, '2020-11-08 09:44:51'),
(85, NULL, '2020-11-08 09:44:51'),
(85, NULL, '2020-11-08 09:44:53'),
(99, NULL, '2020-11-08 09:44:56'),
(85, NULL, '2020-11-08 09:45:35'),
(102, NULL, '2020-11-08 09:45:49'),
(85, NULL, '2020-11-08 09:45:51'),
(85, NULL, '2020-11-08 10:17:31'),
(85, NULL, '2020-11-08 10:19:41'),
(98, NULL, '2020-11-08 10:19:43'),
(85, NULL, '2020-11-08 10:50:59'),
(102, NULL, '2020-11-08 10:54:00'),
(NULL, 95, '2020-11-08 10:55:59'),
(NULL, 97, '2020-11-08 10:56:12'),
(102, NULL, '2020-11-08 10:58:40'),
(102, NULL, '2020-11-08 10:58:43'),
(NULL, 95, '2020-11-08 10:58:50'),
(NULL, 85, '2020-11-08 10:58:52'),
(NULL, 94, '2020-11-08 11:06:42'),
(NULL, 85, '2020-11-08 11:08:52'),
(NULL, 98, '2020-11-08 11:12:46'),
(85, NULL, '2020-11-08 11:13:57'),
(99, NULL, '2020-11-08 11:21:31'),
(NULL, 97, '2020-11-08 11:21:38'),
(NULL, 95, '2020-11-08 11:21:41'),
(NULL, 95, '2020-11-08 11:21:43'),
(NULL, 85, '2020-11-08 11:21:45'),
(85, NULL, '2020-11-08 11:23:16'),
(85, NULL, '2020-11-08 11:23:17'),
(85, NULL, '2020-11-08 11:25:53'),
(99, NULL, '2020-11-08 11:30:01'),
(85, NULL, '2020-11-08 11:30:04'),
(98, NULL, '2020-11-08 11:30:07'),
(102, NULL, '2020-11-08 11:30:41'),
(115, NULL, '2020-11-08 11:32:14'),
(98, NULL, '2020-11-08 11:33:13'),
(115, NULL, '2020-11-08 11:33:20'),
(116, NULL, '2020-11-08 11:35:41'),
(116, NULL, '2020-11-08 11:39:04'),
(117, NULL, '2020-11-08 11:39:08'),
(117, NULL, '2020-11-08 11:41:32'),
(85, NULL, '2020-11-08 11:44:41'),
(102, NULL, '2020-11-08 11:45:07'),
(85, NULL, '2020-11-08 11:48:01'),
(98, NULL, '2020-11-08 11:48:09'),
(85, NULL, '2020-11-08 11:48:59'),
(102, NULL, '2020-11-08 11:49:02'),
(90, NULL, '2020-11-08 11:51:00'),
(86, NULL, '2020-11-08 11:51:19'),
(85, NULL, '2020-11-08 13:29:21'),
(85, NULL, '2020-11-08 13:29:22'),
(102, NULL, '2020-11-08 13:29:22'),
(NULL, 98, '2020-11-08 13:29:23'),
(NULL, 85, '2020-11-08 13:29:23'),
(85, NULL, '2020-11-08 13:29:23'),
(102, NULL, '2020-11-08 13:30:32'),
(102, NULL, '2020-11-08 13:32:14'),
(99, NULL, '2020-11-08 13:32:18'),
(85, NULL, '2020-11-08 13:32:21'),
(99, NULL, '2020-11-08 13:32:27'),
(85, NULL, '2020-11-08 13:32:48'),
(99, NULL, '2020-11-08 13:33:35'),
(98, NULL, '2020-11-08 13:33:39'),
(85, NULL, '2020-11-08 13:33:42'),
(102, NULL, '2020-11-08 13:33:43'),
(NULL, 98, '2020-11-08 13:34:01'),
(NULL, 85, '2020-11-08 13:34:14'),
(NULL, 97, '2020-11-08 13:34:18'),
(NULL, 85, '2020-11-08 13:36:14'),
(NULL, 85, '2020-11-08 13:36:59'),
(NULL, 97, '2020-11-08 13:37:02'),
(NULL, 97, '2020-11-08 13:37:22'),
(102, NULL, '2020-11-08 13:37:44'),
(99, NULL, '2020-11-08 13:37:45'),
(99, NULL, '2020-11-08 13:37:47'),
(102, NULL, '2020-11-08 13:39:26'),
(102, NULL, '2020-11-08 13:39:28'),
(NULL, 85, '2020-11-08 13:41:12'),
(NULL, 85, '2020-11-08 13:47:17'),
(NULL, 85, '2020-11-08 13:47:22'),
(85, NULL, '2020-11-08 13:51:02'),
(102, NULL, '2020-11-08 13:53:00'),
(NULL, 95, '2020-11-08 13:53:06'),
(102, NULL, '2020-11-08 13:53:36'),
(102, NULL, '2020-11-08 13:53:38'),
(102, NULL, '2020-11-08 13:53:39'),
(102, NULL, '2020-11-08 13:53:39'),
(102, NULL, '2020-11-08 13:53:39'),
(102, NULL, '2020-11-08 13:53:40'),
(98, NULL, '2020-11-08 13:53:43'),
(NULL, 97, '2020-11-08 13:53:58'),
(85, NULL, '2020-11-08 13:55:19'),
(85, NULL, '2020-11-08 13:55:21'),
(85, NULL, '2020-11-08 13:55:23'),
(99, NULL, '2020-11-08 13:55:55'),
(99, NULL, '2020-11-08 13:55:57'),
(85, NULL, '2020-11-08 13:55:58'),
(85, NULL, '2020-11-08 13:58:05'),
(98, NULL, '2020-11-08 13:58:56'),
(102, NULL, '2020-11-08 13:59:04'),
(102, NULL, '2020-11-08 13:59:07'),
(99, NULL, '2020-11-08 13:59:57'),
(85, NULL, '2020-11-08 14:00:14'),
(NULL, 98, '2020-11-08 14:00:54'),
(NULL, 95, '2020-11-08 14:00:56'),
(NULL, 97, '2020-11-08 14:01:02'),
(NULL, 95, '2020-11-08 14:01:39'),
(98, NULL, '2020-11-08 14:03:10'),
(85, NULL, '2020-11-08 14:03:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id_log_message` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id_log_message`, `message`, `added_on`, `type`) VALUES
(913, 'Selamat datang', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf`
--

CREATE TABLE `tf` (
  `id_hint` int(11) NOT NULL,
  `wisata` int(2) NOT NULL DEFAULT 0,
  `halal` int(2) NOT NULL DEFAULT 0,
  `sampang` int(2) NOT NULL DEFAULT 0,
  `hutan` int(2) NOT NULL DEFAULT 0,
  `kera` int(2) NOT NULL DEFAULT 0,
  `nepa` int(2) NOT NULL DEFAULT 0,
  `lokasi` int(2) NOT NULL DEFAULT 0,
  `bebek` int(2) NOT NULL DEFAULT 0,
  `songkem` int(2) NOT NULL DEFAULT 0,
  `pak` int(2) NOT NULL DEFAULT 0,
  `salim` int(2) NOT NULL DEFAULT 0,
  `air` int(2) NOT NULL DEFAULT 0,
  `terjun` int(2) NOT NULL DEFAULT 0,
  `toro` int(2) NOT NULL DEFAULT 0,
  `gili` int(2) NOT NULL DEFAULT 0,
  `mandangin` int(2) NOT NULL DEFAULT 0,
  `pantai` int(2) NOT NULL DEFAULT 0,
  `lon` int(2) NOT NULL DEFAULT 0,
  `malang` int(2) NOT NULL DEFAULT 0,
  `bukit` int(2) NOT NULL DEFAULT 0,
  `masegit` int(2) NOT NULL DEFAULT 0,
  `masjid` int(2) NOT NULL DEFAULT 0,
  `agung` int(2) NOT NULL DEFAULT 0,
  `makam` int(2) NOT NULL DEFAULT 0,
  `ratu` int(2) NOT NULL DEFAULT 0,
  `ibu` int(2) NOT NULL DEFAULT 0,
  `transportasi` int(2) NOT NULL DEFAULT 0,
  `q` int(2) NOT NULL DEFAULT 0,
  `a` int(2) NOT NULL DEFAULT 0,
  `w` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf`
--

INSERT INTO `tf` (`id_hint`, `wisata`, `halal`, `sampang`, `hutan`, `kera`, `nepa`, `lokasi`, `bebek`, `songkem`, `pak`, `salim`, `air`, `terjun`, `toro`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `bukit`, `masegit`, `masjid`, `agung`, `makam`, `ratu`, `ibu`, `transportasi`, `q`, `a`, `w`) VALUES
(85, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(99, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(102, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf_eng`
--

CREATE TABLE `tf_eng` (
  `id_hint` int(11) NOT NULL,
  `sampang` int(2) NOT NULL DEFAULT 0,
  `halal` int(2) NOT NULL DEFAULT 0,
  `tourism` int(2) NOT NULL DEFAULT 0,
  `nepa` int(2) NOT NULL DEFAULT 0,
  `monkey` int(2) NOT NULL DEFAULT 0,
  `forest` int(2) NOT NULL DEFAULT 0,
  `location` int(2) NOT NULL DEFAULT 0,
  `bebek` int(2) NOT NULL DEFAULT 0,
  `songkem` int(2) NOT NULL DEFAULT 0,
  `pak` int(2) NOT NULL DEFAULT 0,
  `salim` int(2) NOT NULL DEFAULT 0,
  `toroan` int(2) NOT NULL DEFAULT 0,
  `waterfall` int(2) NOT NULL DEFAULT 0,
  `gili` int(2) NOT NULL DEFAULT 0,
  `mandangin` int(2) NOT NULL DEFAULT 0,
  `pantai` int(2) NOT NULL DEFAULT 0,
  `lon` int(2) NOT NULL DEFAULT 0,
  `malang` int(2) NOT NULL DEFAULT 0,
  `bukit` int(2) NOT NULL DEFAULT 0,
  `masegit` int(2) NOT NULL DEFAULT 0,
  `beach` int(2) NOT NULL DEFAULT 0,
  `hill` int(2) NOT NULL DEFAULT 0,
  `masjid` int(2) NOT NULL DEFAULT 0,
  `agung` int(2) NOT NULL DEFAULT 0,
  `great` int(2) NOT NULL DEFAULT 0,
  `mosque` int(2) NOT NULL DEFAULT 0,
  `makam` int(2) NOT NULL DEFAULT 0,
  `ratu` int(2) NOT NULL DEFAULT 0,
  `ibu` int(2) NOT NULL DEFAULT 0,
  `tomb` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf_eng`
--

INSERT INTO `tf_eng` (`id_hint`, `sampang`, `halal`, `tourism`, `nepa`, `monkey`, `forest`, `location`, `bebek`, `songkem`, `pak`, `salim`, `toroan`, `waterfall`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `bukit`, `masegit`, `beach`, `hill`, `masjid`, `agung`, `great`, `mosque`, `makam`, `ratu`, `ibu`, `tomb`) VALUES
(85, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
(99, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0),
(101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf_idf`
--

CREATE TABLE `tf_idf` (
  `id_hint` int(11) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `hutan` float(7,4) NOT NULL,
  `kera` float(7,4) NOT NULL,
  `nepa` float(7,4) NOT NULL,
  `lokasi` float(7,4) NOT NULL,
  `bebek` float(7,4) NOT NULL,
  `songkem` float(7,4) NOT NULL,
  `pak` float(7,4) NOT NULL,
  `salim` float(7,4) NOT NULL,
  `air` float(7,4) NOT NULL,
  `terjun` float(7,4) NOT NULL,
  `toro` float(7,4) NOT NULL,
  `gili` float(7,4) NOT NULL,
  `mandangin` float(7,4) NOT NULL,
  `pantai` float(7,4) NOT NULL,
  `lon` float(7,4) NOT NULL,
  `malang` float(7,4) NOT NULL,
  `bukit` float(7,4) NOT NULL,
  `masegit` float(7,4) NOT NULL,
  `masjid` float(7,4) NOT NULL,
  `agung` float(7,4) NOT NULL,
  `makam` float(7,4) NOT NULL,
  `ratu` float(7,4) NOT NULL,
  `ibu` float(7,4) NOT NULL,
  `transportasi` float(7,4) NOT NULL,
  `q` float(7,4) NOT NULL,
  `a` float(7,4) NOT NULL,
  `w` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf_idf`
--

INSERT INTO `tf_idf` (`id_hint`, `wisata`, `halal`, `sampang`, `hutan`, `kera`, `nepa`, `lokasi`, `bebek`, `songkem`, `pak`, `salim`, `air`, `terjun`, `toro`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `bukit`, `masegit`, `masjid`, `agung`, `makam`, `ratu`, `ibu`, `transportasi`, `q`, `a`, `w`) VALUES
(85, 4.3923, 4.3923, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(86, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(87, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(88, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(89, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.3923, 3.3923, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(90, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(91, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(92, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(93, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(94, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(95, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(96, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(97, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(98, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(99, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000),
(101, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.3923, 3.3923, 3.3923, 0.0000, 0.0000, 0.0000, 0.0000),
(102, 0.0000, 0.0000, 2.3923, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 4.3923, 0.0000, 0.0000, 0.0000),
(115, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.3923, 0.0000, 0.0000),
(116, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.3923, 0.0000),
(117, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.3923);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf_idf_eng`
--

CREATE TABLE `tf_idf_eng` (
  `id_hint` int(11) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `tourism` float(7,4) NOT NULL,
  `nepa` float(7,4) NOT NULL,
  `monkey` float(7,4) NOT NULL,
  `forest` float(7,4) NOT NULL,
  `location` float(7,4) NOT NULL,
  `bebek` float(7,4) NOT NULL,
  `songkem` float(7,4) NOT NULL,
  `pak` float(7,4) NOT NULL,
  `salim` float(7,4) NOT NULL,
  `toroan` float(7,4) NOT NULL,
  `waterfall` float(7,4) NOT NULL,
  `gili` float(7,4) NOT NULL,
  `mandangin` float(7,4) NOT NULL,
  `pantai` float(7,4) NOT NULL,
  `lon` float(7,4) NOT NULL,
  `malang` float(7,4) NOT NULL,
  `bukit` float(7,4) NOT NULL,
  `masegit` float(7,4) NOT NULL,
  `beach` float(7,4) NOT NULL,
  `hill` float(7,4) NOT NULL,
  `masjid` float(7,4) NOT NULL,
  `agung` float(7,4) NOT NULL,
  `great` float(7,4) NOT NULL,
  `mosque` float(7,4) NOT NULL,
  `makam` float(7,4) NOT NULL,
  `ratu` float(7,4) NOT NULL,
  `ibu` float(7,4) NOT NULL,
  `tomb` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf_idf_eng`
--

INSERT INTO `tf_idf_eng` (`id_hint`, `sampang`, `halal`, `tourism`, `nepa`, `monkey`, `forest`, `location`, `bebek`, `songkem`, `pak`, `salim`, `toroan`, `waterfall`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `bukit`, `masegit`, `beach`, `hill`, `masjid`, `agung`, `great`, `mosque`, `makam`, `ratu`, `ibu`, `tomb`) VALUES
(85, 2.5025, 4.0875, 4.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(86, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(87, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 3.0875, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(88, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(89, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 3.0875, 3.0875, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(90, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(91, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(92, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(93, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(94, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.0875, 3.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(95, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.0875, 3.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(96, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 0.0000, 0.0000, 4.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(97, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 0.0000, 4.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(98, 2.5025, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.0875, 4.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(99, 2.5025, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.0875, 4.0875, 0.0000, 0.0000, 0.0000, 0.0000),
(100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4.0875, 3.0875, 3.0875, 0.0000),
(101, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0875, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0875, 3.0875, 4.0875);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `akar_tf_idf`
--
ALTER TABLE `akar_tf_idf`
  ADD KEY `id_hint` (`id_hint`);

--
-- Indeks untuk tabel `akar_tf_idf_eng`
--
ALTER TABLE `akar_tf_idf_eng`
  ADD KEY `id_hint` (`id_hint`);

--
-- Indeks untuk tabel `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id_hint`);

--
-- Indeks untuk tabel `chatbot_hints_eng`
--
ALTER TABLE `chatbot_hints_eng`
  ADD PRIMARY KEY (`id_hint`);

--
-- Indeks untuk tabel `df_idf`
--
ALTER TABLE `df_idf`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `df_idf_eng`
--
ALTER TABLE `df_idf_eng`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD KEY `id_hint_id` (`id_hint_id`),
  ADD KEY `id_hint_eng` (`id_hint_eng`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_log_message`);

--
-- Indeks untuk tabel `tf`
--
ALTER TABLE `tf`
  ADD KEY `id_hint` (`id_hint`);

--
-- Indeks untuk tabel `tf_eng`
--
ALTER TABLE `tf_eng`
  ADD KEY `id_hint` (`id_hint`);

--
-- Indeks untuk tabel `tf_idf`
--
ALTER TABLE `tf_idf`
  ADD KEY `id_hint` (`id_hint`);

--
-- Indeks untuk tabel `tf_idf_eng`
--
ALTER TABLE `tf_idf_eng`
  ADD KEY `id_hint` (`id_hint`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id_hint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `chatbot_hints_eng`
--
ALTER TABLE `chatbot_hints_eng`
  MODIFY `id_hint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id_log_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=914;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akar_tf_idf`
--
ALTER TABLE `akar_tf_idf`
  ADD CONSTRAINT `akar_tf_idf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `akar_tf_idf_eng`
--
ALTER TABLE `akar_tf_idf_eng`
  ADD CONSTRAINT `akar_tf_idf_eng_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_hint_id`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`id_hint_eng`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tf`
--
ALTER TABLE `tf`
  ADD CONSTRAINT `tf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tf_eng`
--
ALTER TABLE `tf_eng`
  ADD CONSTRAINT `tf_eng_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tf_idf`
--
ALTER TABLE `tf_idf`
  ADD CONSTRAINT `tf_idf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tf_idf_eng`
--
ALTER TABLE `tf_idf_eng`
  ADD CONSTRAINT `tf_idf_eng_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
