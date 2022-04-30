<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="row mb-12">
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-12 col-md-6 mb-4">
               <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Form Input Pengajuan Pinjaman</h6>
                </div>
                <div class="card-body">
                <?php
                  if(isset($_GET['notif'])){
                  if($_GET['notif']=="-Pengajuan-Berhasil"){
                echo "<div class='alert alert-success alert-dismissible'>
                <a style='text-decoration:none;' href='data_pinjaman_anggota.php' type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</a><i class='icon icon-check'></i> Proses Pengajuan Berhasil, Silahkan Tunggu Beberapa Saat, Sampai Data Anda Divalidasi Oleh Manager. Atau silahkan hubungi Admin melalui Telepon: <b>(0361) 4481380  & email: koperasiremajapikat@gmail.com</b>, Untuk Mempercepat Proses Validasi.</b>
                </div>";
                }
              }
              ?>
                  <form method="post" action="proses_simpan_pinjaman_nasabah.php" enctype="multipart/form-data">
                    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                  <script type="text/javascript">
                    $(document).ready(function() {
                    $("#bunga").keyup(function() {
                             var bunga= parseFloat(bunga);
                          });
                        });
                    </script>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Peminjam</label>
                      <div class="col-sm-10">
                        <select class="form-control" name="nasabah" autofocus="autofocus" required="required">
                        <option value="" selected="selected">Pilih Peminjam</option>
                         <?php 
                           $query="SELECT * FROM tbl_nasabah";
                           $sql=mysqli_query($connect, $query);
                           while($data=mysqli_fetch_array($sql)){
                           echo"<option value='".$data['id_nasabah']."''>".$data['id_nasabah']."-".$data['nama_nasabah']."</option>";
                            }
                         ?>
                      </select>
                      </div>
                    </div>
                    <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Periode</label>
                        <div class="col-sm-8">
                            <select name="bulan" class="form-control" required="required">
                                <option value="1">Januari</option>
                                <option value="2">Februari</option>
                                <option value="3">Maret</option>
                                <option value="4">April</option>
                                <option value="5">Mei</option>
                                <option value="6">Juni</option>
                                <option value="7">Juli</option>
                                <option value="8">Agustus</option>
                                <option value="9">September</option>
                                <option value="10">Oktober</option>
                                <option value="11">November</option>
                                <option value="12">Desember</option>
                            </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Tahun</label>
                        <div class="col-sm-8">
                            <select name="tahun" class="form-control" required="required">
                                <?php
                                $mulai= date('Y') - 50;
                                for($i = $mulai; $i<$mulai + 100;$i++){
                                $sel = $i == date('Y') ? ' selected="selected"' : '';
                                echo '<option value="'.$i.'"'.$sel.'>'.$i.'</option>';
                                }
                                ?>
                            </select>
                        </div>
                      </div>
                    </div>
                  </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Tanggal Pinjaman</label>
                      <div class="col-sm-10">
                        <input type="date" class="form-control"  name="tp" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Telepon</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control"  name="tlpn" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Alamat</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control"  name="almat" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Pekerjaan</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="pkj" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Status Peminjam</label>
                      <div class="col-sm-10">
                        <select name="sp" class="form-control" required="required">
                          <option value="" selected="selected">-Pilih Status-</option>
                          <option value="Sudah Menikah">Sudah Menikah</option>
                          <option value="Belum Menikah">Belum Menikah</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Jenis Jaminan</label>
                      <div class="col-sm-10">
                        <select name="jj" class="form-control" required="required">
                          <option value="" selected="selected">-Pilih Jaminan-</option>
                          <option value="BPKB">BPKB</option>
                          <option value="Sertifikat">Sertifikat</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Jenis Bunga</label>
                      <div class="col-sm-10">
                        <select name="jb" class="form-control" required="required">
                          <option value="" selected="selected">-Pilih Jenis Bunga-</option>
                          <option value="Bunga Menurun">Bunga Menurun</option>
                          <option value="Bunga Tetap">Bunga Tetap</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Bunga (%)</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control"  name="bunga" id="bunga" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Jangka Waktu</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control"  name="jw" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Jmlh Pinjaman (Rp)</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control"  name="jp" id="jp" required="required">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Simpan</button>
                        <a href="dashboard.php?p=data_pinjaman_nasabah" class="btn btn-warning"><i class="fa fa-close"></i> Tutup</a>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>



        <!---Container Fluid-->