-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2024 at 09:56 AM
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `userid` int NOT NULL,
  `productid` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`userid`, `productid`, `quantity`) VALUES
(6, 3, 3);

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
  `description` varchar(1000) NOT NULL,
  `price` varchar(10) NOT NULL,
  `category` varchar(15) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `description`, `price`, `category`, `image`, `id`) VALUES
('I3-12100F', '', '9000', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/I3-12100F.png?raw=true', 1),
('Intel Core i5-10600K', '', '21,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Intel%20i5-10600K.png?raw=true', 2),
('Intel Core i5-11400', '', '14,499', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Intel%20Core%20i5-11400.png?raw=true', 3),
('Intel Core I7 13700K', '', '34,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Intel-Core-I7-13700K.png?raw=true', 4),
('AMD Ryzen 9 5900X', '', '29,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen_9_5900x.png?raw=true', 5),
('AMD Ryzen 7 5700G', '', '17,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen%207%205700g.png?raw=true', 6),
('AMD Ryzen 3 3300X', '', '9,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen%203%203300x.png?raw=true', 7),
('AMD Ryzen 5 5500', '', '7,999', 'processor', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ryzen%205%205500.png?raw=true', 8),
('GEFORCE GTX 1650', '', '10,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/GIGABYTE_GeForce_GTX_1650-9999.png?raw=true', 9),
('GEFORCE RTX 3080', '', '1,19,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Asus%20ROG%20%20RTX%203080.png?raw=true', 10),
('ASUS Dual RX 6600', '', '18,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ASUS_Dual_Radeon_RX_6600_8_GB-18999-.png?raw=true', 11),
('GEFORCE GTX 1660', '', '19,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/GTX_1660_Super_-19999%20.png?raw=true', 12),
('GEFORCE RTX 4060', '', '28,099', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/rtx_4060_28099.png?raw=true', 13),
('GEFORCE RTX 2060', '', '29,099', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/rtx_2060_29099.png?raw=true', 14),
('AMD RX 5500 XT', '', '18,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/RX_5500_XT-18999%20.png?raw=true', 15),
('GEFORCE RTX 3070', '', '79,999', 'Graphics Card', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/RTX_3070_80000.png?raw=true', 16),
('CORSAIR RGB 16GB', '', '9999', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/CORSAIR_Vengeance_RGB_PRO_16GB__2x8GB__-9999-removebg-preview.png?raw=true', 17),
('GSKILL Trident 32GB', '', '8200', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/G.SKILL_Trident_Z_RGB_32GB_2_16GB-8200.png?raw=true', 18),
('Predator Vesta 32GB', '', '10,999', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Predator_Vesta_32gb_10999.png?raw=true', 19),
('Patriot Viper 8GB', '', '2000', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Patriot_Viper_Steel_2000.png?raw=true', 20),
('Team-Force 16GB', '', '4500', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/TeamGroup_T-Force_4500.png?raw=true', 21),
('XPG ADATA 8GB', '', '2000', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/XPG_ADATA_GAMMIX_D30_DDR4_8GB-2000.png?raw=true', 22),
('KINGSTONE 8GB RGB', '', '2500', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/kingston_ram_8gb_ddr4-_2500-.png?raw=true', 23),
('KINGSTONE FURY 8GB', '', '2199', 'Ram', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ram.png?raw=true', 24),
('Gigabyte B550', '', '28,999', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Gigabyte_B550_Aorus_Pro_AC_28999.png?raw=true', 25),
('MSI MPG B550', '', '18,099', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/MSI_MPG_B550_GAMING_EDGE_WIFI_Gaming_Motherboard-18099.png?raw=true', 26),
('ASUS Prime Z590 A', '', '26,999', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ASUS_Prime_Z590-A_26999-.png?raw=true', 27),
('ASRock B560', '', '16,999', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ASRock_B560_Steel_Legend_16999-removebg-preview.png?raw=true', 28),
('Z690 AORUS ELITE', '', '28,999', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/Z690-AORUS-ELITE-AX-DDR4%2028999.png?raw=true', 29),
('MSI MAG B660M', '', '18,9999', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/MSI_MAG_B660M_MORTAR_WIFI_18999-removebg-preview.png?raw=true', 30),
('ASRock Z690', '', '31,500', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/ASRock_Z690_Extreme_WiFi_6E_31500-removebg-preview%20(1).png?raw=true', 31),
('GIGABYTE X570', '', '33,500', 'Motherboard', 'https://github.com/SmitRami1/pc-wala/blob/main/Images/GIGABYTE_X570_AORUS_MASTER_33500-removebg-preview.png?raw=true', 32);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `userid`) VALUES
('ssss', 'ssss', 1),
('smit', '123', 2),
('jeel', 'jeel123', 3),
('smitsmit', 'smit', 4),
('jil', '1234', 5),
('admin', 'admin', 6),
('sd', 'f', 7),
('f', 'd', 8),
('sdsd', 'sdsd', 9),
('fd', 'sd', 10),
('rami', 'lkj', 11),
('dsds', 'dsd', 12),
('h', '463696', 13);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
