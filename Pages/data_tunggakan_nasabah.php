 <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h2 class="h4 mb-0 text-gray-800">Data Sisa Angsuran Pinjaman Nasabah </h2>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Data Sisa Angsuran Nasabah</li>
            </ol>
          </div>
          <div class="row mb-12">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-12 col-md-6 mb-4">
               <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Tabel Data Sisa Angsuran Nasabah</h6>
                </div>
                <div class="card-body">
                  <div class="table-responsive p-3">
                  <table class="table align-items-center table-bordered" id="dataTableHover">
                    <thead class="thead-light">
                      <tr>
                        <th>No</th>
                        <th>ID Nasabah</th>
                        <th>Periode</th>
                        <th>Tahun</th>
                        <th>Angsuran Ke-</th>
                        <th>Sisa Angsuran</th>
                        <th>Jml. Sisa Angsuran</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php
                      include"koneksi.php";
                      $no=1;
                      $query="SELECT*FROM tbl_pembayaran_pinjaman_nasabah";
                      $sql=mysqli_query($connect, $query);
                      while($data=mysqli_fetch_array($sql)) {?>
                      <tr>
                        <td><?php echo $no;?></td>
                        <?php
                        $query_nasabah="SELECT*FROM tbl_nasabah WHERE id_nasabah='".$data['id_nasabah']."'";
                      $sql_nasabah=mysqli_query($connect, $query_nasabah);
                      $data_nasabah=mysqli_fetch_array($sql_nasabah) ?>
                        <td><?php echo $data['id_nasabah'];?>-<?php echo $data_nasabah['nama_nasabah'];?>
                        </td>
                        <td><?php echo $data['periode'];?></td>
                        <td><?php echo $data['tahun'];?></td>
                        <td><?php echo $data['angsuran_k'];?></td>
                        <td><?php echo $data['sisa_angsuran'];?></td>
                        <td><?php 
                          $ta= $data['total_tunggakan'];
                          echo "Rp.".number_format($ta, 2, ".", ".");
                          ?> 
                        </td>
                      </tr>
                      <?php $no++;}
                      ?>
                    </tbody> 
                  </table>
                </div>
                <div class="form-group row">
                      <div class="col-sm-10">
                        <a href="dashboard.php?p=data_pinjaman_nasabah" class=" btn btn-warning"><i class="fa fa-close"></i> Tutup</a>
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
