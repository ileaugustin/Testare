-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2015 at 01:33 PM
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
  `adress_caterer` text COLLATE utf8_romanian_ci NOT NULL,
  `google_map` text COLLATE utf8_romanian_ci NOT NULL,
  `schedule` text COLLATE utf8_romanian_ci NOT NULL,
  `description_caterer` text COLLATE utf8_romanian_ci NOT NULL,
  `other_details` text COLLATE utf8_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

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
  `description_food` text COLLATE utf8_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

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
  MODIFY `id_caterer` int(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_foods`
--
ALTER TABLE `menu_foods`
  MODIFY `id_foods` int(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visitor_comments`
--
ALTER TABLE `visitor_comments`
  MODIFY `id_comment` int(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
