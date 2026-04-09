DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("1","Peny. Zakat Wakaf","-","Biasa","2022-01-05","-","16","9");



DROP TABLE tbl_instansi;

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
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`),
  FULLTEXT KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","KEMENTERIAN AGAMA REPUBLIK INDONESIA","KANTOR KEMENTERIAN AGAMA KABUPATEN LEBAK","Jl. Siliwangi No. 2 Rangkasbitung Telp/fax. 0252 201319","Jl. Siliwangi No. 2 Rangkasbitung","H. Badrusalam, S.Ag","196801031985011005","https://kemenag.go.id","ptspkemenaglebak@gmail.com","logo.jpg","2");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("1","KU.00","Keuangan","K","2");
INSERT INTO tbl_klasifikasi VALUES("2","KS.00","Kesekretariatan","Umum","2");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("1","1","Kepala KPPN Rangkasbitung","0001/KK.28.02/KU.00/01/2022","Pengantar Hardcopy SPM beserta Dokumen Pendukungnya","KU.00","2022-01-03","2022-01-03","","BP PENDIS","3");
INSERT INTO tbl_surat_keluar VALUES("2","2","Kasubag Tu, Para Kasi, JFT dan  Staf","0002/Kk.28.02.01/Kp.01/01","Pembinaan Kepegawaian","Kp. 01","2022-01-03","2022-01-03","","UP","3");
INSERT INTO tbl_surat_keluar VALUES("3","3","Kepala KPPN Rangkasbitung","0003/Kk.28.02.01/KU.01.1/01/2022","Permohonan konfirmasi setoran penerimaan negara satker Ditjen Bimas Islam Kankemenag Kab. Lebak  (416611)","KU.00","2022-01-03","2022-01-03","","Bimas Islam","3");
INSERT INTO tbl_surat_keluar VALUES("4","4","BRI KC Rangkasbitung","0004/Kk.28.02.1/KU.00/01/2022","Permohonan overbooking gaji pegawai bulan Januari 2022 Rev.1","KU.00","2022-01-04","2022-01-04","","BP Setjen","1");
INSERT INTO tbl_surat_keluar VALUES("5","5","Kepala BKAD Rangkasbitung","0005/Kk.28.02.1/ks.00/01/2022","Surat Perjanjian Pinjam Pakai Tanah KUA Kalanganyar","KS.00","2022-01-04","2022-01-04","","Bagian BMN","7");
INSERT INTO tbl_surat_keluar VALUES("6","6","Mesjid Jami At taqwa Kecamatan Muncang","0006/2022","SK dan Piagam ","BA.00","2022-01-05","2022-01-05","","Bimas Islam - Darsih","9");
INSERT INTO tbl_surat_keluar VALUES("7","7","MDTA IBNU SHOLEH - Kec. Maja","0007/2022","SK Ijin Operasional","PP.00","2022-01-05","2022-01-05","","PD Pontren - Heni H","9");
INSERT INTO tbl_surat_keluar VALUES("8","8","MDTA IBNU SHOLEH - Kec. Maja","0008/2022","Piagam MDTA  Ibnu Sholeh ","PP.00","2022-01-05","2022-01-05","","PD Pontren","9");
INSERT INTO tbl_surat_keluar VALUES("9","9","H.M. Abdul Muti, M.Pd","0009/kk.28.02.6/HM.01/01/2022","Surat Pernyataan","HM.01","2022-01-05","2022-01-05","","Yayasan Wakaf Bubah Mubarokah","9");
INSERT INTO tbl_surat_keluar VALUES("10","10","KPPN","0010/kk.28.02/kk.00/01/2022","Pengantar Hard copy SPM berserta dokumen pendukungnya","KU.00","2022-01-05","2022-01-05","","BP Bimas Islam/Romli","9");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
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
  `penerima` varchar(25) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("9","1","S-1951/WKN.06/KNL.01/2021","KPKNL Serang","Salinan Keputusan Menteri Keuangan No. 100/KM.06/WKN.06/KNL.01 tentang Penetapan penggunaan BMN ( Bangunan KUA Kec. Cilograng, KUA Kec. Wanasalam dan KUA Kec. Cleles )","KNL","-","2021-12-29","2022-01-03","","SEKJEN","3","Lia");
INSERT INTO tbl_surat_masuk VALUES("10","2","S-1948/WKN.06/KNL.01/2021","KPKNL Serang","Salinan Keputusan Menteri Keuangan no 098/KM.06/WKN.06/KNL/01/2021","KNL","-","2021-12-27","2022-01-03","","SEKJEN","3","Lia");
INSERT INTO tbl_surat_masuk VALUES("12","3","446/Kua.28.02.13/OT.01/12/2021","KUA Kec. Gunung Kencana","Permohonan Sarana dan Prasarana KUA","OT.01","-","2021-12-29","2022-01-03","","Bimas Islam","3","Lia");
INSERT INTO tbl_surat_masuk VALUES("13","4","001/MDTA  PU/IX/2021","MDTA  Pallahul Ummah Kecamatan Cileles","Permohonan ijin Operasional","PP.00","-","2021-09-10","2022-01-05","","-","9","Irma/lia");
INSERT INTO tbl_surat_masuk VALUES("14","5","02/mesjid /2022","Mesjid Jami At Taqwa Kecamatan Muncang","Permohonan Ijin Operasional","BA.00","-","2022-01-05","2022-01-05","","-","9","Irma/lia");
INSERT INTO tbl_surat_masuk VALUES("15","6","S-45/MK.6/WKN.06/KNL.01/2021","Kementerian keuangan RI","Revisi Lampiran Surat Persetujuan Sewa BMN","KS.00","-","2021-10-07","2022-01-05","","Kasubag/Perencanaan Keuangan dan BMN","9","Irma Novita");
INSERT INTO tbl_surat_masuk VALUES("16","7","1346/ANG/BAZNAS/XII/2021","BAZNAS","Jawaba Pertimbangan pengangkatan Pimpinan BAZNAS Kab. Lebak Periode 2021-2026","OT.00","-","2021-12-31","2022-01-05","","Penyelenggara Zakat Wakaf/Tembusan","9","Irma Novita");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","cahyo","21232f297a57a5a743894a0e4a801fc3","Fadli Kurnia DC","198107142011011006","1");
INSERT INTO tbl_user VALUES("5","Liayuliantini","21232f297a57a5a743894a0e4a801fc3","Lia Yuliantini","-","2");
INSERT INTO tbl_user VALUES("6","tehdevi","ee61e766467546320854c3446ccde3d4","Devi Ariyanti","1985","2");
INSERT INTO tbl_user VALUES("7","keuangan","21232f297a57a5a743894a0e4a801fc3","Eneng Nurhayati","000","3");
INSERT INTO tbl_user VALUES("9","ptsplebak","2d32ea90576f636b4be2236141a11481","Irma Novita","198311032009012004","3");



