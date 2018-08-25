-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2018 at 04:12 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comments` int(11) NOT NULL,
  `comment` text NOT NULL,
  `postId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id_comments`, `comment`, `postId`) VALUES
(4, 'Ah masa??', 1),
(5, 'Serius?', 1),
(6, 'Bonbin mana?', 1),
(7, 'wah bagus itu :D', 3),
(8, 'Makasih gan :D', 3),
(9, 'mantap :)', 3),
(10, 'sippp :v', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_posts` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_posts`, `title`, `content`, `createdBy`) VALUES
(1, 'wanita itu diserang kadal saat mengunjungi kebun binatang', 'Kuvukiland(5/18), seorang wanita jalan - jalan di Kebun Binatang Afrika. Terlihat ia sedang memberi makan se-ekor burung gagak di dalam kandang. \r\nKadal tersebut mencium bau wanginya wanita itu. Tanpa sadar di belakang wanita itu ada segerombolan kadal yang kelaparan, kadal tersebut mulai menyerang wanita itu.\r\nAkhirnya wanita itu mati di terkam kadal. Burung gagak yang kelaparan, ikut menyantapi daging wanita itu. ~ Tamat [ sad-story :( ] ~ ', 2),
(2, 'Indahnya pemandangan ibukota', 'Kemarin admin sedang jalan - jalan di jakarta loh... mau tau kelanjutan ceritanya ?? tunggu episode berikutnya..', 3),
(3, 'Membuat es kepal milo sederhana', '\r\n<b>Bahan-bahan :</b><br>\r\n10 sdm milo (saya beli milo ukuran 1 kg)<br>\r\n5 sdm gula<br>\r\n1 sdt pasta dark coklat atau sesuai selera<br>\r\n2 sdm SKM (opsional)<br>\r\nSecukupnya air hangat dan es batu<br>\r\n<br>\r\n<b>Toping : </b>(opsional)<br>\r\n1 bungkus coco cruns shachet<br>\r\n1 bungkus nabati coklat wafer<br>\r\nsecukupnya Bubuk oreo<br>\r\n<br>\r\n<b>Langkah :</b><br>\r\n1.) Campur kan milo, Pasta coklat, gula dan SKM. Tambahkan air hangat sedikit demi sedikit. Agar tidak terlalu encer.<br>\r\n2.) Aduk hingga gula larut. Bisa di tambah gula jika dirasa kurang manis.<br>\r\n3.) Hancurkan es sesuai selera. Kepal es dan letakkan di mangko.<br>\r\n4.) Siram dengan sirup milo dan taburi dengan toping diatas. Atau toping sesuai selera.\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`) VALUES
(1, 'Eko Pambudi'),
(2, 'Hesa Suryana'),
(3, 'Elliot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comments`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_posts`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comments` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_posts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
