-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 06:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(50) NOT NULL,
  `stock` int(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `cat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `nama_barang`, `harga_beli`, `harga_jual`, `stock`, `img`, `date`, `uid`, `cat`) VALUES
(1, 'Giitar', 1000000, 1200000, 43, '1686374577099pexels-stephen-niemeier-65716.jpg', '2023-06-09 23:09:11', 9, 'toko1'),
(2, 'Piano', 20000000, 22000000, 55, '1686396098832pexels-pixabay-164743.jpg', '2023-06-09 23:09:31', 9, 'toko1'),
(3, 'Drum', 15000000, 17000000, 32, '1686327405807pexels-rene-asmussen-1327430.jpg', '2023-06-09 23:16:45', 9, 'toko1'),
(4, 'Laptop', 16000000, 18000000, 63, '1686327524521pexels-melike-benli-11451731.jpg', '2023-06-09 23:18:44', 9, 'toko2'),
(5, 'Handphone', 12000000, 15000000, 46, '1686327591502pexels-lisa-fotios-1092644.jpg', '2023-06-09 23:19:51', 9, 'toko2'),
(6, 'Mouse Gaming', 500000, 600000, 78, '1686327655063pexels-john-petalcurin-2115256.jpg', '2023-06-09 23:20:55', 9, 'toko2'),
(7, 'Tas', 200000, 400000, 87, '1686327854546pexels-ge-yonk-1152077.jpg', '2023-06-09 23:24:14', 9, 'toko3'),
(8, 'Raket Tenis', 600000, 700000, 23, '1686328181483pexels-pixabay-209977.jpg', '2023-06-09 23:25:27', 9, 'toko3'),
(9, 'Bola Sepak', 400000, 600000, 67, '1686327978896pexels-pixabay-47730.jpg', '2023-06-09 23:26:18', 9, 'toko3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
