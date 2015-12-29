-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2015 at 10:46 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4students`
--

-- --------------------------------------------------------

--
-- Table structure for table `caterer`
--

CREATE TABLE IF NOT EXISTS `caterer` (
  `id_caterer` int(20) unsigned NOT NULL,
  `type_caterer` text COLLATE utf8_romanian_ci NOT NULL,
  `name_caterer` text COLLATE utf8_romanian_ci NOT NULL,
  `address_caterer` text COLLATE utf8_romanian_ci NOT NULL,
  `google_map` text COLLATE utf8_romanian_ci NOT NULL,
  `schedule` text COLLATE utf8_romanian_ci NOT NULL,
  `description_caterer` text COLLATE utf8_romanian_ci NOT NULL,
  `other_details` text COLLATE utf8_romanian_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `caterer`
--

INSERT INTO `caterer` (`id_caterer`, `type_caterer`, `name_caterer`, `address_caterer`, `google_map`, `schedule`, `description_caterer`, `other_details`) VALUES
(1, 'Fast Food', 'Big Belly', 'Calea Manastur nr. 68 Cluj-Napoca', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10934.791647845977!2d23.5713816!3d46.7511383!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4540070d0448840!2sFast+and+Furious+Pizza!5e0!3m2!1sen!2sro!4v1451311371870', ' L-S 09 - 23 D 10 - 23', 'Comanda Mancare in Cluj de la Big Belly Fast Food cu Livrare in Cluj Napoca si Mananci Acasa sau la Birou doar Mancare de Calitate: Meniuri, Garnituri, Pizza etc.', ''),
(2, 'Pizzerie', 'Fast & Furious', 'Str. Frunzisului, 35, Cluj-Napoca', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10934.791647845977!2d23.5713816!3d46.7511383!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4540070d0448840!2sFast+and+Furious+Pizza!5e0!3m2!1sen!2sro!4v1451310757906', 'L-S 9-24 D 9-2', 'Fast & Furious Pizza din Cluj-Napoca face pizza de cea mai buna calitate, respectand retete traditionale italienesti, rezultand astfel cea mai gustoasa pizza!Ne mandrim cu pozitia castigata pe piata de profil si facem promisiunea ca niciodata nu ne vom dezamagi clientii. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_foods`
--

