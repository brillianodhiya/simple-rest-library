-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2019 pada 06.17
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

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
-- Struktur dari tabel `availables`
--

CREATE TABLE `availables` (
  `codeav` int(11) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `availables`
--

INSERT INTO `availables` (`codeav`, `keterangan`) VALUES
(0, 'Not Available'),
(1, 'Available'),
(2, 'Not Available');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
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
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`idbooks`, `title`, `description`, `image`, `date_released`, `genre`, `available`, `add_at`, `update_at`) VALUES
(1, 'Dunia Shopie', 'edit some text', 'https://mojokstore.com/wp-content/uploads/2018/05/dunia-shopie-600x890.jpg', '2018-02-12', 2, '1', '2019-08-12 22:20:44.169', '2019-08-31 11:38:38.208'),
(3, 'Suddenly I Become The Princess', 'The beautiful Athanasia was killed at the hands of her own biological father, Claude de Alger Obelia, the cold-blooded emperor! It’s just a silly bedtime story… until one woman wakes up to suddenly find she’s become that unfo', 'https://cdn.novelupdates.com/images/2018/09/suddenlyprincess.jpg', '2018-11-09', 2, '1', '2019-08-14 16:38:36.119', '2019-08-31 11:35:48.174'),
(4, '1000 Mukjizat Rasulullah', 'Buku yang menceritakan seberapa banyak mukjizat para Rasul Allah', 'http://bukuonline2u.com/image/cache/data/INTEAM/1000+mukjizat+bukuonline2u-600x800.jpg', '2017-08-09', 3, '1', '2019-08-14 16:42:33.544', '2019-08-30 20:17:25.807'),
(21, 'Dunia Anna', '\"Nova sayang, aku tak tahu bagaimana rupa dunia saat kau membaca surat ini ....\"   Bumi 2082, Nova sangat terkejut saat tiba-tiba di terminal online-nya muncul surat dari nenek buyutnya, Anna. Surat yang ditulis 70 tahun lalu', 'https://mojokstore.com/wp-content/uploads/2019/03/Dunia-Anna.jpg', '2019-08-14T03:06:00.000Z', 1, '1', '2019-08-24 10:08:49.269', '2019-08-31 11:27:46.353'),
(25, 'The Manga Fashion Bible: The Go-to Guide for Drawing Stylish Outfits and Characters', 'Bestselling author Christopher Hart goes \"manga chic\" with this guide to drawing the edgy fashions found in the popular Japanese genre. Packed with tutorials, his stylish drawing bible offers many enticing projects for aspiri', 'http://t3.gstatic.com/images?q=tbn:ANd9GcQl2VIqLJI3K_iOS7yXaT5X5vSjGUdfVHTSuPER5e1uKb7ctux6', '2015-08-23T17:00:00.000Z', 4, '1', '2019-08-24 10:22:23.964', '2019-08-24 10:22:23.965'),
(27, 'Kimetsu no Yaiba', 'Tanjiro Kamado is a kindhearted and intelligent boy who lives with his family, making money by selling charcoal. Everything changes when his family is attacked and slaughtered by demons (oni). Tanjiro and his sister Nezuko ar', 'https://a-static.besthdwallpaper.com/demon-slayer-kimetsu-no-yaiba-inosuke-hashibira-tanjirou-kamado-nezuko-kamado-zenitsu-agatsuma-giyuu-tomioka-wallpaper-1920x1440-25610_25.jpg', '2019-05-16T04:35:00.000Z', 5, '1', '2019-08-25 11:37:45.036', '2019-08-25 11:37:45.036'),
(34, 'My Hero Academia', 'In a world where people with superpowers (known as \"Quirks\" (?? Kosei)) are the norm, Izuku Midoriya has dreams of one day becoming a Hero, despite being bullied by his classmates for not having a Quirk. After being the only one to try and save his childhood bully Katsuki Bakugo from a villain, Japan\'s greatest Hero All Might saves him and bestows upon him All Might\'s own Quirk \"One For All\". The story follows Izuku\'s entrance into U.A. High School (???? Y?ei K?k?), a school that cultivates the next generation of superheroes. Izuku and his new friends try to balance their Hero training with ordinary school duties. However, the League of Villains, an evil organization established by All Might\'s archenemy All For One, has plans to destroy all Heroes and take control of society. ', 'https://i0.wp.com/asianretrospects.com/wp-content/uploads/2018/07/My-Hero-Academia-Poster.jpg?fit=1920%2C1080&ssl=1', '2019-08-28T18:03:45.602Z', 5, '1', '2019-08-29 01:07:18.548', '2019-08-29 01:07:18.548'),
(39, 'Toy Story: Book Collection', 'Everyone’s favorite toys are hitting the big screen. But the fun can be taken home and enjoyed over and over again with this brand-new storybook collection, timed to release with Disney-Pixar’s Toy Story 3! Sure to draw in a new generation of fans of these extremely popular movies, the collection features retellings of all three movies, plus brand-new stories about Woody, Buzz, Jessie, Rex and the rest of the gang. Young readers are in for hours of rollicking good fun. With gilded pages and over 250 illustrations, this latest addition to the best-selling storybook collection series will make the perfect gift.', 'https://images-na.ssl-images-amazon.com/images/I/914LbS9mLHL.jpg', 'Fri Aug 30 2019', 2, '1', '2019-08-30 17:15:27.182', '2019-08-30 17:15:27.182'),
(40, 'Laskar Pelangi', 'Laskar Pelangi adalah novél panambayan ulahan Andrea Hirata nang ditarbitakan ulih Bentang Pustaka di tahun 2005. Novél naya bakisah masalah kahidupan 10 kakanakan matan kaluarga miskin nang basakulah (SD wan SMP) di sabuting sakulahan Muhammadiyah di Belitung nang hibak lawan katarbatasan. Buhannya adalah:      Ikal alias Andrea Hirata     Lintang; Lintang Samudra Basara bin Syahbani Maulana Basara     Sahara; N.A. Sahara Aulia Fadillah binti K.A. Muslim Ramdhani Fadillah     Mahar; Mahar Ahlan bin Jumadi Ahlan bin Zubair bin Awam     A Kiong (Chau Chin Kiong); Muhammad Jundullah Gufron Nur Zaman     Syahdan; Syahdan Noor Aziz bin Syahari Noor Aziz     Kucai; Mukharam Kucai Khairani     Borek alias Samson     Trapani; Trapani Ihsan Jamari bin Zainuddin Ilham Jamari     Harun; Harun Ardhli Ramadan bin Syamsul Hazana Ramadan  Bubuhannya basakulah wan balajar di kalas nang sama matan kalas 1 SD sampai kalas 3 SMP, wan manyambat bubuhan saurang sabagai Laskar Pelangi. Di bagian-bagian pan', 'https://assets-a1.kompasiana.com/statics/crawl/556fe81f0423bd28468b4567.jpeg?t=o&v=800', 'Thu Aug 30 2012', 4, '1', '2019-08-30 19:30:51.834', '2019-08-30 19:31:18.234'),
(41, 'The Lost Girls of Paris - Pam Jenoff', 'Buku ini berkisah tentang kejadian di Manhattan pada 1946 silam. Kisah dimulai saat Grace Healey menemukan koper milik Eleanor Trigg.  Penemuan itu membawa Grace pada satu keadaan pelik. Bahwa dirinya harus terlibat dalam kasus hilangnya 12 wanita, dan membuatnya mengenal sosok Marie yang tak lain adalah salah seorang agen rahasia.  Bagi yang penasaran mengetahui kelanjutan kisahnya, harus bersabar karena buku ini rencananya baru akan dirilis secara resmi pada Februari 2019 mendatang.', 'https://www.gramedia.com/blog/content/images/2018/12/The-lost-girl---amazon.jpg', 'Sat Feb 02 2019', 1, '1', '2019-08-30 19:35:40.006', '2019-08-30 19:36:16.649'),
(43, 'Kimi no Nawa (Your Name.)', 'A comet appears and mysteriously affects and connects the lives of two teenagers of the same age, a boy in the big, bustling city of Tokyo and a girl in a country village where life is slow but idyllic. They find for unknown reasons, they wake up in each other\'s bodies for weeks at a time. At first, they both think these experiences are just vivid dreams, but when the reality of their situations sinks in, they learn to adjust and even enjoy it. Soon they start to communicate and try to leave notes about who they are and what they are doing. But as they discover more about each other and the other\'s life, they uncover some disturbing hints that their distance is more than just physical and tragedy haunts them. What does the comet mean? Can they actually meet? ', 'https://vignette.wikia.nocookie.net/kiminonawa/images/6/62/Kimi-no-Na-wa.-Visual.jpg/revision/latest?cb=20160927170951', 'Fri Aug 31 2018', 2, '1', '2019-08-31 09:56:13.049', '2019-08-31 09:56:38.317'),
(44, '30 Sensasi Krispi Kremes & Kriuk Populer ', 'Renyah, kriuk dan kress saat dikunyah menjadi syarat suksesnya makanan krispi. Walaupun sekadar gorengan, tak jarang kita gagal menyajikannya. Buku yang disusun oleh Kamikoki ini memuat 30 masakan gorengan yang dijamin lezat dan renyah: Ayam Krispi Tapioka Bandeng Krispi Calamary Lada Hitam Canape Pizza Crispy Crispy Cheese Chicken Roll Crispy Chicken Boxing Crispy Katsu Mayo Mango Gurami Kremes Santan Kabin Isi Ragout Kembung Gulung Kremes Kerang Kriuk Keripik Tahu Pedas Krispi Jamur Ketumbar Nori Krispi Onion Ring Oregano Cheese Bites Pangsit Goreng Isi Jamur Pastel Praktis Pisang Kremes Keju Pisroll Crispy Pop Chicken Samosa Kari Ayam Sate Ikan Krispi Singkong Krispi Pedas Steak Daging Krispi Stik Ubi Tahu Kremes Tempe Kriuk Daun Jeruk Udang Balut Kriuk Udang Krispi Pedas Dilengkapi foto step by step, Anda dapat membuat sendiri aneka masakan kriuk yang pasti disukai keluarga Anda.', 'https://www.togamas.com/css/images/items/potrait/30-sensasi-krispi_198_198.png', 'Wed Aug 31 2016', 4, '1', '2019-08-31 10:08:04.595', '2019-08-31 10:08:04.595'),
(45, 'Javascript Novice To Ninja', 'Packed with numerous examples, JavaScript: Novice to Ninja is a fun, step-by-step and comprehensive introduction to development in JavaScript.  Discover how to use JavaScript to solve real-world problems, build smarter forms, track user events, and design eye-catching animations.      Learn JavaScript\'s built-in functions, methods, and properties.     Use JavaScript to validate form entries and interact with your users.     Understand how to respond to user events and add interactivity to your applications.     Create animations that bring your web site to life.     Start programming using the DOM     And much more!', 'http://t3.gstatic.com/images?q=tbn:ANd9GcSlql3Oxhw_JXIwN4nT9t2ZA2lQyIl_paKiWvI1K99Ty-CkkbMa', 'Sat Aug 31 2019', 4, '0', '2019-08-31 10:19:39.405', '2019-08-31 10:19:39.405'),
(46, 'The Murmur of Bees', 'From the day that old Nana Reja found a baby abandoned under a bridge, the life of a small Mexican town forever changed. Disfigured and covered in a blanket of bees, little Simonopio is for some locals the stuff of superstition, a child kissed by the devil. But he is welcomed by landowners Francisco and Beatriz Morales, who adopt him and care for him as if he were their own. As he grows up, Simonopio becomes a cause for wonder to the Morales family, because when the uncannily gifted child closes his eyes, he can see what no one else can—visions of all that’s yet to come, both beautiful and dangerous. Followed by his protective swarm of bees and living to deliver his adoptive family from threats—both human and those of nature—Simonopio’s purpose in Linares will, in time, be divined.  Set against the backdrop of the Mexican Revolution and the devastating influenza of 1918, The Murmur of Bees captures both the fate of a country in flux and the destiny of one family that has put their love', 'https://images-na.ssl-images-amazon.com/images/I/51NAtyoPq2L._SY346_.jpg', 'Sat Aug 31 2019', 1, '1', '2019-08-31 10:22:31.525', '2019-09-01 16:38:30.732'),
(47, 'Those Who Wander: America’s Lost Street Kids ', 'In 2015, the senseless Bay Area murders of twenty-three-year-old Audrey Carey and sixty-seven-year-old Steve Carter were personal tragedies for the victims’ families. But they also shed light on a more complex issue. The killers were three drifters scrounging for a living among a burgeoning counterculture population. Soon this community of runaways and transients became vulnerable scapegoats of a modern witch hunt. The supposedly progressive residents of San Francisco’s Haight-Ashbury, only two generations removed from the Summer of Love, now feared all of society’s outcasts as threats.  In Those Who Wander, Vivian Ho delves deep into a rising subculture that’s changing the very fabric of her city and all of urban America. Moving beyond the disheartening statistics, she gives voices to these young people—victims of abuse, failed foster care, mental illness, and drug addiction. She also doesn’t ignore the threat they pose to themselves and to others as a dangerous dark side emerges. Wit', 'https://images-na.ssl-images-amazon.com/images/I/51YiBT6Yd9L.jpg', 'Sat Aug 31 2019', 1, '1', '2019-08-31 10:23:42.237', '2019-08-31 10:23:42.237'),
(48, 'Black Nowhere (Lisa Tanchik Book 1)', 'Special Agent Lisa Tanchik is the best at taking down cybercriminals. So when the FBI discovers a multibillion-dollar black market online, she’s tasked with finding the creator and bringing him to justice. Donning one of her many digital disguises, Tanchik goes undercover into the network.', 'https://images-na.ssl-images-amazon.com/images/I/414xcYvWQsL._SY346_.jpg', 'Sat Aug 31 2019', 2, '1', '2019-08-31 10:24:50.528', '2019-08-31 10:24:50.528'),
(49, 'Winter Cottage', 'Still grieving the loss of her wandering, free-spirited mother, Lucy Kincaid leaves Nashville for the faded town of Cape Hudson, Virginia. She goes to see the house she’s inherited—one she never knew ', 'https://images-na.ssl-images-amazon.com/images/I/51%2B2TKKSfpL.jpg', 'Sat Aug 31 2019', 1, '1', '2019-08-31 10:25:50.877', '2019-08-31 10:25:50.877'),
(50, 'My Name is Eva: An absolutely gripping and emotional historical novel', 'Evelyn Taylor-Clarke sits in her chair at Forest Lawns Care Home in the heart of the English countryside, surrounded by residents with minds not as sharp as hers. It would be easy to dismiss Evelyn as a muddled old woman, but her lipstick is applied perfectly, and her buttons done up correctly. ', 'https://images-na.ssl-images-amazon.com/images/I/41Y2SYezcZL.jpg', 'Sun Aug 31 2014', 1, '0', '2019-08-31 10:27:23.012', '2019-09-01 16:23:32.500'),
(51, 'The Rules of Magic: A Novel (The Practical Magic Series Book 1)', 'An instant New York Times bestseller and Reese Witherspoon Book Club pick from beloved author Alice Hoffman—the spellbinding prequel to Practical Magic.', 'https://images-na.ssl-images-amazon.com/images/I/61QWRu8u7AL.jpg', 'Fri Aug 31 2012', 2, '1', '2019-08-31 10:29:57.451', '2019-09-01 16:05:46.968'),
(52, 'Lying Next to Me', 'Adam and Sophie Warner and their three-year-old daughter are vacationing in Washington State’s Hood Canal for Memorial Day weekend. It’s the perfect getaway to unplug—and to calm an uneasy marriage. But on Adam’s first day out on the water, he sees Sophie abducted by a stranger. A hundred yards from shore, Adam can’t save her. And Sophie disappears.', 'https://images-na.ssl-images-amazon.com/images/I/41rSaQpivNL.jpg', 'Tue May 22 2012', 1, '0', '2019-08-31 10:32:13.774', '2019-08-31 10:32:13.774');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `idgenre` int(11) NOT NULL,
  `codegenre` int(11) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`idgenre`, `codegenre`, `keterangan`) VALUES
