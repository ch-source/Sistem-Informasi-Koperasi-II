<?php
include "koneksi.php";
$query = "SELECT max(id_simpanan) as maxId FROM tbl_simpanan_a";
$hasil = mysqli_query($connect,$query);
$data = mysqli_fetch_array($hasil);
$idsimpanan = $data['maxId'];
$noUrut = (int) substr($idsimpanan, 3, 3);
$noUrut++;
$char = "SMP";
$idsimpanan= $char . sprintf("%03s", $noUrut);

$penerima=$_POST['penerima'];
$bulan=$_POST['bulan'];
$tahun=$_POST['tahun'];
$penyetor=$_POST['penyetor'];
$tgl=$_POST['tgl'];
$sw=$_POST['sw'];

$cek = mysqli_query($connect, "SELECT * FROM tbl_rekap_simpanan_a WHERE periode = '$bulan' AND tahun='$tahun' AND  id_anggota = '$penerima'");
$result = mysqli_num_rows($cek);
$data = mysqli_fetch_array($cek);
$ttlsimpanan=$data['ttl_simpanan'];
$ttlsimpanan=$sw;
if ($result > 0) {
	$query1 = "INSERT INTO `tbl_simpanan_a` (`id_simpanan`, `id_anggota`, `periode`, `tahun`, `nama_penyetor`, `tgl_setor`, `simpanan_wajib`) VALUES ('$idsimpanan', '$penerima', '$bulan', '$tahun', '$penyetor', '$tgl', '$sw')";
	$sql1 = mysqli_query($connect, $query1); 
	if ($sql1) {
		$query2 = "UPDATE tbl_rekap_simpanan_a SET ttl_simpanan='$ttlsimpanan' WHERE periode = '$bulan' AND tahun='$tahun' AND id_anggota = '$penerima'";
		$sql2 = mysqli_query($connect, $query2); 
		if ($sql2) {
			echo "<script>alert('Data Simpanan Anggota Berhasil Disimpan');
		document.location.href='dashboard.php?p=data_simpanan_anggota'</script>\n";
		}else{
			echo "<script>alert('Data Simpanan Anggota Gagal Disimpan');
		document.location.href='dashboard.php?p=input_simpanan_anggota'</script>\n";
		}
	}

}else if ($result ==0) {
	$query1 = "INSERT INTO `tbl_simpanan_a` (`id_simpanan`, `id_anggota`, `periode`, `tahun`, `nama_penyetor` , `tgl_setor`, `simpanan_wajib`) VALUES ('$idsimpanan', '$penerima', '$bulan', '$tahun', '$penyetor', '$tgl', '$sw')";
	$sql1 = mysqli_query($connect, $query1); 
	if ($sql1) {
		$query2 = "INSERT INTO `tbl_rekap_simpanan_a` (`id_rs`, `id_anggota`, `periode`, `tahun`, `ttl_simpanan`) VALUES ('', '$penerima', '$bulan', '$tahun', '$ttlsimpanan')";
		$sql2 = mysqli_query($connect, $query2); 
		if ($sql2) {
			echo "<script>alert('Data Simpanan Anggota Berhasil Disimpan');
		document.location.href='dashboard.php?p=data_simpanan_anggota'</script>\n";
		}else{
			echo "<script>alert('Data Simpanan Anggota Gagal Disimpan');
		document.location.href='dashboard.php?p=input_simpanan_anggota'</script>\n";
		}
	}
}
?>
