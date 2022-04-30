<?php
include'koneksi.php';
include"fpdf.php";
require('makefont/makefont.php');
$pdf = new FPDF("L","cm","A4");

$pdf->SetMargins(1,1,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','B',12);
$pdf->SetX(1.6);            
$pdf->MultiCell(15.5,0.6,'KOPERASI REMAJA PIKAT',0,'L');
$pdf->SetX(1.6);
$pdf->SetFont('Times','i',10);
$pdf->MultiCell(15.5,0.6,'Banjar Intaran Buug, Desa Pikat',0,'L'); 
$periode = $_POST['periode'];
$tahun = $_POST['tahun'];
$pdf->SetX(1.6);
$pdf->SetFont('Times','i',10);
$pdf->MultiCell(22.5,0.6,"Laporan Tabungan Anggota Periode: ".$periode."/ Tahun: ".$tahun,0,'L'); 
$pdf->Line(1,3.1,28.5,3.1);
$pdf->SetLineWidth(0.1);      
$pdf->Line(1,3.2,28.5,3.2);   
$pdf->SetLineWidth(0);
$pdf->SetFont('Times','i',8);
$periode = $_POST['periode'];
$tahun = $_POST['tahun'];
$pdf->ln(1);
$pdf->Cell(3.5,0.7,"Di cetak pada : ".date("D-d/m/Y"),0,0,'C');
$pdf->ln(1);
$pdf->SetFont('Times','B',8);
$pdf->Cell(1, 0.6, 'No', 1, 0, 'C');
$pdf->Cell(2, 0.6, 'ID Tabungan', 1, 0, 'L');
$pdf->Cell(3, 0.6, 'Id Anggota', 1, 0, 'L');
$pdf->Cell(4, 0.6, 'Nama Anggota', 1, 0, 'L');
$pdf->Cell(2, 0.6, 'P/T', 1, 0, 'L');
$pdf->Cell(4, 0.6, 'Nama Penyetor', 1, 0, 'L');
$pdf->Cell(2, 0.6, 'Tgl. Setor', 1, 0, 'L');
$pdf->Cell(3, 0.6, 'JT', 1, 0, 'L');
$pdf->Cell(1, 0.6, 'Bunga', 1, 0, 'L');
$pdf->Cell(3, 0.6, 'TT', 1, 1, 'L');

$no=1;
$sql="SELECT * FROM tbl_tabungan_anggota WHERE periode_a='$periode' AND tahun_a='$tahun'";
$tampil=mysqli_query($connect, $sql);
while($lihat=mysqli_fetch_array($tampil)){
    $pdf->SetFont('Times','',7);
    $pdf->Cell(1, 0.6, $no , 1, 0, 'C');
    $pdf->Cell(2, 0.6, $lihat['id_tabungan_a'],1, 0, 'L');
    $pdf->Cell(3, 0.6, $lihat['id_anggota'],1, 0, 'L');
    $query1="SELECT * FROM tbl_anggota WHERE id_anggota='".$lihat['id_anggota']."'";
    $sql1=mysqli_query($connect, $query1);
    while ($data1=mysqli_fetch_array($sql1)) {
        $pdf->Cell(4, 0.6, $data1['nama_anggota'],1, 0, 'L');
    }
    $pdf->Cell(2, 0.6, $lihat['periode_a']."/".$lihat['tahun_a'],1, 0, 'L');
    $pdf->Cell(4, 0.6, $lihat['nama_penyetor'],1, 0, 'L');
    $pdf->Cell(2, 0.6, $lihat['tanggal_setor'],1, 0, 'L');
    $pdf->Cell(3, 0.6,"Rp. ".number_format($lihat['jumlah_tabungan'], 2, ".", "."),1, 0, 'L');
    $pdf->Cell(1, 0.6, $lihat['bunga_ta'],1, 0, 'L');
    $pdf->Cell(3, 0.6,"Rp. ".number_format($lihat['total_tabungan'], 2, ".", "."),1, 1, 'L');
    $no++;

}
$pdf->ln(1);
$pdf->SetFont('Times','i',10);
$pdf->Cell(22.5,0.7,"Hasil Rekapitulasi Tabungan Anggota Periode: ".$periode." Tahun: ".$tahun,0,0,'L');
$pdf->ln(1);
$no=1;
$pdf->SetFont('Times','B',8);
$pdf->Cell(1, 0.6, 'No', 1, 0, 'C');
$pdf->Cell(3, 0.6, 'ID Anggota', 1, 0, 'L');
$pdf->Cell(10, 0.6, 'Nama Anggota', 1, 0, 'L');
$pdf->Cell(8, 0.6, 'Periode/Tahun', 1, 0, 'L');
$pdf->Cell(5.5, 0.6, 'Total Tabungan', 1, 1, 'L');

$sql_x="SELECT * FROM tbl_rekap_tabungan_anggota WHERE tahun_a = '$tahun'";
$tampil_x=mysqli_query($connect, $sql_x);
while($lihat_x=mysqli_fetch_array($tampil_x)){
    $pdf->SetFont('Times','',10);
    $pdf->Cell(1, 0.6, $no , 1, 0, 'C');
    $pdf->Cell(3, 0.6, $lihat_x['id_anggota'],1, 0, 'L');
    $query_a="SELECT * FROM tbl_anggota WHERE id_anggota='".$lihat_x['id_anggota']."'";
    $sql_a=mysqli_query($connect, $query_a);
    while ($data_a=mysqli_fetch_array($sql_a)) {
        $pdf->Cell(10, 0.6, $data_a['nama_anggota'],1, 0, 'L');
    }
    $pdf->Cell(8, 0.6,$lihat_x['tahun_a'],1, 0, 'L');
    $pdf->Cell(5.5, 0.6,"Rp. ".number_format($lihat_x['ttl_tabungan'], 2, ".", "."),1, 1, 'L');
    $no++;
}

$order="SELECT * FROM tbl_rekap_tabungan_anggota WHERE tahun_a='$tahun'";
$query_order=mysqli_query($connect, $order);
$data_order=array();
while(($row_order=mysqli_fetch_array($query_order)) !=null){
$data_order[]=$row_order;
}
$count=count($data_order);
$pdf->SetFont('Times','B',10);
$result="SELECT SUM(ttl_tabungan) AS ttl_tabungan FROM  tbl_rekap_tabungan_anggota
WHERE periode_a='$periode' AND tahun_a='$tahun'";
 $sd=mysqli_query($connect, $result);
while($hasil=mysqli_fetch_object($sd))
{
    $pdf->Cell(22, 0.6,"Total Tabungan Anggota",1, 0, '');
    $pdf->Cell(5.5, 0.6, "Rp. ".number_format($hasil->ttl_tabungan, 2, ".", "."),1, 1, '');
}
$pdf->SetFont('Times','B',10);
$pdf->Cell(22, 0.6,"Jumlah Anggota",1, 0, '');
$pdf->Cell(5.5, 0.6, $count ,1, 1, 'C');
$pdf->Output();
?>