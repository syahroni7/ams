-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2026 at 09:15 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_native`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'Seksi Bimas Islam', 'Permohonan Ijin Operasional', 'Biasa', '2026-03-30', 'Tindak Lanjut', 2737, 9),
(2, 'Seksi Pendidikan Madrasah', 'Pemenuhan Laporan Kinerja Kada dan Wakada Semester 2 Tahun 2025 ', 'Segera', '2026-03-13', 'Tindak Lanjut', 2733, 9),
(3, 'Unit Keuangan ', 'Program Progress Sensus BMN', 'Segera', '2026-03-12', 'Harap dihadiri', 2735, 9),
(4, 'Inmas Bapak Maman Sulaeman', 'Undangan Pengajian Akbar Ramadhan', 'Segera', '2026-03-13', 'Harap dihadiri', 2734, 9),
(5, 'Penyelenggara Zakat Wakaf', 'Permohonan Bantuan Bukber', 'Biasa', '2026-03-11', 'Untuk Perhatian', 2732, 9),
(6, 'Penyelenggara Zakat Wakaf', 'Permohonan Bantuan Santunan ', 'Biasa', '2026-03-11', 'Untuk Perhatian', 2731, 9),
(7, 'Penyelenggara Zakat Wakaf', 'Permohonan Tunjangan Hari Raya ', 'Biasa', '2026-03-11', 'Untuk Perhatian', 2730, 9),
(9, 'Penyelenggara Zakat Wakaf', 'Permohonan THR', 'Biasa', '2026-03-11', 'Untuk Perhatian', 2729, 9),
(10, 'Penyelenggara Zakat Wakaf', 'Permohona Bantuan THR ', 'Biasa', '2026-03-11', 'Untuk Perhatian', 2728, 9),
(11, 'Penyelenggara Zakat Wakaf', 'Permohonan THR', 'Biasa', '2026-03-10', 'Untuk Perhatian', 2727, 9),
(12, 'Penyelenggara Zakat Wakaf', 'Permohonan THR', 'Biasa', '2026-03-10', 'Untuk Perhatian', 2726, 9),
(13, 'Penyelenggara Zakat Wakaf', 'Permohonan THR', 'Biasa', '2026-03-09', 'Untuk Perhatian', 2725, 9),
(14, 'Penyelenggara Zakat Wakaf', 'Permohonan THR', 'Biasa', '2026-03-09', 'Untuk Perhatian', 2724, 9),
(15, 'Penyelenggara Zakat Wakaf', 'Permohonan THR', 'Biasa', '2026-03-09', 'Untuk Perhatian', 2722, 9),
(16, 'Bapak Kepala Kantor Kementerian Agama Kabupaten Lebak yang menghadiri', 'Undangan Acara Halal Bi Halal IGRA', 'Biasa', '2026-04-04', 'DIHADIRI', 2740, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'KEMENTERIAN AGAMA REPUBLIK INDONESIA', 'KANTOR KEMENTERIAN AGAMA KABUPATEN LEBAK', 'Jl. Siliwangi No. 2 Rangkasbitung Telp/fax. 0252 201319', 'Jl. Siliwangi No. 2 Rangkasbitung', 'H. Badrusalam, S.Ag', '196801031985011005', 'https://kemenag.go.id', 'ptspkemenaglebak@gmail.com', 'logo.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`, `id_user`) VALUES
(1, 'KU.00.1', 'Keuangan Anggaran Rutin', 'Keuangan Anggaran Rutin', 1),
(2, 'KS.00', 'Kesekretariatan Kerumahtanggan Pinjam fasilitas Konsumsi Keamanan Pakaian Dinas Papan nama', 'Kesekretariatan Kerumahtanggan Pinjam fasilitas Konsumsi Keamanan Pakaian Dinas Papan nama', 1),
(3, 'HJ.00', 'Calon Haji', 'Calon Haji', 1),
(4, 'HJ.01', 'Bimbingan Haji', 'Bimbingan ', 1),
(5, 'HJ.02', 'Petugas Haji', 'Petugas Haji', 1),
(6, 'OT.00', 'Organisasi', 'Organisasi', 1),
(7, 'OT.01.1', 'Tata Laksana Perencanaan', 'Tata Laksana Perencanaan', 1),
(8, 'OT.01.2', 'Tata Laksana Laporan', 'Tata Laksana Laporan', 1),
(9, 'OT.01.3', 'Tata Laksana Penyusunan Prosedur Kerja', 'Tata Laksana Penyusunan Prosedur Kerja', 1),
(10, 'OT.01.4', 'Tata Laksana Penyusunan Pembakuan Sarana Kerja', 'Tata Laksana Penyusunan Pembakuan Sarana Kerja', 1),
(11, 'HM.00', 'Kehumasan Penerangan', 'Kehumasan Penerangan', 1),
(12, 'HM.01', 'Kehumasan Hubungan', 'Kehumasan Hubungan', 1),
(13, 'HM.02.1', 'Kehumasan Dokumentasi', 'Kehumasan Dokumentasi', 1),
(14, 'HM.02.2', 'Kehumasan Kepustakaan ', 'Kehumasan Kepustakaan ', 1),
(15, 'HM.03', 'Keprotokolan', 'Keprotokolan', 1),
(16, 'KP.00.1', 'Kepegawaian Pengadaan Formasi', 'Kepegawaian Pengadaan Formasi', 1),
(17, 'KP.00.2', 'Kepegawaian Pengadaan Penerimaan', 'Kepegawaian Pengadaan Penerimaan', 1),
(18, 'KP.00.3', 'Kepegawaian Pengangkatan', 'Kepegawaian Pengangkatan', 1),
(19, 'KP.01.1', 'Kepegawaian Tata Usaha Kepegawaian Izin', 'Kepegawaian Tata Usaha Kepegawaian Izin', 1),
(20, 'KP.01.2', 'Kepegawaian Tata Usaha Kepegawaian Keterangan', 'Kepegawaian Tata Usaha Kepegawaian Keterangan', 1),
(21, 'KP.02.1', 'Kepegawaian Pendidikan Latihan Diklat Prajabatan', 'Kepegawaian Pendidikan Latihan Diklat Prajabatan', 1),
(22, 'KP.02.2', 'Kepegawaian Pendidikan Latihan Diklat dalam jabatan', 'Kepegawaian Pendidikan Latihan Diklat dalam jabatan', 1),
(23, 'KP.02.3', 'Kepegawaian Pendidikan Latihan  atau Kursus Penataran', 'Kepegawaian Pendidikan Latihan  atau Kursus Penataran', 1),
(24, 'KP.03', 'KepegawaianKORPRI', 'KepegawaianKORPRI', 1),
(25, 'KP.04.1', 'Kepegawaian Penilaian dan Hukuman Penilaian', 'Kepegawaian Penilaian dan Hukuman Penilaian', 1),
(26, 'KP.04.2', 'Kepegawaian Penilaian dan Hukuman  Hukuman', 'Kepegawaian Penilaian dan Hukuman Penilaian', 1),
(27, 'KP.05', 'Kepegawaian Screening', 'Kepegawaian Screening', 1),
(28, 'KP.06', 'Kepegawaian Pembinaan Mental', 'Kepegawaian Pembinaan Mental', 1),
(29, 'KP.07.1', 'Kepegawaian Mutasi Kepangkatan', 'Kepegawaian Mutasi Kepangkatan', 1),
(30, 'KP.07.2', 'Kepangkatan Kenaikan Berkala', 'Kepangkatan Kenaikan Berkala', 1),
(31, 'KP.07.3', 'Kepegawaian Mutasi Penyesuaian Masa Kerja', 'Kepegawaian Mutasi Penyesuaian Masa Kerja', 1),
(32, 'KP.07.4', 'Kepegawaian Mutasi Penyesuaian Tunjangan Keluarga', 'Kepegawaian Mutasi Penyesuaian Tunjangan Keluarga', 1),
(33, 'KP.07.5', 'Kepegawaian Mutasi Alih Tugas', 'Kepegawaian Mutasi Alih Tugas', 1),
(34, 'KP.07.6', 'Kepegawaian Mutasi Jabatan Struktural atau Fungsional', 'Kepegawaian Mutasi Jabatan Struktural atau Fungsional', 1),
(35, 'KP.08.1', 'Kepegawaian Kesejahteraan Kesehatan', 'Kepegawaian Kesejahteraan Kesehatan', 1),
(36, 'KP.08.2', 'Kepegawaian Kesejahteraan Cuti', 'Kepegawaian Kesejahteraan Cuti', 1),
(37, 'KP.08.3', 'Kepegawaian Kesejahteraan Rekreasi', 'Kepegawaian Kesejahteraan Rekreasi', 1),
(38, 'KP.08.4', 'Kepegawaian Kesejahteraan Bantuan Sosial', 'Kepegawaian Kesejahteraan Bantuan Sosial', 1),
(39, 'KP.08.5', 'Kepegawaian Kesejahteraan Koperasi', 'Kepegawaian Kesejahteraan Koperasi', 1),
(40, 'KP.08.6', 'Kepegawaian Kesejahteraan Perumahan', 'Kepegawaian Kesejahteraan Perumahan', 1),
(41, 'KP.08.7', 'Kepegawaian Kesejahteraan Antar Jemput', 'Kepegawaian Kesejahteraan Antar Jemput', 1),
(42, 'KP.08.8', 'Kepegawaian Kesejahteraan Penghargaan', 'Kepegawaian Kesejahteraan Penghargaan', 1),
(43, 'KP.09', 'Kepegawaian Pemutusan Hubungan Kerja', 'Kepegawaian Pemutusan Hubungan Kerja', 1),
(44, 'KU.00.2', 'Keuangan Pembangunan', 'Keuangan Pembangunan', 1),
(45, 'KU.00.3', 'Keuangan Non Budgeter', 'Keuangan Non Budgeter', 1),
(46, 'KU.01.1', 'Keuangan SPP Bebean Tetap dan Sementara Rutin', 'Keuangan SPP Bebean Tetap dan Sementara Rutin', 1),
(47, 'Ku.01.2', 'Keuangan SPP Beban tetap dan Sementara Pembangunan', 'Keuangan SPP Beban tetap dan Sementara Pembangunan', 1),
(48, 'KU.02.1', 'Keuangan SPJ Rutin ', 'Keuangan SPJ Rutin ', 1),
(49, 'KU.02.2', 'Keuangan SPJ Pembangunan', 'Keuangan SPJ Pembangunan', 1),
(50, 'KU.02.3', 'Keuangan SPJ Non Budgetter', 'Keuangan SPJ Non Budgetter', 1),
(51, 'KU.03.1', 'Keuangan Pajak', 'Keuangan Pajak', 1),
(52, 'KU.03.2', 'Keuangan Bukan Pajak', 'Keuangan Bukan Pajak', 1),
(53, 'KU.04.1', 'Perbankan Valuta asing atau transfer', 'Perbankan Valuta asing atau transfer', 1),
(54, 'KU.04.2', 'Keuangan Perbankan Saldo rekening', 'Keuangan Perbankan Saldo rekening', 1),
(55, 'KU.05', 'Keuangan Sumbangan atau bantuan', 'Keuangan Sumbangan atau bantuan', 1),
(56, 'KS.01.1', 'Kesekretariatan Perlengkapan Gedung Kantor Asrama Sekolah', 'Umum', 1),
(57, 'KS.01.2', 'Kesekretariatan Perlengkapan Alat kantor ATK Formulir Faktur', 'Kesekretariatan Perlengkapan Alat kantor ATK Formulir Faktur', 1),
(58, 'KS.01.3', 'Kesekretariatan Perlengkapan Mesin kantor Alat elektronik', 'Kesekretariatan Perlengkapan Mesin kantor Alat elektronik', 1),
(59, 'KS.01.4', 'Kesekretariatan Perlengkapan Perabot kantor', 'Kesekretariatan Perlengkapan Perabot kantor', 1),
(60, 'KS.01.5', 'Kesekretariatan Perlengkapan Kendaraan', 'Kesekretariatan Perlengkapan Kendaraan', 1),
(61, 'KS.01.6', 'Kesekretariatan Perlengkapan Inventaris perlengkapan', 'Kesekretariatan Perlengkapan Inventaris perlengkapan', 1),
(62, 'KS.01.7', 'Kesekretariatan Perlengkapan Penawaran umum', 'Kesekretariatan Perlengkapan Penawaran umum', 1),
(63, 'KS.02', 'Kesekretariatan Ketatausahaan Korespondensi dan kearsipan Surat Cap dinas', 'Kesekretariatan Ketatausahaan Korespondensi dan kearsipan Surat Cap dinas', 1),
(64, 'HK.00.1', 'Hukum Peraturan Undang undang termasuk PERPU', 'Hukum Peraturan Undang undang termasuk PERPU', 1),
(65, 'HK.00.2', 'Hukum Peraturan Pemerintah', 'Hukum Peraturan Pemerintah', 1),
(66, 'HK.00.3', 'Hukum Keputusan presiden Instruksi presiden', 'Hukum Keputusan presiden Instruksi presiden', 1),
(67, 'HK.00.4', 'Hukum Peraturan Menteri Instruksi Menteri', 'Hukum Peraturan Menteri Instruksi Menteri', 1),
(68, 'HK.00.5', 'Hukum Keputusan Menteri Pimpinan unit eselon I II', 'Hukum Keputusan Menteri Pimpinan unit eselon I II', 1),
(69, 'HK.00.6', 'Hukum SKB Menteri Menteri Pimpinan unit eselon I II', 'Hukum SKB Menteri Menteri Pimpinan unit eselon I II', 1),
(70, 'HK.00.7', 'Hukum Edaran Menteri Pimpinan unit eselon I II', 'Hukum Edaran Menteri Pimpinan unit eselon I II', 1),
(71, 'HK.00.8', 'Hukum Peraturan Kanwil Kemenag', 'Hukum Peraturan Kanwil Kemenag', 1),
(72, 'HK.00.9', 'Hukum Peraturan PEMDA', 'Hukum Peraturan PEMDA', 1),
(73, 'HK.01.1', 'Hukum Pidana Pencurian', 'Hukum Pidana Pencurian', 1),
(74, 'HK.01.2', 'Hukum Perdata Perikatan', 'Hukum Perdata Perikatan', 1),
(75, 'HK.03.1', 'Hukum Agama Fatwa', 'Hukum Agama Fatwa', 1),
(76, 'HK.03.2', 'Hukum Agama Rukyat atau Hisab', 'Hukum Agama Rukyat atau Hisab', 1),
(77, 'HK.03.3', 'Hukum Agama Hari besar Islam', 'Hukum Agama Hari besar Islam', 1),
(78, 'HK.04.1', 'Hukum Bantuan Hukum Kasus Hukum Pidana', 'Hukum Bantuan Hukum Kasus Hukum Pidana', 1),
(79, 'HK.04.2', 'Hukum Bantuan Hukum Kasus Hukum Perdata', 'Hukum Bantuan Hukum Kasus Hukum Perdata', 1),
(80, 'HK.04.3', 'Hukum Bantuan Hukum Penelaahana Hukum', 'Hukum Bantuan Hukum Penelaahana Hukum', 1),
(81, 'PW.00', 'Perkawinan Penyuluhan', 'Perkawinan Penyuluhan', 1),
(82, 'PW.01', 'Perkawinan ', 'Perkawinan ', 1),
(83, 'PW.02', 'Perkawinan Campuran antar agama dan bangsa', 'Perkawinan Campuran antar agama dan bangsa', 1),
(84, 'HJ.03', 'Ongkos naik haji', 'Ongkos naik haji', 1),
(85, 'HJ.04', 'Jamaah Calon Haji', 'Jamaah Calon Haji', 1),
(86, 'HJ.05', 'Angkutan Haji', 'Angkutan Haji', 1),
(87, 'HJ.06', 'Pengasramaan Haji', 'Pengasramaan Haji', 1),
(88, 'HJ.07', 'Pembekalan Haji', 'Pembekalan Haji', 1),
(89, 'HJ.08', 'Dispensasi atau Rekomendasi haji', 'Dispensasi atau Rekomendasi haji', 1),
(90, 'HJ.09', 'Umroh', 'Umroh', 1),
(91, 'BA.00', 'Pembinaan agama Penyuluhan', 'Pembinaan agama Penyuluhan', 1),
(92, 'BA.01.1', 'Pembinaan agama Bimbingan Lembaga keagamaan', 'Pembinaan agama Bimbingan Lembaga keagamaan', 1),
(93, 'BA.01.2', 'Pembinaan agama Bimbingan Aliran kerohanian atau keagamaan', 'Pembinaan agama Bimbingan Aliran kerohanian atau keagamaan', 1),
(94, 'BA.02', 'Pembinaan agama Kerukunan hidup beragama', 'Pembinaan agama Kerukunan hidup beragama', 1),
(95, 'BA.03.1', 'Pembinaan agama Ibadah', 'Pembinaan agama Ibadah', 1),
(96, 'BA.03.2', 'Pembinaan agama Ibadah sosial', 'Pembinaan agama Ibadah sosial', 1),
(97, 'BA.04', 'Pembinaan agama Pengembangan keagamaan', 'Pembinaan agama Pengembangan keagamaan', 1),
(98, 'BA.05', 'Pengembangan agama Rohaniawan', 'Pengembangan agama Rohaniawan', 1),
(99, 'PS.00', 'Pengawasan Administrasi Umum', 'Pengawasan Administrasi Umum', 1),
(100, 'PS.01', 'Pengawasan Tugas Umum', 'Pengawasan Tugas Umum', 1),
(101, 'PS.02.1', 'Pengawasan Proyek pembangunan Fisik', 'Pengawasan Proyek pembangunan Fisik', 1),
(102, 'PS.02.2', 'Pengawasan Proyek pembangunan Non fisik', 'Pengawasan Proyek pembangunan Non fisik', 1),
(103, 'PA.00.1 ', 'Pendidikan dan pengajaran Kurikulum Sekolah umum tingkat TK dan SD', 'Pendidikan dan pengajaran Kurikulum Sekolah umum tingkat TK dan SD', 1),
(104, 'PP.00.2', 'Pendidikan dan pengajaran Kurikulum Sekolah umum tingkat SMPT', 'Pendidikan dan pengajaran Kurikulum Sekolah umum tingkat SMPT', 1),
(105, 'PP.00.3', 'Pendidikan dan pengajaran Sekolah umum Kurikulum tingkat SMTA', 'Pendidikan dan pengajaran Sekolah umum Kurikulum tingkat SMTA', 1),
(106, 'PP.00.4', 'Pendidikan dan pengajaran Perguruan agama tingkat RA dan ibtidaiyah', 'Pendidikan dan pengajaran Perguruan agama tingkat RA dan ibtidaiyah', 1),
(107, 'PP.00.5', 'Pendidikan dan pengajaran Kurikulum Perguruan agama tingkat tsanawiyah', 'Pendidikan dan pengajaran Kurikulum Perguruan agama tingkat tsanawiyah', 1),
(108, 'PP.00.6', 'Pendidikan dan pengajaran Kurikulum Perguruan agama tingkat aliyah', 'Pendidikan dan pengajaran Kurikulum Perguruan agama tingkat aliyah', 1),
(109, 'PP.00.7', 'Pendidikan dan pengajaran Kurikulum Pondok pesantren', 'Pendidikan dan pengajaran Kurikulum Pondok pesantren', 1),
(110, 'PP.00.8', 'Pendidikan dan pengajaran Kurikulum diniyah', 'Pendidikan dan pengajaran Kurikulum diniyah', 1),
(111, 'PP.00.9', 'Pendidikan dan pengajaran Kurikulum Perguruan tinggi agama', 'Pendidikan dan pengajaran Kurikulum Perguruan tinggi agama', 1),
(112, 'PP.00.10', 'Pendidikan dan pengajaran Kurikulum Perguruan tinggi umum', 'Pendidikan dan pengajaran Kurikulum Perguruan tinggi umum', 1),
(113, 'PP.00.11', 'Pendidikan dan pengajaran Kurikulum Pengembangan sarjana pendidikan', 'Pendidikan dan pengajaran Kurikulum Pengembangan sarjana pendidikan', 1),
(114, 'PP.01.1', 'Pendidikan dan pengajaran Evaluasi dan ijazah Perguruan agama', 'Pendidikan dan pengajaran Evaluasi dan ijazah Perguruan agama', 1),
(115, 'PP.01.2', 'Pendidikan dan pengajaran Evaluasi dan ijazah Perguruan umum', 'Pendidikan dan pengajaran Evaluasi dan ijazah Perguruan umum', 1),
(116, 'PP.02.1', 'Pendididkan dan pengajaran Kepemilikan', 'Pendididkan dan pengajaran Kepemilikan', 1),
(117, 'PP.02.2', 'Pendidikan dan pengajaran Pengawasan', 'Pendidikan dan pengajaran Pengawasan', 1),
(118, 'PP.02.3', 'Pendidikan dan pengajaran Pembinaan', 'Pendidikan dan pengajaran Pembinaan', 1),
(119, 'PP.03.1', 'Pendidikan dan pengajaran Kelembagaan Organisasi ekstrakulikuler', 'Pendidikan dan pengajaran Kelembagaan Organisasi ekstrakulikuler', 1),
(120, 'PP.03.2', 'Pendidikan dan pengajaran Kelembagaan Pengembangan Filial Kelas jauh Penyesuaian status swasta negeri', 'Pendidikan dan pengajaran Kelembagaan Pengembangan Filial Kelas jauh Penyesuaian status swasta negeri', 1),
(121, 'PP.04', 'Pendidikan dan pengajaran Beasiswa', 'Pendidikan dan pengajaran Beasiswa', 1),
(122, 'PP.05', 'Pendidikan dan pengajaran Sumbangan uang sekolah, uang ujian', 'Pendidikan dan pengajaran Sumbangan uang sekolah, uang ujian', 1),
(123, 'PP.06', 'Pendididkan dan pengajaran Pengabdian KKN', 'Pendididkan dan pengajaran Pengabdian KKN', 1),
(124, 'PP.07', 'Pendidikan dan pengajaran Perizinan Izin belajar', 'Pendidikan dan pengajaran Perizinan Izin belajar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 100, 10, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(8601, 1, 'Kantor Pelayanan Perbendahraan Negara KPPN', 'B-1830/KK.28.02.1/KU.00/1/2026', 'Laporan Saldo Rekening Bulan Desember 2025', 'KU.00.1', '2026-01-05', '2026-01-05', '9464-B-0001.pdf', 'Keuangan', 9),
(8602, 2, 'Kepala KPPN Rangkasbitung', 'B-002/Kk.28.02.01/KU.00.1/0I/2026', 'Laporan Saldo Rekening Bulan Desember 2025', 'KU.00.1', '2026-01-05', '2026-01-05', '', 'Keuangan', 9),
(8603, 3, 'Dr.H.Amrullah.M.Si', 'B-0003/Kk.28.02.02/PP.01.1/01/2026', 'Surat Undangan Seminar Terbuka dan Pengukuhan PD.PGM Indonesia Wilayah Lebak', 'PP.01.1', '2026-01-06', '2026-01-06', '', 'Penmad', 9),
(8604, 4, 'MDT Ula Nurul Fatah Kec.Cilograng', 'B-0004 Tahun 2026', 'Piagam dan SK ijin operasional Diniyah', 'PP.008', '2026-01-06', '2026-01-06', '', 'Pontren', 9),
(8605, 5, 'MDT Ula Husnatu Sarbain Kec.Cikulur', 'B-0005 Tahun 2026', 'Piagam dan SK ijin operasional Diniyah', 'PP.008', '2026-01-06', '2026-01-06', '', 'Pontren', 9),
(8606, 6, 'MDT Ula Nurul Bina Kec.Curugbitung', 'B-0006 Tahun 2026', 'SK dan Piagam ijin operasional Diniyah', 'PP.008', '2026-01-06', '2026-01-06', '', 'Pontren', 9),
(8607, 7, 'MDT Ula Mathlaul Anwar Kec. Bayah', 'B-0007 Tahun 2026', 'Piagam dan SK ijin operasional Diniyah', 'PP.008', '2026-01-06', '2026-01-06', '', 'Pontren', 9),
(8608, 8, 'MDT Ula Nurul Hidayah Kec.Cikulur', 'B-0008 Tahun 2026', 'Piagam dan SK ijin operasional Diniyah', 'PP.008', '2026-01-06', '2026-01-06', '', 'Pontren', 9),
(8609, 9, 'MDT Ula Mabdaul Ulum Kec.Cikulur', 'B-0009 Tahun 2026', 'Piagam dan SK ijin operasional Diniyah', 'PP.008', '2026-01-06', '2026-01-06', '', 'Pontren', 9),
(8610, 10, 'Surat tugas a.n Ian Sevtiany', 'B-0010/Kk.28.02.02/KU.00.1/01/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten ke MIN 2 Lebak', 'KU.00.1', '2026-01-06', '2026-01-06', '', 'Keuangan', 9),
(8611, 11, 'An. Nofialdi', 'B-0011/Kk.28.02.02/KU.00.1/01/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten di kemenag lebak', 'KU.00', '2026-01-06', '2026-01-06', '', 'Keuangan', 9),
(8612, 12, 'A.n Ian Sevtiany', 'B-0012/Kk.28.02.01/KU.00/01/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten KUA Kec.Cihara', 'KU.00', '2026-01-06', '2026-01-06', '', 'Keuangan', 9),
(8613, 13, 'A.n Ian Sevtiany', 'B-1235/Kk.28.02.01/KU.00/10/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten KUA Kec.Leuwidamar', 'KU.00', '2026-01-06', '2026-01-06', '', 'Keuangan', 9),
(8614, 14, 'A.n Romli', 'B-0014/Kk.28.02.01/KU.00/01/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten di kemenag lebak\r\n', 'KU.00', '2026-01-06', '2026-01-06', '', 'Keuangan', 9),
(8615, 15, 'A.n H.Bisri', 'B-0015/Kk.28.02.01/KU.00/01/2026', 'Surat Perintah Pengesahan Pendapatan Hibah Langsung Bentuk Barang/Jasa/Surat Berharga', 'KS.01', '2026-01-06', '2026-01-06', '', 'Keuangan', 9),
(8616, 16, 'Mushola Nurul Fadilah Kec.Cipanas', 'B-016 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-07', '2026-01-07', '815-B-0016.pdf', 'Bimas Islam', 9),
(8617, 17, 'A.n Nofialdi', 'B-0017/Kk.28.02.1/KU.00/01/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi KUA Cijaku dan KUA Wanasalam', 'KU.00', '2026-01-07', '2026-01-07', '903-B-0017.pdf', 'Keuangan', 9),
(8618, 18, 'A.n Nofialdi', 'B-0018/Kk.28.02.01/KU.00/01/2026', 'Survey Kajian Kerentanan Aset Publik di Wilayah Provinsi KUA Bojongmanik, Leuwidamar,Cirinten,Cikulur\r\n', 'KU.00', '2026-01-07', '2026-01-07', '', 'Keuangan', 9),
(8619, 19, 'Ditjen Bimbingan Masyarakat Islam', 'kk.28.02.01/KS.01/01/2026', 'Surat Pernyataan Telah Menerima Hibah Langsung (SPTMHL)', 'KK.28.02.06', '2026-01-07', '2026-01-07', '', 'Bimas Islam', 9),
(8620, 20, 'Surat Tugas M Romli ', 'B-0020/KK.28.02.01/KS.00.01/01/2026', 'Survei Kajian Kerentanan Aset Publik diwilayah Propinsi Banten  ', 'KK.28.02.02', '2026-01-07', '2026-01-07', '', 'Keuangan', 9),
(8621, 21, 'Kantor Wilayah Kementerian Agama Prov. Banten', 'P-0021/Kk 28.02.01/KP.07.5/01/2026', 'Usul Pemberhentian Sementara A.n Syaepudin', 'KP.07.5', '2026-01-07', '2026-01-07', '6544-B-0021.pdf', 'Kepegawaian', 9),
(8622, 22, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0022/Kk.28.02.01/KP.07.1/01/2026', 'Usul Alih Fungsi Jabatan Dosen a.n Dr.Drs.Iwan Falahudin,S.Pd,M.Pd', 'KP.07.1', '2026-01-07', '2026-01-07', '139-B-0022.pdf', 'Kepegawaian', 9),
(8623, 23, 'Dr.Drs.Iwan Falahudin,S.Pd,M.Pd', 'B-0023/Kk.28.02.01/KP.07.6/01/2026', 'Surat Pernyataan Tidak Sedang Menjalani Tugas Belajar atau Ikatan Dinas', 'KP.07.6', '2026-01-07', '2026-01-07', '3469-B-0023.pdf', 'Kepegawaian', 9),
(8624, 24, 'Dr,Drs.Iwan Falahudin,S.Pd,M.Pd', 'B-0024/Kk.28.02.1/Kp.07.6/01/2026', 'Surat Pernyataan Tidak Sedang Menjalani Proses Pidana atau Pernah dipidana penjara berdasarkan putusan pengadilan yang telah berkekuatan hukum tetap', 'KP.07.6', '2026-01-07', '2026-01-07', '7581-B-0024.pdf', 'Kepegawaian', 9),
(8625, 25, 'Dr.Drs.Iwan Falahudin,S.Pd,M.Pd', 'B-0025/Kk.28.02.01/Kp.07.6/01/2026', 'Surat Pernyataan Tidak Sedang Menjalani Proses Hukuman Disiplin dan/atau proses peradilan', 'Kp.07.6', '2026-01-07', '2026-01-07', '8947-B-0025.pdf', 'Kepegawaian', 9),
(8626, 26, 'Dr.Drs.Iwan Falahudin,S.Pd,M.Pd', 'B-0026/Kk.28.02.01/Kp.07.6/01/2026', 'Surat Pernyataan Tanggung Jawab Mutlak', 'Kp.07.6', '2026-01-07', '2026-01-07', '4878-B-0026.pdf', 'Kepegawaian', 9),
(8627, 27, 'Dr.Drs.Iwan Falahudin,S.Pd,M.Pd', 'B-0027/Kk.28.02.01/Kp.07.6/01/2026', 'Surat Pernyataan Persetujuan', 'Kp.07.6', '2026-01-07', '2026-01-07', '7919-B-0027.pdf', 'Kepegawaian', 9),
(8628, 28, 'Kepala  Kantor Kemenhaj Kab.lebak', 'B-0028/Kk.28.02.01/Kp.01.1/0I/2026', 'Surat Undangan Seminar Terbuka dan Pengukuhan PD.PGM Indonesia Wilayah Lebak', 'Kp.01.1', '2026-01-08', '2026-01-08', '1206-B-0028.pdf', 'Penma', 9),
(8629, 29, 'Kasubag TU,Kasi Bimas, Kasi Pais, Kasi PD Pontren,Penyelenggara Zakat Wakaf', 'B-0029/Kk.28.02.01/Kp.01.1/01/2026', 'Permohonan Moderator', 'Kp.01.1', '2026-01-08', '2026-01-08', '434-B-0029.pdf', 'Penma', 9),
(8630, 30, 'Rektor Universitas La Tansa Mashiro', 'B-0030/Kk.28.02.01/Kp.01.1/01/2026', 'Permohonan Narasumber', 'Kp.01.1', '2026-01-08', '2026-01-08', '4011-B-0030.pdf', 'Penma', 9),
(8631, 31, 'Kepala KPPN Rangkasbitung', 'B-0031/Kk.28.02.01/KU.00.1/01/2026', 'Laporan Saldo Rekening Bulan Desember 2025', 'KU.00.1', '2026-01-08', '2026-01-08', '5978-B-0031.pdf', 'Keuangan', 9),
(8632, 32, 'A.n Mokhamad Romli', 'B-032/Kk.28.02.01/Ks.00.01/01/2026', 'Surat Tugas Survei Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten ke KUA Rangkasbitung', 'KS.00.01', '2026-01-08', '2026-01-08', '2529-B-0032.pdf', 'Keuangan', 9),
(8633, 33, 'A.n Mokhamad Romli', 'B-0033/Kk.28.02.01/KS.00.01/01/2026', 'Surat Tugas Servei Kajian Keretanan Aset Publik di Wilayah Provinsi di gedung kankemenag', 'KS.00.01', '2026-01-08', '2026-01-08', '2256-B-0033.pdf', 'Keuangan', 9),
(8634, 34, 'A.n Ian Sevtiany', 'B-0034/Kk.28.02.01/KS.00.01/01/2026', 'Surat tugas survey kajian kerentanan aset publik di wilayah propinsi banten ke kua cipanas', 'KS.00.01', '2026-01-08', '2026-01-08', '', 'Keuangan', 9),
(8635, 35, 'A.n Ian Sevtiany', 'B-0035/Kk.28.02.01/Ks.00.01/01/2026', 'Surat Tugas Survei Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten Ke KUA lebak Gedong', 'KS.00.01', '2026-01-08', '2026-01-08', '', 'Keuangan', 9),
(8636, 36, 'A.n Ian Sevtiany', 'B-0036/Kk.28.02.01/Ks.00.01/01/2026', 'Surat Tugas Survei Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten Ke KUA Kec.Sajira\r\n', 'KS.01.1', '2026-01-09', '2026-01-09', '', 'Keuangan', 9),
(8637, 37, 'A.n Ian Sevtiany', 'B-0037/Kk.28.02.01/Ks.00.01/01/2026', 'Surat Tugas Survei Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten Ke KUA Kec.Curugbitung\r\n', 'KS.01.1', '2026-01-09', '2026-01-09', '', 'Keuangan', 9),
(8638, 38, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', '0038 TAHUN 2026', 'SK Kepala Kantor Pembentukan TIM Pengendalian Pengawasan BMN (Sekjen)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8639, 39, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', '0039 TAHUN 2026', 'SK Kepala Kantor Pembentukan TIM Pengendalian Pengawasan BMN (PHU)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8640, 40, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', '0040 TAHUN 2026', 'SK Kepala Kantor Pembentukan TIM Pengendalian Pengawasan BMN (Bimas)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8641, 41, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', '0041 TAHUN 2026', 'SK Kepala Kantor Pembentukan TIM Pengendalian Pengawasan BMN (Pendis)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8642, 42, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B- 0042/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (Sekjen Semester II) ', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8643, 43, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0043/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (sekjen tahunan)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8644, 44, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0044/Kk.28.02.01/KS.01.3/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (PHU Semester II)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8645, 45, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0045/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (PHU Tahunan)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8646, 46, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0046/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (Bimas Semester II)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8647, 47, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0047/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (Bimas Tahunan)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8648, 48, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0048/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (Pendis Semester II)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8649, 49, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0049/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan Pengendalian BMN (Pendis Tahunan)', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8650, 50, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0050/Kk.28.02.01/KS.01.1/01/2026', 'Berita Acara Laporan Pengawasan BMN', 'KS.01.1', '2026-01-12', '2026-01-12', '', 'Keuangan', 9),
(8651, 51, 'SMK Negri 1 Kalanganyar', 'B-0051/Kk.28.02.01/HM.00/01/2026', 'Pelaksanaan Praktik Kerja Industri (Prakerin) An. Devi Sapitri Dkk ', 'HM.00', '2026-01-12', '2026-01-12', '6752-B-0051.pdf', 'Humas', 9),
(8652, 52, 'Ermawati dkk', 'B-0052/Kk.28.02.01/KP.01.2/01/2026', 'Surat Tugas Petugas PTSP dan Petugas Pendamping PTSP', 'KP.01.2', '2026-01-12', '2026-01-12', '3756-B-0052.pdf', 'Umum dan Humas', 9),
(8653, 53, 'Masjid Al Imron', 'B-0053', 'Sertifikat Pengukuran Arah Kiblat', 'BA.05', '2025-12-15', '2026-01-13', '2642-B-0053.pdf', 'Zakat Wakaf', 9),
(8654, 54, ' Sertifikat Masjid Baitus Salam Muslimah', 'B-0054 Tahun 2026', 'Pengukuran Arah Kiblat', 'BA.00', '2025-12-15', '2026-01-13', '9484-B-0054.pdf', 'Zakat Wakaf', 9),
(8655, 55, 'A.N Badrusalam', 'B-0050/Kk.28.02.01/KU.00.1/01/2026', 'Kutipan Perincian Penerimaan Gaji ', 'KU.00.1', '2026-01-13', '2026-01-13', '', 'Keuangan', 9),
(8656, 56, 'Mushola Salman Al-Farizi Kec. Sajira', 'B-0056 Tahun 2026', 'SK dan Piagam ijin Operasional', 'BA.00', '2026-01-14', '2026-01-14', '6907-B-0056.pdf', 'Bimas Islam', 9),
(8657, 57, 'Majelis Taklim AR-Rizqi Kec. Sajira', 'B-0057 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-14', '2026-01-14', '8111-B-0057.pdf', 'Bimas Islam', 9),
(8658, 58, 'A.n Ajrum Firdaus', 'B-0058/Kk.28.03.02.01/KU.00.1/01/2026', 'PIPK Kantor Kemenag  Kab.Lebak(Sekjen)', 'KU.00', '2026-01-14', '2026-01-14', '', 'Keuangan', 9),
(8659, 59, 'A.n Ajrum Firdaus', 'B-0059/Kk.28.03.02.01/KU.00.1/01/2026', 'PIPK Kantor Kemenag Lebak (Bimas)', 'KU.00.1', '2026-01-14', '2026-01-14', '', 'Keuangan', 9),
(8660, 60, 'A.n Ajrum Firdaus', 'B-0060/Kk.28.03.02.01/KU.00.1/01/2026', 'PIPK Kantor Kemenag Lebak', 'KU.00.1', '2026-01-14', '2026-01-14', '', 'Keuangan', 9),
(8661, 61, 'Kepala MAN,MTsN, dan MIN ', 'B-0061/Kk.28.02.01/KU.01.1/01/2026', 'Undangan Kegiatan', 'KU.01.1', '2026-01-14', '2026-01-14', '751-B-0061.pdf', 'Keuangan', 9),
(8662, 62, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0062/Kk.28.05/01/KP.07.6/012026', 'Urusan Kepegawaian', 'KP.07', '2026-01-14', '2026-01-14', '', 'Kepegawaian', 9),
(8663, 63, 'Ian Sevtiany', 'B-0063/Kk.28.02.01/KU.00.1/01/2026', 'Surat Tugas Konsultasi dan Koordinasi Integrasi Belanja Pegawai atas Gaji dan Tunjangan Melekat (GTM) Tahun 2026', 'KU.00.1', '2026-01-19', '2026-01-19', '7750-B-0063.pdf', 'Keuangan', 9),
(8664, 64, 'MIN 2 Lebak', 'B-0064/Kk.28.02.01/KS.01.3/01/2026', 'Berita Acara Serah Terima Transfer Keluar Barang Milik Negara (BMN) Tahun 2025', 'KS.01.3', '2026-01-21', '2026-01-21', '', 'BMN', 9),
(8665, 65, 'Kemenag Kab Lebak Cq.Pendis', 'B-0065/Kk.28.02.01/KS.01.3/01/2026', 'Berita Acara Serah Terima Transfer Keluar BMN Tahun 2025', 'KS.01.3', '2026-01-21', '2026-01-21', '', 'BMN', 9),
(8666, 66, '-', 'B-66/Kk.28.02.01/KP.07.6/01/2026', 'Usul Mutasi a.n. ARSAD, S.Ag/ 198006242005011003 DKK', 'KP.07.6', '2026-01-21', '2026-01-21', '3274-Usul Mutasi Pegawai Tahun 2026.pdf', 'Usul Mutasi', 14),
(8667, 67, 'MT Barokatul Muhajirin Kec.Cipanas', 'B-0067 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-22', '2026-01-22', '2221-B-0067.pdf', 'Bimas Islam', 9),
(8668, 68, 'Majelis Taklim AL-Lail Kec.Cibadak', 'B-0068 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-22', '2026-01-22', '8808-B-0068.pdf', 'Bimas Islam', 9),
(8669, 69, 'MT AL Falah Kec Rangkasbitung', 'B-0069 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-22', '2026-01-22', '3423-B-0069.pdf', 'Bimas Islam', 9),
(8670, 70, 'MT Ainun Kec Sajira', 'B-0070 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-22', '2026-01-22', '5276-B-0070.pdf', 'Bimas Islam', 9),
(8671, 71, 'Mushola  Bahrudin Kec Rangkasbitung', 'B-0071 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-22', '2026-01-22', '5807-B-0071.pdf', 'Bimas Islam', 9),
(8672, 72, 'Mushola Nur Rochman Kec Rangkasbitung', 'B-0072 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-22', '2026-01-22', '4192-B-0072.pdf', 'Bimas Islam', 9),
(8673, 73, 'Mokhamad Romli', 'B-0073 Tahun 2026', 'SK Penetapan Pengguna User satker sekjen', 'KU.00', '2026-01-22', '2026-01-22', '8789-B-0073.pdf', 'Keuangan', 9),
(8674, 74, 'Mokhamad Romli', 'B-0074 Tahun 2026', 'SK Pengguna User Satker Bimas Islam', 'KU.00', '2026-01-22', '2026-01-22', '5701-B-0074.pdf', 'Bimas Islam', 9),
(8675, 75, 'Mokhamad Romli', 'B-0075 Tahun 2026', 'SK Penetapan User Pendis', 'KU.00', '2026-01-22', '2026-01-22', '5703-B-0075.pdf', 'Keuangan', 9),
(8676, 76, 'Majlis Taklim Al-Mubtadin Kp. Pasir Cepak RT.09/02 Desa Lebak Asih Kecamatan Curugbitung Kab. Lebak', '76 Tahun 2026', 'SK Tentang Izin Operasional Penyelenggaraan Majelis Taklim Al-Mubtadiin', 'HM.01', '2026-01-23', '2026-01-23', '6884-B-0076.pdf', 'Bimas Islam', 9),
(8677, 77, 'Majelis Taklim Al-Mubtadiin Kp. Pasir Cepak Desa Lebak Asih Kec. Curugbitung Kab. Lebak', '77/Kk.28.02.06/BA.01.1/01/2026', 'Piagam Majelis Taklim Al-Mubtadiin ', 'HM.01', '2026-01-23', '2026-01-23', '3641-B-0077.pdf', 'Bimas', 9),
(8678, 78, 'PPK Kemenag Lebak', 'B-0078 Tahun 2026', 'SK DIPA Sekjen', 'KU.00', '2026-01-26', '2026-01-26', '1069-B-0078.pdf', 'Keuangan', 9),
(8679, 79, 'PPK Kemenag Lebak', 'B-0079 Tahun 2026', 'SK DIPA Pendis', 'KU.00', '2026-01-26', '2026-01-26', '', 'Keuangan', 9),
(8680, 80, 'PPK Kemenag Lebak', 'B-0080 Tahun 2026', 'SK DIPA BIMAS', 'KU.00', '2026-01-26', '2026-01-26', '7447-B-0080.pdf', 'Keuangan', 9),
(8681, 81, 'Kemenhaj', 'P-0081/Kk.28.02.01/KP.07.5/01/2026', 'Surat Tugas an Fadli KDC diperbantukan di Kemenhaj', 'KP.07.5', '2026-01-22', '2026-01-26', '1527-P-0081.pdf', 'Kepegawaian', 9),
(8682, 82, 'Kemenhaj', 'P-0082/Kk.28.02.01/KP.07.5/01/2026', 'Surat Tugas an Arsad diperbantukan di Kemenhaj', 'KP.07.5', '2026-01-22', '2026-01-26', '4058-P-0082.pdf', 'Kepegawaian', 9),
(8683, 83, 'Kemenhaj', 'P-0083/Kk.28.02.01/KP.07.5/01/2026', 'Surat Tugas an Nurul Husna diperbantukan di Kemenhaj', 'KP.07.5', '2026-01-22', '2026-01-26', '1947-P-0083.pdf', 'Kepegawaian', 9),
(8684, 84, 'Kemenhaj', 'B-0084/Kk.28.02.01/KP.07.6/01/2026', 'Surat Pernyataan Tidak Pernah Dijatuhi Hukuman Disiplin Tingkat Berat', 'KP.07.6', '2026-01-19', '2026-01-26', '1069-B-0084.pdf', 'Kepegawaian', 9),
(8685, 85, 'Kemenhaj', 'B-0085/Kk.28.02.01/KP.07.6/01/2026', 'Surat Pernyataan Persetujuan an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '5504-B-0085.pdf', 'Kepegawaian', 9),
(8686, 86, 'Kemenhaj', 'B-0086/Kk.28.02.1/KP.07.6/01/2026', 'Surat Pernyataan Tidak Sedang Menjalani Proses Pidana an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '8641-B-0085.pdf', 'Kepegawaian', 9),
(8687, 87, 'Kemenhaj', 'B-0087/Kk.28.02.01/KP.07.6/01/2026', 'Surat Pernyataan Tidak Sedang dalam Status Tugas Belajar an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '1632-B-0087.pdf', 'Kepegawaian', 9),
(8688, 88, 'Kemenhaj', 'B-0088/Kk.28.02.01/KP.07.6/01/2026', 'SuratPernyataan Tidak Sedang dalam Proses Upaya Hukum an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '7602-B-0088.pdf', 'Kepegawaian', 9),
(8689, 89, 'Kemenhaj', 'B-0089/Kk.28.0201/KP.07.6/01/2026', 'Surat Pernyataan Tanggung Jawab Mutlak (SPTJM) an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '6337-B-0089.pdf', 'Kepegawaian', 9),
(8690, 90, 'Kemenhaj', 'B-0090/Kk.28.02.01/KP.7.6/01/2026', 'Surat Pernyataan Tidak Sedang Menjalani Ikatan Dinas/Wajib Kerja dengan Perguruan Tinggi  atau Instansi Asal an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '6683-B-0090.pdf', 'Kepegawaian', 9),
(8691, 91, 'Kemenhaj', 'B-0091/Kk.28.02.01/KP.07.6/01/2026', 'Permohonan Surat Keterangan Bebas Temuan an Nurul Husna', 'KP.07.6', '2026-01-19', '2026-01-26', '6195-B-0091.pdf', 'Kepegawaian', 9),
(8692, 92, 'Pimpinan Unit Pelaksana Uji Kompetensi ', 'B-0092/Kk.28.02.01/KU.01.2/01/2026', 'Usulan Nama Calon Peserta Uji Kompetensi Perpindahan dari Jabatan Lain kedalam Jabatan lain ke dalam Jabatan Fungsional APK APBN', 'KU.01.2', '2026-01-26', '2026-01-26', '', 'Keuangan', 9),
(8693, 93, 'Kantor Wilayah Kementerian Agama Prov. Banten', 'P-0093 Tahun 2026', 'Urusan Kepegawaian', 'KP.00', '2026-01-26', '2026-01-26', '', 'Kepegawaian', 9),
(8694, 94, 'KPPN Rangkasbitung', 'KEP- 0094 TAHUN 2025', 'SK Tentang Penetapan Perubahan User Pejabat Operator dan Administrator Penguna Aplikasi Sistem Aplikasi Keuangan Tingkat Intansi (Sakti) Pada Satuan Kerja Setjen (416610)', 'KU.00', '2026-01-27', '2026-01-27', '733-B-0094.pdf', 'Keuangan', 9),
(8695, 95, 'KPPN Rangkasbitung', 'KEP- 0095 TAHUN 2025', 'SK Tentang Penetapan Perubahan User Pejabat Operator dan Administrator Penguna Aplikasi Sistem Aplikasi Keuangan Tingkat Intansi (Sakti) Pada Satuan Kerja bIMAS iSLAM (416611)', 'KU.01', '2026-01-27', '2026-01-27', '172-B-0095.pdf', 'Keuangan', 9),
(8696, 96, 'Masjid AL Husnah Kec Kalanganyar ', 'B-0096 Tahun 2026', 'Sk dan Piagam Ijin Operesional', 'BA.00', '2026-01-28', '2026-01-28', '5736-B-0096.pdf', 'Bimas', 9),
(8697, 97, 'Majlis Talim AL Hidayah Kec Cileles Kab Lebak Prop Banten', 'B-0097 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-28', '2026-01-28', '8722-B-0097.pdf', 'Bimas Islam', 9),
(8698, 98, 'Mushola AN-Nur Kec.Maja', 'B-0098 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-28', '2026-01-28', '6541-B-0098.pdf', 'Bimas Islam', 9),
(8699, 99, 'KPPN Rangkasbitung', 'B-0090/Kk.28.02.01/KU.00/01/2026', 'Permohonan Persetujuan UP Kartu Kredit Pemerintah', 'KU.00', '2026-01-28', '2026-01-28', '4467-B-0099.pdf', 'Keuangan', 9),
(8700, 100, 'Iwan Falahudin', 'B-0100/Kk.28.02.01/KU.00/01/2026', 'Surat Pernyataan Uang Persediaan', 'KU.00', '2026-01-28', '2026-01-28', '8253-B-0100.pdf', 'Keuangan', 9),
(8701, 101, 'Iwan Falahudin dkk', 'B-0101 Tahun 2026', 'SK Penetapan Perubahan User Pejabat,Operator dan Administrator Pengguna Aplikasi Sistem Aplikasi Keuangan Tingkat Instansi (SAKTI) Pada Satker Pendis', 'KU.00', '2026-01-28', '2026-01-28', '9111-B-0101.pdf', 'Keuangan', 9),
(8702, 102, 'Haeniyah', 'B-1012/KK.28.02.01/KP.07.2/01/2026', 'Penetapan Angka Kredit', 'KP.07.2', '2026-01-28', '2026-01-28', '4438-B-0102.pdf', 'Keuangan', 9),
(8703, 103, 'Pimpinan BRI Cabang Rangkasbitung', 'B-103/KK.28.02.1/KU.00/01/2026', 'Permohonan Over Booking Gaji Pegawai Bulan Febuari 2026', 'KU.00', '2026-01-28', '2026-01-28', '14-B-0103.pdf', 'Keuangan', 9),
(8704, 104, 'Pemimpin BJBS KCP Rangkasbitug Di Rangkasbitung ', 'B-0104 Tahun 2026', 'Permohonan Over Booking Penghasilan Pegawai Bulan Febuari 2026', 'KU.00', '2026-01-29', '2026-01-29', '5534-B-0104.pdf', 'Keuangan', 9),
(8705, 105, 'Syachdin Achdian dkk', 'B-0105/KK.28.02.01/KU.00/01/2026', 'Surat Tugas Konsultasi tentang Penerbitan Bukti Potong PPh-pasal 21', 'KU.00', '2026-01-29', '2026-01-29', '365-B-0105.pdf', 'Keuangan', 9),
(8706, 106, 'Kepala KPPN Rangkasitung ', 'B-0106/KK.28.02.01/KU.00.1/01/2026', 'Permohonan Persetujuan UP Kartu Kredit Pemerintah ', 'KU.00', '2026-01-29', '2026-01-30', '9070-B-0106.pdf', 'Keuangan', 9),
(8707, 107, 'Iwan Falahudin', 'B-0107/KK.28.02.01/KU.00.1/01/2026', 'Surat Pernyataan Uang Persediaan', 'KU.00', '2026-01-30', '2026-01-30', '1950-B-0107.pdf', 'Keuangan', 9),
(8708, 108, 'Deni Kurniawan dkk', 'B-0108 TAHUN 2026', 'SK Penetapan Pembina Ekstrakulikuler, Pengelola Wabsite dan Media Sosial pada madrasah Ibtidaiyah Negeri 1 Lebak Tahun 2026', 'PP.03.1', '2026-01-05', '2026-01-30', '5672-B-0108.pdf', 'Keuangan', 9),
(8709, 109, 'Mushola AL-Kautsar Kec. Lebak Gedong', 'B- 0109 TAHUN 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-01-30', '2026-01-30', '2782-B-0109.pdf', 'Bimas', 9),
(8710, 110, 'Kepala BPS Kabupaten Lebak ', 'B-0110/KK.28.02.03/BA.00.4/I/2026', 'Surat Pengantar', 'BA.00.4', '2026-01-30', '2026-01-30', '4573-B-0110pdf.pdf', 'Bimas', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  `penerima` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`, `penerima`) VALUES
(2577, 1, 'B.000/58-Bag.Kesra/I/2025', 'Sekda Pemda Lebak', 'Undangan Persiapan Peringatan Isro Miraj Nabi Muhammmad SAW Tahun 1447 Hijriyah', 'HM.01', '1 Berkas', '2026-01-05', '2026-01-06', '7095-M-001.pdf', 'Kepala Kemenag', 9, ''),
(2578, 2, '004/28.02-A', 'Gerakan Pramuka Kwartir Cabang Lebak', 'Permohonan Dispensasi', 'HM.00', '-', '2026-01-06', '2026-01-06', '5781-M-0002.pdf', 'Kepala Kemenag', 9, ''),
(2579, 3, 'B/05/I/LIT./2026/Densus', 'Markas Besar Kepolisian Negara RI', 'Permohonan Menyampaikan Sambutan', 'HM.00', '-', '2026-01-06', '2026-01-06', '653-M-0003.pdf', 'Kepala Kemenag', 9, ''),
(2580, 4, 'B-08/Kw.28.01.02/KP.04.01/01/2025', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Pendataan Indeks Profesional ASN', 'KP.04.01', '-', '2026-01-06', '2026-01-06', '5763-M-0004.pdf', 'Kepala Kemenag', 9, ''),
(2581, 5, '01/PPHBI-KOBRA/I/2026', 'KOBONG RAWA Kec. Cibadak', 'Permohonan Bantuan dana', 'HM.00', '-', '2026-01-06', '2026-01-06', '1710-M-0005.pdf', 'Kepala Kemenag', 9, ''),
(2582, 6, '01/M.AM/XI/2025', 'Masjid Al Mubarok Kec Muncang', 'Permohonan Bantuan Rehab Masjid Al Mubarok', 'HM.00', '1 Berkas', '2026-01-08', '2026-01-08', '6049-M-0006.pdf', 'Kepala Kemenag', 9, ''),
(2583, 7, '02/PPMT-DM/2025', 'Pembangunan Masjid Baitul Mupasirin', 'Permohonan Sarana Prasarana', 'HM.00', '1 Berkas', '2026-01-08', '2026-01-08', '2569-M-0007.pdf', 'Kepala Kemenag', 9, ''),
(2584, 8, '15.2/AL-HID/IX/2025', 'Musholla Al-Hidayah rangkasbitung', 'Proposal Permohonan Bantuan Masjid dan Musholah', 'HM.00', '1 Berkas', '2026-01-08', '2026-01-08', '1890-M-0008.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2585, 9, '02/PPMT-DM/XII/2025', 'Pembangunan Majlis Talim', 'Permohonan Sarana Prasaran', 'HM.00', '1 Berkas', '2026-01-08', '2026-01-08', '3012-M-0009.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2586, 10, 'M-002/PAN/PEM-MT-AI/XII/2025', 'Majlis Talim Al-iklas kec.Maja', 'Permohonan Bantuan Dana Pembangunan ', 'HM.01', '1 Berkas', '2026-01-08', '2026-01-08', '6657-M-0010.pdf', 'Kepala Kemenag', 9, ''),
(2587, 11, '-', 'Mushola Al-Istiqomah Kec.Rangkasbitung', 'Dana Sumbangan Isra Miraj', 'HM.00', '1 Berkas', '2026-01-09', '2026-01-09', '5312-M-0011.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2588, 12, '017/CHN/1/2026', 'Chanel News', 'Permohonan Bantuan Dana untuk membantu kegiatan Majlis Talim', 'HM.00', '1 lembar', '2026-01-12', '2026-01-12', '5089-M-0012.pdf', 'Kepala Kemenag', 9, ''),
(2589, 13, 'B-9/B.VI/HM.00/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Undangan Breakfast Meeting', 'HM.00', '-', '2026-01-09', '2026-01-13', '1679-M-0013.pdf', 'Kepala Kemenag', 9, ''),
(2590, 14, 'B-11/KW.28.01/HM.00/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyusunan dan Pengesahan  Kurikulum Madrasah Berdasarkan KMA 1503 tanggal 22 September 2025', 'HM.00', '-', '2026-01-13', '2026-01-13', '406-M-0014.pdf', 'Kepala Kemenag', 9, ''),
(2591, 15, 'B-09/Kw.28.01.1/KU.01.1/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Undangan', 'KU.01.1', '2 Lembar ', '2026-01-13', '2026-01-13', '3487-M-0015.pdf', 'Kepala Kemenag', 9, ''),
(2592, 16, 'B-015/Kw.28.01.01/HM.03/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Undangan', 'HM.03', '-', '2026-01-13', '2026-01-13', '3539-M-0016.pdf', 'Kepala Kemenag', 9, ''),
(2593, 17, 'B-7/SJ/B.I/OT.01.1/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Pemberitahuan Tindak Lanjut Finalisasi Renstra Tahun 2025-2029 dan Perjanjian Kinerja Tahun 2026', 'OT.01.1', '-', '2026-01-13', '2026-01-13', '6703-M-0017.pdf', 'Kepala Kemenag', 9, ''),
(2594, 18, 'B-27/Set.IJ/OT.OO/01/2026', 'Kemenag RI Sekretariat Jenderal', 'Undangan Peserta Bimtek Pengisian Laporan Harta Kekayaan Penyelenggara Negara (LHKPN)', 'OT.00', '1 lembar', '2026-01-13', '2026-01-13', '3337-M-0018.pdf', 'Kepala Kemenag', 9, ''),
(2595, 19, 'B.000.7/7-BID.P2EPD/I/2026', 'Sekda Lebak', 'Undangan Forum Konsultasi Publik Rancangan Awal RKPD Tahun 2027', 'HM.00', '2 Berkas', '2026-01-13', '2026-01-13', '675-M-0019_compressed.pdf', 'Kepala Kemenag', 9, ''),
(2596, 20, '4/UND-36.100.HP.01.002/I/2026', 'Badan Pertanahan Nasional Provinsi Banten', 'Undangan Rapat Koordinasi', 'HM.00', '1 lembar', '2026-01-13', '2026-01-13', '3678-M-0020.pdf', 'Kepala Kemenag', 9, ''),
(2597, 21, 'B.400/13-bag.Kesra/I/2026', 'Sekretariat Daerah Pemerintah Kabupaten Lebak', 'Undangan Pada Acara Peringatan Isra miraj Nabi Muhammad SAW 1447 H/2026 M', 'HM.00', '2 Lembar ', '2026-01-12', '2026-01-13', '6091-M-0021.pdf', 'Kepala Kantor', 9, ''),
(2598, 22, '05/ORG/I/2026', 'PMI Kab Lebak', 'Peresmian Markas PMI dan Musyawarah Kerja PMI Tahun 2025', 'HM.00', '1 Bundel', '2026-01-13', '2026-01-13', '9156-M-0022.pdf', 'Kepala Kemenag', 9, ''),
(2599, 23, 'SP-2/Kw.28.02/Ku.05/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten Cq. Kasi Pendidikan Madrasah', 'Surat Pengantar Pengembalian Kas Negara Sisa Dana Pada Rekening Penerima BOP RA dan Bos Madrasah TA 2025', 'KU.05', '2 Lembar ', '2026-01-14', '2026-01-14', '6114-M-0023.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2600, 24, '183/Sek/D/PP/I/2026', 'IMALA LEBAK', 'Permohonan Narasumber', 'HM.00', '2 Lembar ', '2026-01-14', '2026-01-14', '1504-M-0024.pdf', 'Kepala Kemenag', 9, ''),
(2601, 25, '01/Um-APSI Lebak/I/2026', 'Asosiasi Pengawas Sekolah Indonesia (APSI) Kab. Lebak ', 'Permohonan Audiensi Pelaksanaan Program APSI Lebak Tahun 2026', 'HM.00', '--', '2026-01-14', '2026-01-14', '8869-M-0025.pdf', 'Kepala Kemenag', 9, ''),
(2602, 26, '036/Rdk Pro-Metropol/I/2026', 'Metropol', 'Permohonan Dana Sponsorship Untuk Kegiatan Anniversary 23 thn', 'HM.00', '2 Berkas', '2026-01-14', '2026-01-14', '9842-M-0026.pdf', 'Kepala Kemenag', 9, ''),
(2603, 27, 'S-16/WKN.06/2026', 'Kanwil Direktorat Jenderal Kekayaan Negara Banten', 'Permintaan Usulan Anggota Kelompok Kerja Tingkat Wilayah Program Percepatan Persertipikatan BMN Tanah Tahun 2026 Provinsi Banten', 'KU.00', '-', '2026-01-14', '2026-01-14', '9716-M-0027.pdf', 'Kepala Kemenag', 9, ''),
(2604, 28, '1/Kua.28.02.16/KP/01/2026', 'KUA Cikulur', 'Laporan Ketidakhadiran Pegawai', 'KP.01', '-', '2026-01-15', '2026-01-15', '7436-M-0028.pdf', 'Kepala Kemenag', 9, ''),
(2605, 29, '12/Kua.28.02.05/BA.01.1/01/2026', 'KUA Cipanas', 'Rekomendasi SKT Majelis Taklim', 'HM.00', '-', '2026-01-15', '2026-01-15', '4053-M-0029.pdf', 'Kepala Kemenag', 9, ''),
(2606, 30, '010/POKJAKMB/01/2026', 'Pokja Kampung Moderasi Beragama Kecamatan Maja ', 'Pemberitahuan ', 'HM.01', '1 Berkas', '2026-01-15', '2026-01-15', '6332-M-0030.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2607, 31, 'B-073/Kw.28.01.02/KP.04.1/01/2025', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyampaian Rekapitulasi Presensi/Absensi Kehadiran dan E-Kinerja Aparatur Sipil Negara Kementerian Agama', 'KP.04.1', '1 Berkas', '2026-01-15', '2026-01-15', '5550-M-0031.pdf', 'Kepala Kemenag', 9, ''),
(2609, 32, 'P58/KKN-KEL08/SKIPSM/I/2026', 'STKIP SYEKH MASHUR TAHUN 2026 KKN DS.PADASUKA WARUNGGUNUNG', 'Permohonan dana', 'HM.00', '-', '2026-01-15', '2026-01-15', '4490-M-0032.pdf', 'Kepala Kemenag', 9, ''),
(2610, 33, '01/MT.AM/XII/2025', 'MAJLIS TALIM AL-MUBTADIIN Kec.Curugbitung', 'Permohonan Pendaftaran Keberadaan MT Al-Mubtadiin', 'BA.00', '1 Berkas', '2026-01-19', '2026-01-19', '5509-M-0033.pdf', 'Kepala Kemenag', 9, ''),
(2611, 34, 'M-001/DKM-ALHUSNA/1/2026', 'Dewan Kesejahteraan Masjid AL-Husna Kec. Kalanganyar', 'Permohonan Penerbitan ID Masjid', 'HM.00', '1 Berkas', '2026-01-19', '2026-01-19', '4518-M-0034.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2612, 35, 'M-06.17.6/MBS/10/09/2026', 'Dewan Pimpinan Cabang ', 'Permohonan Bantuan', 'HM.00', '1 Berkas', '2026-01-19', '2026-01-19', '3871-M-0035.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2613, 36, '004/SB-BAZNAS/LBK/I/2026', 'BAZNAS Kabupaten Lebak', 'Penyampaian Data Unit Pengumpulan Zakat (UPZ)', 'HM.01', '1', '2026-01-20', '2026-01-20', '4170-M-0036.pdf', 'Kepala Kemenag', 9, ''),
(2614, 37, '001/Lap.BAZNAS-LBK/1/2026', 'Baznas Kab Lebak', 'Laporan Pengelola ZIS,DSKL dan off Balance Sheet BAZNAS kab.Lebak Tahun 2025', 'HM.01', '1 Bundel', '2026-01-13', '2026-01-20', '8960-M-0037.pdf', 'Kepala Kemenag', 9, ''),
(2615, 38, 'B-159/M.6.14/Cp.1/01/2026', 'Kejaksaan Negeri Lebak ', 'Mohon Bantuan Tenaga Rohaniawan', 'HM.00', '-', '2026-01-20', '2026-01-20', '6220-M-0038.pdf', 'Kepala Kemenag', 9, ''),
(2616, 39, 'B-19/Kw.28.02/PP.00/01/2025', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyampaian Informasi Tes Kemampuan Akademik (TKA) Tahun 2026 Jenjang MI dan MTs', 'PP.00', '1 Berkas', '2026-01-20', '2026-01-20', '9829-M-0039.pdf', 'Kepala Kemenag', 9, ''),
(2617, 40, '007/BAZNAS/LBK/I/2026', 'BAZNAS Kabupaten Lebak', 'Undangan Rapat Penentuan Besaran Zakat Fitrah Ramadhan 1447 H', 'HM.00', '-', '2026-01-21', '2026-01-21', '6224-M-0040.pdf', 'Kepala Kemenag', 9, ''),
(2618, 41, '115/Kw.28.01/HM.00/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Himbauan Implementasi Tata Kelola Kearsipan', 'HM.00', '-', '2026-01-22', '2026-01-22', '3620-M-0041.pdf', 'Kepala Kemenag', 9, ''),
(2619, 42, 'B-28/Kua.28.02.17/BA.00/I/2026', 'KUA Kec.Cibeber', 'Rekomendasi Pemanfaatan Gedung KUA Cibeber (Lama)', 'BA.00', '1 Berkas', '2026-01-22', '2026-01-22', '5785-M-0042.pdf', 'Kepala Kemenag', 9, ''),
(2620, 43, '0062/SJ/B.IV.2/OT.01.2/01/2026', 'Kemenag RI Sekretariat Jenderal', 'Penyusunan Laporan Kinerja Tahun 2025 dan Penyampaian Laporan Capaian Kinerja Triwulan IV Tahun 2025', 'ot.01.2', '1 Berkas', '2026-01-22', '2026-01-22', '7078-M-0043.pdf', 'Kepala Kemenag', 9, ''),
(2621, 44, 'B-16/Kw.28.01/OT.00/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Pemberitahuan Penilaian Lanjutan PMPZI Tahun 2025', 'OT.00', '1 Berkas', '2026-01-22', '2026-01-22', '4273-M-0044.pdf', 'Kepala Kemenag', 9, ''),
(2622, 45, 'B.400/2-bag.Kesra/1/2026', 'Sekretariat Daerah Pemerintah Kabupaten Lebak', 'Undangan Peringatan Isro Miraj Nabi Muhammad SAW 1447 H /2026 ', 'HM.01', '1 Berkas', '2026-01-22', '2026-01-22', '7534-0045.pdf', 'Kepala Kemenag', 9, ''),
(2623, 46, 'B.28/Kua.28.02.17/BA.00/01/26', 'KUA Kecamatan Cibeber', 'Rekomendasi Pemanpaatan Gedung KUA Cibeber', 'BA.00', '1  Bundel', '2026-01-21', '2026-01-22', '2446-M-0046.pdf', 'Bimas', 9, ''),
(2624, 47, '01/DKM-Al-Araaf/I/2026', 'Mesjid Agung Al-Araaf Rangkasbitung', 'Permohonan Kesediaan menjadi petugas Imam/khatib shalat jumat', 'HM.00', '1 Berkas', '2026-01-22', '2026-01-22', '2120-M-0047.pdf', 'Kepala Kemenag', 9, ''),
(2625, 48, '03.035/PP-FKRML/I-2026', 'Forum Komunikasi Remaja Masjid Lebak', 'Permohonan Bantuan Dana Santunan Anak Yatim', 'HM.00', '1  Bundel', '2026-01-21', '2026-01-23', '6535-M-0048.pdf', 'Zakat Wakaf', 9, 'PTSP'),
(2626, 49, 'B-014/BL.4/HM.02/1/2026', 'Badan Penyelenggaraan Jaminan Produk Halal Provinsi Jawa Barat', 'Pemberitahuan Operasional Layanan Balai Penyelenggaraan Jaminan Produk Halal Prov.Jawa Barat', 'HM.02', '-', '2026-01-26', '2026-01-26', '6797-M-0049.pdf', 'Kepala Kemenag', 9, ''),
(2627, 50, '175/07-Setwan/I/2026', 'SETDA LEBAK', 'Permohonan menjadi Rohaniawan', 'HM.00', '-', '2026-01-26', '2026-01-26', '1397-M-0050.pdf', 'Kepala Kemenag', 9, ''),
(2628, 51, 'B-400/20-bag.Kesra/I/2026', 'Sekretariat Daerah Pemerintah Kabupaten Lebak', 'Undangan Rapat Persiapan Menyambut Bulan Suci Ramadan 1447 H/2026', 'HM.00', '-', '2026-01-27', '2026-01-27', '9234-M-0051.pdf', 'Kepala Kemenag', 9, ''),
(2629, 52, 'B-20/26020/HM.310/2026', 'Badan Statistik Kabupaten Lebak', 'Permohonan Data untuk penyusunan publikasi kabupaten lebak dalam angka 2026', 'HM.00', '-', '2026-01-27', '2026-01-27', '7429-M-0052.pdf', 'Kepala Kemenag', 9, ''),
(2630, 53, '1/Kua.28.02.05/Ks.01.2/01/2026', 'KUA Cipanas', 'Permohonan Blanko Nikah', 'Ks.01.2', '-', '2026-01-27', '2026-01-27', '9236-M-0053.pdf', 'Kepala Kemenag', 9, ''),
(2631, 54, '001/SPh/HARFA/I/2026', 'HARFA', 'Laporan Akhir Tahun 2025', 'HM.00', '1 Berkas', '2026-01-27', '2026-01-27', '8993-M-0054.pdf', 'Kepala Kemenag', 9, ''),
(2632, 55, '057/SR/UP/FSPP-Lebak/I/2026', 'Forum Silaturahmi Ponpes (FSPP) Kab. Lebak', 'Surat Undangan ', 'HM.01', '1 lembar', '2026-01-22', '2026-01-27', '5840-M-0055.pdf', 'PD Pontren', 9, ''),
(2633, 56, 'B-019-07/B.XI.3/HM.01/012025', 'Kemenag RI Sekretariat Jenderal', 'Pemberitahuan Pemasangan Jaringan Internet dan Pemasangan Infrastuktur Jaringan (ACCESS POINT)', 'HM.01', '3 lembar', '2026-01-19', '2026-01-27', '3298-M.0056.pdf', 'Kepala KUA kec Rangkasbitung ', 9, 'PTSP'),
(2634, 57, '7/kw.28.02/hm.01/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Undangan Rapat Koordinasi dan Bimtek Aplikasi Izin Operasional Madrasah', 'HM.01', '-', '2026-01-28', '2026-01-28', '8553-M-0057.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2635, 58, 'B-32/KW.28.02/PP.00/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyampaian POS Penyeleggaraan Ujian Madrasah Tahun Ajaran 2025/2026', 'PP.00', '1  Bundel', '2026-01-28', '2026-01-28', '8679-M-0058.pdf', 'Kepala Kemenag', 9, ''),
(2636, 59, '00', 'Gereja Bethel Indonesia Tirtayasa Rangkasbitung ', 'Permohonan Rekomendasi Ijin Sementara Rumah Ibadah ', 'BA.01.1', '3 lembar', '2026-01-28', '2026-01-28', '7397-M-0059.pdf', 'Bimas', 9, ''),
(2637, 60, '011/SMSI-Lebak/I/2026', 'Serikat Media Siber Indonesia (SMSI) Kabupaten Lebak', 'Mohon Dukungan ', 'HM.00', '-', '2026-01-30', '2026-01-30', '9875-M-0060.pdf', 'Kepala Kemenag', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'cahyo', '21232f297a57a5a743894a0e4a801fc3', 'Fadli Kurnia DC', '198107142011011006', 1),
(9, 'ptsplebak', '2d32ea90576f636b4be2236141a11481', 'Irma Novita', '198311032009012004', 3),
(11, 'Jamil', '736b027e8dd3e7eb50252467df1ec4cf', 'Jamil', '000', 3),
(12, 'Keuangan2802', 'a4151d4b2856ec63368a7c784b1f0a6e', 'Haeniyah', '197607092004042001', 3),
(13, 'Irma_Novita', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'Irma', '198311032009012004', 2),
(14, 'Keuangan', 'a4151d4b2856ec63368a7c784b1f0a6e', 'Ian Sevtiyani', '1986', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);
ALTER TABLE `tbl_instansi` ADD FULLTEXT KEY `status` (`status`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8829;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2747;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
