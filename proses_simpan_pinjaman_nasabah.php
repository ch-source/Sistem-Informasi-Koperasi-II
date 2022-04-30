<?php
include"koneksi.php";
$query_user = "SELECT max(id_pinjaman) as maxId FROM tbl_pinjaman_nasabah";
$hasil_user = mysqli_query($connect,$query_user);
$data_user = mysqli_fetch_array($hasil_user);
$idpinjaman = $data_user['maxId'];
$noUser = (int) substr($idpinjaman, 3, 3);
$noUser++;
$char = "PJM";
$idpinjaman= $char . sprintf("%03s", $noUser);

$nasabah = $_POST['nasabah'];
$tp = $_POST['tp'];
$bulan = $_POST['bulan'];
$tahun = $_POST['tahun'];
$tlpn = $_POST['tlpn'];
$almat = $_POST['almat'];
$pkj = $_POST['pkj'];
$sp = $_POST['sp'];
$jj = $_POST['jj'];
$jb = $_POST['jb'];
$bunga = $_POST['bunga'];
$jw = $_POST['jw'];
$jp = $_POST['jp'];


$cek = mysqli_query($connect, "SELECT * FROM tbl_pinjaman_nasabah WHERE  id_pinjaman= '$idpinjaman'");
$result = mysqli_num_rows($cek);
$data = mysqli_fetch_array($cek);
if ($result > 0) {
   echo "<script>alert('Proses Pengajuan Berhasil');
    document.location.href='dashboard.php?p=input_pinjaman_nasabah'</script>\n";
}else if ($result ==0) {
      $query2="INSERT INTO `tbl_pinjaman_nasabah` (`id_pinjaman`, `id_nasabah`, `periode`, `tahun`, `tgl_pinjam`, `no_telepon`, `alamat`, `pekerjaan`, `status_peminjam`, `jenis_jaminan`, `jenis_bunga`, `bunga`, `jangka_waktu`, `jumlah_pinjaman`, `status_pinjaman`) VALUES ('$idpinjaman', '$nasabah', '$bulan', '$tahun', '$tp', '$tlpn', '$almat', '$pkj', '$sp', '$jj', '$jb', '$bunga', '$jw', '$jp', '' )";
           $sql2=mysqli_query($connect, $query2);
           if ($sql2) {
           echo "<script>alert('Proses Pengajuan Berhasil');
                document.location.href='dashboard.php?p=data_pinjaman_nasabah'</script>\n";
              }else{
                echo "<script>alert('Proses Pengajuan Gagal!');
                document.location.href='dashboard.php?p=input_pinjaman_nasabah'</script>\n";
           }
         }else{
            $query_a="INSERT INTO `tbl_pinjaman_nasabah` (`id_pinjaman`, `id_nasabah`, `periode`, `tahun`, `tgl_pinjam`, `no_telepon`, `alamat`, `pekerjaan`, `status_peminjam`, `jenis_jaminan`, `jenis_bunga`, `bunga`, `jangka_waktu`, `jumlah_pinjaman`, `status_pinjaman`) VALUES ('$idpinjaman', '$nasabah', '$bulan', '$tahun', '$tp', '$tlpn', '$almat', '$pkj', '$sp', '$jj', '$jb', '$bunga', '$jw', '$jp', '' )";
            $sql_a=mysqli_query($connect, $query_a);
            if ($sql_a) {
              echo "<script>alert('Proses Pengajuan Berhasil');
                document.location.href='dashboard.php?p=data_pinjaman_nasabah'</script>\n";
              }else{
                echo "<script>alert('Proses Pengajuan Gagal!');
                document.location.href='dashboard.php?p=input_pinjaman_nasabah'</script>\n";
           }
        }
      
?>