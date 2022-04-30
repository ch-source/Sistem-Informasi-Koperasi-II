-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 07:40 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id_anggota` varchar(50) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `tgl_pengajuan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlpn` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nama_anggota`, `no_identitas`, `jk`, `tgl_lahir`, `tgl_pengajuan`, `alamat`, `no_tlpn`, `status`, `pekerjaan`) VALUES
('ANG001', 'Desi Remi', '08232832823', 'Perempuan', '1997-07-24', '2020-07-24', 'jln.tukad', '0883833', 'Aktif', 'wiraswasta'),
('ANG002', 'Kadek', '0839393939', 'Laki-laki', '1997-07-24', '2020-10-01', 'Jln. Tukad Batanghari', '082339368112', 'Aktif', 'Wiraswasta'),
('ANG003', 'Chris Sony', '0839393939', 'Laki-laki', '1997-07-24', '2020-03-10', 'Jln. Tukad Batanghari', '082339368112', 'Tidak Aktif', 'Wiraswasta'),
('ANG004', 'Gung', '089899898', 'Laki-laki', '2020-10-06', '2020-10-05', 'Jln. Tukad Batanghari', '082339368112', 'Aktif', 'Wiraswasta'),
('ANG005', 'Landra', '0894457457', 'Perempuan', '1998-07-24', '2019-02-04', 'Jln. Tukad Batanghari', '082339368112', 'Aktif', 'Wiraswasta'),
('ANG006', 'Indra', '0894457457', 'Laki-laki', '1997-07-24', '2019-09-09', 'Jln. Tukad Batanghari', '082339368112', 'Tidak Aktif', 'Wiraswasta'),
('ANG007', 'Afin Duru', '0894457457', 'Perempuan', '1999-09-24', '2020-10-13', 'Jln. Tukad Batanghari', '082339368112', 'Aktif', 'Wiraswasta'),
('ANG008', 'indra', '08232832823', 'Laki-laki', '1880-07-24', '2020-10-13', 'jln.tukad', '0883833', 'Aktif', 'wiraswasta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bunga`
--

CREATE TABLE `tbl_bunga` (
  `id_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bunga_m` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bunga_t` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bunga`
--

INSERT INTO `tbl_bunga` (`id_bunga`, `bunga_m`, `bunga_t`) VALUES
('BNG001', '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nasabah`
--

CREATE TABLE `tbl_nasabah` (
  `id_nasabah` varchar(50) NOT NULL,
  `nama_nasabah` varchar(50) NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `tgl_pengajuan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlpn` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `status_anggota` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nasabah`
--

INSERT INTO `tbl_nasabah` (`id_nasabah`, `nama_nasabah`, `no_identitas`, `tgl_lahir`, `jk`, `tgl_pengajuan`, `alamat`, `no_tlpn`, `status`, `pekerjaan`, `status_anggota`) VALUES
('N001', 'Desi Remi', '08232832823', '1998-07-24', 'Perempuan', '2020-08-24', 'jln.tukad', '0883833', 'Sudah Menikah', 'wiraswasta', ''),
('N002', 'Arys', '08232832823', '2000-07-24', 'Laki-laki', '2020-07-24', 'jln.tukad', '0883833', 'status', 'wiraswasta', ''),
('N003', 'Chris Sony', '08232832823', '1997-07-24', 'Laki-laki', '2020-09-09', 'Jln. Tukad Batanghari', '088383', 'Sudah Menikah', 'wiraswasta', ''),
('N004', 'indra', '08232832823', '1880-07-24', 'Laki-laki', '2020-08-24', 'jln.tukad', '0883833', 'Sudah Menikah', 'wiraswasta', '1'),
('N005', 'Afin Duru', '0894457457', '1999-09-24', 'Perempuan', '2019-02-04', 'Jln. Tukad Batanghari', '082339368112', 'Belum Menikah', 'Wiraswasta', '1'),
('N006', 'ccc', '0894457457', '1998-10-12', 'Laki-laki', '2020-10-13', 'Jln. Tukad Batanghari', '082339368112', 'Sudah Menikah', 'Wiraswasta', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran_pinjaman`
--

CREATE TABLE `tbl_pembayaran_pinjaman` (
  `id_pembayaran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_pinjaman` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_anggota` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_pembayaran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jumlah_pinjaman` decimal(50,0) NOT NULL,
  `jml_angsuran_bunga` decimal(22,2) NOT NULL,
  `jenis_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jangka_waktu` varchar(50) CHARACTER SET latin1 NOT NULL,
  `angsuran_k` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sisa_angsuran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `angsuran_pokok` decimal(22,2) NOT NULL,
  `angsuran_bunga` decimal(22,2) NOT NULL,
  `total_angsuran` decimal(22,2) NOT NULL,
  `total_tunggakan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembayaran_pinjaman`
--

INSERT INTO `tbl_pembayaran_pinjaman` (`id_pembayaran`, `id_pinjaman`, `id_anggota`, `periode`, `tahun`, `tgl_pembayaran`, `jumlah_pinjaman`, `jml_angsuran_bunga`, `jenis_bunga`, `bunga`, `jangka_waktu`, `angsuran_k`, `sisa_angsuran`, `angsuran_pokok`, `angsuran_bunga`, `total_angsuran`, `total_tunggakan`) VALUES
('PMB001', '', 'ANG001', '11', '2020', '2020-11-18', '5000000', '0.00', 'Bunga Tetap', '1.5', '5', '1', '4', '1000000.00', '75000.00', '1075000.00', '4000000.00'),
('PMB002', '', 'ANG001', '12', '2020', '2021-01-01', '4000000', '0.00', 'Bunga Tetap', '1.5', '4', '2', '3', '1000000.00', '60000.00', '1060000.00', '3000000.00'),
('PMB003', '', 'ANG001', '1', '2021', '2021-01-01', '3000000', '0.00', 'Bunga Tetap', '1.5', '3', '3', '2', '1000000.00', '45000.00', '1045000.00', '2000000.00'),
('PMB004', '', 'ANG001', '2', '2021', '2021-02-01', '2000000', '0.00', 'Bunga Tetap', '1.5', '2', '4', '1', '1000000.00', '30000.00', '1030000.00', '1000000.00'),
('PMB005', '', 'ANG002', '8', '2020', '2020-08-01', '5000000', '0.00', 'Bunga Tetap', '1.5', '5', '1', '4', '1000000.00', '75000.00', '1075000.00', '4000000.00'),
('PMB006', '', 'ANG002', '11', '2020', '2020-11-18', '4000000', '0.00', 'Bunga Tetap', '1.5', '4', '2', '3', '1000000.00', '60000.00', '1060000.00', '3000000.00'),
('PMB007', '', 'ANG001', '1', '2020', '2020-11-14', '1000000', '0.00', 'Bunga Tetap', '1.5', '1', '5', '0', '1000000.00', '15000.00', '1015000.00', '0.00'),
('PMB008', '', 'ANG002', '1', '2020', '2020-11-29', '3000000', '0.00', 'Bunga Tetap', '1.5', '3', '2', '2', '1000000.00', '45000.00', '1045000.00', '2000000.00'),
('PMB009', '', 'ANG002', '1', '2020', '2020-11-23', '2000000', '0.00', 'Bunga Tetap', '1.5', '2', '2', '1', '1000000.00', '30000.00', '1030000.00', '1000000.00'),
('PMB010', '', 'ANG002', '1', '2020', '2020-11-22', '1000000', '0.00', 'Bunga Tetap', '1.5', '1', '1', '0', '1000000.00', '15000.00', '1015000.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran_pinjaman_nasabah`
--

CREATE TABLE `tbl_pembayaran_pinjaman_nasabah` (
  `id_pembayaran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_nasabah` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_pembayaran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jumlah_pinjaman` decimal(22,2) NOT NULL,
  `jenis_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jangka_waktu` varchar(50) CHARACTER SET latin1 NOT NULL,
  `angsuran_k` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sisa_angsuran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `angsuran_pokok` decimal(22,2) NOT NULL,
  `angsuran_bunga` decimal(22,2) NOT NULL,
  `total_angsuran` decimal(22,2) NOT NULL,
  `total_tunggakan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pembayaran_pinjaman_nasabah`
--

INSERT INTO `tbl_pembayaran_pinjaman_nasabah` (`id_pembayaran`, `id_nasabah`, `periode`, `tahun`, `tgl_pembayaran`, `jumlah_pinjaman`, `jenis_bunga`, `bunga`, `jangka_waktu`, `angsuran_k`, `sisa_angsuran`, `angsuran_pokok`, `angsuran_bunga`, `total_angsuran`, `total_tunggakan`) VALUES
('PMB001', 'N001', '12', '2020', '2020-11-19', '5000000.00', 'Bunga Tetap', '1.5', '5', '1', '4', '1000000.00', '75000.00', '1075000.00', '4000000.00'),
('PMB002', 'N001', '11', '2020', '2020-11-21', '4000000.00', 'Bunga Tetap', '1.5', '4', '2', '3', '1000000.00', '60000.00', '1060000.00', '3000000.00'),
('PMB003', 'N001', '12', '2020', '2020-12-12', '3000000.00', 'Bunga Tetap', '1.5', '3', '3', '2', '1000000.00', '45000.00', '1045000.00', '2000000.00'),
('PMB004', 'N001', '11', '2020', '2020-11-22', '2000000.00', 'Bunga Tetap', '1.5', '2', '4', '1', '1000000.00', '30000.00', '1030000.00', '1000000.00'),
('PMB005', 'N001', '1', '2020', '2020-11-22', '1000000.00', 'Bunga Tetap', '1.5', '1', '5', '0', '1000000.00', '15000.00', '1015000.00', '0.00'),
('PMB006', 'N002', '11', '2020', '2020-11-22', '4000000.00', 'Bunga Tetap', '1.5', '4', '1', '3', '1000000.00', '60000.00', '1060000.00', '3000000.00'),
('PMB007', 'N002', '12', '2020', '2020-12-01', '3000000.00', 'Bunga Tetap', '1.5', '3', '2', '2', '1000000.00', '45000.00', '1045000.00', '2000000.00'),
('PMB008', 'N002', '12', '2020', '2020-12-08', '2000000.00', 'Bunga Tetap', '1.5', '2', '3', '1', '1000000.00', '30000.00', '1030000.00', '1000000.00'),
('PMB009', 'N002', '11', '2020', '2020-11-27', '1000000.00', 'Bunga Tetap', '1.5', '1', '4', '0', '1000000.00', '15000.00', '1015000.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penarikan`
--

CREATE TABLE `tbl_penarikan` (
  `id_penarikan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `penarik` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_penarikan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jml_penarikan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penarikan`
--

INSERT INTO `tbl_penarikan` (`id_penarikan`, `penarik`, `periode`, `tahun`, `tgl_penarikan`, `jml_penarikan`) VALUES
('PNK001', 'ANG001', '11', '2020', '2020-11-10', '100000.00'),
('PNK002', 'ANG001', '12', '2020', '2020-12-01', '40000.00'),
('PNK003', 'N001', '11', '2020', '2020-11-16', '40000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjaman_anggota`
--

CREATE TABLE `tbl_pinjaman_anggota` (
  `id_pinjaman` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_anggota` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_pinjaman` varchar(50) NOT NULL,
  `no_telepon` varchar(50) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pekerjaan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status_peminjam` varchar(50) NOT NULL,
  `jenis_jaminan` varchar(50) NOT NULL,
  `jenis_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jangka_waktu` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jumlah_pinjaman` int(11) NOT NULL,
  `status_pinjaman` varchar(50) NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjaman_anggota`
--

INSERT INTO `tbl_pinjaman_anggota` (`id_pinjaman`, `id_anggota`, `periode`, `tahun`, `tgl_pinjaman`, `no_telepon`, `alamat`, `pekerjaan`, `status_peminjam`, `jenis_jaminan`, `jenis_bunga`, `bunga`, `jangka_waktu`, `jumlah_pinjaman`, `status_pinjaman`, `status`) VALUES
('PJM001', 'ANG001', '11', '2020', '2020-11-16', '082339368112', 'Jln. Tukad Badung', 'Wiraswasta', 'Belum Menikah', 'BPKB', 'Bunga Tetap', '1.5', '0', 0, 'Sudah Dikonfirmasi', 'Lunas'),
('PJM002', 'ANG002', '7', '2020', '2020-07-01', '082339368112', 'Jln. Tukad Badung', 'Wiraswasta', 'Sudah Menikah', 'BPKB', 'Bunga Tetap', '1.5', '0', 0, 'Sudah Dikonfirmasi', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjaman_nasabah`
--

CREATE TABLE `tbl_pinjaman_nasabah` (
  `id_pinjaman` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_nasabah` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_pinjam` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `no_telepon` varchar(50) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pekerjaan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status_peminjam` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_jaminan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jenis_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jangka_waktu` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jumlah_pinjaman` int(11) NOT NULL,
  `status_pinjaman` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjaman_nasabah`
--

INSERT INTO `tbl_pinjaman_nasabah` (`id_pinjaman`, `id_nasabah`, `tgl_pinjam`, `periode`, `tahun`, `no_telepon`, `alamat`, `pekerjaan`, `status_peminjam`, `jenis_jaminan`, `jenis_bunga`, `bunga`, `jangka_waktu`, `jumlah_pinjaman`, `status_pinjaman`, `status`) VALUES
('PJM001', 'N001', '2020-11-19', '11', '2020', '082339368112', 'Jln. Tukad Badung', 'Wiraswasta', 'Belum Menikah', 'BPKB', 'Bunga Tetap', '1.5', '0', 0, 'Sudah Dikonfirmasi', ''),
('PJM002', 'N002', '2020-11-22', '11', '2020', '082339368112', 'Jln. Tukad Badung', 'Wiraswasta', 'Belum Menikah', 'BPKB', 'Bunga Tetap', '1.5', '0', 0, 'Sudah Dikonfirmasi', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekap_simpanan_a`
--

CREATE TABLE `tbl_rekap_simpanan_a` (
  `id_rs` int(11) NOT NULL,
  `id_anggota` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ttl_simpanan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekap_simpanan_a`
--

INSERT INTO `tbl_rekap_simpanan_a` (`id_rs`, `id_anggota`, `periode`, `tahun`, `ttl_simpanan`) VALUES
(19, 'ANG002', '11', '2020', '15000.00'),
(20, 'ANG002', '12', '2020', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekap_tabungan_anggota`
--

CREATE TABLE `tbl_rekap_tabungan_anggota` (
  `id_ra` int(11) NOT NULL,
  `id_anggota` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode_a` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun_a` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jml_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ttl_tabungan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekap_tabungan_anggota`
--

INSERT INTO `tbl_rekap_tabungan_anggota` (`id_ra`, `id_anggota`, `periode_a`, `tahun_a`, `jml_bunga`, `ttl_tabungan`) VALUES
(15, 'ANG001', '11', '2020', '10000', '510000.00'),
(16, 'ANG001', '12', '2020', '10000', '0.00'),
(17, 'ANG002', '11', '2020', '10000', '510000.00'),
(18, 'ANG002', '12', '2020', '10000', '0.00'),
(19, 'ANG005', '11', '2020', '400', '100400.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekap_tabungan_nasabah`
--

CREATE TABLE `tbl_rekap_tabungan_nasabah` (
  `id_rn` int(11) NOT NULL,
  `id_nasabah` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jml_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ttl_tabungan_nasabah` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rekap_tabungan_nasabah`
--

INSERT INTO `tbl_rekap_tabungan_nasabah` (`id_rn`, `id_nasabah`, `periode`, `tahun`, `jml_bunga`, `ttl_tabungan_nasabah`) VALUES
(22, 'N002', '11', '2020', '10000', '510000.00'),
(23, 'N002', '12', '2020', '10000', '0.00'),
(24, 'N001', '11', '2020', '10000', '510000.00'),
(25, 'N001', '12', '2020', '10000', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_simpanan_a`
--

CREATE TABLE `tbl_simpanan_a` (
  `id_simpanan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_anggota` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_penyetor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_setor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `simpanan_wajib` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_simpanan_a`
--

INSERT INTO `tbl_simpanan_a` (`id_simpanan`, `id_anggota`, `periode`, `tahun`, `nama_penyetor`, `tgl_setor`, `simpanan_wajib`) VALUES
('SMP001', 'ANG001', '11', '2020', 'Chris', '2020-11-16', '15000.00'),
('SMP002', 'ANG002', '11', '2020', 'Chris', '2020-11-09', '15000.00'),
('SMP003', 'ANG002', '12', '2020', 'Purni', '2020-12-01', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tabungan_anggota`
--

CREATE TABLE `tbl_tabungan_anggota` (
  `id_tabungan_a` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_anggota` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode_a` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun_a` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tanggal_setor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_penyetor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jumlah_tabungan` decimal(22,2) NOT NULL,
  `bunga_ta` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jml_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_tabungan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tabungan_anggota`
--

INSERT INTO `tbl_tabungan_anggota` (`id_tabungan_a`, `id_anggota`, `periode_a`, `tahun_a`, `tanggal_setor`, `nama_penyetor`, `jumlah_tabungan`, `bunga_ta`, `jml_bunga`, `total_tabungan`) VALUES
('TBN001', 'ANG001', '11', '2020', '2020-11-18', 'Purni', '500000.00', '2', '10000', '510000.00'),
('TBN002', 'ANG001', '12', '2020', '2020-12-01', 'Purni', '0.00', '2', '10000', '0.00'),
('TBN003', 'ANG002', '11', '2020', '2020-11-18', 'Chris', '500000.00', '2', '10000', '510000.00'),
('TBN004', 'ANG002', '12', '2020', '2020-11-18', 'Chris', '0.00', '2', '10000', '0.00'),
('TBN005', 'ANG005', '11', '2020', '2020-11-19', 'Landra', '100000.00', '0.4', '400', '100400.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tabungan_nasabah`
--

CREATE TABLE `tbl_tabungan_nasabah` (
  `id_tabungan_n` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_nasabah` varchar(50) CHARACTER SET latin1 NOT NULL,
  `periode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tgl_setoran` varchar(50) CHARACTER SET latin1 NOT NULL,
  `nama_penyetor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jml_tabungan` decimal(22,2) NOT NULL,
  `bunga_tn` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jml_bunga` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_tabungan` decimal(22,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tabungan_nasabah`
--

INSERT INTO `tbl_tabungan_nasabah` (`id_tabungan_n`, `id_nasabah`, `periode`, `tahun`, `tgl_setoran`, `nama_penyetor`, `jml_tabungan`, `bunga_tn`, `jml_bunga`, `total_tabungan`) VALUES
('TBN001', 'N002', '11', '2020', '2020-11-18', 'Chris', '500000.00', '2', '10000', '510000.00'),
('TBN002', 'N002', '12', '2020', '2020-12-01', 'Chris', '0.00', '2', '10000', '0.00'),
('TBN003', 'N001', '11', '2020', '2020-11-18', 'Purni', '500000.00', '2', '10000', '510000.00'),
('TBN004', 'N001', '12', '2020', '2020-12-01', 'Purni', '0.00', '2', '10000', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `level`, `username`, `password`) VALUES
('USR001', 'Mike', 'Pegawai', '123456', '123456'),
('USR002', 'Chris Sony', 'Pegawai', 'chris', '1234'),
('USR003', 'Desi Remi', 'Manager', '1234', '1234'),
('USR004', 'Arys', 'Manager', '123', '123'),
('USR005', 'fendi', 'Manager', 'fendi', 'fendi'),
('USR006', 'Arys', 'Pegawai', 'aris', 'aris'),
('USR007', 'Landra', 'Pegawai', 'landra', 'landra'),
('USR008', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tbl_bunga`
--
ALTER TABLE `tbl_bunga`
  ADD PRIMARY KEY (`id_bunga`);

--
-- Indexes for table `tbl_nasabah`
--
ALTER TABLE `tbl_nasabah`
  ADD PRIMARY KEY (`id_nasabah`);

--
-- Indexes for table `tbl_pembayaran_pinjaman`
--
ALTER TABLE `tbl_pembayaran_pinjaman`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tbl_pembayaran_pinjaman_nasabah`
--
ALTER TABLE `tbl_pembayaran_pinjaman_nasabah`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tbl_penarikan`
--
ALTER TABLE `tbl_penarikan`
  ADD PRIMARY KEY (`id_penarikan`);

--
-- Indexes for table `tbl_pinjaman_anggota`
--
ALTER TABLE `tbl_pinjaman_anggota`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `tbl_pinjaman_nasabah`
--
ALTER TABLE `tbl_pinjaman_nasabah`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `tbl_rekap_simpanan_a`
--
ALTER TABLE `tbl_rekap_simpanan_a`
  ADD PRIMARY KEY (`id_rs`);

--
-- Indexes for table `tbl_rekap_tabungan_anggota`
--
ALTER TABLE `tbl_rekap_tabungan_anggota`
  ADD PRIMARY KEY (`id_ra`);

--
-- Indexes for table `tbl_rekap_tabungan_nasabah`
--
ALTER TABLE `tbl_rekap_tabungan_nasabah`
  ADD PRIMARY KEY (`id_rn`);

--
-- Indexes for table `tbl_simpanan_a`
--
ALTER TABLE `tbl_simpanan_a`
  ADD PRIMARY KEY (`id_simpanan`);

--
-- Indexes for table `tbl_tabungan_anggota`
--
ALTER TABLE `tbl_tabungan_anggota`
  ADD PRIMARY KEY (`id_tabungan_a`);

--
-- Indexes for table `tbl_tabungan_nasabah`
--
ALTER TABLE `tbl_tabungan_nasabah`
  ADD PRIMARY KEY (`id_tabungan_n`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_rekap_simpanan_a`
--
ALTER TABLE `tbl_rekap_simpanan_a`
  MODIFY `id_rs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_rekap_tabungan_anggota`
--
ALTER TABLE `tbl_rekap_tabungan_anggota`
  MODIFY `id_ra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_rekap_tabungan_nasabah`
--
ALTER TABLE `tbl_rekap_tabungan_nasabah`
  MODIFY `id_rn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
