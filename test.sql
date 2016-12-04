-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Des 2016 pada 13.02
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelbarang`
--

CREATE TABLE `tabelbarang` (
  `kode` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(100) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelbarang`
--

INSERT INTO `tabelbarang` (`kode`, `nama`, `harga`, `stok`, `gambar`) VALUES
(1, 'Nasi Goreng Seafood', 25000, 10, 'gambar/gambar1.jpg'),
(2, 'Nasi Goreng Udang', 27000, 10, 'gambar/gambar2.jpg'),
(3, 'Nasi Goreng Sederhana', 20000, 10, 'gambar/gambar3.jpg'),
(4, 'Jus Apel', 17000, 10, 'gambar/gambar4.jpg'),
(5, 'Jus Mangga', 17000, 10, 'gambar/gambar5.jpg'),
(6, 'Jus Jeruk', 17000, 10, 'gambar/gambar6.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelpesan`
--

CREATE TABLE `tabelpesan` (
  `nomor` int(10) NOT NULL,
  `iduser` varchar(255) NOT NULL,
  `idtransaksi` varchar(20) NOT NULL,
  `idproduk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabelpesan`
--

INSERT INTO `tabelpesan` (`nomor`, `iduser`, `idtransaksi`, `idproduk`, `jumlah`, `harga`) VALUES
(10, 'budi', '161202124628', 4, 1, 17000),
(11, 'budi', '161202124628', 3, 1, 20000),
(12, 'agusbambang', '161202130200', 3, 1, 20000),
(13, 'agusbambang', '161202130200', 5, 3, 51000),
(14, 'agusbambang', '161202130200', 1, 1, 25000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabelbarang`
--
ALTER TABLE `tabelbarang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tabelpesan`
--
ALTER TABLE `tabelpesan`
  ADD PRIMARY KEY (`nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabelbarang`
--
ALTER TABLE `tabelbarang`
  MODIFY `kode` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tabelpesan`
--
ALTER TABLE `tabelpesan`
  MODIFY `nomor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
