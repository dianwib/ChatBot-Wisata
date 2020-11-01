-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2020 pada 07.21
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
(0, 'admin', 'admin');

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
(85, 5.8251),
(86, 4.8626),
(87, 4.9643),
(88, 5.6148),
(89, 5.7032),
(90, 4.8626),
(91, 4.9643),
(93, 5.4765),
(96, 6.6700),
(98, 4.5500),
(99, 4.6585),
(100, 4.8626),
(101, 4.9643),
(107, 3.8074);

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
(7, 3.4641),
(8, 2.0000),
(9, 2.0000),
(10, 2.0000);

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
(86, 'Hutan Kera Nepa', 'Konon manusia yang membabat alas Pulau Madura yang disebut \"Raden Segoro\" pertama kali menginjakkan kakinya dipulau madura di tempat ini. Berada di sisi pantura Kabupaten Sampang, sampai saat ini pengunjung masih dapat menyaksikan legenda gerombolan kera - kera yang jinak dan ramah yang konon merupakan jelmaan dari semua anggota kerajaan yang dikutuk menjadi kera, yang dapat dipanggil oleh pemandu \"le ole ole ole\". Pasir pantainya yang putih menghampar menyampaikan pesan kedamaian, menyusuri sungai mangroove pun akan menimbulkan kesan yang berbeda dari tempat ini.', NULL, 'https://www.youtube.com/watch?v=3_o5SEJMfCM'),
(87, 'Lokasi Hutan Kera Nepa', 'Desa Batioh, Kec. Banyuates Kab. Sampang. Buka pukul 06.00 sampai 17.00 WIB', 'Hutan Kera Nepa', 'https://www.youtube.com/watch?v=3_o5SEJMfCM'),
(88, 'Bebek Songkem Pak Salim', 'Olahan bebek dengan bumbu khas buje \"cabhi\" yang dibungkus daun pisang lalu dikukus dengan pelepah pisang dan menggunakan kayu bakar selama 4 jam menjadikan pamor makanan bebek yang berkolesterol tinggi menjadi bebek non kolesterol yang sedang populer', NULL, NULL),
(89, 'Lokasi Bebek Songkem Pak Salim', 'Jl. Trunojoyo No.9a, Rw. Iii Rong Tengah- Kec. Sampang Kab. Sampang. Buka pukul 07.00 sampai 22.00 WIB', NULL, NULL),
(90, 'Air Terjun Toroan', 'Satu - satunya air terjun di pulau Madura,dan yang paling unik air terjun setinggi 12 meter ini langsung bermuara lepas di laut jawa, pengunjung diundang untuk menikmati keindahan sunset serta kuliner ikan bakar khas madura di rumah makan pinggir air terjun.', NULL, NULL),
(91, 'Lokasi Air Terjun Toroan', 'Desa Ketapang Timur, Kec. Ketapang Kab. Sampang. Buka pukul 07.00 sampai 19.00 WIB', NULL, NULL),
(93, 'Lokasi Gili Mandangin', 'Pulau Mandangin , Kec. Sampang Kab. Sampang. Buka pukul 05.00 sampai 14.00 WIB', NULL, NULL),
(96, 'Lokasi Pantai Lon Malang', 'Desa Bira Tengah, Kec. Sokobanah Kec. Sampang. Buka pukul 07.00 sampai 18.30 WIB', NULL, NULL),
(98, 'Masjid Agung Sampang', 'Masjid terbesar di Sampang ini mampu menampung jamaah hingga 10.000 orang.', NULL, NULL),
(99, 'Lokasi Masjid Agung Sampang', 'Jalan Pahlawan I, Rw. III, Rong Tengah, Kec. Sampang, Kab. Sampang', NULL, NULL),
(100, 'Makam Ratu Ibu', 'Makam Ratu Ibu yang juga dikenal dengan nama lain Kuburan Madegan merupakan salah satu tempat wisata religi dan sejarah yang cukup populer di kalangan masyarakat Sampang dan sekitarnya.', NULL, NULL),
(101, 'Lokasi Makam Ratu Ibu', 'Desa Polangan, Kab. Sampang', NULL, NULL),
(107, 'aa1', 'bb1', 'cca', 'dd1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatbot_hints_eng`
--

CREATE TABLE `chatbot_hints_eng` (
  `id_hint` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reply` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chatbot_hints_eng`
--

INSERT INTO `chatbot_hints_eng` (`id_hint`, `question`, `reply`) VALUES
(7, 'Wisata Halal Sampang', 'Hutan Kera Nepa, Bebek Songkem Pak Salim, Air Terjun Toroan, Gili Mandangin, Pantai Lon Malang, Bukit Masegit, Masjid Agung Sampang,dan Makam Ratu Ibu'),
(8, 'a', 'aa'),
(9, 'b', 'bb'),
(10, 'c', 'cc');

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
  `masjid` float(7,4) NOT NULL,
  `agung` float(7,4) NOT NULL,
  `makam` float(7,4) NOT NULL,
  `ratu` float(7,4) NOT NULL,
  `ibu` float(7,4) NOT NULL,
  `aa` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `df_idf`
--

INSERT INTO `df_idf` (`kategori`, `wisata`, `halal`, `sampang`, `hutan`, `kera`, `nepa`, `lokasi`, `bebek`, `songkem`, `pak`, `salim`, `air`, `terjun`, `toro`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `masjid`, `agung`, `makam`, `ratu`, `ibu`, `aa`) VALUES
('df', 1.0000, 1.0000, 3.0000, 2.0000, 2.0000, 2.0000, 7.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 1.0000),
('idf', 3.8074, 3.8074, 2.2224, 2.8074, 2.8074, 2.8074, 1.0000, 2.8074, 2.8074, 2.8074, 2.8074, 2.8074, 2.8074, 2.8074, 3.8074, 3.8074, 3.8074, 3.8074, 3.8074, 2.8074, 2.8074, 2.8074, 2.8074, 2.8074, 3.8074);

-- --------------------------------------------------------

--
-- Struktur dari tabel `df_idf_eng`
--

CREATE TABLE `df_idf_eng` (
  `kategori` varchar(3) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `a` float(7,4) NOT NULL,
  `b` float(7,4) NOT NULL,
  `c` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `df_idf_eng`
--

INSERT INTO `df_idf_eng` (`kategori`, `wisata`, `halal`, `sampang`, `a`, `b`, `c`) VALUES
('df', 1.0000, 1.0000, 1.0000, 1.0000, 1.0000, 1.0000),
('idf', 2.0000, 2.0000, 2.0000, 2.0000, 2.0000, 2.0000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_hint` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `masjid` int(2) NOT NULL DEFAULT 0,
  `agung` int(2) NOT NULL DEFAULT 0,
  `makam` int(2) NOT NULL DEFAULT 0,
  `ratu` int(2) NOT NULL DEFAULT 0,
  `ibu` int(2) NOT NULL DEFAULT 0,
  `aa` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf`
--

INSERT INTO `tf` (`id_hint`, `wisata`, `halal`, `sampang`, `hutan`, `kera`, `nepa`, `lokasi`, `bebek`, `songkem`, `pak`, `salim`, `air`, `terjun`, `toro`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `masjid`, `agung`, `makam`, `ratu`, `ibu`, `aa`) VALUES
(85, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0),
(98, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(99, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0),
(101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0),
(107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf_eng`
--

CREATE TABLE `tf_eng` (
  `id_hint` int(11) NOT NULL,
  `wisata` int(2) NOT NULL DEFAULT 0,
  `halal` int(2) NOT NULL DEFAULT 0,
  `sampang` int(2) NOT NULL DEFAULT 0,
  `a` int(2) NOT NULL DEFAULT 0,
  `b` int(2) NOT NULL DEFAULT 0,
  `c` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf_eng`
--

INSERT INTO `tf_eng` (`id_hint`, `wisata`, `halal`, `sampang`, `a`, `b`, `c`) VALUES
(7, 1, 1, 1, 0, 0, 0),
(8, 0, 0, 0, 1, 0, 0),
(9, 0, 0, 0, 0, 1, 0),
(10, 0, 0, 0, 0, 0, 1);

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
  `masjid` float(7,4) NOT NULL,
  `agung` float(7,4) NOT NULL,
  `makam` float(7,4) NOT NULL,
  `ratu` float(7,4) NOT NULL,
  `ibu` float(7,4) NOT NULL,
  `aa` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf_idf`
--

INSERT INTO `tf_idf` (`id_hint`, `wisata`, `halal`, `sampang`, `hutan`, `kera`, `nepa`, `lokasi`, `bebek`, `songkem`, `pak`, `salim`, `air`, `terjun`, `toro`, `gili`, `mandangin`, `pantai`, `lon`, `malang`, `masjid`, `agung`, `makam`, `ratu`, `ibu`, `aa`) VALUES
(85, 3.8074, 3.8074, 2.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(86, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(87, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(88, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(89, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 2.8074, 2.8074, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(90, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(91, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(93, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.8074, 3.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(96, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.8074, 3.8074, 3.8074, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(98, 0.0000, 0.0000, 2.2224, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000),
(99, 0.0000, 0.0000, 2.2224, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 0.0000, 0.0000, 0.0000, 0.0000),
(100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 0.0000),
(101, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.8074, 2.8074, 2.8074, 0.0000),
(107, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.8074);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tf_idf_eng`
--

CREATE TABLE `tf_idf_eng` (
  `id_hint` int(11) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `a` float(7,4) NOT NULL,
  `b` float(7,4) NOT NULL,
  `c` float(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tf_idf_eng`
--

INSERT INTO `tf_idf_eng` (`id_hint`, `wisata`, `halal`, `sampang`, `a`, `b`, `c`) VALUES
(7, 2.0000, 2.0000, 2.0000, 0.0000, 0.0000, 0.0000),
(8, 0.0000, 0.0000, 0.0000, 2.0000, 0.0000, 0.0000),
(9, 0.0000, 0.0000, 0.0000, 0.0000, 2.0000, 0.0000),
(10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2.0000);

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
  MODIFY `id_hint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `chatbot_hints_eng`
--
ALTER TABLE `chatbot_hints_eng`
  MODIFY `id_hint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
