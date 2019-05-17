-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2019 at 06:01 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(3) NOT NULL,
  `title` text,
  `pvc_print` enum('PVC 0.15','PVC 0.2','PVC 0.3') DEFAULT NULL,
  `pvc_tengah` enum('PVC TENGAH','PROXIMITY','MIFARE','NO') DEFAULT NULL,
  `magnetic` enum('YES','NO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `title`, `pvc_print`, `pvc_tengah`, `magnetic`) VALUES
(3, 'Standart 0.3', 'PVC 0.3', 'NO', 'NO'),
(4, 'Standart 0.2', 'PVC 0.2', 'PVC TENGAH', 'NO'),
(5, 'Standart 0.15', 'PVC 0.15', 'PVC TENGAH', 'NO'),
(6, 'pvc 0.2 with magnetic', 'PVC 0.2', 'PVC TENGAH', 'YES'),
(7, 'PVC print 0.15 n Proximity', 'PVC 0.15', 'PROXIMITY', 'NO'),
(8, 'PVC print 0.15 n MIFARE', 'PVC 0.15', 'MIFARE', 'NO'),
(9, 'PVC 0.15 Tipis', 'PVC 0.15', 'NO', 'NO'),
(10, 'Standart 1 sisi', 'PVC 0.3', 'PVC TENGAH', 'NO'),
(11, '1 sisi tipis', 'PVC 0.3', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(3) NOT NULL,
  `nama_Customer` text,
  `desain_depan` varchar(50) NOT NULL DEFAULT 'blank.png',
  `desain_belakang` varchar(50) NOT NULL DEFAULT 'blank.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_Customer`, `desain_depan`, `desain_belakang`) VALUES
(1, 'Kartu Member \"UD DEA ADI JAYA\"', 'blank.png', 'blank.png'),
(2, 'kartu mahasiswa ALY AS\'ADIYAH SENGKANG', 'blank.png', 'blank.png'),
(3, 'Kartu pasien \"RSI KENDAL\"', 'blank.png', 'blank.png'),
(4, 'Kartu member BRAWIJAYA ISTANA', 'blank.png', 'blank.png'),
(5, 'Kartu Pasien RSIA KIRANA', 'blank.png', 'blank.png'),
(6, 'Kartu Mahasiswa \"IAI DARULLUGHAH WADDAH\"', 'blank.png', 'blank.png'),
(7, 'Kartu Pasien Dr. Haryoto', 'blank.png', 'blank.png'),
(8, 'Kartu Pegawai ARTAX', 'blank.png', 'blank.png'),
(9, 'Kartu Pasien \"RS AISYIYAH SITI FATIMAH\"', 'blank.png', 'blank.png'),
(11, 'Kartu member \"TOOL STATION\" New', 'blank.png', 'blank.png'),
(12, 'Kartu Pegawai JNE', 'blank.png', 'blank.png'),
(13, 'Kartu Pegawai JNE TRAINING', 'blank.png', 'blank.png'),
(14, 'Kartu Pegawai VASCOOM', 'blank.png', 'blank.png'),
(15, 'Kartu Pegawai PT. BUKIT DARMO', 'blank.png', 'blank.png'),
(16, 'Kartu Pegawai PT. ADHIBALADIKA AGUNG', 'blank.png', 'blank.png'),
(17, 'Kartu Mahasiswa \"UNIV MUHAMMADIYAH PALANGKARAYA\"', 'blank.png', 'blank.png'),
(18, 'Kartu ID Pegawai \"PT. MARITIM BATUBARA PERTAMA\"', 'blank.png', 'blank.png'),
(19, 'Kartu Mahasiswa UNIVERSITAS AIRLANGGA', 'blank.png', 'blank.png'),
(20, 'Kartu Member \"ALMARE HIJAB\" Tipis', 'blank.png', 'blank.png'),
(21, 'Kartu Pasien RS MATA FATMA', '1d8387b340346bbc6fda1bc8429d6102.jpg', 'blank.png'),
(22, 'Kartu Partai Hanura \"HM KHOIRUL UMRI\"', '7c8ecfd7b8d6f4c059f1983864de4e95.jpg', 'blank.png'),
(23, 'Kartu Pasien RSU PKU Muhammadiyah Surabaya', '1d20d95087f894f90bbb1b00eec5fe2c.jpg', 'blank.png'),
(24, 'Kartu Pasien \"GRAHA SEHAT MEDIKA\"', '7221a4c40704d23712a3d39b32fcbd09.jpg', 'blank.png'),
(25, 'Kartu member VENTURA WATCH', '73e1ecdf2930ba6fb569f94187ea58d3.png', 'blank.png'),
(26, 'kartu parkir PT. WINGS SURYA', 'e5a041d61d655832b3092b6ab3d9bd3d.png', 'blank.png'),
(27, 'Kartu mahasiswa ATMA JAYA MAKASAR', 'eaba508666bbe2f69176037e4b1f6412.png', 'blank.png'),
(28, 'Kartu pasien \"PUSKESMAS JETIS PONOROGO\"', '0fea7995f2afc297833ff9940051279a.png', 'blank.png'),
(29, 'Kartu Warranty Indra OPTIK (Tipis)', 'b2f5e133e36d5138e9ed1a51b6b9296f.png', 'blank.png'),
(30, 'Kartu pasien \"RSUD BUTON UTARA\"', '8d43d85ded10137007c5fa2b7b3a213e.png', 'blank.png'),
(31, 'Kartu pasien \"RS FATHMA MEDIKA\"', 'cf30b1686cf6b17abbbd9cd535f8b94d.jpg', 'blank.png'),
(32, 'Kartu Pasien \"UPTD PUSKESMAS MRICAN\"', '32d1a2ecf540fdb1fe4631b0abbd7e9f.jpg', 'blank.png'),
(33, 'Kartu pasien \"RS SLG KEDIRI\"', '67154445a41fa2ca783c8da06b99c07b.jpg', 'blank.png'),
(34, 'Kartu member Dalwa Electronic', '0fecdbe815ea4e28056dccc494707cc9.jpg', 'blank.png'),
(35, 'Kartu Partai NASDEM', 'dc6b6f799d78d6e0fa3dc287d48f5a15.jpg', 'blank.png'),
(36, 'Kartu pelajar MTS \"MAMBAUL HIKAM\"', '2080010117f3e8d4c52aa75b635f5ce4.jpg', 'blank.png'),
(37, 'Kartu mahasiswa Negeri Makasar \"UNM\"', '9d009f8cfc3c0a763d2b80b4a882a5cd.jpg', 'blank.png'),
(38, 'Kartu pelajar MA \"MAMBAUL HIKAM\"', '3e75de8177e440fd353709701110f0c2.jpg', 'blank.png'),
(39, 'Kartu pasien RS Langit Golden MEDIKA', '7650672c57a549e302338765493ec989.jpg', 'blank.png'),
(40, 'Kartu pasien \"RSU MUSLIMAT PONOROGO\"', 'b3a19a1f59feb1d4929ec6ab0dffb8c5.jpg', 'blank.png'),
(41, 'Kartu mahasiswa POLITEKNIK NEGERI FAKFAK', '12cd5270b3c6960f7817c96fd56e5830.jpg', 'blank.png'),
(42, 'Kartu Perpustakaan POLITEKNIK NEGERI FAKFAK', 'c792e4156fb5924b5cd2987a471a1d6c.jpg', 'blank.png'),
(43, 'Kartu Pelajar \"MTS DARUTAQWA ARROSUDINIYAH\"', '95c7199a1fc0dd837f9e2b5840d8d9fc.jpg', 'blank.png'),
(44, 'Kartu pelajar \"MA DARUTAQWA ARROSUDINIYAH\"', '2b6d9f82134740e3fa2858f9bf887169.jpg', 'blank.png'),
(45, 'Kartu pasien RS. MUHAMMADIYAH LAMONGAN', '73c2bcf8702d63ae63e99413db1ecc71.jpg', 'blank.png'),
(46, 'Kartu Pelajar \"SMK KERTA CENDEKIA\"', 'd4b47cc6f2a0fa929fc8027b75857505.jpg', 'blank.png'),
(47, 'Kartu mahasiswa UNIVERSITAS WISNU WARDHANA', 'fff1aff2a2a8ca5f6cf1e6c8ef9933b8.jpg', 'blank.png'),
(48, 'Kartu id GARUDAFOOD \"TAMU\"', '52cd45b6da7909aa6017afc085526f71.jpg', 'blank.png'),
(49, 'Kartu id GARUDAFOOD \"SOPIR\"', '8197b9a0ec5950461600d6ff3f5d4342.jpg', 'blank.png'),
(50, 'Kartu id GARUDAFOOD \"PROJECT\"', 'e02a94bb73ecbed827a0f916c50cc519.jpg', 'blank.png'),
(51, 'Kartu ID \"SILOAM HOSPITAL\" Mifare 1k', 'f655f79d84c8b29da446801e7ac97bd3.jpg', 'blank.png'),
(52, 'Kartu member \"JADI FASHION\" Biru', '8c01373b1ad992c4d765ed811c44bea7.jpg', 'blank.png'),
(53, 'Kartu member \"JADI FASHION\" Merah', 'd204c4a372550cc4a5dbd65fdf732d10.jpg', 'blank.png'),
(54, 'Kartu pegawai (PT. HAIR STAR INDONESIA)', 'fbe2f222b057c0986c50a35c6d78a810.jpg', 'blank.png'),
(55, 'Kartu ID Pegawai \"DEPO BANGUNAN\"', '8cdcdc313d099ce4e26d4e0083b61a90.jpg', 'blank.png'),
(56, 'Kartu pegawai SANGGRAHA PROPERTI MANAGEMENT', '16ced92d4ca2be53e1fafd72866b5fe1.jpg', 'blank.png'),
(57, 'Kartu member \"TBMO DARMO PERMAI\" warna ungu', '0a703e178b9c628277812e14b6256f9c.jpg', 'blank.png'),
(58, 'Kartu member \"GOLD\'S GYM\" Kuning', '585b901b826e61bfd30461fb374033a1.jpg', 'blank.png'),
(59, 'Kartu member GOWES COFEE', '2ad6df23b9515d1db756479bbc38e55c.jpg', 'blank.png'),
(60, 'Kartu mahasiswa \"univ bhayangkara surabaya\"', '5669a768111a96657f71e4fb517a3f1b.jpg', 'blank.png'),
(61, 'Kartu member \"ONNA\"', '83733ffb9fa9abd4e7148dfac76b8ed9.jpg', 'blank.png'),
(62, 'Kartu Visitor \"PT. SANTOS PREMIUM KRIMER\"', 'e399d2bdb2cc8d4c055c989f849dbf5f.jpg', 'blank.png'),
(64, 'Kartu pasien PUSKESMAS KESAMBEN KULON', 'c77e59fdd18ca3347225e5624b3dd9a6.jpg', 'blank.png'),
(65, 'Kartu ID CARD \"PT. PUTRA RESTU IBU ABADI\"', 'd724ef476ee87abe1b7e26e91541ee0a.jpg', 'blank.png'),
(66, 'Kartu Pelajar \"SMP NEGERI 2 SUKODONO\"', 'aed92c4185c0b49ff058e0895b56e513.jpg', 'blank.png'),
(67, 'Kartu pelajar SMA NEGERI 1 MENUI KEPULAUAN', 'f4a303d77d28d9061def79a6934ca679.jpg', 'blank.png'),
(68, 'Kartu Perpustakaan SMA NEGERI MENUI KEPULAUAN', 'adefc048192bdf57684366eff434ca6d.jpg', 'blank.png'),
(69, 'Kartu mahasiswa \"STKIP ST. PAULUS\"', 'e45ef2d8553980877154e68f07efa58a.jpg', 'blank.png'),
(70, 'Kartu pegawai RSI JEMURSARI', '0e2a0435660f7cc6a06b4adeca2948fd.jpg', 'blank.png'),
(71, 'kartu Pegawai DINAS KESEHATAN PROV. KALTIM', '265cabe8979f1d59312cd88b9d939353.jpg', 'blank.png'),
(72, 'Kartu pasien RSUD SUKAMARA', '6ce1e2a806125b0ebb80a6db8ecb5e87.jpg', 'blank.png'),
(73, 'Kartu pegawai (WAHYU ARDIANTO)', '6b771237bb1d9028420b8b39f5bc0ab5.jpg', 'blank.png'),
(74, 'Kartu Donor \"PMI KAB MALANG\"', '1a4dcea8c6cab8eed4f212f493720ca7.jpg', 'blank.png'),
(75, 'kartu pegawai AMIRPA', '6416c65c660a37e332452e47c5f5533d.jpg', 'blank.png'),
(76, 'kartu anggota BAZNAS TERNATE', 'e26fd18a93333aedf7292c00ae765fbd.jpg', 'blank.png'),
(77, 'kartu pasien MAWARDI', '7eae36b5301b6b71e789226282601195.jpg', 'blank.png'),
(78, 'Kartu member SBC CARD', '0474a054f0421ab9b78b73f7456b5e8f.jpg', 'blank.png'),
(79, 'Kartu anggota \"THE MAGZ MAN\"+data', 'aebe2d71d22aaaacd678372460d60b9e.jpg', 'blank.png'),
(80, 'Kartu anggota \"THE MAGZ MAN\" blank', '4224cd96ff48945b5008c75455a0a09c.jpg', 'blank.png'),
(81, 'Kartu member AVENUE FITNESS', '0080372729838128a8d7107f1cb0dac7.jpg', 'blank.png'),
(82, 'Kartu pasien BHAYANGKARA TULUNGAGUNG', '3ada847a2bb9d16de5bae6bf7a65c5c1.jpg', 'blank.png'),
(83, 'Kartu pasien \"RS KARTINI \" JEPARA', '67e6d1c2e5a11035f486e9c1dd8e0a54.jpg', 'blank.png'),
(84, 'Kartu member \"MEINY\"', '4425cebb1ddbe669182033524f369257.jpg', 'blank.png'),
(85, 'kartu pasien KLINIK & R. bersalin Pratama Medika', '21731bf958facd36c54149a0d6cfb542.jpg', 'blank.png'),
(86, 'kartu pasien PUSKEMAS MANYAR GRESIK', 'bf775e898f1074de5f6f17da5493a861.jpg', 'blank.png'),
(87, 'Kartu member \"SKC\"', '001ba9d6239ce8dcdd8a4cac6409cc34.jpg', 'blank.png'),
(88, 'Kartu ID \"PEMKAB SAMPANG\"', '8c8162a24eae8faefc84b1062cff7b3e.jpg', 'blank.png'),
(89, 'Kartu member \"SANYA SWALAYAN\"', '2417ffd3a53cf9ed0d84c019f76ab986.jpg', 'blank.png'),
(90, 'Kartu anggota \"KPRI HUSADA SEJAHTERA\"', '649f1e71863cba054e9f7b2d4123b7f4.jpg', 'blank.png'),
(91, 'Kartu pasien \"RSU AULIA BLITAR\"', '952cccb8c23a85b19f8debd59332486d.jpg', 'blank.png'),
(92, 'Kartu member \"DIRA KENCONG\"', 'b4c56cd3d6a33f6713abebe9d9595c16.jpg', 'blank.png'),
(93, 'Kartu member \"JESSIE 14 STORE\"', 'd32eac7d6849628529968061dce2efd6.jpg', 'blank.png'),
(94, 'Kartu Mahasiswa \"UN PGRI KEDIRI\"', 'eff9887dbf3862ac34f3dd7dfb2d496d.jpg', 'blank.png'),
(95, 'Kartu member \"NORTON\"', '7674cdddfa91f92252e5ba0f41101ff0.jpg', 'blank.png'),
(96, 'Kartu Pegawai BPK. RENDY', 'd30efb40ed5aa8e4d4c7216f2897932b.jpg', 'blank.png'),
(97, 'Kartu Mahasiswa \"POLITEKNIK NEGERI SAMBAS\"', '781441e5c9cd40f6e9802b81a69db6eb.jpg', 'blank.png'),
(98, 'Kartu anggota \"SABANG MANDIRI\"', 'cc48bd666f5808c71f574cc068722d53.jpg', 'blank.png'),
(99, 'Kartu pegawai PENGADILAN NEGERI KEDIRI', '982781ce5e4aca93eea36df83eb6e0b8.jpg', 'blank.png'),
(100, 'Kartu donor darah \"PMI SIDOARJO\"', 'fd47f11c956f443879d5e32a1375308c.jpg', 'blank.png'),
(101, 'Kartu id \"gunter\"', '75f4eb70581cff930572350f1807c7b2.jpg', 'blank.png'),
(102, 'Kartu parkir HOTEL SEASONS MOBIL', 'f125a3fae276d7b63a78808291828cc7.jpg', 'blank.png'),
(103, 'Kartu Parkir HOTEL SEASONS MOTOR', '12a1350877589e2f185bf51232b40961.jpg', 'blank.png'),
(104, 'Kartu member Karpet Rainbow', '085e353c4d9612c5affdc8a54ae8bc0b.jpg', 'blank.png'),
(105, 'Kartu member INDEPENDENCE FITNESS', '29902f4967d5d0a66c56b3ddf3bbb3c6.jpg', 'blank.png'),
(106, 'Kartu tanda anggota \"CBR BARITO TIMUR\"', '61501bbae7d3a6200dbbfb48d83b7a4d.jpg', 'blank.png'),
(107, 'Kartu pegawai CV. ZAWA AGUNG CIPTA KARYA', '3987cbbd69294ddf6d6343c6d651c6c9.jpg', 'blank.png'),
(108, 'Kartu Pasien \"RS AMALIA BONTANG\"', 'b7ec1645d701cc66d29f8e50e0e3f328.jpg', 'blank.png'),
(109, 'Kartu member \"CHRISTINE COSMETICS\"', '27264220379dab1a88ed5257506ac2bf.jpg', 'blank.png'),
(110, 'Kartu ID \"SPN\"', '403eaae5e431c5e854a432df21296d55.jpg', 'blank.png'),
(111, 'Kartu Pasien \"TELOGOREJO SEMARANG\"', 'b0074371896f91bdaac26bad68f92934.jpg', 'blank.png'),
(112, 'Kartu ID \"AKULAKU\"', '646dbea8c305ffeff1620576dfff702e.jpg', 'blank.png'),
(113, 'Kartu member SUZUKI SAEC', 'e61411fc07417441ea814b59922bcc7a.jpg', 'blank.png'),
(114, 'Kartu Mahasiswa :UNIVERSITAS JANABADRA\"', 'aa6ee777374404ce28d94ac2c42afecb.jpg', 'blank.png'),
(115, 'Kartu Partai dr. Salwa Mochtar', 'd22880e95e0784b8ba8fc99e4f649b64.jpg', 'blank.png'),
(116, 'Kartu Pasien \"PUSKESMAS SUMBER PITU\"', 'da6942d84526873b44d3a8285fc2dfdb.jpg', 'blank.png'),
(117, 'Kartu ID BPOM Palangkaraya', '97d373251e91290f39ca024e5c498dab.jpg', 'blank.png'),
(118, 'Kartu anggota KING RUMAH TANGGA', 'e486e5e5ec04415c0e9bebd9a28107cf.jpg', 'blank.png'),
(119, 'Kartu Visitor \"PLN TABJUNG JATI B\"', '5a531635dbfe6d74df461d957346ec62.jpg', 'blank.png'),
(120, 'Kartu Parkir PT. WING SURYA \"Warna Merah\"', '39a20cc6a9f9efbe09e7cc8b55f7fe80.jpg', 'blank.png'),
(121, 'Kartu Parkir PT Wing Surya \"Warna Hijau\"', '2aefe8a44de542bf9d7b82fc18296dc0.jpg', 'blank.png'),
(122, 'Kartu member \"TBMO DHARMAHUSADA\" Warna Merah', 'eca05e019d5a709ff748de123b18e7bd.jpg', 'blank.png'),
(123, 'Kartu Pegawai \"CV. WINDU JAYA\"', '3d409c0abbd05cd6f24ef532167a42eb.jpg', 'blank.png'),
(124, 'KARTU NAMA PENGINAPAN CAHAYA', '0f026d5e142d7c7f7e30c945c4dce01b.jpg', 'blank.png'),
(125, 'Kartu member \"TOKO MAS PANTES\"', '4956b002ccf04fe0ca9238e8cea96aec.jpg', 'blank.png'),
(126, 'Kartu anggota \"WALL STREET ENGLISH\"', 'eb8bbcab44ef4524bf7208d6a544a00b.jpg', 'blank.png'),
(127, 'Kartu ID \"Ekspresi SMAN 1 SDA\"', '1981a36d7f13362fb9819a2bba742b53.jpg', 'blank.png'),
(128, 'Id card Sekampung', 'c430b1f8479ee7a87229fb12b0b2377f.jpg', 'blank.png'),
(129, 'Kartu Pasien \"SITI HAJAR\"', '080224e57f4ad1e2415b599ac3163b8e.jpg', 'blank.png'),
(130, 'Kartu member \"ENAK ECO\"', '47caaf7d2e1f6db0df4ccc4f6ad879e0.jpg', 'blank.png'),
(131, 'Kartu Pasien \"PUSKESMAS KAUMAN PONOROGO\"', '60a8d0b682dfd7f0ccc81b99e98e1869.jpg', 'blank.png'),
(132, 'Kartu Pasien \"RSAU dr. Efram Harsana\"', '506ce5b2055d3555aaee74afcc2bff76.jpg', 'blank.png'),
(133, 'Kartu Koperasi Sumber Makmur', 'e541c01c4fb9a2233efccecd8e3d5ccc.jpg', 'blank.png'),
(134, 'Kartu Pasien \"KLINIK KUNCUP CERIA\" PINK', '9d31c1f5783c67d5ea779c0cef85e37c.jpg', 'blank.png'),
(135, 'Kartu Pasien \"KLINIK KUNCUP CERIA\" BIRU', '593804c70265f6314b423a51f5acf521.jpg', 'blank.png'),
(136, 'Kartu Pengunjung \"RS ROYAL SURABAYA\"', 'ffcd7c6940e515718295133b0b67b292.jpg', 'blank.png'),
(137, 'Kartu Penunggu \"RS ROYAL SURABAYA\"', '0c05418d7ae1f730388a9278859536b3.jpg', 'blank.png'),
(138, 'Kartu Visitor Tamu \"RS ROYAL SURABAYA\"', '69ff0ef60cde741d32c4bc9c4b6b1d6b.jpg', 'blank.png'),
(139, 'Kartu Suveyor \"RS ROYAL SURABAYA\"', '6abbe47115e4935fe1d7c11fe73258c6.jpg', 'blank.png'),
(140, 'Kartu Member \"NUsantara Mart\"', '3402d0520685a0b894dff37c1a738df0.jpg', 'blank.png'),
(141, 'Kartu Member IJIN START', '1a871ed94dc967808a34f1f1063bbb6b.jpg', 'blank.png'),
(142, 'Kartu anggota CREDIT UNION SARO', '6f7196b947884d2924a53fdca6a94fa5.jpg', 'blank.png');

-- --------------------------------------------------------

--
-- Table structure for table `customer_has_order`
--

CREATE TABLE `customer_has_order` (
  `id_so` int(3) NOT NULL,
  `no_so` varchar(14) NOT NULL,
  `id_customer` int(3) DEFAULT NULL,
  `qty` int(6) DEFAULT NULL,
  `id_user` int(3) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `status` enum('Antri','Crop Foto','Print','Collecting','Press','Plong','Sorting','Finishing','Packing','Reported') DEFAULT NULL,
  `Keterangan` enum('New Customer','Repeat Order','Return') DEFAULT NULL,
  `keterangan_order` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_has_order`
--

INSERT INTO `customer_has_order` (`id_so`, `no_so`, `id_customer`, `qty`, `id_user`, `tgl`, `status`, `Keterangan`, `keterangan_order`) VALUES
(1, 'SO-18-10-00069', 1, 1000, 21, '2018-10-19 01:44:07', 'Reported', 'New Customer', ''),
(2, 'SO-18-10-00134', 2, 94, 5, '2018-10-15 04:44:19', 'Reported', 'Repeat Order', ''),
(3, 'SO-18-10-00176', 3, 6000, 21, '2018-10-22 04:15:27', 'Reported', 'Repeat Order', ''),
(4, 'SO-18-10-00184', 4, 2000, 6, '2018-10-23 11:15:27', 'Reported', 'New Customer', ''),
(5, 'SO-18-10-00019', 5, 1000, 6, '2018-10-24 02:05:33', 'Reported', 'New Customer', ''),
(6, 'SO-18-10-00198', 6, 3000, 5, '2018-10-24 03:15:45', 'Reported', 'New Customer', ''),
(7, 'SO-18-10-00203', 7, 7000, 6, '2018-10-25 12:28:56', 'Reported', 'Repeat Order', ''),
(8, 'SO-28-10-00204', 8, 8, 6, '2018-10-25 04:05:58', 'Reported', 'New Customer', ''),
(9, 'SO-18-10-00217', 9, 2000, 21, '2018-10-29 09:02:09', 'Reported', 'Repeat Order', ''),
(10, 'SO-18-11-00219', 24, 4000, 5, '2018-10-29 09:08:12', 'Reported', 'Repeat Order', '-'),
(11, 'SO-18-10-00227', 11, 100, 5, '2018-11-29 11:23:23', 'Reported', 'Repeat Order', ''),
(12, 'SO-18-10-00225', 12, 19, 5, '2018-10-29 11:54:38', 'Reported', 'Repeat Order', ''),
(13, 'SO-18-10-00225', 13, 31, 5, '2018-10-29 11:54:38', 'Reported', 'Repeat Order', ''),
(14, 'SO-18-10-00242', 14, 4, 5, '2018-10-31 02:56:11', 'Reported', 'Repeat Order', ''),
(15, 'SO-18-10-00243', 15, 3, 5, '2018-10-31 03:00:06', 'Reported', 'Repeat Order', ''),
(16, 'SO-18-10-00243', 16, 14, 5, '2018-10-31 03:00:45', 'Reported', 'Repeat Order', ''),
(17, 'SO-18-11-00013', 17, 200, 5, '2018-11-01 04:15:24', 'Reported', 'Repeat Order', ''),
(18, 'SO-18-10-00265', 20, 1000, 21, '2018-10-23 09:22:16', 'Reported', 'Repeat Order', ''),
(19, 'SO-18-11-00044', 18, 1, 5, '2018-11-07 11:00:22', 'Reported', 'Repeat Order', ''),
(20, 'SO-18-10-00175', 19, 6, 6, '2018-10-22 03:46:02', 'Reported', 'New Customer', ''),
(21, 'SO-18-11-00083', 23, 5000, 6, '2018-11-10 01:53:26', 'Reported', 'Repeat Order', '-'),
(22, 'SO-18-11-00094', 22, 5000, 5, '2018-11-12 03:54:23', 'Reported', 'New Customer', '-'),
(23, 'SO-18-11-00116', 21, 2000, 21, '2018-11-14 12:30:09', 'Reported', 'New Customer', 'KSO'),
(24, 'SO-18-11-00189', 30, 1200, 5, '2018-11-22 04:42:58', 'Reported', 'New Customer', '-'),
(25, 'SO-18-11-00188', 29, 5000, 21, '2018-11-22 04:21:40', 'Reported', 'Repeat Order', '-'),
(26, 'SO-18-11-00187', 28, 5000, 21, '2018-11-22 04:20:34', 'Reported', 'Repeat Order', '-'),
(27, 'SO-18-11-00186', 27, 2000, 6, '2018-11-22 04:04:07', 'Reported', 'New Customer', '-'),
(28, 'SO-18-11-00139', 26, 500, 21, '2018-11-17 08:56:52', 'Reported', 'Repeat Order', 'Data A001-A500'),
(29, 'SO-18-11-00136', 25, 500, 6, '2018-11-16 01:57:44', 'Reported', 'New Customer', 'data 001-200'),
(30, 'SO-18-11-00213', 31, 5000, 21, '2018-11-26 11:50:39', 'Reported', 'Repeat Order', '-'),
(31, 'SO-18-11-00199', 32, 10000, 5, '2018-11-23 04:20:25', 'Reported', 'New Customer', '-'),
(33, 'SO-18-10-00197', 34, 5000, 5, '2018-10-24 01:51:48', 'Reported', 'New Customer', 'RFID Proximity'),
(34, 'SO-18-10-00230', 35, 1000, 6, '2018-10-30 01:55:23', 'Reported', 'New Customer', 'Data Barcode'),
(35, 'SO-18-11-00019', 36, 191, 5, '2018-11-02 01:58:39', 'Reported', 'Repeat Order', 'Data dan photo'),
(36, 'SO-18-11-00018', 37, 5000, 5, '2018-11-02 02:02:27', 'Reported', 'New Customer', '1 sisi'),
(37, 'SO-18-11-00020', 38, 395, 5, '2018-11-02 02:06:54', 'Reported', 'New Customer', 'Data + photo'),
(38, 'SO-18-11-00026', 39, 1000, 6, '2018-11-03 02:09:38', 'Reported', 'New Customer', '-'),
(39, 'SO-18-09-00101', 40, 2000, 21, '2018-11-03 02:14:06', 'Reported', 'Repeat Order', '-'),
(40, 'SO-18-11-00031', 41, 228, 6, '2018-11-06 02:19:58', 'Reported', 'New Customer', 'Data + photo'),
(41, 'SO-18-11-00031', 42, 228, 6, '2018-11-06 02:20:29', 'Reported', 'Repeat Order', 'data + photo'),
(42, 'SO-18-11-00051', 43, 190, 21, '2018-11-08 02:26:58', 'Reported', 'Repeat Order', '-'),
(43, 'SO-18-11-00051', 44, 83, 21, '2018-11-08 02:27:46', 'Reported', 'New Customer', '-'),
(44, 'SO-18-11-00059', 45, 3000, 6, '2018-11-08 02:31:07', 'Reported', 'New Customer', '-'),
(45, 'SO-18-11-00060', 46, 26, 21, '2018-11-08 02:35:24', 'Reported', 'New Customer', 'Data + photo'),
(46, 'SO-18-11-00052', 47, 1000, 21, '2018-11-08 02:37:59', 'Reported', 'New Customer', '1 sisi'),
(47, 'SO-18-10-00250', 48, 50, 21, '2018-11-08 02:42:45', 'Reported', 'New Customer', '-'),
(48, 'SO-18-10-00250', 49, 100, 21, '2018-11-08 02:43:41', 'Reported', 'New Customer', '-'),
(49, 'SO-18-10-00250', 50, 200, 21, '2018-11-08 02:44:00', 'Reported', 'New Customer', '-'),
(50, 'SO-18-11-00119', 51, 100, 5, '2018-11-14 02:55:52', 'Reported', 'New Customer', 'Mifare'),
(51, 'SO-18-11-00140', 52, 100, 5, '2018-11-17 02:59:48', 'Reported', 'Repeat Order', '-'),
(52, 'SO-18-11-00140', 53, 150, 5, '2018-11-17 03:00:21', 'Reported', 'Repeat Order', '-'),
(53, 'SO-18-11-00209', 56, 8, 6, '2018-11-24 04:06:29', 'Reported', 'Repeat Order', 'data'),
(54, 'SO-18-11-00234', 54, 1, 23, '2018-11-28 04:08:01', 'Reported', 'New Customer', 'Data'),
(55, 'SO-18-11-00113', 55, 56, 23, '2018-11-27 04:08:38', 'Reported', 'Repeat Order', 'Data'),
(56, 'SO-18-11-00223', 57, 5000, 21, '2018-11-27 04:20:20', 'Reported', 'Repeat Order', '-'),
(57, 'SO-18-11-00240', 58, 1000, 5, '2018-11-28 04:21:37', 'Reported', 'Repeat Order', '-'),
(58, 'SO-18-11-00242', 59, 100, 6, '2018-11-28 04:23:12', 'Reported', 'New Customer', 'Magnetic + data'),
(59, 'SO-18-11-00251', 60, 1247, 6, '2018-11-29 04:25:17', 'Reported', 'Repeat Order', 'Data'),
(60, 'SO-18-11-00238', 61, 14, 23, '2018-11-28 10:39:21', 'Reported', 'Repeat Order', 'Data'),
(61, 'SO-18-11-00196', 62, 200, 6, '2018-11-23 10:51:09', 'Reported', 'Repeat Order', 'Data'),
(62, 'SO-18-11-00259', 33, 6000, 6, '2018-11-30 10:54:37', 'Reported', 'New Customer', '-'),
(63, 'SO-18-11-00116', 21, 3000, 21, '2018-11-14 10:59:08', 'Reported', 'Repeat Order', 'KSO'),
(64, 'SO-18-11-00261', 64, 250, 6, '2018-11-30 11:05:31', 'Reported', 'New Customer', '-'),
(65, 'SO-18-11-00257', 65, 28, 23, '2018-11-30 11:10:24', 'Reported', 'Repeat Order', 'Data'),
(66, 'SO-18-11-00264', 66, 31, 5, '2018-11-30 11:14:18', 'Reported', 'Repeat Order', 'Data'),
(67, 'SO-18-11-00159', 67, 8, 23, '2018-11-21 11:25:35', 'Reported', 'Repeat Order', 'Data'),
(68, 'SO-18-11-00159', 68, 151, 23, '2018-12-21 11:26:18', 'Reported', 'New Customer', 'data'),
(69, 'SO-18-12-0074', 75, 53, 6, '2018-12-12 09:34:27', 'Reported', 'New Customer', 'DATA'),
(70, 'SO-18-12-00083', 74, 1250, 21, '2018-12-11 09:35:03', 'Reported', 'New Customer', '-'),
(71, 'SO-18-12-00055', 73, 5, 5, '2018-12-08 09:36:03', 'Reported', 'New Customer', 'data'),
(72, 'SO-18-12-00062', 55, 11, 5, '2018-12-12 09:36:44', 'Reported', 'Repeat Order', 'data & photo'),
(73, 'SO-18-12-00075', 72, 1700, 5, '2018-12-11 09:37:24', 'Reported', 'Repeat Order', '-'),
(74, 'SO-18-11-00252', 71, 27, 6, '2018-11-29 09:38:43', 'Reported', 'Repeat Order', '27'),
(75, 'SO-18-11-00153', 70, 60, 6, '2018-11-19 09:39:20', 'Reported', 'Repeat Order', 'data & photo'),
(76, 'SO-18-12-00087', 69, 1000, 21, '2018-12-12 09:40:17', 'Reported', 'Repeat Order', '-'),
(77, 'SO-18-11-00262', 78, 500, 23, '2018-11-30 10:00:34', 'Reported', 'Repeat Order', 'DATA'),
(78, 'SO-18-12-00043', 76, 3000, 23, '2018-12-07 10:01:10', 'Reported', 'Repeat Order', '-'),
(79, 'SO-18-11-00116', 21, 5000, 21, '2018-11-14 10:01:56', 'Reported', 'Repeat Order', '-'),
(80, 'KSO', 77, 2000, 6, '2018-11-30 10:02:48', 'Reported', 'Repeat Order', '-'),
(81, 'SO-18-12-00169', 86, 1000, 6, '2018-12-21 11:15:41', 'Reported', 'New Customer', '-'),
(82, 'SO-18-12-00153', 85, 1000, 21, '2018-12-20 09:13:31', 'Reported', 'Repeat Order', 'data'),
(83, 'SO-18-12-00152', 9, 2000, 21, '2018-12-20 09:13:10', 'Reported', 'Repeat Order', '-'),
(84, 'SO-18-12-00141', 84, 200, 21, '2018-12-20 10:40:49', 'Reported', 'New Customer', 'barcode'),
(85, 'SO-18-12-00147', 5, 500, 6, '2018-12-19 01:05:35', 'Reported', 'Repeat Order', '-'),
(86, 'SO-18-12-00138', 83, 10000, 6, '2018-12-19 08:39:17', 'Reported', 'Repeat Order', '-'),
(87, 'SO-18-12-00137', 82, 5000, 6, '2018-12-18 10:39:56', 'Reported', 'Repeat Order', '-'),
(88, 'SO-18-12-00134', 40, 2000, 21, '2018-12-18 10:40:32', 'Reported', 'Repeat Order', '-'),
(89, 'SO-18-12-00113', 81, 300, 6, '2018-12-14 10:40:57', 'Reported', 'Repeat Order', 'data'),
(90, 'SO-18-12-00066', 79, 229, 5, '2018-12-10 10:41:39', 'Reported', 'New Customer', 'data+photo'),
(91, 'SO-18-12-00066', 80, 771, 5, '2018-12-10 10:42:42', 'Reported', 'New Customer', '-'),
(92, 'SO-18-12-00066', 87, 2, 5, '2018-12-10 10:44:44', 'Reported', 'New Customer', '-'),
(93, 'SO-18-12-00055', 26, 500, 21, '2018-12-27 03:46:07', 'Reported', 'Repeat Order', 'Data'),
(94, 'SO-18-11-00054', 89, 300, 5, '2018-12-21 03:49:28', 'Reported', 'Repeat Order', 'Data'),
(95, 'SO-18-12-00051', 88, 1017, 5, '2018-12-08 03:50:03', 'Reported', 'New Customer', 'Data'),
(96, 'SO-19-01-00003', 5, 500, 6, '2019-01-02 04:38:39', 'Reported', 'Repeat Order', '-'),
(97, 'SO-19-01-00010', 90, 1136, 21, '2019-01-02 03:30:56', 'Reported', 'New Customer', 'Data'),
(98, 'SO-19-01-00020', 40, 4000, 21, '2019-01-03 01:25:43', 'Reported', 'Repeat Order', '-'),
(99, 'SO-19-01-00022', 92, 2000, 24, '2019-01-04 01:30:29', 'Reported', 'Repeat Order', 'Magnetic'),
(100, 'SO-19-01-00024', 91, 5000, 21, '2019-01-03 01:24:12', 'Reported', 'New Customer', '-'),
(101, 'SO-19-01-00026', 72, 4150, 24, '2019-01-03 04:45:56', 'Reported', 'Repeat Order', '-'),
(102, 'SO-19-01-00038', 94, 500, 24, '2019-01-04 05:00:21', 'Reported', 'Repeat Order', '-'),
(103, 'SO-19-01-00032', 93, 200, 21, '2019-01-04 03:15:57', 'Reported', 'New Customer', 'Data Barcode'),
(104, 'SO-19-01-00054', 61, 56, 25, '2019-01-07 03:30:32', 'Reported', 'Repeat Order', 'Data'),
(105, 'SO-18-12-00066', 79, 73, 24, '2018-12-10 09:34:39', 'Reported', 'Repeat Order', 'Data'),
(106, 'SO-19-01-00063', 4, 2000, 6, '2019-01-08 10:44:27', 'Reported', 'Repeat Order', 'Data'),
(107, 'SO-18-12-00201', 96, 3, 25, '2019-01-08 10:49:52', 'Reported', 'Repeat Order', 'Photo'),
(108, 'SO-19-01-00060', 95, 500, 24, '2019-01-08 10:51:16', 'Reported', 'New Customer', 'Data'),
(109, 'SO-18-12-00051', 88, 782, 6, '2018-12-08 12:00:00', 'Reported', 'Repeat Order', 'Data'),
(110, 'SO-18-12-00161', 97, 460, 24, '2018-12-20 12:00:00', 'Reported', 'Repeat Order', 'Data'),
(111, 'SO-19-01-00043', 98, 643, 6, '2019-01-05 11:27:57', 'Reported', 'Repeat Order', 'Data'),
(112, 'SO-19-01-00048', 99, 84, 6, '2019-01-07 11:29:26', 'Reported', 'New Customer', 'Data'),
(113, 'SO-19-01-00057', 100, 1000, 21, '2019-01-08 11:30:48', 'Reported', 'Repeat Order', '-'),
(114, 'SO-19-01-00074', 101, 750, 24, '2019-01-09 11:32:25', 'Reported', 'New Customer', '1 sisi'),
(115, 'SO-19-01-00075', 102, 50, 6, '2019-01-09 11:34:23', 'Reported', 'New Customer', 'Data'),
(116, 'SO-19-01-00075', 103, 50, 6, '2019-01-09 11:34:43', 'Reported', 'New Customer', 'Data'),
(117, 'SO-19-01-00079', 104, 100, 6, '2019-01-10 11:36:30', 'Reported', 'Repeat Order', 'Data'),
(118, 'SO-19-01-00137', 50, 200, 21, '2019-01-16 11:37:35', 'Reported', 'Repeat Order', '-'),
(119, 'SO-19-01-00141', 105, 500, 6, '2019-01-16 11:39:38', 'Reported', 'New Customer', '-'),
(120, 'TANPA SO', 34, 140, 24, '2019-01-12 11:40:11', 'Reported', 'Return', 'Proximity'),
(121, 'SO-18-12-00051', 88, 1033, 6, '2018-12-08 11:39:36', 'Reported', 'Repeat Order', 'Data'),
(122, 'SO-19-01-00116', 116, 3000, 24, '2019-01-14 11:40:12', 'Reported', 'New Customer', '-'),
(123, 'SO-19-01-00116', 115, 250, 24, '2019-01-23 11:40:42', 'Reported', 'New Customer', 'Data'),
(124, 'SO-19-01-00123', 114, 3000, 24, '2019-01-15 11:41:16', 'Reported', 'Repeat Order', '-'),
(125, 'SO-19-01-00202', 5, 500, 6, '2019-01-23 11:41:50', 'Reported', 'Repeat Order', '-'),
(126, 'SO-19-01-00184', 45, 3000, 6, '2019-01-21 11:42:33', 'Reported', 'Repeat Order', '-'),
(127, 'SO-19-01-00178', 109, 500, 21, '2019-01-21 12:00:00', 'Reported', 'Repeat Order', 'Data'),
(128, 'SO-19-01-00172', 14, 5, 24, '2019-01-19 11:43:45', 'Reported', 'Repeat Order', '-'),
(129, 'SO-19-01-00170', 110, 7, 21, '2019-01-19 11:44:12', 'Reported', 'Repeat Order', 'Data'),
(130, 'SO-19-01-00169', 111, 3, 6, '2019-01-19 11:44:45', 'Reported', 'New Customer', '-'),
(131, 'SO-19-01-00162', 112, 2, 25, '2019-01-18 11:45:10', 'Reported', 'New Customer', '-'),
(132, 'SO-19-01-00161', 113, 48, 6, '2019-01-18 11:45:38', 'Reported', 'New Customer', 'Data'),
(133, 'SO-19-01-00112', 117, 86, 27, '2019-01-14 11:47:17', 'Reported', 'New Customer', 'Data'),
(134, 'SO-19-01-00160', 85, 1000, 25, '2019-01-18 11:47:43', 'Reported', 'Repeat Order', 'Data'),
(135, 'SO-19-01-00208', 118, 23, 6, '2019-01-23 11:49:20', 'Reported', 'Repeat Order', 'Data'),
(136, 'SO-19-01-00224', 108, 3000, 21, '2019-01-25 11:49:49', 'Reported', 'Repeat Order', '-'),
(137, 'SO-19-01-00234', 107, 10, 21, '2019-01-28 11:50:13', 'Reported', 'New Customer', 'Data'),
(138, 'SO-19-01-00238', 106, 48, 25, '2019-01-28 11:50:49', 'Reported', 'Repeat Order', '-'),
(139, 'TANPA SO', 51, 38, 24, '2019-01-31 01:25:47', 'Reported', 'Return', 'Mifare'),
(140, 'TANPA SO', 43, 30, 21, '2019-01-31 01:28:07', 'Reported', 'Return', '-'),
(141, 'SO-19-02-00063', 142, 10, 25, '2019-02-09 11:09:35', 'Reported', 'New Customer', '-'),
(142, 'SO-19-02-00051', 141, 56, 6, '2019-02-08 11:10:09', 'Reported', 'New Customer', '-'),
(143, 'SO-19-02-00037', 136, 50, 25, '2019-02-07 11:10:46', 'Reported', 'New Customer', '-'),
(144, 'SO-19-02-00037', 139, 50, 25, '2019-02-07 11:11:13', 'Reported', 'New Customer', '-'),
(145, 'SO-19-02-00037', 138, 50, 25, '2019-02-07 11:11:35', 'Reported', 'New Customer', '-'),
(146, 'SO-19-02-00037', 137, 50, 25, '2019-02-07 11:12:00', 'Reported', 'New Customer', '-'),
(147, 'SO-19-02-00015', 90, 5, 21, '2019-02-04 11:12:24', 'Reported', 'New Customer', '-'),
(148, 'SO-19-01-00277', 130, 2000, 21, '2019-02-02 11:12:57', 'Reported', 'Repeat Order', '-'),
(149, 'SO-19-01-00276', 129, 5000, 6, '2019-02-01 11:13:30', 'Reported', 'Repeat Order', '-'),
(150, 'SO-19-01-00266', 128, 13, 25, '2019-01-30 11:14:00', 'Reported', 'New Customer', '-'),
(151, 'SO-19-01-00256', 127, 30, 24, '2019-01-29 11:18:04', 'Reported', 'New Customer', '-'),
(152, 'SO-19-01-00253', 126, 500, 24, '2019-01-29 11:18:33', 'Packing', 'Repeat Order', '-'),
(153, 'SO-19-01-00240', 125, 5000, 6, '2019-01-28 11:19:03', 'Reported', 'Repeat Order', '-'),
(154, 'SO-19-01-00237', 124, 600, 27, '2019-01-28 11:19:39', 'Reported', 'New Customer', '-'),
(155, 'SO-19-01-00235', 123, 163, 24, '2019-01-28 11:20:20', 'Reported', 'New Customer', 'Data'),
(156, 'SO-19-01-00236', 120, 500, 21, '2019-01-28 11:21:28', 'Reported', 'Repeat Order', '-'),
(157, 'SO-19-01-00236', 121, 500, 21, '2019-01-28 11:21:50', 'Reported', 'Repeat Order', '-'),
(158, 'SO-19-01-00203', 119, 600, 25, '2019-01-23 11:22:15', 'Reported', 'New Customer', '-');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_bahan`
--

CREATE TABLE `laporan_bahan` (
  `id_laporan_bahan` int(3) NOT NULL,
  `id_so` int(3) NOT NULL,
  `id_bahan` int(3) NOT NULL,
  `jml_pvc_print` int(5) NOT NULL,
  `jml_pvc_tengah` int(5) NOT NULL,
  `jml_magnetic` int(5) NOT NULL,
  `jml_overlay` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_bahan`
--

INSERT INTO `laporan_bahan` (`id_laporan_bahan`, `id_so`, `id_bahan`, `jml_pvc_print`, `jml_pvc_tengah`, `jml_magnetic`, `jml_overlay`) VALUES
(1, 20, 4, 2, 1, 0, 2),
(2, 19, 4, 1, 1, 0, 1),
(3, 18, 9, 200, 0, 0, 200),
(4, 17, 4, 40, 20, 0, 40),
(5, 16, 4, 4, 2, 0, 4),
(6, 15, 4, 1, 1, 0, 1),
(7, 14, 4, 1, 1, 0, 1),
(8, 12, 4, 4, 2, 0, 4),
(9, 13, 4, 5, 3, 0, 5),
(10, 11, 4, 20, 10, 0, 20),
(11, 9, 4, 400, 200, 0, 400),
(12, 8, 4, 2, 1, 0, 2),
(13, 7, 4, 1400, 700, 0, 1400),
(14, 6, 4, 600, 300, 0, 600),
(15, 5, 4, 200, 100, 0, 200),
(16, 4, 4, 400, 200, 0, 400),
(17, 3, 4, 1200, 600, 0, 1200),
(18, 2, 4, 19, 10, 0, 19),
(19, 1, 4, 200, 100, 0, 200),
(20, 10, 4, 800, 400, 0, 800),
(21, 33, 7, 1000, 500, 0, 1000),
(22, 34, 4, 200, 100, 0, 200),
(23, 35, 4, 39, 20, 0, 39),
(24, 36, 10, 500, 500, 0, 1000),
(25, 37, 4, 79, 40, 0, 79),
(26, 38, 4, 200, 100, 0, 200),
(27, 39, 4, 400, 200, 0, 400),
(28, 40, 4, 46, 23, 0, 46),
(29, 41, 4, 46, 23, 0, 46),
(30, 42, 4, 38, 19, 0, 38),
(31, 43, 4, 17, 9, 0, 17),
(32, 44, 4, 600, 300, 0, 600),
(33, 45, 4, 6, 3, 0, 6),
(34, 46, 10, 100, 100, 0, 200),
(35, 47, 4, 10, 5, 0, 10),
(36, 48, 4, 20, 10, 0, 20),
(37, 49, 4, 40, 20, 0, 40),
(38, 21, 4, 1000, 500, 0, 1000),
(39, 22, 4, 1000, 500, 0, 1000),
(40, 50, 8, 20, 10, 0, 20),
(41, 29, 4, 40, 20, 0, 40),
(42, 51, 4, 20, 10, 0, 20),
(43, 52, 4, 30, 15, 0, 30),
(44, 28, 4, 100, 50, 0, 100),
(45, 27, 4, 400, 200, 0, 400),
(46, 23, 4, 400, 200, 0, 400),
(47, 26, 4, 1000, 500, 0, 1000),
(48, 55, 4, 12, 6, 0, 12),
(49, 53, 4, 2, 1, 0, 2),
(50, 54, 4, 1, 1, 0, 1),
(51, 60, 4, 3, 2, 0, 3),
(52, 24, 4, 240, 120, 0, 240),
(53, 25, 11, 500, 0, 0, 1000),
(54, 31, 4, 2000, 1000, 0, 2000),
(55, 61, 4, 40, 20, 0, 40),
(56, 62, 4, 1200, 600, 0, 1200),
(57, 30, 4, 1000, 500, 0, 1000),
(58, 63, 4, 600, 300, 0, 600),
(59, 64, 4, 50, 25, 0, 50),
(60, 65, 4, 6, 3, 0, 6),
(61, 66, 4, 7, 4, 0, 7),
(62, 67, 4, 2, 1, 0, 2),
(63, 68, 4, 31, 16, 0, 31),
(64, 59, 4, 250, 125, 0, 250),
(65, 58, 6, 20, 10, 100, 20),
(66, 56, 4, 1000, 500, 0, 1000),
(67, 57, 4, 200, 100, 0, 200),
(68, 76, 4, 200, 100, 0, 200),
(69, 75, 4, 12, 6, 0, 12),
(70, 74, 4, 6, 3, 0, 6),
(71, 73, 4, 340, 17, 0, 340),
(72, 72, 4, 3, 2, 0, 3),
(73, 71, 4, 1, 1, 0, 1),
(74, 70, 4, 250, 125, 0, 250),
(75, 69, 4, 11, 6, 0, 11),
(76, 79, 4, 1000, 500, 0, 1000),
(77, 80, 4, 400, 200, 0, 400),
(78, 78, 4, 600, 300, 0, 600),
(79, 77, 4, 100, 50, 0, 100),
(80, 90, 4, 46, 23, 0, 46),
(81, 91, 4, 155, 78, 0, 155),
(82, 92, 4, 1, 1, 0, 1),
(83, 89, 4, 60, 30, 0, 60),
(84, 88, 4, 400, 200, 0, 400),
(85, 85, 4, 100, 50, 0, 100),
(86, 82, 4, 200, 100, 0, 200),
(87, 83, 4, 400, 200, 0, 400),
(88, 84, 4, 40, 20, 0, 40),
(89, 86, 4, 2000, 1000, 0, 2000),
(90, 87, 4, 1000, 500, 0, 1000),
(91, 81, 4, 200, 100, 0, 200),
(92, 95, 4, 204, 102, 0, 204),
(93, 94, 4, 60, 30, 0, 60),
(94, 93, 4, 100, 50, 0, 100),
(95, 104, 4, 12, 6, 0, 12),
(96, 103, 4, 40, 20, 0, 40),
(97, 102, 4, 100, 50, 0, 100),
(98, 98, 4, 800, 400, 0, 800),
(99, 99, 6, 400, 200, 2000, 400),
(100, 100, 4, 1000, 500, 0, 1000),
(101, 101, 4, 830, 415, 0, 830),
(102, 96, 4, 100, 50, 0, 100),
(103, 97, 4, 228, 114, 0, 228),
(104, 105, 4, 15, 8, 0, 15),
(105, 108, 4, 100, 50, 0, 100),
(106, 106, 4, 400, 200, 0, 400),
(107, 107, 4, 1, 1, 0, 1),
(108, 119, 4, 100, 50, 0, 100),
(109, 118, 4, 40, 20, 0, 40),
(110, 117, 4, 20, 10, 0, 20),
(111, 115, 4, 10, 5, 0, 10),
(112, 116, 4, 10, 5, 0, 10),
(113, 114, 10, 75, 75, 0, 150),
(114, 113, 4, 200, 100, 0, 200),
(115, 112, 4, 17, 9, 0, 17),
(116, 111, 4, 129, 65, 0, 129),
(117, 110, 4, 92, 46, 0, 92),
(118, 109, 4, 157, 79, 0, 157),
(119, 138, 4, 10, 5, 0, 10),
(120, 137, 4, 2, 1, 0, 2),
(121, 136, 4, 600, 300, 0, 600),
(122, 135, 4, 5, 3, 0, 5),
(123, 134, 4, 200, 100, 0, 200),
(124, 133, 4, 18, 9, 0, 18),
(125, 132, 4, 10, 5, 0, 10),
(126, 131, 4, 1, 1, 0, 1),
(127, 130, 8, 2, 1, 0, 2),
(128, 129, 4, 2, 1, 0, 2),
(129, 128, 4, 2, 1, 0, 2),
(130, 127, 4, 100, 50, 0, 100),
(131, 126, 4, 600, 300, 0, 600),
(132, 125, 4, 100, 50, 0, 100),
(133, 124, 4, 600, 300, 0, 600),
(134, 123, 4, 50, 25, 0, 50),
(135, 122, 4, 600, 300, 0, 600),
(136, 121, 4, 207, 104, 0, 207),
(137, 120, 7, 28, 14, 0, 28),
(138, 139, 8, 8, 4, 0, 8),
(139, 140, 4, 6, 3, 0, 6),
(140, 158, 8, 120, 60, 0, 120),
(141, 156, 4, 100, 50, 0, 100),
(142, 157, 4, 100, 50, 0, 100),
(143, 155, 4, 33, 17, 0, 33),
(144, 154, 4, 120, 60, 0, 120),
(145, 153, 4, 1000, 500, 0, 1000),
(146, 151, 10, 3, 3, 0, 6),
(147, 150, 4, 3, 2, 0, 3),
(148, 149, 4, 1000, 500, 0, 1000),
(149, 148, 4, 400, 200, 0, 400),
(150, 147, 4, 1, 1, 0, 1),
(151, 143, 4, 10, 5, 0, 10),
(152, 144, 4, 10, 5, 0, 10),
(153, 145, 4, 10, 5, 0, 10),
(154, 146, 4, 10, 5, 0, 10),
(155, 142, 4, 12, 6, 0, 12),
(156, 141, 4, 2, 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_has_status`
--

CREATE TABLE `laporan_has_status` (
  `id_laporan_has_status` int(3) NOT NULL,
  `id_so` int(3) NOT NULL,
  `status_report` enum('new','acc','revision','updated') NOT NULL,
  `pembuat` int(3) DEFAULT NULL,
  `penyetuju` int(3) DEFAULT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_has_status`
--

INSERT INTO `laporan_has_status` (`id_laporan_has_status`, `id_so`, `status_report`, `pembuat`, `penyetuju`, `keterangan`) VALUES
(1, 20, 'acc', 19, 2, ''),
(2, 19, 'acc', 19, 2, ''),
(3, 18, 'acc', 19, 2, ''),
(4, 17, 'acc', 19, 2, ''),
(5, 16, 'acc', 19, 2, ''),
(6, 15, 'acc', 19, 2, ''),
(7, 14, 'acc', 19, 2, ''),
(8, 12, 'acc', 19, 2, ''),
(9, 13, 'acc', 19, 2, ''),
(10, 11, 'acc', 19, 2, ''),
(11, 9, 'acc', 19, 2, ''),
(12, 8, 'acc', 19, 2, ''),
(13, 7, 'acc', 19, 2, ''),
(14, 6, 'acc', 19, 2, ''),
(15, 5, 'acc', 19, 2, ''),
(16, 4, 'acc', 19, 2, ''),
(17, 3, 'acc', 19, 2, ''),
(18, 2, 'acc', 19, 2, ''),
(19, 1, 'acc', 19, 2, ''),
(20, 10, 'acc', 19, 2, ''),
(21, 33, 'acc', 19, 2, ''),
(22, 34, 'acc', 19, 2, ''),
(23, 35, 'acc', 19, 2, ''),
(24, 36, 'acc', 19, 2, ''),
(25, 37, 'acc', 19, 2, ''),
(26, 38, 'acc', 19, 2, ''),
(27, 39, 'acc', 19, 2, ''),
(28, 40, 'acc', 19, 2, ''),
(29, 41, 'acc', 19, 2, ''),
(30, 42, 'acc', 19, 2, ''),
(31, 43, 'acc', 19, 2, ''),
(32, 44, 'acc', 19, 2, ''),
(33, 45, 'acc', 19, 2, ''),
(34, 46, 'acc', 19, 2, ''),
(35, 47, 'acc', 19, 2, ''),
(36, 48, 'acc', 19, 2, ''),
(37, 49, 'acc', 19, 2, ''),
(38, 21, 'acc', 19, 2, ''),
(39, 22, 'acc', 19, 2, ''),
(40, 50, 'acc', 19, 2, ''),
(41, 29, 'acc', 19, 2, ''),
(42, 51, 'acc', 19, 2, ''),
(43, 52, 'acc', 19, 2, ''),
(44, 28, 'acc', 19, 2, ''),
(45, 27, 'acc', 19, 2, ''),
(46, 23, 'acc', 19, 2, ''),
(47, 26, 'acc', 19, 2, ''),
(48, 55, 'acc', 19, 2, ''),
(49, 53, 'acc', 19, 2, ''),
(50, 54, 'acc', 19, 2, ''),
(51, 60, 'acc', 19, 2, ''),
(52, 24, 'acc', 19, 2, ''),
(53, 25, 'acc', 19, 2, ''),
(54, 31, 'acc', 19, 2, ''),
(55, 61, 'acc', 19, 2, ''),
(56, 62, 'acc', 19, 2, ''),
(57, 30, 'acc', 19, 2, ''),
(58, 63, 'acc', 19, 2, ''),
(59, 64, 'acc', 19, 2, ''),
(60, 65, 'acc', 19, 2, ''),
(61, 66, 'acc', 19, 2, ''),
(62, 67, 'acc', 19, 2, ''),
(63, 68, 'acc', 19, 2, ''),
(64, 59, 'acc', 19, 2, ''),
(65, 58, 'acc', 19, 2, ''),
(66, 56, 'acc', 19, 2, ''),
(67, 57, 'acc', 19, 2, ''),
(68, 76, 'acc', 19, 2, ''),
(69, 75, 'acc', 19, 2, ''),
(70, 74, 'acc', 19, 2, ''),
(71, 73, 'acc', 19, 2, ''),
(72, 72, 'acc', 19, 2, ''),
(73, 71, 'acc', 19, 2, ''),
(74, 70, 'acc', 19, 2, ''),
(75, 69, 'acc', 19, 2, ''),
(76, 79, 'acc', 19, 2, ''),
(77, 80, 'acc', 19, 2, ''),
(78, 78, 'acc', 19, 2, ''),
(79, 77, 'acc', 19, 2, ''),
(80, 90, 'acc', 19, 2, ''),
(81, 91, 'acc', 19, 2, ''),
(82, 92, 'acc', 19, 2, ''),
(83, 89, 'acc', 19, 2, ''),
(84, 88, 'acc', 19, 2, ''),
(85, 85, 'acc', 19, 2, ''),
(86, 82, 'acc', 19, 2, ''),
(87, 83, 'acc', 19, 2, ''),
(88, 84, 'acc', 19, 2, ''),
(89, 86, 'acc', 19, 2, ''),
(90, 87, 'acc', 19, 2, ''),
(91, 81, 'acc', 19, 2, ''),
(92, 95, 'acc', 19, 2, ''),
(93, 94, 'acc', 19, 2, ''),
(94, 93, 'acc', 19, 2, ''),
(95, 104, 'acc', 19, 2, ''),
(96, 103, 'acc', 19, 2, ''),
(97, 102, 'acc', 19, 2, ''),
(98, 98, 'acc', 19, 2, ''),
(99, 99, 'acc', 19, 2, ''),
(100, 100, 'acc', 19, 2, ''),
(101, 101, 'acc', 19, 2, ''),
(102, 96, 'acc', 19, 2, ''),
(103, 97, 'acc', 19, 2, ''),
(104, 105, 'acc', 19, 2, ''),
(105, 108, 'acc', 19, 2, ''),
(106, 106, 'acc', 19, 2, ''),
(107, 107, 'acc', 19, 2, ''),
(108, 119, 'acc', 19, 2, ''),
(109, 118, 'acc', 19, 2, ''),
(110, 117, 'acc', 19, 2, ''),
(111, 115, 'acc', 19, 2, ''),
(112, 116, 'acc', 19, 2, ''),
(113, 114, 'acc', 19, 2, ''),
(114, 113, 'acc', 19, 2, ''),
(115, 112, 'acc', 19, 2, ''),
(116, 111, 'acc', 19, 2, ''),
(117, 110, 'acc', 19, 2, ''),
(118, 109, 'acc', 19, 2, ''),
(119, 138, 'acc', 19, 2, ''),
(120, 137, 'acc', 19, 2, ''),
(121, 136, 'acc', 19, 2, ''),
(122, 135, 'acc', 19, 2, ''),
(123, 134, 'acc', 19, 2, ''),
(124, 133, 'acc', 19, 2, ''),
(125, 132, 'acc', 19, 2, ''),
(126, 131, 'acc', 19, 2, ''),
(127, 130, 'acc', 19, 2, ''),
(128, 129, 'acc', 19, 2, ''),
(129, 128, 'acc', 19, 2, ''),
(130, 127, 'acc', 19, 2, ''),
(131, 126, 'acc', 19, 2, ''),
(132, 125, 'acc', 19, 2, ''),
(133, 124, 'acc', 19, 2, ''),
(134, 123, 'acc', 19, 2, ''),
(135, 122, 'acc', 19, 2, ''),
(136, 121, 'acc', 19, 2, ''),
(137, 120, 'acc', 19, 2, ''),
(138, 139, 'acc', 19, 2, ''),
(139, 140, 'acc', 19, 2, ''),
(140, 158, 'new', 19, NULL, ''),
(141, 156, 'new', 19, NULL, ''),
(142, 157, 'new', 19, NULL, ''),
(143, 155, 'new', 19, NULL, ''),
(144, 154, 'new', 19, NULL, ''),
(145, 153, 'new', 19, NULL, ''),
(146, 151, 'new', 19, NULL, ''),
(147, 150, 'new', 19, NULL, ''),
(148, 149, 'new', 19, NULL, ''),
(149, 148, 'new', 19, NULL, ''),
(150, 147, 'new', 19, NULL, ''),
(151, 143, 'new', 19, NULL, ''),
(152, 144, 'new', 19, NULL, ''),
(153, 145, 'new', 19, NULL, ''),
(154, 146, 'new', 19, NULL, ''),
(155, 142, 'new', 19, NULL, ''),
(156, 141, 'new', 19, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_produksi`
--

CREATE TABLE `laporan_produksi` (
  `id_laporan_produksi` int(3) NOT NULL,
  `id_so` int(3) NOT NULL,
  `tgl_cetak` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `jml_kerusakan` int(4) NOT NULL,
  `jml_kelebihan` int(4) NOT NULL,
  `jml_ambil_gudang` int(4) NOT NULL,
  `keterangan_rusak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_produksi`
--

INSERT INTO `laporan_produksi` (`id_laporan_produksi`, `id_so`, `tgl_cetak`, `tgl_selesai`, `jml_kerusakan`, `jml_kelebihan`, `jml_ambil_gudang`, `keterangan_rusak`) VALUES
(1, 20, '2018-10-31', '2018-11-01', 0, 0, 0, '-'),
(2, 19, '2018-11-07', '2018-11-07', 0, 0, 0, '-'),
(3, 18, '2018-10-23', '2018-11-06', 30, 0, 0, 'salah plong, kolekting miring'),
(4, 17, '2018-11-01', '2018-11-06', 0, 0, 0, '-'),
(5, 16, '2018-10-31', '2018-11-03', 0, 0, 0, '-'),
(6, 15, '2018-10-31', '2018-11-03', 0, 0, 0, '-'),
(7, 14, '2018-10-31', '2018-11-05', 0, 0, 0, '-'),
(8, 12, '2018-10-29', '2018-11-08', 0, 0, 0, '-'),
(9, 13, '2018-10-29', '2018-11-08', 0, 0, 0, '-'),
(10, 11, '0000-00-00', '2018-11-08', 0, 0, 0, '-'),
(11, 9, '2018-11-02', '2018-11-12', 105, 0, 50, 'bercak tinta,kolekting miring,print error'),
(12, 8, '2018-10-29', '2018-11-03', 0, 0, 0, '-'),
(13, 7, '2018-11-02', '2018-11-15', 280, 60, 0, 'bercak tinta,kolekting miring,print error'),
(14, 6, '2018-10-24', '2018-11-12', 30, 0, 0, 'salah data, bercak tinta'),
(15, 5, '2018-10-26', '2018-11-03', 70, 20, 0, 'bercak tinta,kolekting miring,print error'),
(16, 4, '2018-10-24', '2018-11-06', 105, 0, 0, 'bercak tinta,kolekting miring,print error'),
(17, 3, '2018-10-29', '2018-11-12', 160, 30, 0, 'bercak tinta,kolekting miring,print error'),
(18, 2, '2018-10-15', '2018-11-01', 0, 0, 0, '-'),
(19, 1, '2018-10-20', '2018-11-01', 0, 0, 0, '-'),
(20, 10, '2018-10-29', '2018-11-12', 130, 20, 0, 'kertas melengkung, bercak tinta, plong miring'),
(21, 33, '2018-10-24', '2018-11-10', 950, 50, 0, 'Penyet, cetakan miring'),
(22, 34, '2018-10-30', '2018-11-13', 13, 0, 0, 'Plong Miring, kertas melengkung'),
(23, 35, '2018-11-05', '2018-11-19', 8, 0, 0, 'Cetakan Miring'),
(24, 36, '2018-11-03', '2018-11-14', 120, 50, 0, 'Kartu kotor, bercak tinta'),
(25, 37, '2018-11-05', '2018-11-20', 11, 0, 0, 'Bercak tinta'),
(26, 38, '2018-11-06', '2018-11-20', 28, 0, 0, 'bercak tinta, salah plong'),
(27, 39, '2018-11-06', '2018-11-17', 35, 20, 50, 'Kertas melengkung, salah plong'),
(28, 40, '2018-11-09', '2018-11-27', 0, 0, 0, '-'),
(29, 41, '2018-11-09', '2018-11-27', 4, 0, 0, 'plong miring'),
(30, 42, '2018-11-10', '2018-11-20', 0, 0, 0, '-'),
(31, 43, '2018-11-10', '2018-11-20', 0, 0, 0, '-'),
(32, 44, '2018-11-08', '2018-11-22', 100, 0, 123, 'bercak tinta, salah plong, cetakan miring'),
(33, 45, '2018-11-08', '2018-11-10', 0, 0, 0, '0'),
(34, 46, '2018-11-08', '2018-11-15', 50, 0, 0, 'kartu kotor, salah plong, bercak tinta'),
(35, 47, '2018-11-08', '2018-11-15', 0, 0, 0, '-'),
(36, 48, '2018-11-08', '2018-11-15', 0, 0, 0, '-'),
(37, 49, '2018-11-08', '2018-11-15', 0, 0, 20, '0'),
(38, 21, '2018-11-10', '2018-11-24', 152, 17, 10, 'bercak tinta, salah plong, kertas melengkung'),
(39, 22, '2018-11-12', '2018-11-26', 220, 32, 0, 'kertas melengkung, bercak tinta, salah plong'),
(40, 50, '2018-11-14', '2018-11-17', 0, 10, 0, '-'),
(41, 29, '2018-11-16', '2018-11-24', 0, 0, 0, '-'),
(42, 51, '2018-11-17', '2018-11-22', 0, 0, 0, '-'),
(43, 52, '2018-11-17', '2018-11-21', 0, 0, 0, '0'),
(44, 28, '2018-11-22', '2018-11-28', 0, 0, 0, '0'),
(45, 27, '2018-11-22', '2018-11-29', 180, 20, 0, 'bercak tinta, salah plong, kertas melengkung'),
(46, 23, '2018-11-21', '2018-11-26', 36, 0, 0, 'bercak tinta, salah plong'),
(47, 26, '2018-11-23', '2018-11-30', 70, 20, 0, 'bercak tinta, salah plong, kertas melengkung'),
(48, 55, '2018-11-27', '2018-11-29', 0, 0, 0, '-'),
(49, 53, '2018-11-27', '2018-11-29', 0, 0, 0, '-'),
(50, 54, '2018-11-29', '2018-11-29', 0, 0, 0, '-'),
(51, 60, '2018-11-30', '2018-12-01', 0, 0, 0, '-'),
(52, 24, '2018-11-27', '2018-12-05', 50, 10, 0, 'bercak tinta, salah plong, kertas melengkung'),
(53, 25, '2018-11-27', '2018-12-05', 375, 120, 0, 'kartu kotor, salah plong'),
(54, 31, '2018-11-28', '2018-12-08', 315, 10, 0, 'bercak tinta, salah plong, kertas melengkung'),
(55, 61, '2018-11-28', '2018-12-05', 2, 0, 0, 'salah plong'),
(56, 62, '2018-11-26', '2018-12-03', 105, 50, 0, 'kertas melengkung, bercak tinta, salah plong'),
(57, 30, '2018-12-03', '2018-12-08', 90, 30, 0, 'kertas melengkung, bercak tinta, salah plong'),
(58, 63, '2018-11-21', '2018-12-01', 64, 0, 0, 'bercak tinta, kertas melengkung'),
(59, 64, '2018-12-03', '2018-12-03', 18, 12, 0, 'bercak tinta'),
(60, 65, '2018-11-30', '2018-12-01', 0, 0, 0, '-'),
(61, 66, '2018-12-01', '2018-12-03', 0, 0, 0, '-'),
(62, 67, '2018-12-01', '2018-12-01', 0, 0, 0, '-'),
(63, 68, '2018-12-01', '2018-12-01', 3, 0, 0, 'salah plong'),
(64, 59, '2018-12-06', '2018-12-14', 100, 0, 0, 'salah data, salah plong, kertas melengkung'),
(65, 58, '2018-12-04', '2018-12-06', 7, 0, 0, 'penyet'),
(66, 56, '2018-12-04', '2018-12-14', 150, 0, 50, 'salah plong, kertas melengkung, bercak tinta'),
(67, 57, '2018-12-04', '2018-12-14', 22, 0, 0, 'kertas melengkung, salah plong, bercak tinta'),
(68, 76, '2018-12-12', '2018-12-15', 8, 36, 0, 'salah plong'),
(69, 75, '2018-11-27', '2018-12-01', 0, 0, 0, '-'),
(70, 74, '2018-11-29', '2018-12-01', 0, 0, 0, '-'),
(71, 73, '2018-12-10', '2018-12-15', 52, 38, 0, 'kertas melengkung, bercak tinta'),
(72, 72, '2018-12-11', '2018-12-11', 0, 0, 0, '-'),
(73, 71, '2018-12-08', '2018-12-08', 0, 0, 0, '-'),
(74, 70, '2018-12-15', '2018-12-15', 50, 20, 0, 'kertas melengkung, bercak tinta'),
(75, 69, '2018-12-11', '2018-12-14', 0, 0, 0, '-'),
(76, 79, '2018-12-12', '2018-12-15', 55, 150, 0, 'kertas melengkung, bercak tinta, salah plong'),
(77, 80, '2018-12-12', '2018-12-15', 100, 0, 50, 'kertas melengkun, bercak titna'),
(78, 78, '2018-12-10', '2018-12-15', 172, 28, 0, 'bercak tinta, kertas melengkung, salah plong'),
(79, 77, '2018-12-06', '2018-12-12', 0, 0, 0, '-'),
(80, 90, '2018-12-10', '2018-12-10', 0, 0, 0, '-'),
(81, 91, '2018-12-10', '2018-12-22', 5, 10, 0, 'salah plong'),
(82, 92, '2018-12-10', '2018-12-22', 0, 0, 0, '-'),
(83, 89, '2018-12-14', '2018-12-20', 0, 0, 0, '-'),
(84, 88, '2018-12-18', '2018-12-22', 120, 0, 30, 'kertas melengkung, bercak tinta'),
(85, 85, '2018-12-19', '2018-12-21', 2, 0, 0, 'salah plong'),
(86, 82, '2018-12-24', '2018-12-27', 14, 0, 0, 'kertas melengkung, salah plong'),
(87, 83, '2018-12-22', '2018-12-26', 150, 20, 0, 'kertas melengkung, bercak tinta, salah plong'),
(88, 84, '2018-12-19', '2018-12-21', 10, 0, 0, 'penyet'),
(89, 86, '2018-12-20', '2018-12-27', 354, 50, 30, 'kertas melengkung, bercak tinta, salah plong'),
(90, 87, '2018-12-18', '2018-12-24', 122, 10, 30, 'kertas melengkung, bercak tinta, salah plong'),
(91, 81, '2018-12-21', '2018-12-24', 42, 23, 0, 'kertas melengkung'),
(92, 95, '2018-12-10', '2018-12-24', 20, 0, 0, 'plong mieing, bercak tinta, kartu kotor'),
(93, 94, '2018-12-21', '2018-12-24', 3, 0, 0, 'salah plong'),
(94, 93, '2018-12-27', '2018-12-27', 0, 0, 0, '-'),
(95, 104, '2019-01-07', '2019-01-07', 0, 0, 0, '-'),
(96, 103, '2019-01-04', '2019-01-05', 0, 0, 0, '-'),
(97, 102, '2019-01-07', '2019-01-09', 20, 0, 20, 'bercak tinta'),
(98, 98, '2019-01-03', '2019-01-07', 70, 50, 0, '-'),
(99, 99, '2019-01-03', '2019-01-05', 25, 50, 0, 'bercak tinta'),
(100, 100, '2019-01-04', '2019-01-10', 93, 20, 0, 'salah plong, bercak tinta, kertas melengkung'),
(101, 101, '2019-01-05', '2019-01-10', 90, 20, 30, 'kertas melengkung, bercak tinta, salah plong'),
(102, 96, '2019-01-02', '2019-01-03', 10, 20, 0, 'bercak tinta'),
(103, 97, '2019-01-02', '2019-01-05', 18, 0, 0, 'bercak tinta, salah plong'),
(104, 105, '2019-01-03', '2019-01-03', 0, 0, 0, '-'),
(105, 108, '2019-01-08', '2019-01-10', 0, 0, 0, '-'),
(106, 106, '2019-01-08', '2019-01-12', 23, 0, 0, 'salah plong'),
(107, 107, '2019-01-08', '2019-01-08', 0, 0, 0, '-'),
(108, 119, '2019-01-17', '2019-01-19', 20, 15, 0, 'salah plong, bercak tinta'),
(109, 118, '2019-01-17', '2019-01-19', 10, 0, 0, 'bercak tinta'),
(110, 117, '2019-01-10', '2019-01-10', 0, 0, 0, '-'),
(111, 115, '2019-01-11', '2019-01-11', 0, 0, 0, '-'),
(112, 116, '2019-01-11', '2019-01-11', 0, 0, 0, '0'),
(113, 114, '2019-01-09', '2019-01-12', 34, 0, 0, 'Kartu kotor'),
(114, 113, '2019-01-08', '2019-01-11', 64, 10, 0, 'Kartu kotor, bercak tinta'),
(115, 112, '2019-01-11', '2019-01-15', 0, 0, 0, '-'),
(116, 111, '2019-01-08', '2019-01-12', 33, 0, 0, '-'),
(117, 110, '2019-01-11', '2019-01-19', 9, 0, 0, 'plong miring'),
(118, 109, '2019-01-14', '2019-01-19', 40, 0, 0, 'Kartu kotor, bercak tinta'),
(119, 138, '2019-01-28', '2019-01-29', 0, 0, 0, '-'),
(120, 137, '2019-01-28', '2019-01-28', 5, 5, 0, 'Salah warna'),
(121, 136, '2019-01-25', '2019-01-30', 36, 20, 0, 'Salah Plong, kertas melengkung'),
(122, 135, '2019-01-23', '2019-01-23', 0, 0, 0, '-'),
(123, 134, '2019-01-18', '2019-01-22', 72, 0, 0, '-'),
(124, 133, '2019-01-14', '2019-01-16', 0, 0, 0, '-'),
(125, 132, '2019-01-18', '2019-01-21', 0, 0, 0, '-'),
(126, 131, '2019-01-18', '2019-01-18', 0, 0, 0, '0'),
(127, 130, '2019-01-19', '2019-01-19', 0, 0, 0, '0'),
(128, 129, '2019-01-19', '2019-01-22', 0, 0, 0, '-'),
(129, 128, '2019-01-19', '2019-01-21', 0, 0, 0, '0'),
(130, 127, '2019-01-21', '2019-01-23', 0, 0, 0, '0'),
(131, 126, '2019-01-21', '2019-01-18', 130, 10, 0, 'Salah plong, bercak tinta, kertas miring'),
(132, 125, '2019-01-23', '2019-01-25', 80, 0, 0, '0'),
(133, 124, '2019-01-15', '2019-01-19', 140, 20, 0, 'salah plong, bercak tinta, kertas melengkung'),
(134, 123, '2019-01-23', '2019-01-26', 30, 0, 0, 'Kertas melengkung'),
(135, 122, '2019-01-14', '2019-01-18', 65, 20, 0, 'Kertas melengkun, salah plong'),
(136, 121, '2019-01-22', '2019-01-30', 70, 0, 0, 'Kartu Kotor, bercak tinta'),
(137, 120, '2019-01-12', '2019-01-19', 2, 8, 0, '-'),
(138, 139, '2019-01-07', '2019-01-10', 0, 0, 0, '-'),
(139, 140, '2019-01-07', '2019-01-09', 0, 0, 0, '0'),
(140, 158, '2019-01-29', '2019-02-12', 85, 5, 0, 'Penyet'),
(141, 156, '2019-01-28', '2019-02-08', 6, 0, 0, 'penyet'),
(142, 157, '2019-01-28', '2019-02-08', 6, 0, 0, 'penyet'),
(143, 155, '2019-01-28', '2019-02-06', 0, 0, 0, '-'),
(144, 154, '2019-01-29', '2019-02-02', 15, 50, 0, 'salah plong, cetakn miring'),
(145, 153, '2019-01-28', '2019-02-09', 124, 30, 0, 'kertas melengkung, bercak tinta, salah plong'),
(146, 151, '2019-01-31', '2019-02-02', 0, 0, 0, '0'),
(147, 150, '2019-01-30', '2019-02-01', 0, 0, 0, '-'),
(148, 149, '2019-02-01', '2019-02-08', 254, 0, 0, 'kertas melengkung, bercak tinta, salah plong'),
(149, 148, '2019-02-04', '2019-02-12', 6, 0, 0, 'Penyet'),
(150, 147, '2019-02-06', '2019-02-06', 0, 0, 0, '-'),
(151, 143, '2019-02-07', '2019-02-09', 0, 10, 0, '-'),
(152, 144, '2019-02-07', '2019-02-09', 0, 10, 0, '1'),
(153, 145, '2019-02-07', '2019-02-09', 0, 10, 0, '-'),
(154, 146, '2019-02-07', '2019-02-09', 0, 10, 0, '-'),
(155, 142, '2019-02-08', '2019-02-09', 0, 0, 0, '-'),
(156, 141, '2019-02-09', '2019-02-11', 0, 0, 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text,
  `tipe_user` enum('Produksi','Admin','Sales','Manager') DEFAULT NULL,
  `status` enum('Unblock','Block') NOT NULL,
  `ttd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `tipe_user`, `status`, `ttd`) VALUES
(2, 'nova ampriananta', 'nova', '$2y$10$K5OntzLHjdkDwlvXHjUckOgG/WhgdaOLlIzSTkLeLJZ/mhKwK2Jsq', 'Admin', 'Unblock', 'b9763187013e50764c8af3c9622a15a9.jpg'),
(5, 'HALIMAH', 'Halimah', '$2y$10$cppt9y6g6fUP1CNvD2iZ9eixhcanSWEAdswS.ZcwbdtMH6SicuwiC', 'Sales', 'Block', ''),
(6, 'AZIZ', 'aziz', '$2y$10$YW4hHh7hgE/ya894hWeyOuCAS5xtzGNQL4njKjAHRwhE8.eTrUWsW', 'Sales', 'Block', ''),
(19, 'Dimas Aldi Pratama', 'dimas', '$2y$10$JDpo9KPaHbejgi7keMZD2OwplwKSzDFiVeYjOrckGVcZ3Cs8OSX0O', 'Produksi', 'Unblock', 'fb01ae4408403f9c4307e5515a378071.jpg'),
(21, 'ROCHIM', 'ROCHIM', '$2y$10$lHNzY/OkHXWAr/YRMlFAI.brx.fTZNM6Ma7TBmeCsYU4ayiBIa.KK', 'Sales', 'Block', '396e7678b60de008f3d3'),
(22, 'Suwandi', 'wandi', '$2y$10$v5ZQ3UFgUYfxk.OG4hA.R.zlFChJQ.O7uyd2ZwETeMbkuvO3POoSu', 'Manager', 'Unblock', ''),
(23, 'Amalia', 'amalia', '$2y$10$N.ktt1C4HYer1WIkTEK3w.J1Xd5lQZhhkMvcu/AHCET0OaP/SsOgC', 'Sales', 'Block', ''),
(24, 'Septian', 'septian', '$2y$10$J1GdeQ5oFezYpdglCcCTQOs5OLV5/TWGMJc2jtrShAdWY0tyA9MhO', 'Sales', 'Unblock', ''),
(25, 'Mutia', 'Mutia', '$2y$10$FhTuQc/Vh.bW.6tvDLqnjuqeVQqPRq8MCHc7eGZo7sS3toNIZmi/C', 'Sales', 'Block', ''),
(27, 'Mila', 'Mila', '$2y$10$AhkJqkrskz7.ZwKzYbaTWe16mez4eTZUBq/xD3sRhHoFo5ZhFNKSm', 'Sales', 'Block', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `customer_has_order`
--
ALTER TABLE `customer_has_order`
  ADD PRIMARY KEY (`id_so`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `laporan_bahan`
--
ALTER TABLE `laporan_bahan`
  ADD PRIMARY KEY (`id_laporan_bahan`),
  ADD KEY `id_so` (`id_so`),
  ADD KEY `id_bahan` (`id_bahan`);

--
-- Indexes for table `laporan_has_status`
--
ALTER TABLE `laporan_has_status`
  ADD PRIMARY KEY (`id_laporan_has_status`),
  ADD KEY `id_so` (`id_so`),
  ADD KEY `pembuat` (`pembuat`),
  ADD KEY `penyetuju` (`penyetuju`);

--
-- Indexes for table `laporan_produksi`
--
ALTER TABLE `laporan_produksi`
  ADD PRIMARY KEY (`id_laporan_produksi`),
  ADD KEY `id_so` (`id_so`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `customer_has_order`
--
ALTER TABLE `customer_has_order`
  MODIFY `id_so` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `laporan_bahan`
--
ALTER TABLE `laporan_bahan`
  MODIFY `id_laporan_bahan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `laporan_has_status`
--
ALTER TABLE `laporan_has_status`
  MODIFY `id_laporan_has_status` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `laporan_produksi`
--
ALTER TABLE `laporan_produksi`
  MODIFY `id_laporan_produksi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_has_order`
--
ALTER TABLE `customer_has_order`
  ADD CONSTRAINT `customer_has_order_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_has_order_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporan_bahan`
--
ALTER TABLE `laporan_bahan`
  ADD CONSTRAINT `laporan_bahan_ibfk_1` FOREIGN KEY (`id_bahan`) REFERENCES `bahan` (`id_bahan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_bahan_ibfk_2` FOREIGN KEY (`id_so`) REFERENCES `customer_has_order` (`id_so`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `laporan_has_status`
--
ALTER TABLE `laporan_has_status`
  ADD CONSTRAINT `laporan_has_status_ibfk_1` FOREIGN KEY (`id_so`) REFERENCES `customer_has_order` (`id_so`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_has_status_ibfk_2` FOREIGN KEY (`pembuat`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_has_status_ibfk_3` FOREIGN KEY (`penyetuju`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `laporan_produksi`
--
ALTER TABLE `laporan_produksi`
  ADD CONSTRAINT `laporan_produksi_ibfk_1` FOREIGN KEY (`id_so`) REFERENCES `customer_has_order` (`id_so`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
