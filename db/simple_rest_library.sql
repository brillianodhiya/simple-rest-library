-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2019 at 10:58 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_rest_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `availables`
--

CREATE TABLE `availables` (
  `codeav` int(11) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availables`
--

INSERT INTO `availables` (`codeav`, `keterangan`) VALUES
(0, 'Not Available'),
(1, 'Available'),
(2, 'Not Available');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `idbooks` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `date_released` varchar(25) NOT NULL,
  `genre` int(11) NOT NULL,
  `available` enum('1','0') NOT NULL,
  `add_at` varchar(25) NOT NULL,
  `update_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idbooks`, `title`, `description`, `image`, `date_released`, `genre`, `available`, `add_at`, `update_at`) VALUES
(1, 'Dunia Shopie', 'blabla', 'https://mojokstore.com/wp-content/uploads/2018/05/dunia-shopie-600x890.jpg', '2018-02-12', 2, '1', '2019-08-12 22:20:44.169', '2019-08-16 23:16:16.744'),
(3, 'Suddenly I Become The Princess', 'The beautiful Athanasia was killed at the hands of her own biological father, Claude de Alger Obelia, the cold-blooded emperor! It’s just a silly bedtime story… until one woman wakes up to suddenly find she’s become that unfo', 'https://cdn.novelupdates.com/images/2018/09/suddenlyprincess.jpg', '2018-11-09', 2, '1', '2019-08-14 16:38:36.119', '2019-08-14 16:38:36.119'),
(4, '1000 Mukjizat Rasulullah', 'Buku yang menceritakan seberapa banyak mukjizat para Rasul Allah', 'http://bukuonline2u.com/image/cache/data/INTEAM/1000+mukjizat+bukuonline2u-600x800.jpg', '2017-08-09', 3, '1', '2019-08-14 16:42:33.544', '2019-08-14 16:42:33.544'),
(5, 'Javascript Novice To Ninja', 'Belajar javascript untuk ultimate pemula', 'https://d2sis3lil8ndrq.cloudfront.net/books/74438137-2459-4bc9-b9e3-c163ccbe5e4b.png', '2017-08-09', 4, '1', '2019-08-14 16:45:21.980', '2019-08-14 16:45:21.980'),
(21, 'Dunia Anna', '\"Nova sayang, aku tak tahu bagaimana rupa dunia saat kau membaca surat ini ....\"   Bumi 2082, Nova sangat terkejut saat tiba-tiba di terminal online-nya muncul surat dari nenek buyutnya, Anna. Surat yang ditulis 70 tahun lalu', 'https://mojokstore.com/wp-content/uploads/2019/03/Dunia-Anna.jpg', '2019-08-14T03:06:00.000Z', 1, '1', '2019-08-24 10:08:49.269', '2019-08-24 10:08:49.269'),
(23, 'RWBY: Official Manga Anthology, Vol. 1: RED LIKE ROSES', 'Ruby may be team leader, but she\'s got insecurities just like the rest of us. In fact, her worries run deep. These stories show how Ruby overcomes her shortcomings to be a true hero—and what drives her to do it!', 'http://t3.gstatic.com/images?q=tbn:ANd9GcS1hO7v4V1rEsFMd15AA5cspuQj-OWl5LSsET6kKQbnqmIzQPF6', '2015-08-23T17:00:00.000Z', 5, '1', '2019-08-24 10:15:40.869', '2019-08-24 10:15:40.869'),
(25, 'The Manga Fashion Bible: The Go-to Guide for Drawing Stylish Outfits and Characters', 'Bestselling author Christopher Hart goes \"manga chic\" with this guide to drawing the edgy fashions found in the popular Japanese genre. Packed with tutorials, his stylish drawing bible offers many enticing projects for aspiri', 'http://t3.gstatic.com/images?q=tbn:ANd9GcQl2VIqLJI3K_iOS7yXaT5X5vSjGUdfVHTSuPER5e1uKb7ctux6', '2015-08-23T17:00:00.000Z', 4, '1', '2019-08-24 10:22:23.964', '2019-08-24 10:22:23.965'),
(26, 'Isekai', 'lorem ipsum', 'http://t0.gstatic.com/images?q=tbn:ANd9GcRP3s80deyichG6yB9cym_l8xW8_22EodkkTU5XuUr01Qi_QRcQ', '2019-08-24T04:28:39.818Z', 1, '1', '2019-08-24 11:29:16.545', '2019-08-24 11:29:16.545'),
(27, 'Kimetsu no Yaiba', 'Tanjiro Kamado is a kindhearted and intelligent boy who lives with his family, making money by selling charcoal. Everything changes when his family is attacked and slaughtered by demons (oni). Tanjiro and his sister Nezuko ar', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Demon_Slayer_-_Kimetsu_no_Yaiba%2C_volume_1.jpg/220px-Demon_Slayer_-_Kimetsu_no_Yaiba%2C_volume_1.jpg', '2019-05-16T04:35:00.000Z', 5, '1', '2019-08-25 11:37:45.036', '2019-08-25 11:37:45.036');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `idgenre` int(11) NOT NULL,
  `codegenre` int(11) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`idgenre`, `codegenre`, `keterangan`) VALUES
(1, 1, 'filosofi'),
(4, 2, 'fantasy'),
(5, 3, 'islamic'),
(6, 4, 'study'),
(12, 5, 'action');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `idrent` int(11) NOT NULL,
  `idbooks` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `rent_at` varchar(25) NOT NULL,
  `back_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`idrent`, `idbooks`, `iduser`, `rent_at`, `back_at`) VALUES
