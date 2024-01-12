-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2024 at 04:37 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pc-wala`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `name` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`name`, `image`) VALUES
('Processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/processor.png?raw=true'),
('Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/graphics%20card.png?raw=true'),
('Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ram.png?raw=true'),
('Cabinet', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/cabinet.png?raw=true'),
('Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/motherboard.png?raw=true'),
('SMPS', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/smps.png?raw=true'),
('STORAGE', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/storage.png?raw=true'),
('Monitor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/monitor.png?raw=true');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `category` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `price`, `category`) VALUES
('I3 12th Gen', '₹9000', 'processor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
