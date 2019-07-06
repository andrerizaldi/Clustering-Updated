-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 04:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clustering`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'Admin Dinkes');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(200) NOT NULL,
  `luas_wilayah` varchar(100) NOT NULL,
  `jumlah_penduduk` varchar(100) NOT NULL,
  `latitude_kecamatan` varchar(100) NOT NULL,
  `longtitude_kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `luas_wilayah`, `jumlah_penduduk`, `latitude_kecamatan`, `longtitude_kecamatan`) VALUES
(12, 'Ilir Barat I', '19,77 ', '133488', '-2.9898073876332236', '104.73421756213611'),
(13, 'Bukit Kecil', '9.92', '47354', '-2.9896594617935435', '104.75823554100043'),
(14, 'Kemuning', '9', '87555', '-2.9565947145242797', '104.74730285705573'),
(15, 'Ilir Timur II', '25,58', '165511', '-2.9738021559206773', '104.78256606242667'),
(16, 'Sukarami', '36,98', '153339', '-2.9202943125272833', '104.71640298424052');

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan`
--

CREATE TABLE `pelaporan` (
  `id_pelaporan` int(11) NOT NULL,
  `id_adminpuskes` int(11) NOT NULL,
  `nama_puskesmas` varchar(100) NOT NULL,
  `nama_korban` varchar(100) NOT NULL,
  `alamat_korban` varchar(200) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `umur` varchar(5) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `tgl_berkunjung` varchar(50) NOT NULL,
  `tgl_digigit` varchar(50) NOT NULL,
  `onset` varchar(200) NOT NULL,
  `gejala` varchar(100) NOT NULL,
  `lokasi_gigitan` varchar(50) NOT NULL,
  `kondisi_luka` varchar(50) NOT NULL,
  `hpr_penggigit` varchar(50) NOT NULL,
  `kondisi_hewan` varchar(50) NOT NULL,
  `spesimen_hewan` varchar(100) NOT NULL,
  `hasil` varchar(50) NOT NULL,
  `cuci_luka` varchar(50) NOT NULL,
  `var_1` varchar(50) NOT NULL,
  `var_2` varchar(50) NOT NULL,
  `var_3` varchar(50) NOT NULL,
  `tgl_meninggal` varchar(50) NOT NULL,
  `riwayat_kontak` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longtitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelaporan`
--

