<?php
include "koneksi.php";
$query = "SELECT max(id_anggota) as maxId FROM tbl_anggota";
$hasil = mysqli_query($connect,$query);
$data = mysqli_fetch_array($hasil);
$idanggota = $data['maxId'];
$noUrut = (int) substr($idanggota, 3, 3);
$noUrut++;
$char = "ANG";
$idanggota= $char . sprintf("%03s", $noUrut);

$id=$_GET['id'];
$nama = $_POST['nama'];
$notas = $_POST['notas'];
$jk = $_POST['jk'];
$tgl =$_POST['tgl'];
$tgp =$_POST['tgp'];
$alt =$_POST['alt'];
$notel =$_POST['notel'];
$status =$_POST['status'];
$pekerjaan =$_POST['pekerjaan'];

if(isset($_POST['pilih_gambar'])){
	$foto = $_FILES['foto']['name'];
	$tmp = $_FILES['foto']['tmp_name'];
	$fotobaru = date('dmYHis').$foto;
	$path = "/gambar/".$fotobaru;
	if(move_uploaded_file($tmp, $path)){
		$query="INSERT INTO `tbl_anggota` (`id_anggota`, `nama_anggota`, `no_identitas`, `jk`, `tgl_lahir`,`tgl_pengajuan`, `alamat`, `no_tlpn`, `status`, `pekerjaan`) VALUES ('$idanggota', '$nama', '$notas', '$jk', '$tgl', '$tgp','$alt', '$notel', '$status','$pekerjaan')";
		$sql=mysqli_query($connect, $query);
		if ($sql) {
			echo "<script>alert('Data Anggota Berhasil Disimpan');
			document.location.href='dashboard.php?p=data_anggota'</script>\n";
		}else{
			echo "<script>alert('Data Anggota Gagal Disimpan');
			document.location.href='dashboard.php?p=input_anggota'</script>\n";
		}
	}
}else{
	$query_a="INSERT INTO `tbl_anggota` (`id_anggota`, `nama_anggota`, `no_identitas`, `jk`, `tgl_lahir`,`tgl_pengajuan`, `alamat`, `no_tlpn`, `status`, `pekerjaan`) VALUES ('$idanggota', '$nama', '$notas', '$jk', '$tgl', '$tgp','$alt', '$notel', '$status','$pekerjaan')";
	$sql_a=mysqli_query($connect, $query_a);
	if ($sql_a) {
		$queryb="UPDATE tbl_nasabah SET status_anggota='1' WHERE id_nasabah='$id'";
		$sqlb=mysqli_query($connect, $queryb);
		echo "<script>alert('Data Anggota Berhasil Disimpan');
		document.location.href='dashboard.php?p=data_anggota'</script>\n";
	}else{
		echo "<script>alert('Data Anggota Gagal Disimpan');
		document.location.href='dashboard.php?p=input_anggota'</script>\n";
	}
}

?>