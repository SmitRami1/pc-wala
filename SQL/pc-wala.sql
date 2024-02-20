-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2024 at 09:56 AM
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
('processor', 'https://th.bing.com/th/id/R.de0d3c1bed03696aeedee32e911ac239?rik=Ql0ds7bRo%2bdLag&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0463%2f2539%2f9719%2fproducts%2f1_0facef5d-014d-4b3a-a907-972909111b09.png%3fv%3d1670578811&ehk=0J1p%2brJeoiikys6aThy8OW63JLwjkzeJXqGEEAtm5%2fA%3d&risl=&pid=ImgRaw&r=0'),
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
  `category` varchar(15) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `price`, `category`, `image`) VALUES
('I3-12100F', '9000', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/I3-12100F.png?raw=true'),
('Intel Core i5-10600K', '21,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Intel%20i5-10600K.png?raw=true'),
('Intel Core i5-11400', '14,499', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Intel%20Core%20i5-11400.png?raw=true'),
('Intel Core I7 13700K', '34,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Intel-Core-I7-13700K.png?raw=true'),
('AMD Ryzen 9 5900X', '29,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen_9_5900x.png?raw=true'),
('AMD Ryzen 7 5700G', '17,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen%207%205700g.png?raw=true'),
('AMD Ryzen 3 3300X', '9,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen%203%203300x.png?raw=true'),
('AMD Ryzen 5 5500', '7,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen%205%205500.png?raw=true'),
('GEFORCE GTX 1650', '10,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/GIGABYTE_GeForce_GTX_1650-9999.png?raw=true'),
('GEFORCE RTX 3080', '1,19,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Asus%20ROG%20%20RTX%203080.png?raw=true'),
('ASUS Dual RX 6600', '18,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ASUS_Dual_Radeon_RX_6600_8_GB-18999-.png?raw=true'),
('GEFORCE GTX 1660', '19,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/GTX_1660_Super_-19999%20.png?raw=true'),
('GEFORCE RTX 4060', '28,099', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/rtx_4060_28099.png?raw=true'),
('GEFORCE RTX 2060', '29,099', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/rtx_2060_29099.png?raw=true'),
('AMD RX 5500 XT', '18,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/RX_5500_XT-18999%20.png?raw=true'),
('GEFORCE RTX 3070', '79,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/RTX_3070_80000.png?raw=true'),
('CORSAIR RGB 16GB', '9999', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/CORSAIR_Vengeance_RGB_PRO_16GB__2x8GB__-9999-removebg-preview.png?raw=true'),
('GSKILL Trident 32GB', '8200', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/G.SKILL_Trident_Z_RGB_32GB_2_16GB-8200.png?raw=true'),
('Predator Vesta 32GB', '10,999', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Predator_Vesta_32gb_10999.png?raw=true'),
('Patriot Viper 8GB', '2000', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Patriot_Viper_Steel_2000.png?raw=true'),
('Team-Force 16GB', '4500', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/TeamGroup_T-Force_4500.png?raw=true'),
('XPG ADATA 8GB', '2000', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/XPG_ADATA_GAMMIX_D30_DDR4_8GB-2000.png?raw=true'),
('KINGSTONE 8GB RGB', '2500', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/kingston_ram_8gb_ddr4-_2500-.png?raw=true'),
('KINGSTONE FURY 8GB', '2199', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ram.png?raw=true');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('ssss', 'ssss'),
('smit', '123'),
('jeel', 'jeel123'),
('smitsmit', 'smit'),
('jil', '1234'),
('admin', 'admin'),
('sd', 'f'),
('f', 'd'),
('sdsd', 'sdsd'),
('fd', 'sd'),
('rami', 'lkj'),
('dsds', 'dsd'),
('h', '463696');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
