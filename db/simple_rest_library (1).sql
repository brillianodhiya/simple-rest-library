-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 02:13 AM
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
  `date_released` date NOT NULL,
  `genre` int(11) NOT NULL,
  `available` enum('1','0') NOT NULL,
  `add_at` varchar(25) NOT NULL,
  `update_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idbooks`, `title`, `description`, `image`, `date_released`, `genre`, `available`, `add_at`, `update_at`) VALUES
(1, 'Dunia Shopie', 'blabla', 'test url', '2018-02-12', 2, '0', '2019-08-12 22:20:44.169', '2019-08-16 23:16:16.744'),
(2, 'Dunia Shopie', 'Buku filsafat oleh jostein garden', 'https://kineruku.com/wp-content/uploads/2016/09/Bu...', '2016-02-12', 2, '1', '2019-08-12 22:53:40.314', '2019-08-14 16:55:10.700'),
(3, 'Suddenly I Become The Princess', 'The beautiful Athanasia was killed at the hands of her own biological father, Claude de Alger Obelia, the cold-blooded emperor! It’s just a silly bedtime story… until one woman wakes up to suddenly find she’s become that unfo', 'https://file-thumb.anyacg.co/W600/0d/48/0d48ac587cd78595db0f07b8a7109ca3bc58db6e_53692_600_483.jpg', '2018-11-09', 2, '1', '2019-08-14 16:38:36.119', '2019-08-14 16:38:36.119'),
(4, '1000 Mukjizat Rasulullah', 'Buku yang menceritakan seberapa banyak mukjizat para Rasul Allah', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcShxoOHm8QrP6gBmqSY2jjfxHBaOk5bPVytmqwp1-nWqO90W1St1ahN9-xUjKCnAqobM50pjviHKBtdPd_vmeG5Lcbxmqzyo5MNu6qtYLs&usqp=CAc', '2017-08-09', 3, '1', '2019-08-14 16:42:33.544', '2019-08-14 16:42:33.544'),
(5, 'Javascript Novice To Ninja', 'Belajar javascript untuk ultimate pemula', 'https://d2sis3lil8ndrq.cloudfront.net/books/74438137-2459-4bc9-b9e3-c163ccbe5e4b.png', '2017-08-09', 4, '1', '2019-08-14 16:45:21.980', '2019-08-14 16:45:21.980');

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
(6, 4, 'study');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `idrent` int(11) NOT NULL,
  `idbooks` int(11) NOT NULL,
  `rent_at` varchar(25) NOT NULL,
  `back_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`idrent`, `idbooks`, `rent_at`, `back_at`) VALUES
(8, 1, '2019-08-13 16:28:45.975', '2019-08-17 01:05:19.132'),
(10, 4, '2019-08-14 17:03:26.923', '2019-08-17 02:07:09.387'),
(11, 4, '2019-08-16 22:03:21.412', '2019-08-17 02:07:09.387'),
(20, 1, '2019-08-16 22:30:26.933', '2019-08-17 01:05:19.132'),
(21, 2, '2019-08-16 22:34:58.587', '2019-08-17 02:12:20.083'),
(22, 2, '2019-08-16 22:52:25.087', '2019-08-17 02:12:20.083'),
(23, 1, '2019-08-16 22:52:48.453', '2019-08-17 01:05:19.132'),
(24, 3, '2019-08-16 22:53:38.140', '2019-08-17 01:13:41.467'),
(25, 4, '2019-08-16 22:54:21.694', '2019-08-17 02:07:09.387'),
(26, 4, '2019-08-16 22:56:53.448', '2019-08-17 02:07:09.387'),
(27, 1, '2019-08-17 00:46:44.297', '2019-08-17 01:05:19.132'),
(29, 4, '2019-08-17 00:56:04.826', '2019-08-17 02:07:09.387'),
(30, 3, '2019-08-17 01:04:55.971', '2019-08-17 01:13:41.467'),
(31, 2, '2019-08-17 02:08:49.766', '2019-08-17 02:12:20.083'),
(32, 1, '2019-08-17 02:10:33.661', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Brilliano Dhiya Ulhaq', 'brilli@gmail.com', '$2a$10$moOHr5pjD4aUCjWG5QYfKuQcn80Du6kuUZK./4ULVgKXA2Vmumlvu');

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
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idbooks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `idgenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `idrent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