(1, 1, 'filosofi'),
(4, 2, 'fantasy'),
(5, 3, 'islamic'),
(6, 4, 'study'),
(12, 5, 'action');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rents`
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
-- Dumping data untuk tabel `rents`
--

INSERT INTO `rents` (`idrent`, `idbooks`, `iduser`, `rent_at`, `expire_at`, `back_at`) VALUES
(46, 4, 13, 'Sat Aug 31 2019', 'Sat Sep 14 2019', 'Sat Aug 31 2019'),
(47, 3, 1, 'Sat Aug 31 2019', 'Sat Sep 14 2019', 'Sat Aug 31 2019'),
(48, 3, 13, 'Sat Aug 31 2019', 'Sat Aug 17 2019', 'Sat Aug 31 2019'),
(49, 1, 13, 'Sat Aug 31 2019', 'Sat Sep 14 2019', 'Sat Aug 31 2019'),
(50, 52, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', 'Sat Sep 07 2019'),
(51, 51, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', 'Sat Sep 07 2019'),
(52, 50, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', 'Sat Sep 07 2019'),
(53, 49, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', 'Sat Sep 07 2019'),
(54, 51, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', 'Sat Sep 07 2019'),
(55, 52, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', 'Sat Sep 07 2019'),
(56, 45, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', ''),
(57, 50, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', ''),
(58, 52, 13, 'Sat Sep 07 2019', 'Sat Sep 21 2019', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request`
--

CREATE TABLE `request` (
  `idrequest` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_released` varchar(25) NOT NULL,
  `genre` int(11) NOT NULL,
  `request_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
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
(14, 'ddd', 'ddd', 'ddd@gmail.com', '$2a$10$Kl3TU9yOaxVSUJm.pWdARO9/EcStkL2FXC08VdgAVgo0zGYEuxAcK', 0),
(15, 'Gskhda', 'Brillianodhiya', 'test@gmail.com', '$2a$10$JwVDEXhJoTKiyyQmK3lQteSWbJgSo7YoSV8Kdiz2oOHKQrY4CKsXG', 0),
(17, 'brillian', 'Brilliano Dhiya ', 'Bridhi@gmail.com', '$2a$10$DU7WWixL.iwmEkbYPKtQbeg866LnAv0TkZGyzpVD.r26//tamuewy', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
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
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idgenre`),
  ADD UNIQUE KEY `codegenre` (`codegenre`);

--
-- Indeks untuk tabel `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`idrent`);

--
-- Indeks untuk tabel `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`idrequest`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `idbooks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `idgenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `rents`
--
ALTER TABLE `rents`
  MODIFY `idrent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `request`
--
ALTER TABLE `request`
  MODIFY `idrequest` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
