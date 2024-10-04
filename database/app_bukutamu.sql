-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 05:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_bukutamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_tamu` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `bertemu` varchar(255) NOT NULL,
  `kepentingan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_tamu`, `tanggal`, `nama_tamu`, `alamat`, `no_hp`, `bertemu`, `kepentingan`) VALUES
('zt001', '2024-09-24', 'Althea R.A', 'Desa VSC, no. 45', '086524358567', 'Zaki Danudara', 'Memecahkan kasus sekolah'),
('zt006', '2024-09-29', 'Erika Mulandya', 'Jl. php teruss, no 67', '081243568567', 'Wirda Yasha', 'Rapat PT. Indah Nusantara'),
('zt007', '2024-09-30', 'Sania', 'Gd. Permata Indah', '081280787339', 'Park Jisung', 'Bertemu seseorang'),
('zt008', '2024-09-30', 'Jeremy Corper', 'Genandra Street,45', '084523276589', 'Keandra Alzhaeta', 'Rapat Violet Organization');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `user_role`) VALUES
('usr02', 'operator 1', '$2y$10$Gb.hTL.0D8XuxsKY1CBFJ.xakmM1KuREYRkCDZgQXLPJz5sLl78ju', 'operator'),
('usr03', 'admin_smakzie3', '$2y$10$fq0.EFwijqvGdNN31Jm0MuVSghtE1NdQEdhacTVuuVAQdc24oqTl6', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
