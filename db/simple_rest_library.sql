-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2019 at 02:42 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

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
  `description` varchar(1000) NOT NULL,
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
(3, 'Suddenly I Become The Princess', 'The beautiful Athanasia was killed at the hands of her own biological father, Claude de Alger Obelia, the cold-blooded emperor! It’s just a silly bedtime story… until one woman wakes up to suddenly find she’s become that unfo', 'https://cdn.novelupdates.com/images/2018/09/suddenlyprincess.jpg', '2018-11-09', 2, '1', '2019-08-14 16:38:36.119', '2019-08-30 19:18:59.826'),
(4, '1000 Mukjizat Rasulullah', 'Buku yang menceritakan seberapa banyak mukjizat para Rasul Allah', 'http://bukuonline2u.com/image/cache/data/INTEAM/1000+mukjizat+bukuonline2u-600x800.jpg', '2017-08-09', 3, '0', '2019-08-14 16:42:33.544', '2019-08-30 20:17:25.807'),
(21, 'Dunia Anna', '\"Nova sayang, aku tak tahu bagaimana rupa dunia saat kau membaca surat ini ....\"   Bumi 2082, Nova sangat terkejut saat tiba-tiba di terminal online-nya muncul surat dari nenek buyutnya, Anna. Surat yang ditulis 70 tahun lalu', 'https://mojokstore.com/wp-content/uploads/2019/03/Dunia-Anna.jpg', '2019-08-14T03:06:00.000Z', 1, '1', '2019-08-24 10:08:49.269', '2019-08-24 10:08:49.269'),
(23, 'RWBY: Official Manga Anthology, Vol. 1: RED LIKE ROSES', 'Ruby may be team leader, but she\'s got insecurities just like the rest of us. In fact, her worries run deep. These stories show how Ruby overcomes her shortcomings to be a true hero—and what drives her to do it!', 'http://t3.gstatic.com/images?q=tbn:ANd9GcS1hO7v4V1rEsFMd15AA5cspuQj-OWl5LSsET6kKQbnqmIzQPF6', '2015-08-23T17:00:00.000Z', 5, '0', '2019-08-24 10:15:40.869', '2019-08-24 10:15:40.869'),
(25, 'The Manga Fashion Bible: The Go-to Guide for Drawing Stylish Outfits and Characters', 'Bestselling author Christopher Hart goes \"manga chic\" with this guide to drawing the edgy fashions found in the popular Japanese genre. Packed with tutorials, his stylish drawing bible offers many enticing projects for aspiri', 'http://t3.gstatic.com/images?q=tbn:ANd9GcQl2VIqLJI3K_iOS7yXaT5X5vSjGUdfVHTSuPER5e1uKb7ctux6', '2015-08-23T17:00:00.000Z', 4, '1', '2019-08-24 10:22:23.964', '2019-08-24 10:22:23.965'),
(27, 'Kimetsu no Yaiba', 'Tanjiro Kamado is a kindhearted and intelligent boy who lives with his family, making money by selling charcoal. Everything changes when his family is attacked and slaughtered by demons (oni). Tanjiro and his sister Nezuko ar', 'https://a-static.besthdwallpaper.com/demon-slayer-kimetsu-no-yaiba-inosuke-hashibira-tanjirou-kamado-nezuko-kamado-zenitsu-agatsuma-giyuu-tomioka-wallpaper-1920x1440-25610_25.jpg', '2019-05-16T04:35:00.000Z', 5, '1', '2019-08-25 11:37:45.036', '2019-08-25 11:37:45.036'),
(34, 'My Hero Academia', 'In a world where people with superpowers (known as \"Quirks\" (?? Kosei)) are the norm, Izuku Midoriya has dreams of one day becoming a Hero, despite being bullied by his classmates for not having a Quirk. After being the only one to try and save his childhood bully Katsuki Bakugo from a villain, Japan\'s greatest Hero All Might saves him and bestows upon him All Might\'s own Quirk \"One For All\". The story follows Izuku\'s entrance into U.A. High School (???? Y?ei K?k?), a school that cultivates the next generation of superheroes. Izuku and his new friends try to balance their Hero training with ordinary school duties. However, the League of Villains, an evil organization established by All Might\'s archenemy All For One, has plans to destroy all Heroes and take control of society. ', 'https://i0.wp.com/asianretrospects.com/wp-content/uploads/2018/07/My-Hero-Academia-Poster.jpg?fit=1920%2C1080&ssl=1', '2019-08-28T18:03:45.602Z', 5, '1', '2019-08-29 01:07:18.548', '2019-08-29 01:07:18.548'),
(39, 'Toy Story: Book Collection', 'Everyone’s favorite toys are hitting the big screen. But the fun can be taken home and enjoyed over and over again with this brand-new storybook collection, timed to release with Disney-Pixar’s Toy Story 3! Sure to draw in a new generation of fans of these extremely popular movies, the collection features retellings of all three movies, plus brand-new stories about Woody, Buzz, Jessie, Rex and the rest of the gang. Young readers are in for hours of rollicking good fun. With gilded pages and over 250 illustrations, this latest addition to the best-selling storybook collection series will make the perfect gift.', 'https://images-na.ssl-images-amazon.com/images/I/914LbS9mLHL.jpg', 'Fri Aug 30 2019', 2, '1', '2019-08-30 17:15:27.182', '2019-08-30 17:15:27.182'),
(40, 'Laskar Pelangi', 'Laskar Pelangi adalah novél panambayan ulahan Andrea Hirata nang ditarbitakan ulih Bentang Pustaka di tahun 2005. Novél naya bakisah masalah kahidupan 10 kakanakan matan kaluarga miskin nang basakulah (SD wan SMP) di sabuting sakulahan Muhammadiyah di Belitung nang hibak lawan katarbatasan. Buhannya adalah:      Ikal alias Andrea Hirata     Lintang; Lintang Samudra Basara bin Syahbani Maulana Basara     Sahara; N.A. Sahara Aulia Fadillah binti K.A. Muslim Ramdhani Fadillah     Mahar; Mahar Ahlan bin Jumadi Ahlan bin Zubair bin Awam     A Kiong (Chau Chin Kiong); Muhammad Jundullah Gufron Nur Zaman     Syahdan; Syahdan Noor Aziz bin Syahari Noor Aziz     Kucai; Mukharam Kucai Khairani     Borek alias Samson     Trapani; Trapani Ihsan Jamari bin Zainuddin Ilham Jamari     Harun; Harun Ardhli Ramadan bin Syamsul Hazana Ramadan  Bubuhannya basakulah wan balajar di kalas nang sama matan kalas 1 SD sampai kalas 3 SMP, wan manyambat bubuhan saurang sabagai Laskar Pelangi. Di bagian-bagian pan', 'https://assets-a1.kompasiana.com/statics/crawl/556fe81f0423bd28468b4567.jpeg?t=o&v=800', 'Thu Aug 30 2012', 4, '1', '2019-08-30 19:30:51.834', '2019-08-30 19:31:18.234'),
(41, 'The Lost Girls of Paris - Pam Jenoff', 'Buku ini berkisah tentang kejadian di Manhattan pada 1946 silam. Kisah dimulai saat Grace Healey menemukan koper milik Eleanor Trigg.  Penemuan itu membawa Grace pada satu keadaan pelik. Bahwa dirinya harus terlibat dalam kasus hilangnya 12 wanita, dan membuatnya mengenal sosok Marie yang tak lain adalah salah seorang agen rahasia.  Bagi yang penasaran mengetahui kelanjutan kisahnya, harus bersabar karena buku ini rencananya baru akan dirilis secara resmi pada Februari 2019 mendatang.', 'https://www.gramedia.com/blog/content/images/2018/12/The-lost-girl---amazon.jpg', 'Sat Feb 02 2019', 1, '1', '2019-08-30 19:35:40.006', '2019-08-30 19:36:16.649');

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
  `expire_at` varchar(25) NOT NULL,
  `back_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`idrent`, `idbooks`, `iduser`, `rent_at`, `expire_at`, `back_at`) VALUES
(44, 3, 13, 'Sat Aug 31 2019', 'Sat Sep 07 2019', 'Sat Aug 31 2019'),
(45, 23, 13, 'Sat Aug 31 2019', 'Sat Sep 14 2019', ''),
(46, 4, 13, 'Sat Aug 31 2019', 'Sat Sep 14 2019', '');

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
(9, 'Brili', 'Brilliano Dhiya Ulhaq', 'brili@gmail.com', '$2a$10$SxNV2WFpxkvdq21h/zUjouXz5fJuvTLMT3NQyqm34yNqKGJElfjPi', 0),
(10, 'testt', 'testimoni', 'testi@gmail.com', '$2a$10$3nWd5hYLH7QO.fZRme2JL.ClhqGTkLe/roFYbWxB0K7lS7ysXgbn2', 0),
(11, 'Admin', 'Admin', 'admin@admin.com', '$2a$10$GCH3MdcDnCjk.bNYo7W7tO1b9cT5ffCzq4Y7Ri8clUBr5bJ7NhOSK', 1),
(12, 'Maliki', 'Ahmad Maliki', 'maliki@bootcamp.com', '$2a$10$BKVHM.mkKB.cRHumkD/LzOt7zp41P1QhmfjvnBvo1OkmdWudaFE0i', 0),
(13, 'Syahid', 'Nursyahid', 'syahid@gmail.com', '$2a$10$HJQBin7RmLK59zp69HDrW.VC4Ux9zNCmlBF8UMmHG2Jcg7c.lq1se', 0),
(14, 'ddd', 'ddd', 'ddd@gmail.com', '$2a$10$Kl3TU9yOaxVSUJm.pWdARO9/EcStkL2FXC08VdgAVgo0zGYEuxAcK', 0);

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
  MODIFY `idbooks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `idgenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `idrent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
