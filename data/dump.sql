-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2016 at 01:49 PM
-- Server version: 5.6.34
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starter-data`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium "meat".', 'catm.png'),
('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('686426518649ec1622532140f4d2ccb11ad95099', '127.0.0.1', 1478208775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383230383736353b),
('439e458a33bac2e24cac5044547dcc498a712055', '127.0.0.1', 1478209383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383230393231313b),
('dcf8596fd7707606ffaf346181459bb694f60c50', '127.0.0.1', 1478209854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383230393638323b),
('14cc81d58991d3ee44e510418077d721800174b4', '127.0.0.1', 1478210383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383231303337323b),
('8138d7f48e824b20d79af046ead780bfd819cca4', '127.0.0.1', 1478210823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383231303831353b),
('0fc77ebae2d4b33486048929f232b00100956e4f', '127.0.0.1', 1478211139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383231313132353b75736572726f6c657c733a353a2261646d696e223b),
('72ebe4778f41175183eb74a42842cf8a3308388d', '127.0.0.1', 1478290845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383239303834323b),
('d9157d953d2ec8d705c11160ed2b794eb08104af', '127.0.0.1', 1478416346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383431363333393b),
('1bbfe2b20c61c56587e8d28b01b4e7781b2af68b', '127.0.0.1', 1478417126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383431363839303b75736572726f6c657c733a353a2261646d696e223b),
('bfd4189ab3800ac3b4e989d356b1ae085cf83a47', '127.0.0.1', 1478417431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383431373432303b75736572726f6c657c733a343a2275736572223b),
('ff1c9548003eb693ed551d22896f66b8fb076547', '127.0.0.1', 1478844259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437383834343235383b);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
