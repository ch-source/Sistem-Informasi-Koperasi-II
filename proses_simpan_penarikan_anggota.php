<?php
include "koneksi.php";
$query = "SELECT max(id_penarikan) as maxId FROM tbl_penarikan";
$hasil = mysqli_query($connect,$query);
$data = mysqli_fetch_array($hasil);
$idpenarikan = $data['maxId'];
$noUrut = (int) substr($idpenarikan, 3, 3);
$noUrut++;
$char = "PNK";
$idpenarikan= $char . sprintf("%03s", $noUrut);


$anggota = $_POST['anggota'];
$bulan = $_POST['bulan'];
$tahun = $_POST['tahun'];
$tgl = $_POST['tgl'];
$jp = $_POST['jp'];

$query_penarikan="SELECT * FROM tbl_rekap_tabungan_anggota WHERE id_anggota='$anggota'";
$sql_penarikan=mysqli_query($connect, $query_penarikan);
$data_penarikan=mysqli_fetch_array($sql_penarikan);
$ttltabungan=$data_penarikan['ttl_tabungan']-$jp;
if ($jp>$data_penarikan['ttl_tabungan']){
    echo "<script>alert('Oops! Jumlah Penarikan Lebih Besar Dari Total Tabungan ...');
    document.location.href='dashboard.php?p=input_penarikan_tabungan_anggota'</script>\n";
}else{
         
         $query_a="INSERT INTO `tbl_penarikan` (`id_penarikan`, `penarik`, `periode`, `tahun`, `tgl_penarikan`, `jml_penarikan`) VALUES ('$idpenarikan', '$anggota', '$bulan', '$tahun', '$tgl', '$jp')";
        $sql_a=mysqli_query($connect, $query_a);
        if ($sql_a) {
               $query_r="UPDATE tbl_rekap_tabungan_anggota SET ttl_tabungan='$ttltabungan' WHERE id_anggota='$anggota'";
               $sql_r=mysqli_query($connect, $query_r);
               if ($query_r) {
                    echo "<script>alert('Proses Penarikan Berhasil');
                    document.location.href='dashboard.php?p=data_penarikan'</script>\n";
                }else{
                    echo "<script>alert('Proses Penarikan Gagal!');
                    document.location.href='dashboard.php?p=input_penarikan_tabungan_anggota</script>\n";
                }
            }
        }
?>