INSERT INTO `pelaporan` (`id_pelaporan`, `id_adminpuskes`, `nama_puskesmas`, `nama_korban`, `alamat_korban`, `pekerjaan`, `umur`, `gender`, `tgl_berkunjung`, `tgl_digigit`, `onset`, `gejala`, `lokasi_gigitan`, `kondisi_luka`, `hpr_penggigit`, `kondisi_hewan`, `spesimen_hewan`, `hasil`, `cuci_luka`, `var_1`, `var_2`, `var_3`, `tgl_meninggal`, `riwayat_kontak`, `keterangan`, `latitude`, `longtitude`) VALUES
(25, 7, 'Kampus', 'Tukiman', 'Lr.enggano', 'Pelajar', '11', 'Laki-Laki', '06/02/2019', '06/03/2019', 'a', 'Nyeri', 'dengkul', 'Lecet', 'Anjing', 'Lari', 'a', 'Negatif', '1', '1', '0', '0', '11/30/0', 'p', 'p', '-2.9811093444359313', '104.73807605935417'),
(26, 7, 'Kampus', 'sari', 'lr.jaya', 'IRT', '45', 'Perempuan', '07/15/2019', '06/01/2019', 'q', 'meriang', 'kaki', 'Lecet', 'Anjing', 'Lari', 'anjing', 'Negatif', '1', '1', '0', '0', '07/06/2019', '08222222222', 'xx', '-2.982566490597849', '104.7409513867633'),
(27, 7, 'Kampus', 'eka', 'Jl.sempurna', 'aa', '23', 'Perempuan', '06/05/2019', '11/28/2019', 'w', 'nyeri', 'dengkul', 'Lecet', 'Kucing', 'Lari', 'we', 'Negatif', '1', '1', '0', '1', '11/30/0', '0', '0', '-2.970909266010398', '104.7376039879482'),
(28, 9, 'Padang Selasa', 'Alif', 'kemang manis', 'a', '34', 'Laki-Laki', '07/07/2019', '06/03/2019', 'a', 'meriang', 'paha', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '1', '0', '0', '11/30/0', 'h', 'h', '-2.9874950595427676', '104.73288330073683'),
(29, 9, 'Padang Selasa', 'Jl.Sriyajaya Negara', 'abc', 'pelajar', '15', 'Perempuan', '07/12/2019', '06/12/2019', 'onset', 'nyeri', 'paha', 'Luka Lebar', 'Anjing', 'Lari', '1', 'Negatif', '1', '1', '0', '0', '11/30/0', '082389765473', 'ds', '-2.989123632266292', '104.73665985364914'),
(30, 9, 'Padang Selasa', 'ew2a', 'GF', 'Buruh', '35', 'Laki-Laki', '06/02/2019', '11/28/2019', 'test', 'we', 'dengkul', 'Lain-Lain', 'Kera', 'Lari', '1', 'Negatif', '1', '1', '0', '0', '06/22/2019', 'g', 'g', '-2.9888236276489253', '104.73185333378478'),
(31, 9, 'Padang Selasa', 'ica', 'pondok abiqu', 'karyawan', '24', 'Perempuan', '07/12/2019', '11/28/2019', 'q', 'asd', 'kaki', 'Luka Dalam', 'Kucing', 'Lari', 'a', 'Positif', '1', '1', '0', '0', '07/06/2019', '08234576857', '0', '-2.9885236268732105', '104.73451408447272'),
(32, 8, 'Pakjo', 'Ayu', 'Siring Agung', 'Pelajar', '14', 'Perempuan', '06/02/2019', '06/01/2019', 'q', 'pusing', 'tangan', 'Luka Lebar', 'Anjing', 'Lari', 'a', 'Negatif', '1', '1', '0', '0', '06/29/2019', '08234576857', 'a', '-2.970394975217401', '104.7203746841526'),
(33, 11, 'Merdeka', 'Sumina', 'Jalan Ki Gede Ing Suro', 'Pedagang', '31', 'Perempuan', '06/02/2019', '06/01/2019', 'q', 'nyeri', 'saa', 'Luka Dalam', 'Kucing', 'Lari', 'a', 'Negatif', '1', '1', '0', '0', '07/22/2019', '08222222222', 'hg', '-2.988909339618844', '104.75871833862311'),
(34, 11, 'Merdeka', 'Zainul', '21ilir', 'Swasta', '25', 'Laki-Laki', '06/02/2019', '06/12/2019', 'test', 'nyeri', 'paha', 'Luka Lebar', 'Anjing', 'Lari', 'we', 'Negatif', '1', '1', '0', '0', '07/06/2019', '08222222222', '0', '-2.989037910503929', '104.75841793121344'),
(35, 11, 'Merdeka', 'Fira', 'JL.Temon', 'Pelajar', '8', 'Perempuan', '06/02/2019', '06/12/2019', 'a', 'a', 'dengkul', 'Lecet', 'Kucing', 'Lari', 'anjing', 'Negatif', '1', '0', '0', '0', '11/30/0', 'j', 'j', '-2.989337909177208', '104.75974830688483'),
(36, 11, 'Merdeka', 'Riski', 'jl.Abdul', '-', '4', 'Laki-Laki', '06/05/2019', '06/12/2019', 'p', 'pusing', 'kaki', 'Luka Dalam', 'Anjing', 'Lari', 'k', 'Negatif', '1', '0', '0', '1', '06/29/2019', '08222222222', '0', '-2.9902379047048484', '104.75919040740973'),
(37, 11, 'Merdeka', 'Yani', 'Kedaung', 'Pelajar', '18', 'Perempuan', '07/21/2019', '07/07/2019', 'p', 'pusing', 'kaki', 'Luka Dalam', 'Kucing', 'Lari', 'p', 'Negatif', '1', '0', '1', '0', '06/22/2019', 'e', 'qe', '-2.988695054776897', '104.75824626983649'),
(38, 12, '23 Ilir', 'Angga', 'gubah', '-', '2', 'Laki-Laki', '06/05/2019', '06/12/2019', 'xx', 'pusing', 'dengkul', 'Lecet', 'Kucing', 'Lari', 'x', 'Negatif', '1', '1', '0', '0', '07/06/2019', '08234576857', '0', '-2.9877093439650473', '104.75670131744391'),
(39, 13, 'Basuki Rahmat', 'basuki', 'upnormal', 'abc', '56', 'Laki-Laki', '06/05/2019', '06/12/2019', 'xx', 'nyeri', 'paha', 'Lecet', 'Kucing', 'Lari', 'a', 'Negatif', '1', '1', '1', '0', '06/29/2019', '08234576857', 'xx', '-2.956508998082056', '104.74717411102301'),
(40, 13, 'Basuki Rahmat', 'rahmat', 'wardag', 'a', '12', 'Laki-Laki', '06/05/2019', '07/07/2019', 'a', 'a', 'a', 'Lecet', 'Kucing', 'Lari', 's', 'Positif', '1', '1', '0', '0', '06/22/2019', '08234576857', 'xx', '-2.9565518569579616', '104.74730285705573'),
(41, 14, 'Sekip', 'wiwik', 'soma', 'abc', '22', 'Perempuan', '06/05/2019', '07/07/2019', 'xx', 'x', 'x', 'Luka Dalam', 'Lain-Lain', 'Lari', '1', 'Negatif', '1', '1', '1', '0', '07/06/2019', '08234576857', 'xx', '-2.9749866865377674', '104.76706239479017'),
(42, 15, 'Boom Baru', 'nanang', 'bombaru', 'Pelajar', '10', 'Laki-Laki', '06/05/2019', '06/12/2019', 'xx', 'asd', 'x', 'Lecet', 'Kera', 'Lari', 'q', 'Negatif', '1', '1', '0', '0', '07/06/2019', '0', '0', '-2.9705235495730054', '104.75974830688483'),
(43, 17, 'Sabokingkong', 'sabok', 'sabokingking', '-', '3', 'Perempuan', '07/11/2019', '06/01/2019', 'u', 'u', 'x', 'Luka Lebar', 'Anjing', 'Lari', 'u', 'Positif', '1', '1', '0', '0', '07/06/2019', '08234576857', '0', '-2.9683378096504422', '104.76176532806403'),
(44, 17, 'Sabokingkong', 'dani', 'cgv', 'wiraswasta', '29', 'Laki-Laki', '06/05/2019', '06/12/2019', 'xx', 'x', 'x', 'Luka Dalam', 'Kucing', 'Lari', 'a', 'Negatif', '1', '1', '1', '0', '07/06/2019', 'a', 'a', '-2.976866467990816', '104.75798877777106'),
(45, 17, 'Sabokingkong', 'didit', 'veteran', '-', '8', 'Laki-Laki', '06/05/2019', '06/12/2019', 'i', 'i', 'i', 'Luka Lebar', 'Kucing', 'Lari', 'i', 'Positif', '1', '0', '0', '0', '07/06/2019', '0', '0', '-2.966206734254716', '104.7576883703614'),
(46, 18, '5 Ilir', 'lirili', 'awa', '-', '23', 'Laki-Laki', '06/05/2019', '06/12/2019', 'xx', 'xx', 'xx', 'Lecet', 'Kucing', 'Lari', 'x', 'Negatif', '1', '1', '0', '0', '07/06/2019', '0', '0', '-2.9715949930166237', '104.7661426925215'),
(47, 20, 'Sosial', 'lelah', 'hayati', 'a', '12', 'Laki-Laki', '08/01/2019', '07/07/2019', 'p', 'nyeri', 'x', 'Lecet', 'Anjing', 'Lari', 'xx', 'Negatif', '1', '1', '0', '0', '07/06/2019', '08234576857', 'meninggal dunia', '-2.9850950631782576', '104.75279602111823'),
(48, 20, 'Sosial', 'abc', 'q', 'q', '12', 'Laki-Laki', '07/31/2019', '06/12/2019', 'xx', 'x', 'x', 'Lecet', 'Kera', 'Lari', 'xx', 'Negatif', '1', '0', '1', '0', '07/06/2019', '08234576857', 'a', '-2.9871093456462186', '104.75919040740973'),
(49, 20, 'Sosial', 'aaa', 'abc', 'w', '9', 'Laki-Laki', '07/06/2019', '06/12/2019', 'xx', 'a', 'x', 'Lecet', 'Anjing', 'Lari', 'a', 'Negatif', '1', '1', '0', '0', '11/30/0', 't', 't', '-2.9839807776732443', '104.76159366668708'),
(50, 22, 'talang betutul', 'talang', 'a', 'a', '11', 'Perempuan', '06/05/2019', '06/12/2019', 'xx', 'asd', 'x', 'Lecet', 'Kera', 'Lari', 'we', 'Negatif', '1', '0', '1', '0', '07/06/2019', '08234576857', 'meninggal dunia', '-2.9618234049683885', '104.71966537536628'),
(51, 21, 'Sukarami', 'sk1', 'dfwe', '', '11', 'Perempuan', '11/12/2018', '06/12/2019', 'xx', 'asd', 'a', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '0', '0', '0', '07/23/2019', 'x', 'x', '-2.955377271397809', '104.7345999151612'),
(52, 21, 'Sukarami', 'sk1', 'dfwe', '', '11', 'Perempuan', '11/12/2018', '06/12/2019', 'xx', 'asd', 'a', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '0', '0', '0', '07/23/2019', 'x', 'x', '-2.955377271397809', '104.7345999151612'),
(53, 21, 'Sukarami', 'sk1', 'dfwe', '', '11', 'Perempuan', '11/12/2018', '06/12/2019', 'xx', 'asd', 'a', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '0', '0', '0', '07/23/2019', 'x', 'x', '-2.955377271397809', '104.7345999151612'),
(54, 21, 'Sukarami', 'sk1', 'dfwe', '', '11', 'Perempuan', '11/12/2018', '06/12/2019', 'xx', 'asd', 'a', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '0', '0', '0', '07/23/2019', 'x', 'x', '-2.955377271397809', '104.7345999151612'),
(55, 21, 'Sukarami', 'sk1', 'dfwe', '', '11', 'Perempuan', '11/12/2018', '06/12/2019', 'xx', 'asd', 'a', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '0', '0', '0', '07/23/2019', 'x', 'x', '-2.955377271397809', '104.7345999151612'),
(56, 21, 'Sukarami', 'sk1', 'dfwe', '', '11', 'Perempuan', '11/12/2018', '06/12/2019', 'xx', 'asd', 'a', 'Lecet', 'Kucing', 'Lari', '1', 'Negatif', '1', '0', '1', '0', '07/23/2019', 'x', 'x', '-2.955377271397809', '104.7345999151612');

