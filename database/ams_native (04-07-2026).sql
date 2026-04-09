-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2026 pada 07.21
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

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
-- Struktur dari tabel `tbl_disposisi`
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
-- Dumping data untuk tabel `tbl_disposisi`
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
-- Struktur dari tabel `tbl_instansi`
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
-- Dumping data untuk tabel `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'KEMENTERIAN AGAMA REPUBLIK INDONESIA', 'KANTOR KEMENTERIAN AGAMA KABUPATEN LEBAK', 'Jl. Siliwangi No. 2 Rangkasbitung Telp/fax. 0252 201319', 'Jl. Siliwangi No. 2 Rangkasbitung', 'H. Badrusalam, S.Ag', '196801031985011005', 'https://kemenag.go.id', 'ptspkemenaglebak@gmail.com', 'logo.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_klasifikasi`
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
-- Struktur dari tabel `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 100, 10, 10, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_keluar`
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
-- Dumping data untuk tabel `tbl_surat_keluar`
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
(8710, 110, 'Kepala BPS Kabupaten Lebak ', 'B-0110/KK.28.02.03/BA.00.4/I/2026', 'Surat Pengantar', 'BA.00.4', '2026-01-30', '2026-01-30', '4573-B-0110pdf.pdf', 'Bimas', 9),
(8711, 111, 'Kepala KPPN Rangkasbitung', 'B-0111/Kk.28.02.01/KU.00.1/02/2026', 'Laporan Saldo Rekening Bulan Januari 2026', 'KU.00.1', '2026-02-02', '2026-02-02', '7689-B-0111.pdf', 'PPK Setjen', 9),
(8712, 112, 'Majelis Taklim Irsyadul Ibad Kec.Rangkasbitung', 'B-0112 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-02-02', '2026-02-02', '9391-B-0112.pdf', 'Bimas Islam', 9),
(8713, 113, 'Angga Adiyana dkk', 'B-0113/Kk.28.02.01/PP.01/02/2026', 'Surat tugas pembinaan pemutakhiran data pada aplikasi siaga', 'PP.01', '2026-02-02', '2026-02-02', '7917-B-0113.pdf', 'Pais', 9),
(8714, 114, 'Dharma Wanita Kemenag Lebak', 'B-0114 Tahun 2026', 'SK Pengurus Dharma Wanita Kemenag Lebak ', 'HM.00', '2026-02-02', '2026-02-02', '4770-B-0114.pdf', 'DWP', 9),
(8715, 115, 'Kepala KPPN Rangkasbitung', 'B-0115/KK.28.02.01/KU.00.1/02/2026', 'Permohonan Persetujuan UP Kartu Kredit Pemerintah', 'KU.00.1', '2025-02-04', '2026-02-03', '5747-B-0115.pdf', 'Keuangan', 9),
(8716, 116, 'Iwan Falahudin', 'B-0116/Kk.28.02.01/KU.00.1/02/2026', 'Surat Pernyataan Uang Persediaan', 'KU.00.1', '2025-02-03', '2026-02-03', '3469-B-0116.pdf', 'Keuangan', 9),
(8717, 117, 'Kemenag Lebak', 'B-0117/Kk.28.02.01/KU.00/01/2026', 'Adendum PKS BJBS dengan Kemenag Lebak', 'KU.00', '2026-02-03', '2026-02-03', '', 'Keuangan ', 9),
(8718, 118, 'Nofialdi', 'B-0118/Kk.28.02.01/KU.00/02/2026', 'Survei Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten', 'KU.00', '2026-02-05', '2026-02-05', '8428-M-0118.pdf', 'Keuangan', 9),
(8719, 119, 'Nofialdi', 'B-0119/Kk.28.02.01/KU.00/02/2026', 'Survei Kajian Kerentanan Aset Publik di Wilayah Provinsi Banten', 'KU.00.', '2026-02-05', '2026-02-05', '', 'Keuangan ', 9),
(8720, 120, 'KPPN Rangkasbitung', 'KK.28.02./KU.00/02/2026', 'Permohonanan Persetujuan Besaran Uang Persediaan (UP) dengan Sumber Dana Penerimaan Negara Bukan Pajak (PNBP) ', 'KU.00.2', '2026-02-05', '2026-02-05', '5562-B-0120.pdf', 'Keuangan ', 9),
(8721, 121, 'Majlis Taklim Nahdotul Mutaalimin kec. Lebakgedong', 'B-0121 Tahun 2026', 'SK Dan Piagam Operasional', 'BA.00', '2026-02-05', '2026-02-05', '8305-B-0121.pdf', 'Bimas', 9),
(8722, 122, 'Masjid Qolbun Salim kec Cibadak  ', 'B-0122 Tahun 2026', 'Sk dan Piagam Ijin Operasional', 'BA.00', '2026-02-05', '2026-02-05', '5108-B-0122.pdf', 'Bimas', 9),
(8723, 123, 'Pimpinan BJBS Rangkasbitung', 'B-0123/Kk.28.02.1/KU.00/02/2026', 'Permohonan Overbooking Potongan TUKIN', 'KU.00', '2026-02-05', '2026-02-05', '2767-B-0123.pdf', 'Keuangan ', 9),
(8724, 124, 'Ahda S.Pd.I', 'B-0124/kk.28.02.01/KS.01.3/02/2026', 'Berita Acara Serah Terima', 'KS.01.3', '2026-02-05', '2026-02-05', '5209-B-0124.pdf', 'Bimas Islam', 9),
(8725, 125, 'Kantor Wilayah Kementerian Agama Prov. Banten', 'B-0125/kk.28.02.02/KP.09/02/2026', 'Surat Pengantar', 'KP.09', '2026-02-06', '2026-02-06', '6346-B-0125.pdf', 'Kepegawaian', 9),
(8726, 126, 'Kepala Kantor Kementerian Agama Kab. Lebak', 'B-0126/Kk.28.02.06/KU.00.1/01/2026', 'Permohonan pencairan PNBP NR jasa perofesi dan transport bulan januari 2026', 'KU.00', '2026-02-06', '2026-02-06', '511-B-0126.pdf', 'Bimas Islam', 9),
(8727, 127, 'Pimpinan BRI Cabang Rangkasbitung', 'B-0127/Kk.28.02.01/KU.00/02/2026', 'Permohonan Over booking Penghasilan Pegawai Bulan Februari 2026', 'KU.00', '2026-02-09', '2026-02-09', '6515-M-0127.pdf', 'Keuangan ', 9),
(8728, 128, 'Kepala Cabang BJB Syariah', 'B-0128/kk.28.02.01/KU.00/02/2026', 'Permohonan Blokir Rekening Pegawai', 'KU.00', '2026-02-10', '2026-02-10', '6568-M-0128.pdf', 'Keuangan ', 9),
(8729, 129, 'BRI Cabang Rangkasbitung', 'B-0129/Kk.28.02.01/KU.00/02/2026', 'Permohonan Blokir Rekening Pegawai', 'KU.00', '2026-02-10', '2026-02-10', '4746-B-0129.pdf', 'Keuangan ', 9),
(8730, 130, 'Majlis Talim AL-IKHLAS Kec. Bayah', 'B-0130 TAHUN 2026', 'SK dan Piagam Ijin Operasional', 'BA.00', '2026-02-10', '2026-02-10', '3172-B-0130.pdf', 'Bimas', 9),
(8731, 131, 'Menteri Agama RI c,q. Direktorat Jendral Pendidikan Islam Kemenag RI ', 'B-0131/Kk.28.02.01/HM.00/02/2026', 'Permohonan Bantuan Kendaraan Dinas Oprasional ', 'HM.00', '2026-02-10', '2026-02-10', '9085-B-0131.pdf', 'Perencana', 9),
(8732, 132, 'BRI Cabang Rangkasbitung', 'B-0132/KK.28.02.01/KU.01/02/2026', 'Permohonan Overbooking Uang Makan Bulan Januari 2026', 'KU.01', '2026-02-10', '2026-02-10', '1477-B-0132.pdf', 'Keuangan ', 9),
(8733, 133, 'Majelis Taklim Muslimah Ar Rahman Kec.Maja', 'B-0133 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-02-11', '2026-02-11', '6442-B-0133.pdf', 'Bimas Islam', 9),
(8734, 134, 'Majelis Taklim Darul Ilmi  Kec.Rangkasbitung', 'B-0134 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-02-11', '2026-02-11', '2511-B-0134.pdf', 'Bimas Islam', 9),
(8735, 135, 'A.n Sujai', 'B-0135/Kk.28.02.01/KP.01/02/2026', 'Berita Acara Serah Terima SK Pensiun', 'KP.01', '2026-02-12', '2026-02-12', '5262-B-0135.pdf', 'Kepegawaian', 9),
(8736, 136, 'Guru Penerima TPG ', 'B-0136 Tahun 2026', 'SK Guru Penerima TPG Bulan Januari 2206', 'PP.002', '2026-02-18', '2026-02-18', '963-B-0136.pdf', 'Pais', 9),
(8737, 137, 'Iwan Falahudin', 'B-0137/Kk.28.02.04/PP.002/02/2026', 'Surat Pernyataan Tanggung Jawab Mutlak', 'PP.002', '2026-02-18', '2026-02-18', '7406-B-0137.pdf', 'Pais', 9),
(8738, 138, 'Ahmad Yani', 'B-0138/Kk.28.02.01/KP.01/02/2026', 'Berita Acara Serah Terima Pensiun', 'KP.01', '2026-02-18', '2026-02-18', '1994-B-0138.pdf', 'Kepegawaian', 9),
(8739, 139, 'Kantor Wilayah Kementerian Agama Prov. Banten', 'B-0139/Kk.28.02.01/KU.00/02/2026', 'Usulan Pengesahan Revisi Anggaran', 'KU.00', '2026-02-19', '2026-02-19', '', 'Keuangan ', 9),
(8740, 140, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0140/Kk.28.02.01/KU.00/02/2026', 'SPTJM', 'KU.00', '2026-02-19', '2026-02-19', '', 'Keuangan ', 9),
(8741, 141, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0141/Kk.28.02.01/KP.01.1/02/2026', 'Urusan Kepegawaian', 'KP.01.1', '2026-02-19', '2026-02-19', '', 'Kepegawaian', 9),
(8742, 142, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0142/Kk.28.02.01/KP.01.1/02/2026', 'Urusan Kepegawaian', 'KP.01.1', '2026-02-19', '2026-02-19', '', 'Kepegawaian', 9),
(8743, 143, 'Kepala Kantor Wilayah Kementerian Agama Prov.Banten', 'B-0143/Kk.28.02.01/Kp.01.1/02/2026', 'Urusan Kepegawaian', 'Kp.01.1', '2026-02-19', '2026-02-19', '', 'Kepegawaian', 9),
(8744, 144, 'Majlis Taklim Aimmatul Maghfiroh Kec.Curugbitung', 'B-0144 Tahun 2026', 'SK dan Piagam izin operasional', 'BA.00', '2026-02-23', '2026-02-23', '6250-B-0144.pdf', 'Bimas Islam', 9),
(8745, 145, 'Majelis Taklim Miftahul Ulum Kec.Miftahul Ulum Kec.Curugbitung', 'B-0145 Tahun 2026', 'Sk dan Piagam izin operasional', 'BA.00', '2026-02-23', '2026-02-23', '4830-B-0145.pdf', 'Bimas Islam', 9),
(8746, 146, 'Legalisir Ijazah Paket C An. Wawan Setiawan ', '146/Kk.28.02.01/II/2026', 'Legalisir Ijazah Paket C An. Wawan Setiawan ', 'HM.02.1', '2026-02-23', '2026-02-23', '1192-B-0146.pdf', 'Kepegawaian', 9),
(8747, 147, 'Permohonan Buka Blokir dan Overbooking Rekening Pegawai An. Heni Wahyuni, Zaenal Muttaqin, Nurul Faujiyah', '147/Kk.28.02.01/KU.00.1/02/2026', 'Permohonan Buka Blokir dan Overbooking Rekening Pegawai An. Heni Wahyuni, Zaenal Muttaqin, Nurul Faujiyah', 'KU.00.1', '2026-02-23', '2026-02-23', '1866-B-0147.pdf', 'Keuangan ', 9),
(8748, 148, 'Kepala KPPN Rangkasbitung ', 'B-0148/Kk.28.03/KU.00.1/02/2026', 'Penyampaian Laporan Keuangan Kementerian/Lembaga Ditjen Penyelenggara Haji dan Umroh Kankemenag Kab.Lebak (416613) untuk periode yang berakhir 31 Desember 2025 (Unaudited)', 'KU.00.1', '2026-02-25', '2026-02-25', '5106-B-0148.pdf', 'Keuangan ', 9),
(8749, 149, 'Kepala KPPN Rangkasbitung ', 'B-0149/Kk.28.03/KU.00.1/2/2026', 'Penyampaian Laporan Keuangan Kementerian/Lembaga Ditjen Pendidikan Madrasah Kankemenag Kab.Lebak (416612) untuk periode yang berakhir 31 Desember 2025 (Unaudited)', 'KU.00.1', '2026-02-25', '2026-02-25', '9115-B-0149.pdf', 'Keuangan', 9),
(8750, 150, 'Kepala BJB Syariah Rangkasbitung', 'B-0150/Kk.28.02.01/KU.00/02/2026', 'Permohonan Overbooking Potongan TPG', 'KU.00', '2026-02-25', '2026-02-25', '2868-B-0150.pdf', 'Keuangan', 9),
(8751, 151, 'Kepala KPPN Rangkasbitung ', 'B-0151/Kk.28.03/KU.00.1/02/2026', 'Penyampaian Laporan Keuangan Kementerian/Lembaga Ditjen Sekjen Kankemenag Kab.Lebak (416610) untuk periode yang berakhir 31 Desember 2025 (Unaudited)', 'KU.00.1', '2026-02-25', '2026-02-25', '3114-B-0151.pdf', 'Keuangan', 9),
(8752, 152, 'Kepala KPPN Rangkasbitung', 'B-0152/Kk.28.03/KU.00.1/02/2026', 'Penyampaian Laporan Keuangan Kementerian/Lembaga Ditjen Bimas Islam Kankemenag Kab.Lebak (416611) untuk periode yang berakhir 31 Desember 2025 (Unaudited)', 'KU.00.1', '2026-02-25', '2026-02-25', '2425-B-0152.pdf', 'Keuangan', 9),
(8753, 153, 'Hendra Mulyadi', 'B-0153/Kk.28.02.01/KS.01.5/02/2026', 'Surat Izin Pemakaian (SIP) Kendaraan Dinas Bermotor', 'KS.01.5', '2026-02-25', '2026-02-25', '7087-B-0153.pdf', 'BMN', 9),
(8754, 154, 'Slamet dan Didi', 'B-0154/Kk.28.02.02/PP.01.1/02/2026', 'Surat Tugas', 'PP.01.1', '2026-02-25', '2026-02-25', '4899-B-0154.pdf', 'Penmad', 9),
(8755, 155, 'Majlis Talim Al hidayah Kec. Banjarsari', 'B-0155 Tahun 2026', 'SK dan Piagam izin operasional', 'BA.00', '2026-02-25', '2026-02-25', '6208-B-0155.pdf', 'Bimas Islam', 9),
(8756, 156, 'Majelis Taklim At Hijrah Kec.Banjarsari', 'B-0156 Tahun 2026', 'SK dan Piagam izin operasional', 'BA.00', '2026-02-25', '2026-02-25', '3688-B-0156.pdf', 'Bimas Islam', 9),
(8757, 157, 'KUA Cijaku', 'B-0157/KK.28.02.01/KS.01.3/02/2026', 'Berita Acara Serah Terima Akta Hibah', 'KS.01.3', '2026-02-26', '2026-02-26', '9391-B-0157.pdf', 'Bimas Islam', 9),
(8758, 158, 'BRI Cabang Rangkasbitung', 'B-0158/Kk.28.02.01/KU.00/02/2026', 'Permohonan Over booking Gaji Pegawai bulan Maret 2026', 'KU.00', '2026-02-27', '2026-02-27', '2046-B-0158.pdf', 'Keuangan ', 9),
(8759, 159, 'KPPN Rangkasbitung', 'B-0159/Kk.28.02.01/KU.00.1/003/2026', 'Laporan Saldo Rekning Bulan Februari 2026', 'KU.00.1', '2026-03-02', '2026-03-02', '998-B-0159.pdf', 'Keuangan ', 9),
(8760, 160, 'BRI KCP Rangkasbitung', 'B-160/Kk.28.02.01./Ku.00/03/2026', 'Surat Perintah Pendebitan Rekening (SPPR)', 'KU.00', '2026-03-02', '2026-03-02', '4410-B-0160.pdf', 'Keuangan ', 9),
(8761, 161, 'KPPN Rangkasbitung', 'B-0161/Kk.28.02.01/BU.00.1/02/2026', 'Laporan Saldo Rekening Bulan Februari 2026', 'KU.00.1', '2026-03-02', '2026-03-02', '9513-B-0161.pdf', 'Keuangan ', 9),
(8762, 162, 'Rouf,S,Pd.I', 'B-0162/Kk.28.02.01/KP.01/03/2026', 'Berita Acara Serah Terima SK Pensiun', 'HM.00', '2026-03-02', '2026-03-02', '1331-B-0162.pdf', 'Kepegawaian', 9),
(8763, 163, 'Agus Muhajir', 'B-0163/Kk.28.02.01/KP.00.3/03/2026', 'Surat Keterangan Menjalankan Tugas (SKMT) Kepengawasan', 'PP.00.3', '2026-03-03', '2026-03-03', '4704-B-0163.pdf', 'Pengawas', 9),
(8764, 164, 'Nidaul Hasanah', 'B-0164/Kk.28.02.01/PP.00.3/03/2026', 'SKMT Kepengawasan', 'PP.00.3', '2026-03-03', '2026-03-03', '7739-B-0164.pdf', 'Pengawas', 9),
(8765, 165, 'Pimpinan BJBS Cabang Rangkasbitung ', 'B-0165/Kk.28.02.1/KU.00.3/3/2026', 'Permohonan overbooking potongan TUKIN', 'KU.00.3', '2026-03-04', '2026-03-04', '7900-B-0165.pdf', 'Keuangan', 9),
(8766, 166, 'Iwan Falahudin', 'B-0166/Kk.28.02.01/KU.00./03/2026', 'Surat Pernyataan Tanggung Jawab Mutlak', 'KU.00', '2026-03-04', '2026-03-04', '8214-B-0166.pdf', 'Keuangan ', 9),
(8767, 167, 'Guru Penerima TPG PAI  Bukan Pegawai Negeri Sipil', 'B-0167 Tahun 2026', 'SK Guru Penerima TPG PAI Bukan Pegawai Negeri Sipil TA 2026', 'PP.00.2', '2026-03-04', '2026-03-04', '2179-B-0167.pdf', 'PAIS', 9),
(8768, 168, 'BJBS Rangkasbitung', 'B-0168/Kk.28.02.01/KU.00/03/2026', 'Permohonan Blokir Rekening Pegawai', 'KU.00', '2026-03-04', '2026-03-04', '', 'Keuangan ', 9),
(8769, 169, 'Kepala Kanwil DJPBN Prov. Banten', 'B-0169/Kk.28.02.01/KS.01/3/2026', 'Permohonan Penerbitan Nomor Register Hibah', 'KS.01', '2026-03-04', '2026-03-04', '6117-B-0169.pdf', 'Keuangan ', 9),
(8770, 170, 'Badrudin', 'B-0170/Kk.28.02.01/KS.01/03/2026', 'Naskah Perjanjian Hibah atas Tanah', 'KS.01', '2026-03-04', '2026-03-04', '9375-B-0170.pdf', 'Keuangan ', 9),
(8771, 171, 'Badrudin', 'B-0171/KK.28.02.01/KS.01/03/2026', 'Ringkasan Hibah', 'KU.00', '2026-03-04', '2026-03-04', '6809-B-0171.pdf', 'Keuangan ', 9),
(8772, 172, 'Badrudin', 'B-0172/Kk.28.02.02/KS.01/03/2026', 'Berita Acara Serah Terima Hibah', 'KS.01', '2026-03-04', '2026-03-04', '3688-B-0172.pdf', 'Keuangan ', 9),
(8773, 173, 'Badrudin', 'B-0173/Kk.28.02.1/KS.01/03/2026', 'Surat Pernyataan telah menerima hibah langsung (SPTMHL)', 'KU.00', '2026-03-04', '2026-03-04', '559-B-0173.pdf', 'Keuangan ', 9),
(8774, 174, 'Mushola Al-Mutadorin Ke.Banjarsari', 'B-0174 Tahun 2026', 'SK dan Piagam ijin operasional', 'BA.00', '2026-03-05', '2026-03-05', '3831-B-0175.pdf', 'Bimas Islam', 9),
(8775, 175, 'Bank BRI Cabang Rangkasbiung', 'B-0175/KK.28.02.01/KU.01/03/2026', 'Permohonan Overbooking Uang Makan Bulan Februari 2026', 'KU.01', '2026-03-05', '2026-03-05', '484-B-0175.pdf', 'Keuangan', 9),
(8776, 176, 'Suhayah', 'B-0176/Kk.28.02.01/KP.01/03/2026', 'Berita Acara Pemberian Pensiun', 'KP.01', '2026-03-05', '2026-03-05', '9237-B-0176.pdf', 'Kepegawaian', 9),
(8777, 177, 'Rodiah', 'B-0177/Kk.28.02.1/KP.01/03/2026', 'Berita Acara serah terima pemberian pensiun', 'KP.01', '2026-03-05', '2026-03-05', '1735-B-0177.pdf', 'Kepegawaian', 9),
(8778, 178, 'BJBS KCP Rangkasbitung', 'B-0178/Kk.28.02.01/KU.00/01/2026', 'Permohonan over booking penghasilan pegawai Bulan Maret 2026', 'KU.00', '2026-03-05', '2026-03-05', '58-B-0178.pdf', 'Keuangan', 9),
(8779, 179, 'Kepala Kantor Kementerian Agama Kab. Lebak', 'B-0179/Kk.28.02.06/KU.00/03/2026', 'Permohonan Pencairan PNBP NR Jasa Profesi dan Transpot Bulan Februari 2026', 'KU.00', '2026-03-05', '2026-03-05', '9080-B-0179.pdf', 'Bimas Islam', 9),
(8780, 180, 'BJB Syariah Rangkasbitung', 'B-0180/Kk.28.02.01/KU.00/03/2026', 'Permohonan Blokir Rekening Pegawai', 'KU.00', '2026-03-09', '2026-03-09', '9198-B-0180.pdf', 'Keuangan ', 9),
(8781, 181, 'BRI Cabang Rangkasbitung', 'B-0181/Kk.28.02.01/KU.00/03/2026', 'Permohonan Blokir Rekening Pegawai', 'KU.00', '2026-03-09', '2026-03-09', '8237-B-0181.pdf', 'Keuangan ', 9),
(8782, 182, 'MDT Ula Raabiyatul Mubarok Kec.Curugbitung', 'B-0182 Tahun 2026', 'SK dan Piagam ijin Operasional', 'PP.008', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8783, 183, 'MDT Ula Darun Nadwah Kec.Cimarga', 'B-0183 Tahun 2026', 'SK dan Piagam ijin operasional', 'PP.00.8', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8784, 184, 'MDT Ula Irsadul Mubtadiin Kec.Banjarsari', 'B-0184 tahun 2026', 'SK dan Piagam ijin operasional', 'PP.00.8', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8785, 185, 'MDT Ula Darul Wasiah kec cimarga', 'B-0185 tahun 2026', 'SK dan Piagam ijin operasional', 'PP.00.7', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8786, 186, 'MDT Ula Qolbun Salim Kec cibadak', 'B 0186 TAHUN 2026', 'SK dan Piagam Izin Operasional', 'PP.00.7', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8787, 187, 'MDT Ula Miftahul Ulum Kec cibadak', 'B 0187 THN 2026', 'Sk dan Piagam Ijin Opresional', 'PP.007', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8788, 188, 'MDT Ula az Zahra Bani Baho kec curungbitung', 'B 0188 THN 2026', 'Sk dan Piagam Ijin Opresional', 'PP.00.7', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8789, 189, 'AL Amin kp Pasir gombrong Kec Cirinten  ', 'B 0189 THN 2026', 'SK dan Piagam Ijin Opresional', 'PP.00.7', '2026-03-09', '2026-03-09', '', 'Pontren', 9),
(8790, 190, 'Pimpinan BRI Cabang Rangkasbitung', 'B-0190/Kk.28.02.01/KU.00/03//2026', 'Permohonan Over Booking Penghasilan Pegawai Bulan Maret 2026', 'KU.00', '2026-03-09', '2026-03-09', '4983-B-0190.pdf', 'Keuangan ', 9),
(8791, 191, 'TPG Guru,Pengawas dan PPPK', 'B-0191 Tahun 2026', 'SK Penerima TPG Guru,Pengawas dan PPPK', 'PP.00.2', '2026-03-09', '2026-03-09', '', 'Pais', 9),
(8792, 192, 'Upiah', 'B-0192/Kk.28.02.01/KP.01/03//2026', 'Berita Acara Pemberian Pensiun', 'KP.01', '2026-03-09', '2026-03-09', '9323-B-0192.pdf', 'Kepegawaian', 9),
(8793, 193, 'Iwan Falahudin', 'B-0193/Kk.28.02.04/PP.00.2/03//2026', 'SPTJM', 'PP.00.2', '2026-03-10', '2026-03-10', '2217-B-0193.pdf', 'Pais', 9),
(8794, 194, 'TPG PNS Pengawas PPPK', 'B-0194 Tahun 2026', 'SK Penerima TPG PNS Pengawas PPPK', 'PP.00.2', '2026-03-10', '2026-03-10', '', 'Pais', 9),
(8795, 195, 'BJBS Rangkasbitung', 'B-0195/Kk.28.02.01/KU.00/03/2026', 'Permohonan Overbooking Potongan TPG', 'KU.00', '2026-03-10', '2026-03-10', '', 'Keuangan ', 9),
(8796, 196, 'BRI Cabang Rangkasbitung', 'B-0196/Kk.28.02.01/KU.00/03/2026', 'Permohonan Buka Blokir Rekening Pegawai', 'KU.00', '2026-03-11', '2026-03-11', '9420-B-0196.pdf', 'Keuangan ', 9),
(8797, 197, 'Iwan Falahudin', 'B-0197/Kk.28.02.04/PP.00.2/03/2026', 'SPTJM', 'PP.00.2', '2026-03-11', '2026-03-11', '3608-B-0197.pdf', 'Pais', 9),
(8798, 198, 'Iwan Falahudin', 'B-0198/Kk.28.02.01/KU.00/03/2026', 'SPTJM', 'PP.00.2', '2026-03-11', '2026-03-11', '8888-B-0197.pdf', 'Pais', 9),
(8799, 199, 'BJBS Rangkasbitung', 'B-0199/Kk.28.02.01/KU.00/03/2026', 'Permohonan Buka Blokir Rekening Pegawai', 'KU.00', '2026-03-12', '2026-03-12', '', 'Keuangan ', 9),
(8800, 200, 'BJBS Rangkasbitung', 'B-0200/Kk.28.02.01/KU.00/03/2026', 'Buka Blokir Rekening Pegawai', 'KU.00', '2026-03-12', '2026-03-12', '', 'Keuangan ', 9),
(8801, 201, 'GURU TPG PAI Non PNS', 'B-0201 Tahun 2026', 'SK Penetapan Guru Penerima TPG PAI Non PNS', 'PP.00.2', '2026-03-12', '2026-03-12', '6504-B-0201.pdf', 'Pais', 9),
(8802, 202, 'BJBS Rangkasbitung', 'B-0202/Kk.28.02.01/KU.00/03/2026', 'Permohonan Overbooking Potongan TPG', 'KU.00', '2026-03-12', '2026-03-12', '6681-B-0202.pdf', 'Keuangan ', 9),
(8803, 203, 'Kepala Dinas Pekerjaan Umum Dan Penetaan Ruang (PUPR) Kab. Lebak', 'B-0203/Kk.28.02.6/KS.01/03/2026', 'Permohonan Rekomendasi Tata Ruang Kantor Urusan Agama Kecamatan', 'KS.01', '2026-03-12', '2026-03-12', '7128-B-0203.pdf', 'Bimas Islam', 9),
(8804, 204, 'Kepala Cabang Bank BRI Cabang Rangkasbitung ', 'B-0204/Kk.28.02.01/KU.00/01/03/2026', 'Permohonan Over Booking Rekening Pegawai', 'KU.00.1', '2026-03-12', '2026-03-12', '2968-B-0204.pdf', 'Keuangan ', 9),
(8805, 205, 'Kepala Cabang Bank BJB Syariah ', 'B-0205/Kk.28.02.01/KU.00/I/03/2026', 'Permohonan Over Booking Rekening Pegawai', 'KU.00.1', '2026-03-12', '2026-03-12', '2150-B-0205.pdf', 'Keuangan ', 9),
(8806, 206, 'Iwan Falahudin', 'B-0206/Kk.28.02.04/PP.00.2/03/2026', 'SPTJM', 'PP.00.2', '2026-03-13', '2026-03-13', '7738-B-0206.pdf', 'Pais', 9),
(8807, 207, 'KPPN Rangkasbitung', 'B-0207/Kk.28.02.01/KU.00/03/2026', 'SURAT PERNYATAAN', 'KU.00', '2026-03-13', '2026-03-13', '7439-B-207.pdf', 'Keuangan ', 9),
(8808, 208, 'Iwan Falahudin', 'B-0208/Kk.28.02.04/PP.00.2/03/2026', 'SPTJM', 'PP.00.2', '2026-03-13', '2026-03-13', '1218-B-0208.pdf', 'Pais', 9),
(8809, 209, 'TPG PNS PPPK PENUH WAKTU DAN PPPK PARUH WAKTU', 'B-0209 Tahun 2026', 'SK Penetapan Penerima TPG guru PAI pns pppk ', 'PP.00.2', '2026-03-16', '2026-03-16', '', 'Pais', 9),
(8810, 210, '-', '-', '-', 'KU.00', '2026-03-17', '2026-03-17', '', '-', 9),
(8811, 211, 'BRI Cabang Rangkasbitung', 'B-0211/Kk.28.02.01/KU.00/03/2026', 'Permohonan Over booking Gaji Pegawai Bulan April 2026', 'KU.00.1', '2026-03-30', '2026-03-30', '8036-B-0211.pdf', 'Keuangan ', 9),
(8812, 212, 'TASPEN', 'B-0212/kk.28.02.01/KU.00.1/3/2026', 'Kutipan Perincian Penerimaan Gaji', 'KU.00.1', '2026-03-30', '2026-03-30', '6775-B-0212.pdf', 'Keuangan ', 9),
(8813, 213, 'Kepala Kantor Pelayanan Perbendaharaan Negara Rangkasbitung ', 'B-0213/Kk.28.02.01/KS.01/03/2026', 'Surat Perintah Pengesahan Pendapatan Hibah Langsung Bentuk Barang/Jasa/Surat Berharga', 'KS.01.1', '2026-03-04', '2026-03-30', '2108-B-0213.pdf', 'Kesekretariatan', 9),
(8814, 214, 'Kepala Kantor ', 'B-0214/Kk.28.02.04/pp.00.2/03/2026', 'SPTJM Tunjangan Profesi', 'PP.00.2', '2026-03-30', '2026-03-30', '4930-B-0214.pdf', 'SPTJM ', 9),
(8815, 215, 'PUPR Kab. Lebak', 'B-0215/Kk.28.02.01/KS.01/03/2026', 'Surat Pengantar Surat Permohonan Rekomendasi Tata Ruang KUA Kec. Cigemblong, Kec.Cijaku, Kec. Sajira, Kec. Cipanas', 'KS.01', '2026-03-31', '2026-03-31', '3384-B-0215.pdf', 'Bimas', 9),
(8816, 216, 'KPPN Rangkasbitung', 'B-1235/Kk.28.02.01/KS.01.3/08/2024', 'Laporan saldo rekening bulan maret 2026', 'KU.00.1', '2026-03-31', '2026-03-31', '9382-B-0216.pdf', 'Keuangan ', 9),
(8817, 217, 'Pimpinan BRI Cabang Rangkasbitung', 'B-0217 Tahun 2026', 'Overbooking Wakaf Uang', 'KU.00.3', '2026-03-31', '2026-03-31', '7858-B-217.pdf', 'Pimpinan BRI', 9),
(8818, 218, 'Pimpinan BRI Cabang Rangkasbitung', 'B-0218', 'Overbooking', 'KU.00.3', '2026-03-31', '2026-03-31', '7362-B-0218.pdf', 'Pimpinan BRI', 9),
(8819, 219, 'Pimpinan Cabang BRI Rangkasbitung ', 'B-0219/Kk.28.02.01/KU.00/1/04/2026', 'Permohonan Pemblokiran Pembayaran Tunjangan Profesi ', 'KU.00', '2026-04-01', '2026-04-01', '1201-B-0219.pdf', 'Keuangan ', 9),
(8820, 220, 'Pimpinan BRI Cabang Rangkasbitung', 'B-0220/Kk.28.02.01/KU.00/I/04/2026', 'Permohonan Pemblokiran  Rekening Gaji An. Jumar', 'KU.00.1', '2026-04-01', '2026-04-01', '6622-B-0220.pdf', 'Keuangan ', 9),
(8821, 221, 'SMK Negeri 1 Kalanganyar', 'B-0221/KK.28.02.01/HM.00/04/2026', 'Sertifikat Prakerin', 'HM.00', '2026-04-02', '2026-04-02', '', 'Humas', 9),
(8822, 222, 'Mahmudah ', 'B-0222/Kk.28.02.01/KU.00/04/2026', 'Surat Keterangan Penghasilan ', 'KU.00', '2026-04-02', '2026-04-02', '1939-B-0222.pdf', 'Keuangan ', 9),
(8824, 223, 'Dra Cucun Sriwayuni', 'B-0223/Kk.28.02.01/KP.01/04/2026', 'Berita Acara Serah Terima Pensiun', 'KP.01', '2026-04-06', '2026-04-06', '3940-B-0223.pdf', 'Kepegawaian', 9),
(8825, 224, 'Dra Ayi Mulyana ', 'B-0224/Kk.28.02.01/KP.02/04/2026', 'Berita Acara Serah Terima Pensiun', 'KP.01', '2026-04-06', '2026-04-06', '6105-B-0224.pdf', 'Kepegawaian', 9),
(8826, 225, 'Bank BRI Cabang Rangkasbitung', 'B-0225/kk.28.02.01/KU.00/I/04/2026', 'Permohonan Buka Pemblokiran Pembayaran Tunjangan Profesi ', 'KU.00', '2026-04-06', '2026-04-06', '7284-B-0225.pdf', 'Keuangan ', 9),
(8827, 226, 'Arief Setiawan, S. S. I', 'B-0226/Kk.28.02.01/Ku.00.1/04/2026', 'SURAT KETERANGAN PENGHASILAN', 'KU.00.1', '2026-04-06', '2026-04-07', '5529-B-0226.pdf', 'Keuangan', 9),
(8828, 227, 'BRI Cabang Rangkasbitung', 'B-0227/Kk.28.02.01/KU.01/04/2026', 'Permohonan Uang Makan Bulan Maret 2026', 'KU.01', '2026-04-07', '2026-04-07', '786-B-0227.pdf', 'Keuangan ', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_masuk`
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
-- Dumping data untuk tabel `tbl_surat_masuk`
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
(2637, 60, '011/SMSI-Lebak/I/2026', 'Serikat Media Siber Indonesia (SMSI) Kabupaten Lebak', 'Mohon Dukungan ', 'HM.00', '-', '2026-01-30', '2026-01-30', '9875-M-0060.pdf', 'Kepala Kemenag', 9, ''),
(2638, 61, 'B/115/I/RES.1.11/2026/Reskrim', 'Kepolisian Negara Republik Indonesia Daerah Banten Resor Lebak', 'Bantuan Permintaan Keterangan', 'HM.00', '-', '2026-02-02', '2026-02-02', '8388-M-0061.pdf', 'Kepala Kemenag', 9, ''),
(2639, 62, 'B/58/II/2026', 'KODIM Lebak', 'Undangan Permohonan Personel Peserta Donor Darah', 'HM.00', '2 Lembar ', '2026-02-02', '2026-02-02', '2361-M-0062.pdf', 'Kepala Kemenag', 9, ''),
(2640, 63, '2/kua.28.02.05/02/2026', 'KUA Cipanas', 'Surat Pengantar', 'BA.00', '1 Berkas', '2026-02-03', '2026-02-03', '461-M-0063.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2641, 64, '045/Skr/DWP-Kemenag/02/2026', 'DWP Kemenag Lebak', 'Undangan Pertemuan Rutin dan Pengukuhan', 'HM.00', '1 lembar', '2026-02-04', '2026-02-04', '1981-M-0064.pdf', 'Kepala Kemenag', 9, ''),
(2642, 65, '77/BBP.DPC-LBK/II/2026', 'DPC Badak Banten Perjuangan Kab. Lebak', 'Permohonan Partisipasi Kegiatan', 'HM.01', '-', '2026-02-02', '2026-02-04', '4365-M-0065.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2643, 66, 'B-253/M.6.14/Cp.1/01/2026', 'Kejaksaan Negeri Lebak', 'Mohon Bantuan Rohaniawan', 'BA.05', '1 lembar', '2026-01-29', '2026-02-04', '7317-M-0066.pdf', 'Kepala Kemenag', 9, ''),
(2644, 67, 'B-34/Kw.28.01/OT.00/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyampaian Pelaporan LHKAN Tahun 2026', 'OT.00', '1 Berkas', '2026-02-05', '2026-02-05', '5563-M-0067.pdf', 'Kepala Kemenag', 9, ''),
(2645, 68, 'B-34/Dt.III.V/HM.01/02/2025', 'Kemenag RI Dirjen Bimas Islam', 'Permohonan Penugasan Peserta', 'HM.01', '1 lembar', '2026-02-06', '2026-02-06', '8213-M-0068.pdf', 'Kepala Kemenag', 9, ''),
(2646, 69, 'UND-17/WKN.06/2026', 'Kementerian Keuangan RI Kanwil Direktorat Jenderal Kekayaan Negara Banten', 'Pemutakhiran Data BMN pada aplikasi Sistem Manajemen Aset Negara (SIMAN)', 'KS.00', '1 set', '2026-02-06', '2026-02-06', '2093-M-0069.pdf', 'Kepala Kemenag', 9, ''),
(2647, 70, 'S-092./Kk.11.7/2026', 'Kementrian Haji dan Umroh Kab.Lebak ', 'Kesediaan Menjadi Narasumber Bimbingan Manasik Tingkat Kabupaten  ', 'HJ.00', '1 Berkas', '2026-02-06', '2026-02-06', '4472-M-0070.pdf', 'Kepala Kemenag', 9, ''),
(2648, 71, 'B-0126/Kk.28.02.06/KU.00.1/01/2026', 'Bimas Islam Kemenag Lebak', 'Permohonan pencairan PNBP NR jasa profesi dan transport bulan januari 2026', 'KU.00.1', '-', '2026-02-06', '2026-02-06', '2777-M-0071.pdf', 'Bimas Islam', 9, ''),
(2649, 72, 'B-0126/KK.28.02.06/KU.00/01/2026', ' Kantor Kementrian Agama Kabupaten Lebak Cq Bimas Islam ', 'Permohonan Pencarian PNBP NR Jasa Propesi dan Transpot Bulan Januari 2026', 'KU.00', '1 lembar', '2026-02-06', '2026-02-06', '5983-M-0072.pdf', 'Bimas Islam', 9, 'PTSP/OOM'),
(2650, 73, '001/prpsl-Mediabuser/I/2026', 'Buser Nusantara News', 'Permohonan Bantuan Dana Penataan Kantor', 'HN.00', '-', '2026-02-06', '2026-02-06', '9099-M-0073.pdf', 'Kepala Kemenag', 9, ''),
(2651, 74, '1/Kua.28.02.25/02/2026', 'KUA Kec Cihara', 'Surat Permohonan Blanko Nikah', 'BA.00', '-', '2026-02-06', '2026-02-06', '4253-M-0074.pdf', 'Kepala Kemenag', 9, ''),
(2652, 75, 'B/2134/I/YAN.1.2/2026/SATLANTAS', 'Kepolisian Negara Republik Indonesia Daerah Banten Resor Pandeglang', 'Surat Konfirmasi ETLE', 'HM.00', '2 Lembar ', '2026-02-09', '2026-02-09', '3671-M-0075.pdf', 'Kepala Kemenag', 9, ''),
(2653, 76, '0295/TH/2026', 'Tunas Hijau Surabaya', 'Permohonan Peserta Webinar Nasional Seri 281 Memutus Rantai Kemiskinan', 'HM.00', '-', '2026-02-09', '2026-02-09', '4056-M-0076.pdf', 'Kepala Kemenag', 9, ''),
(2654, 77, '007.06/PMS/PENGKADERAN/II/2026', 'Pergerakan Mahasiswa Sobang', 'Permohonan Bantuan Dana', 'HM.00', '1 Berkas', '2026-02-09', '2026-02-09', '2390-M-0077.pdf', 'Zakat Wakaf', 9, 'PTSP'),
(2655, 78, '01/Kua.28.03.14/Pw.01/2/2026', 'KUA Sajira', 'Permohonan Pengembalian Dana PNBP NR', 'BA.00', '-', '2026-02-10', '2026-02-10', '663-M-0078.pdf', 'Kepala Kemenag', 9, ''),
(2656, 79, 'B-71/Kw.28.01/KU.00.1/02/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Undangan Peserta', 'KU.00.1', '2 Berkas', '2026-02-10', '2026-02-10', '5899-M-0079.pdf', 'Kepala Kemenag', 9, ''),
(2657, 80, 'B-036-05/B.XI.3/HM.01/02/2026', 'Kemenag RI Sekretariat Jenderal', 'Pemberitahuan Pemasangan Jaringan Internet SDWAN dan Pemasangan Infrastruktur Jaringan (Access Point)', 'HM.01', '1 Berkas', '2026-02-11', '2026-02-11', '8337-M-0080.pdf', 'Kepala Kemenag', 9, ''),
(2658, 81, '058/PWWN-BN/II/2026', 'Media  Pemburu Warta  dan Wartawan Nasional  Prov.Banten', 'Permohonan Bantuan dana Mubes 1 dan Perayaan Hari pers Nasional ', 'HM.00', '1 Berkas', '2026-02-11', '2026-02-11', '7008-M-0081.pdf', 'Kepala Kemenag', 9, ''),
(2659, 82, '065/PSY/IQWI/2026', 'DPC IWQI LEBAK', 'Permohonan Bantuan', 'HM.00', '1 Berkas', '2026-02-11', '2026-02-11', '6099-M-0082.pdf', 'Kepala Kemenag', 9, ''),
(2660, 83, 'B.400.4.10/5-Bid.Olahraga/II/2026', 'Dinas Kepemudaan Dan Olahraga', 'Undangan', 'HM.00', '1  Bundel', '2026-02-12', '2026-02-12', '8268-M-0083.pdf', 'Kepala Kemenag', 9, ''),
(2661, 84, 'P-000210/B.II/Kp.07/01/2025', 'Kemenag RI Sekretariat Jenderal', 'Penyampaian Surat Keputusan Pengalihan Pegawai Aparatur Sipil Negara', 'Kp.07', '1  Bundel', '2026-02-12', '2026-02-12', '1459-M-0084.pdf', 'Kepala Kemenag', 9, ''),
(2662, 85, 'B-400/38-BKR/II/3026', 'SETDA LEBAK', 'Undangan Pawai Tarhib Menyambut Bulan Suci Ramadhan 1447 H/2026 M', 'HM.01', '1', '2026-02-10', '2026-02-12', '504-M-0085.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2663, 86, '25/Ds.Sip/II/2026', 'Desa Sipayung Kec. Cipanas', 'Pemberitahuan', 'HM.00', '1  Bundel', '2026-02-12', '2026-02-12', '8711-M-0086.pdf', 'Bimas Islam', 9, ''),
(2664, 87, '170/84-DPRD/II/2026', 'DPRD KAB. LEBAK', 'Undangan Rapat Koordinasi', 'HM.00', '-', '2026-02-13', '2026-02-13', '2355-M-0087.pdf', 'Kepala Kemenag', 9, ''),
(2665, 88, '004/MDTA-MU/I/2026', 'Madrasah Diniyah Takmiliyah Awwaliyah Miftahul Ulum Kec.Curugbitung', 'Permohonan Perpanjangan Izin Operasional MDT', 'PP.00.8', '1  Bundel', '2026-02-13', '2026-02-13', '6729-M-0088.pdf', 'Kepala Kemenag', 9, ''),
(2666, 89, 'B-022/BAZNAS/LBK/II/2026', 'BAZNAS Kabupaten Lebak', 'Penyebarluasan Edaran Penghimpunan Zakat Fitrah dan Uang Fidyah Ramadan 1447 H', 'HM.00', '2 Lembar ', '2026-02-13', '2026-02-13', '705-M-0089.pdf', 'Kepala Kemenag', 9, ''),
(2667, 90, 'ISTIMEWA', 'Pergerakan Mahasiswa Islam Indonesia', 'Undangan', 'HM.00', '2 Lembar ', '2026-02-13', '2026-02-13', '6099-M-0090.pdf', 'Kepala Kemenag', 9, ''),
(2668, 91, '010/UND/DDA-AP-02/PDPM/1447', 'DKM Mesjid Agung Al-Araaf GOW Kab.Lebak dan Saimah Kab.Lebak', 'Undangan', 'HM.00', '-', '2026-02-13', '2026-02-13', '693-M-0091.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2669, 92, '002/PHBI-LBK/II/2026', 'PHBI Kab.Lebak', 'Permohonan Kesediaan Menjadi Qori dan Penceramah Jelang Buka Puasa di Mesjid Agung Al-Araaf', 'BA.00', '1 Berkas', '2026-02-13', '2026-02-13', '717-M-0092.pdf', 'Kepala Kemenag', 9, ''),
(2670, 93, '0', 'MEDIA NUSANTARA', 'Permohonan Bantuan', 'HM.00', '-', '2026-02-13', '2026-02-13', '6850-M-0093.pdf', 'Kepala Kemenag', 9, ''),
(2671, 94, 'b-25/Kw.28.01.01/KS.01.1/02/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyelesaian Transfer Keluar Transfer Masuk Aset BMN (KDP) Tahun Anggaran 2025', 'KS.01.1', '1 Berkas', '2026-02-18', '2026-02-18', '5335-M-0094.pdf', 'Kepala Kemenag', 9, ''),
(2672, 95, 'B-093/SJ/B.VII.1/BA.02/02/2026', 'Kemenag RI Sekretariat Jenderal', 'Undangan', 'BA.02', '2 Berkas', '2026-02-18', '2026-02-18', '2211-M-0095.pdf', 'Kepala Kemenag', 9, ''),
(2673, 96, '421.1/037/TK-AQ/II/2026', 'Taman Kanak-Kanak AL-Qudwah Kalanganyar', 'Surat Permohonan Dana', 'BA.00', '1 Berkas', '2026-02-19', '2026-02-19', '7678-M-0096.pdf', 'Kepala Kemenag', 9, ''),
(2674, 97, '395/SEK.W29-U3/UND.1/II/2026', 'Pengadilan Negeri Rangkasbitung', 'Permohonan Bantuan menjadi Rohaniawan', 'BA.00', '-', '2026-02-19', '2026-02-19', '7849-M-0097.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2675, 98, 'B-74/Kk.28.02.07/BA.03/02/2026', 'PHBI Kab.Lebak', 'Permohonan Bantuan Komsumsi Buka Puasa di Masjid Agung Al-Araaf', 'HM.00', '1 Berkas', '2026-02-19', '2026-02-20', '6118-M-0098.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2676, 99, 'B-88/Kw.28.02/PP.00/02/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Jadwal Ujian Madrasah (UM) Jenjang MI,MTs dan MA Tahun Ajaran 2025/2026', 'PP.00', '-', '2026-02-23', '2026-02-23', '5261-M-0099.pdf', 'Kepala Kemenag', 9, ''),
(2677, 100, 'B-90/Kw.28.02/KU.05/02/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Penyampaian Penyaluran Bantuan Operasional Penyelenggaraan Raudlaul Athfal (BOP RA) dan Bantuan Operasional Sekolah (BOS) pada Madrasah  Tahap I Tahun Anggaran 2026', 'KU.05', '1 Bundel', '2026-02-23', '2026-02-23', '1875-M-0100.pdf', 'Kepala Kemenag', 9, ''),
(2678, 101, '13/Kw.28.02/PP/02/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Undangan', 'PP.00', '2 Lembar ', '2026-02-24', '2026-02-24', '2706-M-0101.pdf', 'Kepala Kemenag', 9, ''),
(2679, 102, '029/PC/B/XII-X//7354-7455/IX/25', 'IPPNU', 'Permohonan Bantuan Dana', 'HM.00', '1 Berkas', '2026-02-24', '2026-02-24', '9956-M-0102.pdf', 'Kepala Kemenag', 9, ''),
(2680, 103, '400.14.5.4/206/2026', 'SMK Negeri 1 Rangkasbitung', 'Permohonan Tempat Praktik Kerja Lapangan', 'HM.00', '1 lembar', '2026-02-24', '2026-02-24', '202-M-0103.pdf', 'Kepala Kemenag', 9, ''),
(2681, 104, '035/BAZNAS/LBK/II/2026', 'BAZNAS Kabupaten Lebak', 'Undangan Rapat Koordinasi', 'BA.00', '1 lembar', '2026-02-24', '2026-02-24', '121-M-0104.pdf', 'Kepala Kemenag', 9, ''),
(2682, 105, '02/THR/Ormas LAPBAS/2026', 'Laskar Pendekar Banten Sejati', 'Permohonan Bantuan THR', 'HM.00', '-', '2026-02-24', '2026-02-24', '4301-M-0105.pdf', 'Kepala Kemenag', 9, ''),
(2683, 106, 'B-87/kw.28.04/HM.01/02.2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Optimalisasi Penghimpunan zakat, Infaq dan sedekah ASN Kementerian Agama Se-Provinsi Banten ', 'HM.01', '1', '2026-02-18', '2026-02-24', '4923-M-0106.pdf', 'Kepala Kemenag', 9, ''),
(2684, 107, '421.5/37-SMKN1 WRG/II/2026', 'SMK Negeri 1 Warunggunung', 'Surat Permohonan dana', 'HM.00', '1 Berkas', '2026-02-24', '2026-02-24', '9017-M-0107.pdf', 'Kepala Kemenag', 9, ''),
(2685, 108, 'Sr-0165/KJMI/239', 'Jurnal Media Indonesia ', 'Bantuan Tunjangan Hari Raya', 'HM.00', '-', '2026-02-25', '2026-02-25', '8046-M-0108.pdf', 'Kepala Kemenag', 9, ''),
(2686, 109, 'Sr-0165/BPB/209', 'Barisan Patriot Bela Negara (BPBN)', 'Bantuan Tunjangan Hari Raya Idul Fitri 1447 H', 'HM.00', '-', '2026-02-25', '2026-02-25', '3925-M-0109.pdf', 'Kepala Kemenag', 9, ''),
(2687, 110, 'B-15/KUA.28.02.19/BA.00.2/2/2026', 'KUA Wanasalam', 'Permohonan Biaya Operasional dan Akomodasi Kegiatan Dai', 'BA.00.2', '1 Berkas', '2026-02-25', '2026-02-25', '5289-M-0110.pdf', 'Kepala Kemenag', 9, ''),
(2688, 111, '500/MUS-AM/I/2026', 'Mushola Al-Mutadoriin Kec. Banjarsari', 'Permohonan Ijin Operasional Mushola', 'BA.03.1', '1 Berkas', '2026-02-26', '2026-02-26', '8813-M-0111.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2689, 112, 'B-000/47-Pemb/II/2026', 'SETDA LEBAK', 'Undangan', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '7808-M-0112.pdf', 'Kepala Kemenag', 9, ''),
(2690, 113, 'S-701/KNL.0601/2026', 'KPKNL Serang', 'Tindak Lanjut Kegiatan Pemutakhiran Data BMN Pada Aplikasi SIMAN', 'KU.00', '1  Set', '2026-03-02', '2026-03-02', '8891-M-0113.pdf', 'Kepala Kemenag', 9, ''),
(2691, 114, 'UND/75/III/OPS.1.1/2026', 'Polres Kab. Lebak', 'Undangan Vicon/Zoom Meeting Rakor Lintas Sektoral Ops Ketupat Maung 2026', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '3886-M-0114.pdf', 'Kepala Kemenag', 9, ''),
(2692, 115, '12/KL/LSM-BB/II/2026', 'Lembaga Swadaya Masyarakat Banten Barometer ', 'Permohonan Bantuan Partisipasi', 'HM.00', '-', '2026-03-02', '2026-03-02', '1829-M-0115.pdf', 'Kepala Kemenag', 9, ''),
(2693, 116, '12/PG/STIBP/II/2026', 'Paguyuban Sekilas Tukar Info Bersama Persaudaraan', 'Permohonan Bantuan Partisipasi', 'HM.00', '-', '2026-03-02', '2026-03-02', '8020-M-0116.pdf', 'Kepala Kemenag', 9, ''),
(2694, 117, '03/004/PKM-KUKERTA-STPDN/II-2026', 'STPDN LEBAK', 'Permohonan Bantuan Dana Santunan anak yatim', 'HM.00', '1', '2026-03-02', '2026-03-02', '885-M-0117.pdf', 'Kepala Kemenag', 9, ''),
(2695, 118, '005/MKN.THR/II/2026', 'Media Kompas News.om', 'Permohonan Bantuan Tunjangan Hari Raya (THR)', 'HM.00', '-', '2026-03-23', '2026-03-02', '4828-M-0118.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2696, 119, '010/008/PAN -PEL-PESAN.PP-PK-RML/II.2026', 'Kantor Kementerian Agama Kab. Lebak', 'Permohonan Narasumber', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '1726-M-0119.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2697, 120, '020.02PANPEL-PESAN-PP-FKRML/II/2026', 'Forum Komunikasi Remaja Masjid Lebak', 'Permohonan Bantuan Dana Pesantren Kebangsaan', 'HM.00', '-', '2026-03-08', '2026-03-02', '8090-M-0120.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2698, 121, '423.5/1145-SMK MHI/Wrg/II/2026', 'SMK MULIA HATI INSANI Warunggunung', 'Permohonan Izin Praktik Kerja Lapangan', 'HM.00', '2 Lembar ', '2026-03-27', '2026-03-02', '5003-M-0121.pdf', 'Kepala Kemenag', 9, ''),
(2699, 122, '02/KKPMP/MADA.LBK THR/III/2026', 'Kesatuan Komando Pembela Merah Putih Markas Daerah Kab. Lebak', 'Permohonan Bantuan Tunjangan Hari Raya (THR)', 'HM.00', '1 lembar', '2026-03-03', '2026-03-02', '', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2700, 123, '02/Pewanas/III.2026', 'Pemburu Warta dan Wartawan Nasional Anti Kriminal Kabiro Kab.Lebak', 'Permohonan Bantuan Tunjangan Hari Raya (THR)', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '2230-M-0123.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2701, 124, '002/LSM/APMB/MPD/Lebak/II/2026', 'LSM APMB MPD Kab. Lebak', 'Permohonan Bantuan Hari Raya ', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '9190-M-0124.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2702, 125, '043/Spjb/II/2026', 'Suara Pendidkan Jawa Barat', 'Permohonan dan Bantuan Tunjangan Hari Raya Idul Fitri 1447 H', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '375-M-0125.pdf', 'Kepala Kemenag', 9, ''),
(2703, 126, '0/Spjb/II/2026', 'Suara Transparan Publik', 'Permohonan dan Bantuan Tunjangan Hari Raya', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '8435-M-0126.pdf', 'Kepala Kemenag', 9, ''),
(2704, 127, 'B-300.2/82-bpbd/2026', 'Provinsi Banten', 'Undangan Rapat Koordinasi Perepatan Rehabilitasi dan Rekonstruksi Pascabencana Kabupaten Lebak', 'HM.00', '1 lembar', '2026-03-02', '2026-03-02', '2160-M-0127.pdf', 'Kepala Kemenag', 9, ''),
(2705, 128, '001/Mushola At-Thoriq/V/2026', 'Mushola At-Thoriq Kec.Cibadak', 'Permohonan Bantuan Dana ', 'HM.00', '1  Bundel', '2026-03-02', '2026-03-02', '9192-M-0128.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2706, 129, '000', 'Gabungan Wartawan Indonesia GWI', '-', 'HM.00', '-', '2026-03-02', '2026-03-02', '2651-M-0129.pdf', 'Kepala Kemenag', 9, ''),
(2707, 130, 'B-400/49-bag.Kesra/III/2026', 'SETDA LEBAK', 'Undangan Rapat Pembahasan Insentif Guru Madrasah dari Pemerintah Kab.Lebak TA 2026', 'HM.00', '1 Berkas', '2026-03-03', '2026-03-03', '9831-M-0130.pdf', 'Kepala Kemenag', 9, ''),
(2708, 131, 'B-02/M/S/TU.00.00/03/2026', 'Menteri Sekretaris Negara RI', 'Pengibaran Bendera Negara Setengah Tiang dan Hari Berkabung Nasional', 'HM.00', '-', '2026-03-03', '2026-03-03', '1985-M-0131.pdf', 'Kepala Kemenag', 9, 'PTSP/OOM'),
(2709, 132, 'S-341/Kw.28.01.02/KP.00.1/02/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Tindak Lanjut Penataan Sumber Daya Manusia pada Satuan/Unit Kerja', 'KP.00.1', '1', '2026-03-03', '2026-03-03', '9950-M-0132.pdf', 'Kepala Kemenag', 9, ''),
(2710, 133, 'S-03/Kw.28.01.02/KP.00.3/01/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Larangan Pengangkatan Pegawai Non ASN', 'KP.00.3', '-', '2026-03-03', '2026-03-03', '4705-M-0133.pdf', 'Kepala Kemenag', 9, ''),
(2711, 134, 'B-62/Dt.III/BA.01.1/02/2026', 'Kemenag RI Sekretariat Jenderal Bimbingan Masyarakat Islam', 'Undangan Rapat Virtual Koordinasi Masjid Ramah Pemudik Jelang Hari Raya Idul Fitri 1447 H', 'BA.01.1', '1 Berkas', '2026-03-03', '2026-03-03', '4108-M-0134.pdf', 'Kepala Kemenag', 9, ''),
(2712, 135, '093/DPC-HPB/II/2026', 'DPC Pemuda Banten', 'Permohonan Bantuan Dana', 'HM.00', '-', '2026-03-03', '2026-03-03', '6944-M-0135.pdf', 'Kepala Kemenag', 9, ''),
(2713, 136, '092/LSM.BB/II/2026', 'Lembaga Suadaya Masyarakat Banten Bersama', 'Permohonan Bantuan Dana', 'HM.00', '-', '2026-03-03', '2026-03-03', '819-M-0136.pdf', 'Kepala Kemenag', 9, ''),
(2714, 137, '128/DSAY-RED.PN/03/2026', 'Polisi News.com', 'Donasi Santunan Anak Yatim dan Dhuafa', 'HM.01', '-', '2026-03-03', '2026-03-03', '7603-M-0137.pdf', 'Zawa', 9, ''),
(2715, 138, 'B.400/48-BKR/III/2026', 'Pemkab Lebak Sekda', 'Undangan Peringatan Nuzulul Quran dan Buka Puasa Bersama', 'HM.01', '-', '2026-02-27', '2026-03-04', '462-M-0138.pdf', 'Kepala Kemenag', 9, ''),
(2716, 139, '002/SRJ/THR/II/2026', 'Sriwijayatoday Com ', 'Permohonan Bantuan Dana Tunjangan Hari Raya (THR)', 'KU.05', '-', '2026-03-04', '2026-03-04', '5089-M-0139.pdf', 'Kepala Kemenag', 9, ''),
(2717, 140, '022/PN/THR/II/2026', 'Purnama News Com', 'Permohonana Bantuan Tunjangan Hari Raya (THR)', 'HM.00', '-', '2026-03-04', '2026-03-04', '3010-M-0140.pdf', 'Kepala Kemenag', 9, ''),
(2718, 141, '17/THR/RM/II/2026', 'Radar Metro ', 'Permohonan Bantuan Tunjangan Hari Raya (THR)', 'HM.0', '1 Berkas', '2026-03-05', '2026-03-05', '1004-M-141.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2719, 142, 'B-0179/Kk.28.02.06/KU.00/03/2026', 'Kemenag Lebak Cq.Bimas Islam', 'Permohonan Pencairan PNBP NR Jasa Profesi dan Transpot Bulan Februari 2026', 'KU.00', '-', '2026-03-09', '2026-03-09', '3256-M-0142.pdf', 'Kepala Kemenag', 9, ''),
(2720, 143, 'B-119/Kw.28.04/HM.01/03/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Pelaksanaan Kegiatan Selasar Hangat Lintas Agama dan Joyful Ramadhan dan Santunan  Tebar Harapan Ramadhan', 'HM.01', '-', '2026-03-09', '2026-03-09', '3735-M-0143.pdf', 'Kepala Kemenag', 9, ''),
(2721, 144, '289/KW4-BKR/M/2026', 'Bank BJB', 'Undangan Silahturahmi serta iftar Bersama Kantor Wilayah Kementerian Agama Provinsi Banten', 'HM.00', '1 lembar', '2026-03-09', '2026-03-09', '3819-M-0144.pdf', 'Kepala Kemenag', 9, ''),
(2722, 145, '013/B/GARDA-Banten/II/2026', 'Garda Banten Kab. Lebak', 'Permohonan Bantuan THR', 'HM.00', '-', '2026-03-09', '2026-03-09', '7421-M-0145.pdf', 'Kepala Kemenag', 9, ''),
(2723, 146, '065/PSY/IWQI 2026', 'DPC-IWQI KAB.LEBAK', 'Permohonan Bantuan Dana ', 'HM.00', '2 Lembar ', '2026-02-28', '2026-03-09', '6378-M-0146pdf.pdf', 'Kepala Kemenag', 9, ''),
(2724, 147, '011/ MO/JGR/BTN/III/2026', 'Media Online Com Perwakilan Provinsi Banten', 'Tunjangan Hari Raya', 'HM.00', '1 Berkas', '2026-03-02', '2026-03-09', '947-M-0147.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2725, 148, '006/SK-IIII/2026', 'Kompas Indonesia', 'Permohonan THR', 'HM.00', '-', '2026-03-09', '2026-03-09', '4123-M-0148.pdf', 'Kepala Kemenag', 9, ''),
(2726, 149, '082/SK-PJ/II/2026', 'Progresif Jaya', 'Permohonan THR', 'HM.00', '-', '2026-03-10', '2026-03-10', '7378-M-0149.pdf', 'Kepala Kemenag', 9, ''),
(2727, 150, '015/RN/RT-Red/VI/2026', 'Rasio', 'Permohonan THR', 'HM.00', '-', '2026-03-10', '2026-03-10', '8202-M-0150.pdf', 'Kepala Kemenag', 9, ''),
(2728, 151, '04/Red/ZBNews/IX/2026', 'Media Zona Banten News', 'Permohonan Bantuan THR', 'HM.00', '-', '2026-03-10', '2026-03-10', '9168-M-0151.pdf', 'Kepala Kemenag', 9, ''),
(2729, 152, 'X', 'PT.POKUSBERITANASIONAL.COM', 'Permohonan THR', 'HM.00', '-', '2026-03-11', '2026-03-11', '6425-M-0152.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2730, 153, '99/LEBAK/LSM-BENTAR/II/2026', 'BENTAR Kab.Lebak', 'Permohonan THR', 'HM.00', '-', '2026-03-11', '2026-03-11', '4798-M-0153.pdf', 'Kepala Kemenag', 9, ''),
(2731, 154, '011/FRIC-Lbk/III/2026', 'Fast Respon Indonesia Center ', 'Permohonan Bantuan', 'HM.00', '-', '2026-03-11', '2026-03-11', '3973-M-0154.pdf', 'Kepala Kemenag', 9, ''),
(2732, 155, '121/GPBB/7/3/26', 'Gerakan Pemuda Banten Bersatu', 'Permohonan Bantuan Bukber', 'HM.00', '-', '2026-03-11', '2026-03-11', '276-M-0155.pdf', 'Kepala Kemenag', 9, ''),
(2733, 156, 'B.000.6.3.4/22-BID.P2EPD/III/2026', 'Sekretariat Daerah Pemerintah Kabupaten Lebak', 'Pemenuhan Laporan Kinerja Kada dan Wakada Semester 2 Tahun 2025', 'HM.00', '1 lembar', '2026-03-11', '2026-03-11', '2847-M-0156.pdf', 'Kepala Kemenag', 9, ''),
(2734, 157, '061/BAZNAS-LBK/III/2026', 'BAZNAS Kabupaten Lebak', 'Undangan Pengajian Akbar Ramadhan 1447 H', 'HM.01', '-', '2026-03-11', '2026-03-11', '1234-M-0157.pdf', 'Kepala Kemenag', 9, ''),
(2735, 158, 'B-135/Kw.28.02/KS.00/03/2026', 'Kantor Wilayah Kementrian Agama Prov. Banten', 'Laporan Progress SENSUS BMN', 'KS.00', '1 lembar', '2026-03-12', '2026-03-12', '2674-M-0158.pdf', 'Kepala Kemenag', 9, ''),
(2736, 159, 'S-845/KNL.0601/2026', 'KPKNL Serang', 'Komitmen Pengendalian Gratifikasi di Lingkungan Kantor Pelayanan Kekayaan Negara dan Lelang Serang', 'KU.00', '1 Set', '2026-03-16', '2026-03-16', '2594-M-0159.pdf', 'Kepala Kemenag', 9, ''),
(2737, 160, '500/MT-AM/I/2026', 'Majelis Taklim Al-Mutadoriin Kec. Banjarsari', 'Permohonan ijin operasional', 'BA.00', '1 Berkas', '2026-03-16', '2026-03-16', '3274-M-0160.pdf', 'Kepala Kemenag', 9, ''),
(2738, 161, '0789/TH/2026', 'Tunas Hijau Surabaya', 'Permohonan Peserta Webiner Nasional Seri 290 Konservasi Sumber Air dari Hulu ke Hilir', 'HM.01', '1 Berkas', '2026-03-30', '2026-03-30', '7845-M-0161.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2739, 162, '400.3.12.1/143-SMKN.01-KL/2026', 'SMK Negeri 1 Kalanganyar', 'Permohonan Tempat Kegiatan PKL', 'HM.01', '1 Berkas', '2026-03-25', '2026-03-31', '1178-M-0162.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2740, 163, '003/Pan.03/S.9 IGRA/K4/III/2026', 'Ikatan Guru Raudhatul Athfal (IGRA)', 'Undangan', 'HM.01', '1 Berkas', '2026-03-31', '2026-03-31', '3539-M-0163.pdf', 'Kepala Kemenag', 9, 'PTSP'),
(2741, 164, '2667/SJ/B.VI/HM.00/3/2026', 'Kemenag RI Sekretariat Jenderal', 'Pengaturan Operasional Penggunaan Listrik dan AC', 'HM.00', '-', '2026-04-02', '2026-04-02', '383-M-0164.pdf', 'Kepala Kemenag', 9, ''),
(2742, 165, 'B-106/KK.28.02.02/BA.00/04/2026', 'kemenag kab Lebak Cq. Penmad', 'Undangan Narasumber Pembinaan Pegawai dan Penandatanganan Kinerja di Lingkungan Kantor kementerian Agama Kab.Lebak', 'PP.00.6', '-', '2026-04-02', '2026-04-02', '8942-M-0165.pdf', 'Kepala Kemenag', 9, ''),
(2743, 166, 'B-400.8.2.2/208-Bid.kes/IV/2026', 'Pemerintah Kabupaten Lebak Badan Kesatuan Bangsa dan Politik', 'Permohonan Narasumber', 'HM.00', '-', '2026-04-02', '2026-04-02', '6330-M-0166.pdf', 'Kepala Kemenag', 9, ''),
(2744, 167, 'B.69/Kua.28.02.17/Pw.01/03/2026', 'KUA Kec Cibeber', 'Permohonan Pengembalain Dana PNBP NR', 'PW.01', '1  Bundel', '2026-04-06', '2026-04-06', '5208-M-0167.pdf', 'Bimas Islam', 9, 'PTSP '),
(2745, 168, 'B.400.4.10/15-Bid.Olahraga/IV/2026', 'Sekretariat Daerah Pemerintah Kabupaten Lebak', 'Surat Pengantar Penyampaian Berita Acara Kesepakatan Dispensasi Latihan Bagi Atlet dan Pelatih Kontingen Kab.Lebak pada POPDA XII', 'HM.00', '1  Bundel', '2026-04-04', '2026-04-06', '9737-M-0168.pdf', 'Kepala Kantor', 9, ''),
(2746, 169, 'HP.02.02/328-36.02/IV/2026', 'Kementerian Agraria dan Tata Ruang Badan Pertanahan Nasional Kantor Pertanahan Kabupaten Lebak Provinsi Banten', 'SERTIFIKASI TANAH WAKAF DAN RUMAH IBADAH PADA WILAYAH ADMINISTRASI KABUPATEN LEBAK', 'HM.01', '3 berkas', '2026-04-02', '2026-04-07', '5572-M-0169.pdf', 'Kepala Kemenag', 9, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
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
-- Dumping data untuk tabel `tbl_user`
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
-- Indeks untuk tabel `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);
ALTER TABLE `tbl_instansi` ADD FULLTEXT KEY `status` (`status`);

--
-- Indeks untuk tabel `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indeks untuk tabel `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indeks untuk tabel `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8829;

--
-- AUTO_INCREMENT untuk tabel `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2747;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
