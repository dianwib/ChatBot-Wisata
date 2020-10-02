-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: chat_sampang
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (0,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akar_tf_idf`
--

DROP TABLE IF EXISTS `akar_tf_idf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akar_tf_idf` (
  `id_hint` int(11) NOT NULL,
  `akar` float(7,4) DEFAULT NULL,
  KEY `id_hint` (`id_hint`),
  CONSTRAINT `akar_tf_idf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akar_tf_idf`
--

LOCK TABLES `akar_tf_idf` WRITE;
/*!40000 ALTER TABLE `akar_tf_idf` DISABLE KEYS */;
INSERT INTO `akar_tf_idf` VALUES (85,6.2990),(86,5.3477),(87,5.4572),(88,6.1750),(89,6.2700),(90,5.3477),(91,5.4572),(92,4.3664),(93,4.4998),(94,5.3477),(95,4.3664),(96,5.4572),(97,4.4998),(98,5.0327),(99,5.1488),(100,5.3477),(101,5.4572);
/*!40000 ALTER TABLE `akar_tf_idf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akar_tf_idf_eng`
--

DROP TABLE IF EXISTS `akar_tf_idf_eng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akar_tf_idf_eng` (
  `id_hint` int(11) NOT NULL,
  `akar` float(7,4) DEFAULT NULL,
  KEY `id_hint` (`id_hint`),
  CONSTRAINT `akar_tf_idf_eng_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akar_tf_idf_eng`
--

LOCK TABLES `akar_tf_idf_eng` WRITE;
/*!40000 ALTER TABLE `akar_tf_idf_eng` DISABLE KEYS */;
INSERT INTO `akar_tf_idf_eng` VALUES (7,3.4641),(8,2.0000),(9,2.0000),(10,2.0000);
/*!40000 ALTER TABLE `akar_tf_idf_eng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_hints`
--

DROP TABLE IF EXISTS `chatbot_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatbot_hints` (
  `id_hint` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `reply` varchar(800) NOT NULL,
  PRIMARY KEY (`id_hint`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_hints`
--

LOCK TABLES `chatbot_hints` WRITE;
/*!40000 ALTER TABLE `chatbot_hints` DISABLE KEYS */;
INSERT INTO `chatbot_hints` VALUES (85,'Wisata Halal Sampang','Hutan Kera Nepa, Bebek Songkem Pak Salim, Air Terjun Toroan, Gili Mandangin, Pantai Lon Malang, Bukit Masegit, Masjid Agung Sampang,dan Makam Ratu Ibu'),(86,'Hutan Kera Nepa','Konon manusia yang membabat alas Pulau Madura yang disebut \"Raden Segoro\" pertama kali menginjakkan kakinya dipulau madura di tempat ini. Berada di sisi pantura Kabupaten Sampang, sampai saat ini pengunjung masih dapat menyaksikan legenda gerombolan kera - kera yang jinak dan ramah yang konon merupakan jelmaan dari semua anggota kerajaan yang dikutuk menjadi kera, yang dapat dipanggil oleh pemandu \"le ole ole ole\". Pasir pantainya yang putih menghampar menyampaikan pesan kedamaian, menyusuri sungai mangroove pun akan menimbulkan kesan yang berbeda dari tempat ini.'),(87,'Lokasi Hutan Kera Nepa','Desa Batioh, Kec. Banyuates Kab. Sampang. Buka pukul 06.00 sampai 17.00 WIB'),(88,'Bebek Songkem Pak Salim','Olahan bebek dengan bumbu khas buje \"cabhi\" yang dibungkus daun pisang lalu dikukus dengan pelepah pisang dan menggunakan kayu bakar selama 4 jam menjadikan pamor makanan bebek yang berkolesterol tinggi menjadi bebek non kolesterol yang sedang populer'),(89,'Lokasi Bebek Songkem Pak Salim','Jl. Trunojoyo No.9a, Rw. Iii Rong Tengah- Kec. Sampang Kab. Sampang. Buka pukul 07.00 sampai 22.00 WIB'),(90,'Air Terjun Toroan','Satu - satunya air terjun di pulau Madura,dan yang paling unik air terjun setinggi 12 meter ini langsung bermuara lepas di laut jawa, pengunjung diundang untuk menikmati keindahan sunset serta kuliner ikan bakar khas madura di rumah makan pinggir air terjun.'),(91,'Lokasi Air Terjun Toroan','Desa Ketapang Timur, Kec. Ketapang Kab. Sampang. Buka pukul 07.00 sampai 19.00 WIB'),(92,'Gili Mandangin','Selain memiliki spot memancing yang menarik, pulau dengan luas 1650 m2 dan jumlah penduduk + 20.000 jiwa, dapat dibayangkan betapa padatnya pemukiman dan masyarakat di pulau yang banyak dikenal dengan sebutan Pulau Kambing ini, hidup masyarakat nelayan yang majemuk merupakan pemandangan yang unik berikut dengan cara hidupnya sebagai nelayan.'),(93,'Lokasi Gili Mandangin','Pulau Mandangin , Kec. Sampang Kab. Sampang. Buka pukul 05.00 sampai 14.00 WIB'),(94,'Pantai Lon Malang','Ini dia pantai yang lagi hits di madura, pesona baru di pesisir utara Kabupaten Sampang, pantai berpasir putih dengan jajaran pohon cemara udang, arena permainan mobil ATV, kuliner sepanjang pantai membuat setiap traveler yang melewati jalur Bangkalan-Sumenep pasti menyempatkan diri untuk mampir.'),(95,'Bukit Masegit','Pemandangan kota Sampang yang menawan, bisa dilihat dari atas bukit ini. Kota Sampang terpampang di depan mata, di bawah bukit batu yang menjulang tinggi dan dikelilingi pepohonan hijau. sangat cocok sebagai tempat pelepas stress.'),(96,'Lokasi Pantai Lon Malang','Desa Bira Tengah, Kec. Sokobanah Kec. Sampang. Buka pukul 07.00 sampai 18.30 WIB'),(97,'Lokasi Bukit Masegit','Desa Masegit, Kec. Omben Kab. Sampang'),(98,'Masjid Agung Sampang','Masjid terbesar di Sampang ini mampu menampung jamaah hingga 10.000 orang.'),(99,'Lokasi Masjid Agung Sampang','Jalan Pahlawan I, Rw. III, Rong Tengah, Kec. Sampang, Kab. Sampang'),(100,'Makam Ratu Ibu','Makam Ratu Ibu yang juga dikenal dengan nama lain Kuburan Madegan merupakan salah satu tempat wisata religi dan sejarah yang cukup populer di kalangan masyarakat Sampang dan sekitarnya.'),(101,'Lokasi Makam Ratu Ibu','Desa Polangan, Kab. Sampang');
/*!40000 ALTER TABLE `chatbot_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_hints_eng`
--

DROP TABLE IF EXISTS `chatbot_hints_eng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatbot_hints_eng` (
  `id_hint` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `reply` varchar(800) NOT NULL,
  PRIMARY KEY (`id_hint`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_hints_eng`
--

LOCK TABLES `chatbot_hints_eng` WRITE;
/*!40000 ALTER TABLE `chatbot_hints_eng` DISABLE KEYS */;
INSERT INTO `chatbot_hints_eng` VALUES (7,'Wisata Halal Sampang','Hutan Kera Nepa, Bebek Songkem Pak Salim, Air Terjun Toroan, Gili Mandangin, Pantai Lon Malang, Bukit Masegit, Masjid Agung Sampang,dan Makam Ratu Ibu'),(8,'a','aa'),(9,'b','bb'),(10,'c','cc');
/*!40000 ALTER TABLE `chatbot_hints_eng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_idf`
--

DROP TABLE IF EXISTS `df_idf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  PRIMARY KEY (`kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_idf`
--

LOCK TABLES `df_idf` WRITE;
/*!40000 ALTER TABLE `df_idf` DISABLE KEYS */;
INSERT INTO `df_idf` VALUES ('df',1.0000,1.0000,3.0000,2.0000,2.0000,2.0000,8.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000,2.0000),('idf',4.0875,4.0875,2.5025,3.0875,3.0875,3.0875,1.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875,3.0875);
/*!40000 ALTER TABLE `df_idf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_idf_eng`
--

DROP TABLE IF EXISTS `df_idf_eng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `df_idf_eng` (
  `kategori` varchar(3) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `a` float(7,4) NOT NULL,
  `b` float(7,4) NOT NULL,
  `c` float(7,4) NOT NULL,
  PRIMARY KEY (`kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_idf_eng`
--

LOCK TABLES `df_idf_eng` WRITE;
/*!40000 ALTER TABLE `df_idf_eng` DISABLE KEYS */;
INSERT INTO `df_idf_eng` VALUES ('df',1.0000,1.0000,1.0000,1.0000,1.0000,1.0000),('idf',2.0000,2.0000,2.0000,2.0000,2.0000,2.0000);
/*!40000 ALTER TABLE `df_idf_eng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id_log_message` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id_log_message`)
) ENGINE=InnoDB AUTO_INCREMENT=914 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (913,'Selamat datang','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tf`
--

DROP TABLE IF EXISTS `tf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  KEY `id_hint` (`id_hint`),
  CONSTRAINT `tf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tf`
--

LOCK TABLES `tf` WRITE;
/*!40000 ALTER TABLE `tf` DISABLE KEYS */;
INSERT INTO `tf` VALUES (85,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(86,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(87,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(88,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(89,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0),(91,0,0,0,0,0,0,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0),(92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0),(93,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0),(94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0),(95,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0),(96,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0),(97,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0),(98,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0),(99,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0),(100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1),(101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1);
/*!40000 ALTER TABLE `tf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tf_eng`
--

DROP TABLE IF EXISTS `tf_eng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tf_eng` (
  `id_hint` int(11) NOT NULL,
  `wisata` int(2) NOT NULL DEFAULT 0,
  `halal` int(2) NOT NULL DEFAULT 0,
  `sampang` int(2) NOT NULL DEFAULT 0,
  `a` int(2) NOT NULL DEFAULT 0,
  `b` int(2) NOT NULL DEFAULT 0,
  `c` int(2) NOT NULL DEFAULT 0,
  KEY `id_hint` (`id_hint`),
  CONSTRAINT `tf_eng_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tf_eng`
--

LOCK TABLES `tf_eng` WRITE;
/*!40000 ALTER TABLE `tf_eng` DISABLE KEYS */;
INSERT INTO `tf_eng` VALUES (7,1,1,1,0,0,0),(8,0,0,0,1,0,0),(9,0,0,0,0,1,0),(10,0,0,0,0,0,1);
/*!40000 ALTER TABLE `tf_eng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tf_idf`
--

DROP TABLE IF EXISTS `tf_idf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  KEY `id_hint` (`id_hint`),
  CONSTRAINT `tf_idf_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tf_idf`
--

LOCK TABLES `tf_idf` WRITE;
/*!40000 ALTER TABLE `tf_idf` DISABLE KEYS */;
INSERT INTO `tf_idf` VALUES (85,4.0875,4.0875,2.5025,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(86,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(87,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,1.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(88,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(89,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.0875,3.0875,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(90,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(91,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.0875,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(92,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(93,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(94,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(95,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000),(96,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000),(97,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,0.0000,0.0000,0.0000,0.0000,0.0000),(98,0.0000,0.0000,2.5025,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,0.0000,0.0000,0.0000),(99,0.0000,0.0000,2.5025,0.0000,0.0000,0.0000,1.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,0.0000,0.0000,0.0000),(100,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875),(101,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1.0875,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,3.0875,3.0875,3.0875);
/*!40000 ALTER TABLE `tf_idf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tf_idf_eng`
--

DROP TABLE IF EXISTS `tf_idf_eng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tf_idf_eng` (
  `id_hint` int(11) NOT NULL,
  `wisata` float(7,4) NOT NULL,
  `halal` float(7,4) NOT NULL,
  `sampang` float(7,4) NOT NULL,
  `a` float(7,4) NOT NULL,
  `b` float(7,4) NOT NULL,
  `c` float(7,4) NOT NULL,
  KEY `id_hint` (`id_hint`),
  CONSTRAINT `tf_idf_eng_ibfk_1` FOREIGN KEY (`id_hint`) REFERENCES `chatbot_hints_eng` (`id_hint`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tf_idf_eng`
--

LOCK TABLES `tf_idf_eng` WRITE;
/*!40000 ALTER TABLE `tf_idf_eng` DISABLE KEYS */;
INSERT INTO `tf_idf_eng` VALUES (7,2.0000,2.0000,2.0000,0.0000,0.0000,0.0000),(8,0.0000,0.0000,0.0000,2.0000,0.0000,0.0000),(9,0.0000,0.0000,0.0000,0.0000,2.0000,0.0000),(10,0.0000,0.0000,0.0000,0.0000,0.0000,2.0000);
/*!40000 ALTER TABLE `tf_idf_eng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-03  0:46:38
