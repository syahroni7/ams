<?php
    //cek session
    if(empty($_SESSION['admin'])){
        $_SESSION['err'] = '<strong>ERROR!</strong> Anda harus login terlebih dahulu.';
        header("Location: ./");
        die();
    } else {

        echo '
        <style type="text/css">
            table {
                background: #fff;
                padding: 5px;
            }
            tr, td {
                border: table-cell;
                border: 1px  solid #444;
            }
            tr,td {
                vertical-align: top!important;
            }
            #right {
                border-right: none !important;
            }
            #left {
                border-left: none !important;
            }
            .isi {
                height: 250px!important;
            }
            .disp {
                text-align: center;
                padding: 1.5rem 0;
                margin-bottom: .5rem;
            }
            .logodisp {
                float: left;
                position: relative;
                width: 110px;
                height: 110px;
                margin: 0 0 0 1rem;
            }
            #lead {
                width: auto;
                position: relative;
                margin: 25px 0 0 75%;
            }
            .lead {
                font-weight: bold;
                text-decoration: underline;
                margin-bottom: -10px;
            }
            .tgh {
                text-align: center;
            }
            #nama {
                font-size: 2.1rem;
                margin-bottom: -1rem;
            }
            #alamat {
                font-size: 16px;
            }
            .up {
                text-transform: uppercase;
                margin: 0;
                line-height: 2.2rem;
                font-size: 1.5rem;
            }
            .status {
                margin: 0;
                font-size: 1.3rem;
                margin-bottom: .5rem;
            }
            #lbr {
                font-size: 20px;
                font-weight: bold;
            }
            .separator {
                border-bottom: 2px solid #616161;
                margin: -1.3rem 0 1.5rem;
            }
            @media print{
                body {
                    font-size: 12px;
                    color: #212121;
                }
                nav {
                    display: none;
                }
                table {
                    width: 90%;
                    font-size: 12px;
                    color: #212121;
                }
                tr, td {
                    border: table-cell;
                    border: 1px  solid #444;
                    padding: 8px!important;

                }
                tr,td {
                    vertical-align: top!important;
                }
                #lbr {
                    font-size: 20px;
                }
                .isi {
                    height: 100px!important;
                }
                .tgh {
                    text-align: center;
                }
                .disp {
                    text-align: center;
                    margin: -.5rem 0;
                }
                .logodisp {
                    float: left;
                    position: relative;
                    width: 80px;
                    height: 80px;
                    margin: .5rem 0 0 .5rem;
                }
                #lead {
                    width: auto;
                    position: relative;
                    margin: 15px 0 0 75%;
                }
                .lead {
                    font-weight: bold;
                    text-decoration: underline;
                    margin-bottom: -10px;
                }
                #nama {
                    font-size: 20px!important;
                    font-weight: bold;
                    text-transform: uppercase;
                    margin: -10px 0 -20px 0;
                }
                .up {
                    font-size: 15px!important;
                    font-weight: normal;
                }
                .status {
                    font-size: 13px!important;
                    font-weight: normal;
                    margin-bottom: -.1rem;
                }
                #alamat {
                    margin-top: -15px;
                    font-size: 13px;
                }
                #lbr {
                    font-size: 17px;
                    font-weight: bold;
                }
                .separator {
                    border-bottom: 2px solid #616161;
                    margin: -1rem 0 1rem;
                }

            }
        </style>

        <body onload="window.print()">

        <!-- Container START -->
            <div id="colres">
                <div class="disp">';
                    $query2 = mysqli_query($config, "SELECT institusi, nama, status, alamat, logo FROM tbl_instansi");
                    list($institusi, $nama, $status, $alamat, $logo) = mysqli_fetch_array($query2);
                        echo '<img class="logodisp" src="./upload/'.$logo.'"/>';
                        echo '<h6 class="up">'.$institusi.'</h6>';
                        echo '<h5 class="up" id="nama">'.$nama.'</h5><br/>';
                        echo '<h6 class="status">'.$status.'</h6>';
                        echo '<span id="alamat">Email: Sekjen_416610@kemenag.go.id</span>';

                    echo '
                </div>
                <div class="separator"></div>';

                $id_surat = mysqli_real_escape_string($config, $_REQUEST['id_surat']);
                $query = mysqli_query($config, "SELECT * FROM tbl_surat_masuk WHERE id_surat='$id_surat'");

                if(mysqli_num_rows($query) > 0){
                $no = 0;
                while($row = mysqli_fetch_array($query)){

                echo '
                    <table class="bordered" id="tbl">
                        <tbody>
                            <tr>
                                <td class="tgh" id="lbr" colspan="5">LEMBAR DISPOSISI</td>
                            </tr>
							<tr>
								<td class="tgh" colspan="5" font-size=10px>PERHATIAN: dilarang memisahkan sehelai surat pun yang digabung dalam berkas ini</td>
							</tr>
							
                            <tr>
                                <td id="right" width="15%"><strong>Nomor Surat</strong></td>
                                <td id="left" width="50%"style="border-right:yes">: '.$row['no_surat'].'</td>
								<td id="right" width="5%"style="border-right:none"> Status:</td>
								<td id="left" width="10%"style="border-right:none"> :1. Asli</td>
								<td id="left" width="20%" style="border-right:none"> 2. Tembusan</td>
                            </tr>
                            <tr>
								<td id="right"><strong>Tanggal Surat</strong></td>
                                <td id="left">: '.indoDate($row['tgl_surat']).'</td>
								<td id="right" style="border-right:none"> Sifat</td>
								<td id="left" colspan="2" style="border-right:none"> : 1. Sangat Segera<br/>
									: 2. Segera<br/>
									: 3. Biasa<br/>
								</td>
                            </tr>
                            
                            
                            
                            <tr>
                                <td id="right"><strong>Diterima Tanggal</strong></td>
                                <td id="left" style="border-right: none;">: '.indoDate($row['tgl_diterima']).'</td>
                                <td id="right"><strong>Indeks Berkas</strong></td>
                                <td id="left" colspan="2" style="border-right: yes;">: '.$row['indeks'].'</td>
                            </tr>
							<tr>
                                <td id="right" colspan="2" style="border-right:none;"><strong>No. Agenda</strong> : '.$row['no_agenda'].'</td>
								<td id="left" colspan="3" style="border-right:none;"><strong>Kode</strong> : '.$row['kode'].'</td>
                            </tr>
							<tr>
                                <td id="right"><strong>Dari</strong></td>
                                <td id="left" colspan="4">: '.$row['asal_surat'].'</td>
                            </tr>
							<tr>
                                <td id="right"><strong>Perihal</strong></td>
                                <td id="left" colspan="4">: '.$row['isi'].'</td>
                            </tr>
							</table rules="cols">
							<table bordered=1>
							<tr>
							
							<th id="Right" height="30px" colspan="2" width="50%" style="border-left:yes"><strong>Disposisi Kankemenag/Kasubag TU Kepada:</strong>
							<td id="left" colspan="5" style="border-left:yes"><strong>Petunjuk:</strong></td>
							<tr>
								<td id="right" rowspan="2"width"=30%" style="border-right:none;">1.  Unit Keuangan<br/>
								2.  Unit Kepegawaian<br/>
								3.  Unit Kerumahtanggaan<br/>
								4.  Seksi Bimas Islam<br/>
								5.  Seksi Pendidikan Madrasah<br/>
								6.  Seksi Pend. Agama Islam<br/></td>
								<td width="30%" rowspan="2"style="border-right;none;">
									7.  Seksi Pend. Diniyah dan Pd. Pontren<br/>
									8.  Seksi Peny. Haji dan Umroh<br/>
									9.  Peny. Zakat Wakaf<br/>
									10. Pokjawas<br/>
									11. FKUB<br/>
									12. Inmas</td>
									<td id="right" width="10%" style="border-bottom:none">1. Setuju<br/>
									2. Tolak<br/>
									3. Teliti&pendapat<br/>
									4. Untuk diketahui<br/>
									5. Selesaikan<br/>
									6. Sesuai catatan<br/>
									7. Untuk perhatian<br/>
									8. Edarkan<br/></td>
									<td id="left" width="10%" style="border-bottom:none">9. Jawab<br/>
									10 Perbaiki<br/>
									11. Bicara dengan saya<br/>
									12. Bicara bersama<br/>
									13. Ingatkan<br/>
									14. Simpan<br/>
									15. Disiapkan<br/>
									16. Harap dihadiri/diwakilkan<br/></td>
								<tr> 
								<td colspan="2">lain-lain : ............................................................................................<br/>
								</td>
								</th>	
                            </tr>
							<td height="50px" colspan="5">CATATAN: </td></th>
							<tr>
                                <td id="right" colspan="2" style="border-right:yes;"><strong>Tanggal Penyelesaian :</strong> </td>
								<td id="left" colspan="2" style="border-right:yes;"><strong>Diajukan kembali Tanggal :</strong> </td>
                            </tr>
							<tr>
								
                                <td id="right"colspan="2">Penerima :</td>
                                <td id="left" colspan="2">Penerima :</td>
                            </tr>
							
							<tr>
                                <td id="right"colspan="2"><strong>Disposisi Kepala Kantor :</strong></td>
                                <td id="left" colspan="2"><strong>Disposisi Kepala Subag TU :<strong></td>
							</tr>
							<tr>';
                            $query3 = mysqli_query($config, "SELECT * FROM tbl_disposisi JOIN tbl_surat_masuk ON tbl_disposisi.id_surat = tbl_surat_masuk.id_surat WHERE tbl_disposisi.id_surat='$id_surat'");

                            if(mysqli_num_rows($query3) > 0){
                                $no = 0;
                                $row = mysqli_fetch_array($query3);{
                                echo '
                            <tr class="isi">
                                <td colspan="2">
                                    <strong>Isi Disposisi :</strong><br/>'.$row['isi_disposisi'].'
                                    <div style="height: 30px;"></div>
                                    <strong>Batas Waktu</strong> : '.indoDate($row['batas_waktu']).'<br/>
                                    <strong>Sifat</strong> : '.$row['sifat'].'<br/>
                                    <strong>Catatan</strong> :<br/> '.$row['catatan'].'
                                    <div style="height: 25px;"></div>
                                </td>
                                <td colspan="2"><strong>Diteruskan Kepada</strong> : <br/>'.$row['tujuan'].'</td>
                            </tr>';
                                }
                            } else {
                                echo '
                                <tr class="isi">
                                    <td colspan="2"><strong>Isi Disposisi :</strong>
                                    </td>
                                    <td colspan="2"><strong>Kepada</strong> : <br/>
									Petunjuk :</td>
                                </tr>';
                            } echo'
				
								<td id="right"colspan="2">Kepada :</td>
                                <td id="left" colspan="2">Kepada :</td>
							</tr>
							<tr>
							<td id="right" colspan="2"style="border-right=yes;">Petunjuk :</td>
								<td id="left" colspan="2">Petunjuk :</td>
                            </tr>
							<td height="40px" colspan="5">Tanggal Penyelesaian: </th><br/>
							Penerima :</td>
                            </tr>
							<tr>';
                            //$query3 = mysqli_query($config, "SELECT * FROM tbl_disposisi JOIN tbl_surat_masuk ON tbl_disposisi.id_surat = tbl_surat_masuk.id_surat WHERE tbl_disposisi.id_surat='$id_surat'");

                            //if(mysqli_num_rows($query3) > 0){
                            //    $no = 0;
                            //    $row = mysqli_fetch_array($query3);{
                            //    echo '
                            //<tr class="isi">
                             //   <td colspan="2">
                            //        <strong>Isi Disposisi :</strong><br/>'.$row['isi_disposisi'].'
                            //        <div style="height: 50px;"></div>
                            //        <strong>Batas Waktu</strong> : '.indoDate($row['batas_waktu']).'<br/>
                            //        <strong>Sifat</strong> : '.$row['sifat'].'<br/>
                            //        <strong>Catatan</strong> :<br/> '.$row['catatan'].'
                            //        <div style="height: 25px;"></div>
                            //    </td>
                            //    <td><strong>Diteruskan Kepada</strong> : <br/>'.$row['tujuan'].'</td>
                            //</tr>';
                            //    }
                            //} else {
                            //    echo '
                            //   <tr class="isi">
                            //        <td colspan="2"><strong>Isi Disposisi :</strong>
                            //        </td>
                            //        <td><strong>Diteruskan Kepada</strong> : </td>
                            //    </tr>';
                            //}
                        } echo '
                </tbody>
            </table>
            <div id="lead">
            
                <div style="height: 50px;"></div>';
            //   $query = mysqli_query($config, "SELECT kepsek, nip FROM tbl_instansi");
            //    list($kepsek,$nip) = mysqli_fetch_array($query);
            //    if(!empty($kepsek)){
            //        echo '<p class="lead">'.$kepsek.'</p>';
            //   } else {
            //        echo '<p class="lead">H. Riza Fachri, S.Kom.</p>';
            //    }
            //    if(!empty($nip)){
            //        echo '<p>NIP. '.$nip.'</p>';
            //    } else {
            //        echo '<p>NIP. -</p>';
            //    }
            //    echo '
            //</div>
        //</div>
        //<div class="jarak2"></div>
    //<!-- Container END -->

    //</body>';
    }
}
?>