(8, 1, 0, '2019-08-13 16:28:45.975', '2019-08-19 22:20:04.816'),
(10, 4, 0, '2019-08-14 17:03:26.923', '2019-08-19 22:20:01.623'),
(11, 4, 0, '2019-08-16 22:03:21.412', '2019-08-19 22:20:01.623'),
(20, 1, 0, '2019-08-16 22:30:26.933', '2019-08-19 22:20:04.816'),
(21, 2, 0, '2019-08-16 22:34:58.587', '2019-08-19 22:20:09.399'),
(22, 2, 0, '2019-08-16 22:52:25.087', '2019-08-19 22:20:09.399'),
(23, 1, 0, '2019-08-16 22:52:48.453', '2019-08-19 22:20:04.816'),
(24, 3, 0, '2019-08-16 22:53:38.140', '2019-08-19 22:19:57.840'),
(25, 4, 0, '2019-08-16 22:54:21.694', '2019-08-19 22:20:01.623'),
(26, 4, 0, '2019-08-16 22:56:53.448', '2019-08-19 22:20:01.623'),
(27, 1, 0, '2019-08-17 00:46:44.297', '2019-08-19 22:20:04.816'),
(29, 4, 0, '2019-08-17 00:56:04.826', '2019-08-19 22:20:01.623'),
(30, 3, 0, '2019-08-17 01:04:55.971', '2019-08-19 22:19:57.840'),
(31, 2, 0, '2019-08-17 02:08:49.766', '2019-08-19 22:20:09.399'),
(32, 1, 0, '2019-08-17 02:10:33.661', '2019-08-19 22:20:04.816'),
(33, 3, 0, '2019-08-17 09:20:42.358', '2019-08-19 22:19:57.840'),
(34, 3, 0, '2019-08-19 18:47:24.937', '2019-08-19 22:19:57.840'),
(35, 4, 0, '2019-08-19 18:47:48.428', '2019-08-19 22:20:01.623'),
(36, 1, 0, '2019-08-19 22:13:25.013', '2019-08-19 22:20:04.816'),
(37, 2, 4, '2019-08-19 22:18:28.852', '2019-08-19 22:20:09.399');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `level`) VALUES
(1, 'Brilli', 'Brilliano Dhiya Ulhaq', 'brilli@gmail.com', '$2a$10$moOHr5pjD4aUCjWG5QYfKuQcn80Du6kuUZK./4ULVgKXA2Vmumlvu', 0),
(4, 'Ano', 'Brilliano Dhiya', 'brilliano@gmail.com', '$2a$10$fZ6zDtYIyz.h3nHn0iAorOmN5ClbY6faKpkHkFEBe3q5H0/p2bU1i', 0),
(6, 'Dhiya', 'Brilliano Dhiya', 'brillianod@gmail.com', '$2a$10$UASt5UY2kDr0FzntQ5b/4.PCjkFLvjwW/qR9Gm.2j/OAm6MwSGkJi', 0),
(8, 'Brilliano', 'Brilliano Dhiya Ulhaq', 'brillidhiya@gmail.com', '$2a$10$8LywywP/Ba20Iip.gEKR3eIpshnhu3RyHUkXdWai5y2LnrdxSS5L2', 0),
(9, 'Brili', 'Brilliano Dhiya Ulhaq', 'brili@gmail.com', '$2a$10$SxNV2WFpxkvdq21h/zUjouXz5fJuvTLMT3NQyqm34yNqKGJElfjPi', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbooks`);
ALTER TABLE `books` ADD FULLTEXT KEY `title` (`title`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `title_2` (`title`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `title_3` (`title`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `title_4` (`title`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `title_5` (`title`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `title_6` (`title`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `title_7` (`title`,`description`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idgenre`),
  ADD UNIQUE KEY `codegenre` (`codegenre`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`idrent`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idbooks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `idgenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `idrent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