-- --------------------------------------------------------

--
-- Table structure for table `puskesmas`
--

CREATE TABLE `puskesmas` (
  `id_puskesmas` int(11) NOT NULL,
  `nama_puskesmas` varchar(200) NOT NULL,
  `alamat_puskesmas` varchar(200) NOT NULL,
  `nama_kecamatan` varchar(200) NOT NULL,
  `latitude_puskesmas` varchar(100) NOT NULL,
  `longtitude_puskesmas` varchar(100) NOT NULL,
  `foto_puskesmas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `puskesmas`
--

INSERT INTO `puskesmas` (`id_puskesmas`, `nama_puskesmas`, `alamat_puskesmas`, `nama_kecamatan`, `latitude_puskesmas`, `longtitude_puskesmas`, `foto_puskesmas`) VALUES
(19, 'Padang Selasa', 'Jl. Padang Selasa, Bukit Lama, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30139', 'Ilir Barat I', '-2.9897236216366045', '104.73114071714645', '787424b908a215beb9bc1830b8113dbb.png'),
(20, 'Sei Baung', 'Jl. Pertiwi, RT.10, Demang Lebar Daun, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30121', 'Ilir Barat I', '-2.98245981447649', '104.72337692075007', '4ac5a6c128df73fdc9334c3ae5cc5874.png'),
(21, 'Merdeka', 'Jl. Merdeka No.66, Talang Semut, Kec. Bukit Kecil, Kota Palembang, Sumatera Selatan 30136', 'Bukit Kecil', '-2.990432005346063', '104.7525135708504', 'fc4071b8cf7649af22749b65537d0cc8.png'),
(22, 'Kampus', 'Blok G No, Jl. Golf No.5, Lorok Pakjo, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30126', 'Ilir Barat I', '-2.9754469703722983', '104.7395837623726', '2ed710a0c9fa68a6bdde607eea963ffd.png'),
(23, 'Pakjo', 'Jl. Inspektur Marzuki Lorong Bambu Kuning No.2240, Demang Lebar Daun, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30151', 'Ilir Barat I', '-2.962814992080971', '104.73125122566398', '1bdb1b7cf3b8230dc5872ef28d7ca70b.png'),
(24, '23 Ilir', 'Jl. Datuk Moh. Akib No.100, 23 Ilir, Kec. Bukit Kecil, Kota Palembang, Sumatera Selatan 30113', 'Bukit Kecil', '-2.9911509536067515', '104.75438388885505', '350641444851eb84c6b1b9edc39e24ac.png'),
(25, 'Basuki Rahmat', 'Jl. Sersan Sani No.1305, Talang Aman, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30961', 'Kemuning', '-2.956841145334997', '104.74803241790778', 'f1aefb7afb3c0d64bd59f3b854da92ce.png'),
(26, 'Sekip', 'Jl. Ampibi No.1977, 20 Ilir D II, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30127', 'Kemuning', '-2.9543183586506254', '104.74986916301259', '6b4dbcabc1b5593595a7a5b20ecc4c89.png'),
(27, 'Boom Baru', 'Jl. Slamet Riady No.1557, Lawang Kidul, Kec. Ilir Tim. II, Kota Palembang, Sumatera Selatan 30111', 'Ilir Timur II', '-2.9684770807183574', '104.7913340002442', 'b8c13512f359a9b4f569de732bd00b29.png'),
(28, 'Kenten', 'Jl. MP. Mangkunegara No.1, Bukit Sangkal, Kec. Kalidoni, Kota Palembang, Sumatera Selatan 30961', 'Ilir Timur II', '-2.946979193180386', '104.76884635986335', '6aa659bfab0bbb27a95678e0895687c6.png'),
(29, 'Sabokingkong', 'Jl. Makam Saboking-King, Sei Buah, Kec. Ilir Tim. II, Kota Palembang, Sumatera Selatan 30111', 'Ilir Timur II', '-2.9544453582368795', '104.78927406372077', '4a1a081c4623d9f02e9dfd9517364382.png'),
(30, '5 Ilir', 'Jalan Jendral Jl. Bambang Utoyo No.1095, 5 Ilir, Kec. Ilir Tim. II, Kota Palembang, Sumatera Selatan 30111', 'Ilir Timur II', '-2.9349939621326824', '104.77313789428717', '8663695d9682ee8171b63d02d4d78379.png'),
(31, '11 Ilir', 'Jl. Slamet Riady No.455, 11 Ilir, Kec. Ilir Tim. II, Kota Palembang, Sumatera Selatan 30112', 'Ilir Timur II', '-2.9657977685151917', '104.79058792479191', '51c307e01b90e83c319d467295e8e986.png'),
(32, 'Sosial', 'Lorong Mekar I, Suka Bangun, Kec. Sukarami, Kota Palembang, Sumatera Selatan 30961', 'Sukarami', '-2.929760966149527', '104.72430023254401', '831b5eeb3f37c6893f3297c263924781.png'),
(33, 'Sukarami', 'Jl. Kebun Bunga KM.9, Kebun Bunga, Kec. Sukarami, Kota Palembang, Sumatera Selatan 30152', 'Sukarami', '-2.9469702984091803', '104.73374771658837', '4de9e1ec7cc137e2bf1f00ae543c421b.png'),
(34, 'talang betutul', 'km 12', 'Sukarami', '-2.9113567247924625', '104.71376032492992', '506154e8f70304ad260379f8858c3519.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `role`) VALUES
(7, 'Pkm Kampus', 'kampus', 'kampus', 'Kampus'),
(8, 'pakjo', 'kintanpakjo', 'cantik', 'Pakjo'),
(9, 'PKM Padang selasa', 'padang_selasa', 'padang_selasa', 'Padang Selasa'),
(10, 'PKM SEI Baung', 'SEI_Baung', 'sei_baung', 'Sei Baung'),
(11, 'Merdeka', 'Merdeka', 'Merdeka', 'Merdeka'),
(12, 'pkm 23 ilir', '23ilir', '23ilir', '23 Ilir'),
(13, 'basuki_rahmat', 'basuki_rahmat', 'basuki_rahmat', 'Basuki Rahmat'),
(14, 'Sekip', 'Sekip', 'Sekip', 'Sekip'),
(15, 'Boom bARU', 'Bombaru', 'bombaru', 'Boom Baru'),
(16, 'Kenten', 'Kenten', 'Kenten', 'Kenten'),
(17, 'Sabokingking', 'sabokingking', 'sabokingking', 'Sabokingkong'),
(18, 'pkm 5ilir', '5ilir', '5ilir', '5 Ilir'),
(19, 'pkm 11ilir', '11ilir', '11ilir', '11 Ilir'),
(20, 'sosial', 'sosial', 'sosial', 'Sosial'),
(21, 'sukarame', 'sukarame', 'sukarame', 'Sukarami'),
(22, 'talang betutu', 'talangbetutu', 'talangbetutu', 'talang betutul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `pelaporan`
--
ALTER TABLE `pelaporan`
  ADD PRIMARY KEY (`id_pelaporan`);

--
-- Indexes for table `puskesmas`
--
ALTER TABLE `puskesmas`
  ADD PRIMARY KEY (`id_puskesmas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pelaporan`
--
ALTER TABLE `pelaporan`
  MODIFY `id_pelaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `puskesmas`
--
ALTER TABLE `puskesmas`
  MODIFY `id_puskesmas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
