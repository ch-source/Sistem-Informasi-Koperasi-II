<?php
include "koneksi.php";
$query = "SELECT max(id_nasabah) as maxId FROM tbl_nasabah";
$hasil = mysqli_query($connect,$query);
$data = mysqli_fetch_array($hasil);
$idnasabah = $data['maxId'];
$noUrut = (int) substr($idnasabah, 3, 3);
$noUrut++;
$char = "N";
$idnasabah= $char . sprintf("%03s", $noUrut);

$nama = $_POST['nama'];
$notas = $_POST['notas'];
$tgl =$_POST['tgl'];
$jk = $_POST['jk'];
$tgp = $_POST['tgp'];
$alt =$_POST['alt'];
$notel =$_POST['notel'];
$status = $_POST['status'];
$pekerjaan = $_POST['pekerjaan'];

if(isset($_POST['pilih_gambar'])){
	$foto = $_FILES['foto']['name'];
	$tmp = $_FILES['foto']['tmp_name'];
	$fotobaru = date('dmYHis').$foto;
	$path = "/gambar/".$fotobaru;
	if(move_uploaded_file($tmp, $path)){
		$query="INSERT INTO `tbl_nasabah` (`id_nasabah`, `nama_nasabah`, `no_identitas`, `tgl_lahir`, `jk`, `tgl_pengajuan`, `alamat`,  `no_tlpn`,  `status`, `pekerjaan`, `status_anggota`) VALUES ('$idnasabah', '$nama', '$notas', '$tgl', '$jk', '$tgp', '$alt', '$notel', '$status', '$pekerjaan', '')";
		$sql=mysqli_query($connect, $query);
		if ($sql) {
			echo "<script>alert('Data Nasabah Berhasil Disimpan');
			document.location.href='dashboard.php?p=data_nasabah'</script>\n";
		}else{
			echo "<script>alert('Data Nasabah Gagal Disimpan');
			document.location.href='dashboard.php?p=input_nasabah'</script>\n";
		}
	}
}else{
	$query_a="INSERT INTO `tbl_nasabah` (`id_nasabah`, `nama_nasabah`, `no_identitas`, `tgl_lahir`, `jk`, `tgl_pengajuan`, `alamat`,  `no_tlpn`,  `status`, `pekerjaan`, `status_anggota`) VALUES ('$idnasabah', '$nama', '$notas', '$tgl', '$jk', '$tgp', '$alt', '$notel', '$status', '$pekerjaan', '')";
	$sql_a=mysqli_query($connect, $query_a);
	if ($sql_a) {
		echo "<script>alert('Data Nasabah Berhasil Disimpan');
		document.location.href='dashboard.php?p=data_nasabah'</script>\n";
	}else{
		echo "<script>alert('Data Nasabah Gagal Disimpan');
		document.location.href='dashboard.php?p=input_nasabah'</script>\n";
	}
}

?>