CREATE TABLE IF NOT EXISTS `menu_foods` (
  `id_foods` int(20) unsigned NOT NULL,
  `id_caterer` int(20) unsigned NOT NULL,
  `type_food` text COLLATE utf8_romanian_ci NOT NULL,
  `name_food` text COLLATE utf8_romanian_ci NOT NULL,
  `quanity` mediumint(8) unsigned NOT NULL,
  `price` float unsigned NOT NULL,
  `description_food` text COLLATE utf8_romanian_ci NOT NULL,
  `other_info` text COLLATE utf8_romanian_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `menu_foods`
--

INSERT INTO `menu_foods` (`id_foods`, `id_caterer`, `type_food`, `name_food`, `quanity`, `price`, `description_food`, `other_info`) VALUES
(1, 1, 'Meniu', 'Meniu Cascaval', 540, 16, '3 buc. cascaval, salatã asortatã de varza, rosii, castraveti, cartofi prãjiti sau orez cu legume, sos la alegere', ''),
(2, 1, 'Meniu', 'Meniu Mixt Cascaval', 490, 19, '2 buc. cascaval, 4 buc. piept pui crocant, cartofi prãjiti sau orez cu legume, sos la alegere,bautura la alegere ', ''),
(3, 1, 'Meniu', 'Meniu Gratar', 650, 19, '1 buc. ceafa porc, 2 buc. piept pui, cartofi prajiti sau orez cu legume, salata de varza (gratar), sos la alegere, suc sau bere', ''),
(4, 1, 'Meniu', 'Meniu Mixt', 490, 19, '3 buc. piept pui crocant, 1 buc. pulpa pui, 2 buc. aripi pui, cartofi prajiti sau orez cu legume, suc sau bere la alegere, sos la alegere', ''),
(5, 1, 'Meniu', 'Meniu Aripi Pui', 500, 17, '5 buc. aripi pui - cartofi prãjiti  sau orez cu legume - sos la alegere ,suc sau bere', ''),
(6, 1, 'Meniu', 'Meniu Piept Pui Crocant - 5 buc.', 400, 17, 'piept de pui crocant - cartofi prãjiti sau orez cu legume - sos la alegere, suc sau bere', ''),
(7, 1, 'Meniu', 'Meniu Piept Pui Crocant - 7 buc.', 450, 18, 'piept de pui crocant - cartofi prãjiti sau orez cu legume - sos la alegere,suc sau bere', ''),
(8, 1, 'Meniu', 'Meniu Pulpe Pui', 500, 17, '3 buc. pulpe pui - cartofi prãjiti sau orez cu legume - sos la alegere - suc sau bere la alegere', ''),
(9, 1, 'Meniu', 'Meniu Vegetarian', 550, 13, 'Chiftele vegetale - cartofi prajiti - rosii  - castraveti - salata de varza', ''),
(10, 1, 'Portii Mancare', 'Orez cu Pui Crocant', 340, 10, 'orez - legume (amestec Mexican) - piept de pui crocant', ''),
(11, 1, 'Portii Mancare', 'Portie Gratar Ceafa Porc', 500, 13, '3 buc. ceafa porc - salatã asortatã: varzã rosii castraveti', ''),
(12, 1, 'Portii Mancare', 'Portie Pulpe Pui', 340, 10, '3 buc. pulpe pui crocant - salatã iceberg - rosii sau salatã de varzã - rosii', ''),
(13, 1, 'Portii Mancare', 'Portie Gratar Piept Pui', 400, 11, '3 buc. piept pui - salata asortata de varza', ''),
(14, 1, 'Portii Mancare', 'Portie Piept Pui 5 buc.', 250, 11, 'piept pui crocant 5 buc. -salatã iceberg - rosii sau salatã de varzã', ''),
(15, 1, 'Portii Mancare', 'Portie Piept Pui 7 buc.', 300, 12, 'piept pui crocant - salatã iceberg - rosii sau salatã de varzã - rosii', ''),
(16, 1, 'Portii Mancare', 'Portie Cascaval', 430, 11, '3 buc. cascaval - salatã asortatã de varzã - varza - rosii - castraveti', ''),
(17, 1, 'Portii Mancare', 'Portie Aripi Pui', 350, 10, '6 buc. aripi pui crocant - salatã iceberg - rosii sau salatã de varzã (varza, rosii)', ''),
(18, 1, 'Shaorma', 'Shaorma la Farfurie', 370, 14, 'piept de pui crocant - cartofi prãjiti - salatã iceberg - rosii - sos castraveti -aionezã cu usturoi - cilli - lipie mare', ''),
(19, 1, 'Shaorma', 'Shaorma la Lipie Mare', 550, 13, 'cartofi prajiti - sos castraveti - piept de pui crocant - maionezã cu usturoi - salatã iceberg - cilli', ''),
(20, 1, 'Shaorma', 'Shaorma la Lipie Mica', 400, 11, 'cartofi prajiti - sos castraveti - piept de pui crocant - maionezã cu usturoi - salatã iceberg - cilli', ''),
(21, 1, 'Salata', 'Salata Bigfresh', 350, 14, 'mixt salatã - rosii cherry - mãsline - otet balsamic - brânzã feta - ulei masline + dressing', ''),
(22, 1, 'Salata', 'Salata Bigfresh cu Pui', 430, 17, 'mixt salatã - rosii cherry - mãsline - cascaval - otet balsamic - porumb - piept de pui la grãtar + dressing', ''),
(23, 1, 'Salata', 'Salata Bigfresh cu Speck', 400, 17, 'mixt salatã - rosii cherry - mãsline - brânzã feta - otet balsamic - speck - ulei masline + dressing', ''),
(24, 1, 'Salata', 'Salata de Cruditati', 400, 10, 'salata iceberg - ardei - rosii - castraveti - porumb - mãsline - lamâie stoarsa  - ulei de masline + otet balsamic', ''),
(25, 1, 'Salata', 'Salata cu Pui Crocant', 550, 17, 'ardei - rosii - castraveti - telemea - cascaval - salatã iceberg - mãsline - lamâie stoarsa - ulei de masline - piept de pui crocant - sos la alegere', ''),
(26, 1, 'Salata', 'Salata cu Ton', 600, 17, 'ton - rosii - castraveti - ardei - cascaval - telemea -salatã iceberg - porumb - 1ou - mãsline - ceapa - ulei de masline - lamâie 1/4 - sos remoulade ', ''),
(27, 1, 'Salata', 'Salata Bigfresh cu Ton', 400, 17, 'mixt salatã - rosii cherry - mãsline - brânza feta - otet balsamic - lamâie stoarsa - ton - porumb - morcov - ceapã - lamâie + dressing ', ''),
(28, 1, 'Sandwich', 'Sandwich Cascaval', 450, 12, 'La alegere, chifla sau lipie - sos maionezã - cartofi prãjiti - castraveti murati - cascaval - sos maioneza - salatã de varza - rosii', ''),
(29, 1, 'Sandwich', 'Sandwich Prosciutto', 420, 11, 'chifla ciabatta - cremã de unt - felli de sunca - mozzarella - salatã - rosii', ''),
(30, 1, 'Sandwich', 'Sandwich Vegetal', 420, 10, 'ketchup - cartofi prãjiti - castraveti murati - snitel vegetal - salata de varza - rosii', ''),
(31, 1, 'Sandwich', 'Kebab', 500, 12, 'chifla - maionezã cu usturoi - cartofi prajiti - piept de pui crocant - sos de castraveti - salatã iceberg - rosii', ''),
(32, 1, 'Garnituri', 'Cartoji Prajiti', 200, 5, '', ''),
(33, 1, 'Garnituri', 'Salata Asortata de Varza', 200, 4.5, '', ''),
(34, 1, 'Garnituri', 'Salata Asortata de Castraveti Murati', 200, 4.5, '', ''),
(35, 1, 'Garnituri', 'Salata Asortata', 280, 4.5, '', ''),
(36, 1, 'Garnituri', 'Orez cu Legume', 270, 5, '', ''),
(37, 1, 'Garnituri', 'Lipie', 70, 1.5, '', ''),
(38, 1, 'Garnituri', 'Chifla', 50, 1, '', ''),
(39, 1, 'Pizza', 'Pizza Canibale', 640, 19, 'Sos de rosii,  costitã,  suncã,  salam picant,  cârnati,  mozzarella,  mãsline', 'Pizza 1+1: 33 Lei'),
(40, 1, 'Pizza', 'Pizza Capriciosa', 645, 19, 'Sos de rosii, sunca, ciuperci, mozzarella, capere ', 'Pizza 1+1: 33 Lei'),
(41, 1, 'Pizza', 'Pizza Diavolo', 530, 17, 'Sos de rosii, salam picant, mozzarella, ardei gras', 'Pizza 1+1: 31 Lei'),
(42, 1, 'Pizza', 'Pizza Hawaii', 540, 17, 'Sos de rosii, porumb, suncã, mozzarella, ananas', 'Pizza 1+1: 31 Lei'),
(43, 1, 'Pizza', 'Pizza BigBelly', 640, 19, 'Sos de rosii,  porumb,  suncã,  pui crocant,  ciuperci,  mozzarela,  ardei gras', 'Pizza 1+1: 33 Lei'),
(44, 1, 'Pizza', 'Pizza la Alegere', 440, 20, 'Va puteti crea propria reteta! Pornind de la baza (sos de rosii si mozzarella). Maxim 6 ingrdiente.\r\n', 'Pizza 1+1: 34 Lei'),
(45, 1, 'Pizza', 'Pizza Margherita', 420, 14, 'Sos de rosii, oregano, mozzarella', 'Pizza 1+1: 26 Lei'),
(46, 1, 'PIzza', 'Pizza Nazareth', 700, 19, 'Sos de rosii, porumb, pui crocant, ciuperci, mozzarela, ardei gras ', 'Pizza 1+1: 33 Lei'),
(47, 1, 'PIzza', 'Pizza Nazareth', 700, 19, 'Sos de rosii, porumb, pui crocant, ciuperci, mozzarela, ardei gras ', 'Pizza 1+1: 33 Lei'),
(48, 1, 'Pizza', 'Pizza Prosciutto Crudo', 560, 19, 'Sos de rosii, mozzarella, prosciutto crudo', 'Pizza 1+1: 33 Lei'),
(49, 1, 'Pizza', 'Pizza Prosciutto Funghi', 490, 17, 'Sos de rosii, sunca, mozzarella, ciuperci', 'Pizza 1+1: 31 Lei'),
(50, 1, 'Pizza', 'Pizza Provinciale', 675, 17, 'Sos de rosii, porumb, suncã, costitã, ciuperci, mozzarela, cârnati, ceapã', 'Pizza 1+1: 33 Lei'),
(51, 1, 'Pizza', 'Pizza Quatro Formaggi', 430, 17, 'Mozzarella, schweizer, gorgonzola, parmezan', 'Pizza 1+1: 31 Lei'),
(52, 1, 'Pizza', 'Pizza Quattro Stagioni', 630, 19, 'Sos de rosii, porumb, sunca, salam picant, ciuperci, mozzarella, ardei gras, masline', 'Pizza 1+1: 33 Lei'),
(53, 1, 'Pizza', 'Pizza cu Ton', 510, 17, 'Sos de rosii, ton, mozzarela, ceapã', 'Pizza 1+1: 31 Lei'),
(54, 1, 'Pizza', 'Pizza Vegetariana', 515, 17, 'Sos de rosii, porumb, ciuperci, ardei gras, mozzarella, sau cascaval vegetal, rosii, masline', 'Pizza 1+1: 31 Lei'),
(55, 2, 'Pizza', 'Pizza Afumicata', 735, 38, 'sos, mozzarella, cascaval afumat, porumb, sunca, kaizer, carnati taranesti, masline', 'Pizza 1+1 Gratis'),
(56, 2, 'Pizza', 'Pizza Americana', 775, 37, 'Sos, mozzarella, cabanos, sunca, kaizer, cartofi prajiti, porumb', 'Pizza 1+1 Gratis'),
(57, 2, 'Pizza', 'Pizza Ancona (New)', 545, 36, 'Sos, mozzarella, anchoa, capere, parmesan', 'Pizza 1+1 Gratis'),
(58, 2, 'Pizza', 'Pizza Arabeasca', 675, 36, 'Sos, mozzarella, carne de vita, piept de pui, ton, masline', 'Pizza 1+1 Gratis'),
(59, 2, 'Pizza', 'Pizza Ardeleneasca', 675, 35, 'Sos, mozzarella, kaizer, cabanos, ardei, ceapa', 'Pizza 1+1 Gratis'),
(60, 2, 'Pizza', 'Pizza Bahamas', 795, 38, 'Sos, mozzarella, carnati taranesti, sunca, kaizer, ciuperci, ardei, porumb', 'Pizza 1+1 Gratis'),
(61, 2, 'Pizza', 'Pizza Best', 695, 36, 'Sos, mozzarella, salam picant, branza feta, gorgonzola, porumb', 'Pizza 1+1 Gratis'),
(62, 2, 'Pizza', 'Pizza Bismark', 645, 32, 'Sos, mozzarella, sunca, ou, ceapa', 'Pizza 1+1 Gratis'),
(63, 2, 'Pizza', 'Pizza Brescia (New)', 745, 36, 'Sos, mozzarella, carne tocata, salam picant, ardei, ceapa, parmezan, masline', 'Pizza 1+1 Gratis'),
(64, 2, 'Pizza', 'Pizza Capricciosa', 665, 34, 'Sos, mozzarella, sunca, salam, porumb, mazare, masline', 'Pizza 1+1 Gratis'),
(65, 2, 'Pizza', 'Pizza Cannibale', 695, 37, 'Sos, mozzarella, sunca, salam, kaizer, cabanos', 'Pizza 1+1 Gratis'),
(66, 2, 'Pizza', 'Pizza Cannibale Lux', 695, 38, 'Sos, mozzarella, prosciutto crudo, crenvusti, salam, cabanos', 'Pizza 1+1 Gratis'),
(67, 2, 'Pizza', 'Pizza Calzone', 635, 33, 'Sos, mozzarella, salam, cabanos, ciuperci', 'Pizza 1+1 Gratis'),
(68, 2, 'Pizza', 'Pizza Carbonara', 695, 34, 'Sos, mozzarella, kaizer, ou, parmezan, smantana', 'Pizza 1+1 Gratis'),
(69, 2, 'Pizza', 'Pizza Carbonara White', 695, 34, 'Sos alb, mozzarella, smantana, parmezan, kaizer, ou', 'Pizza 1+1 Gratis'),
(70, 2, 'Pizza', 'Pizza Cool', 752, 36, 'Sos, mozzarella, sunca, gorgonzola, cascaval, smantana, rosii', 'Pizza 1+1 Gratis'),
(71, 2, 'Pizza', 'Pizza Crudo e Gorgonzola', 595, 37, 'Sos, mozzarella, prosciutto crudo, gorgonzola', 'Pizza 1+1 Gratis'),
(72, 2, 'Pizza', 'Pizza Ciauo', 685, 34, 'Sos, mozzarella, piept de pui, broccoli, ceapa, porumb', 'Pizza 1+1 Gratis'),
(73, 2, 'Pizza', 'Pizza cu Fructe de Mare', 555, 36, 'Sos, mozzarella, fructe de mare', 'Pizza 1+1 Gratis'),
(74, 2, 'Pizza', 'Pizza de Post', 585, 28, 'Sos, porumb, mazare, ardei, masline, rosii, ciuperci', 'Pizza 1+1 Gratis'),
(75, 2, 'Pizza', 'Pizza del Arte', 695, 36, 'Sos, mozzarella, muschi file, piept de pui, ciuperci, porumb', 'Pizza 1+1 Gratis'),
(76, 2, 'Pizza', 'Pizza Delizioza', 745, 36, 'Sos, mozzarella, sunca, kaizer, ciuperci, rosii, parmezan', 'Pizza 1+1 Gratis'),
(77, 2, 'Pizza', 'Pizza Diavolo', 625, 35, 'Sos, mozzarella, carnati taranesti, salam picant, ardei iute', 'Pizza 1+1 Gratis'),
(78, 2, 'Pizza', 'Pizza Fast', 595, 36, 'Sos, mozzarella +3 ingrediente la alegere + CEL MAI SCURT TIMP DE LIVRARE', 'Pizza 1+1 Gratis'),
(79, 2, 'Pizza', 'Pizza Fast & Furious', 865, 39, 'Sos, mozzarella, sunca, salam, kaizer, cabanos, porumb, ciuperci, rosii, masline', 'Pizza 1+1 Gratis'),
(80, 2, 'Pizza', 'Pizza Ferrara (New)', 735, 36, 'Sos, mozzarella, carne tocata, kaizer, salam picant, sunca, ulei masline cu usturoi', 'Pizza 1+1 Gratis'),
(81, 2, 'Pizza', 'Pizza Florenta (New)', 645, 36, 'Sos, mozzarella, carnati taranesti, gogosari in otet, ceapa, usturoi, masline', 'Pizza 1+1 Gratis'),
(82, 2, 'Pizza', 'Pizza Funghi', 575, 33, 'Sos, mozzarella, ciuperci, masline', 'Pizza 1+1 Gratis'),
(83, 2, 'Pizza', 'Pizza Funky', 745, 36, 'Sos, mozzarella, kaizer, sunca, carnati, branza feta, rosii', 'Pizza 1+1 Gratis'),
(84, 2, 'Pizza', 'Pizza Furious', 685, 35, 'Sos picant, mozzarella, carnat picant, salam picant, ardei iute, chilli', 'Pizza 1+1 Gratis'),
(85, 2, 'PIzza', 'Pizza Genova (New)', 695, 35, 'Sos, mozzarella, sunca, ciuperci, porumb, ardei iute, ceapa', 'Pizza 1+1 Gratis');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_comments`
--

CREATE TABLE IF NOT EXISTS `visitor_comments` (
  `id_comment` int(20) unsigned NOT NULL,
  `id_caterer` int(20) unsigned NOT NULL,
  `visitor_name` text COLLATE utf8_romanian_ci NOT NULL,
  `email_adress` text COLLATE utf8_romanian_ci NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_text` text COLLATE utf8_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caterer`
--
ALTER TABLE `caterer`
  ADD PRIMARY KEY (`id_caterer`);

--
-- Indexes for table `menu_foods`
--
ALTER TABLE `menu_foods`
  ADD PRIMARY KEY (`id_foods`);

--
-- Indexes for table `visitor_comments`
--
ALTER TABLE `visitor_comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caterer`
--
ALTER TABLE `caterer`
  MODIFY `id_caterer` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_foods`
--
ALTER TABLE `menu_foods`
  MODIFY `id_foods` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `visitor_comments`
--
ALTER TABLE `visitor_comments`
  MODIFY `id_comment` int(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
