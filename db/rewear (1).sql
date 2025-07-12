-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2025 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rewear`
--
CREATE DATABASE IF NOT EXISTS `rewear` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rewear`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Creation: Jul 12, 2025 at 08:04 AM
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `item_id` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `item_img` varchar(255) DEFAULT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Truncate table before insert `admin`
--

TRUNCATE TABLE `admin`;
-- --------------------------------------------------------

--
-- Table structure for table `item`
--
-- Creation: Jul 12, 2025 at 08:38 AM
-- Last update: Jul 12, 2025 at 08:38 AM
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_img` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `is_swap_available` tinyint(1) NOT NULL,
  `is_point_available` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `item`:
--

--
-- Truncate table before insert `item`
--

TRUNCATE TABLE `item`;
--
-- Dumping data for table `item`
--

INSERT DELAYED IGNORE INTO `item` (`item_id`, `item_name`, `item_img`, `price`, `tag`, `size`, `category`, `is_swap_available`, `is_point_available`, `status`) VALUES
('099d1a9380', 'Prada Bag', 'images/prada-bag.jpg', 4999.99, 'fashion', 'Medium', 'Accessories', 0, 0, ''),
('46a4fa5ee4', 'Nike Running Shoes', 'images/nike-shoes.jpg', 4999.99, 'sports', '10', 'Footwear', 0, 0, ''),
('f06a1c1473', 'Apple Watch Series 9', 'images/apple-watch.jpg', 39999.00, 'tech', '42mm', 'Electronics', 0, 0, ''),
('f2126fbe39', 'Nike Air Zoom Pegasus', 'images/nike-shoes.jpg', 8999.50, 'sports', '9', 'Footwear', 0, 0, ''),
('f277327996', 'Adidad Sports Shoes', 'images/adidas-shoes.jpg', 4599.99, 'sports', '11', 'Footwear', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--
-- Creation: Jul 12, 2025 at 08:46 AM
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `transaction_id` varchar(10) NOT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `swap` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `payment`:
--

--
-- Truncate table before insert `payment`
--

TRUNCATE TABLE `payment`;
-- --------------------------------------------------------

--
-- Table structure for table `register`
--
-- Creation: Jul 12, 2025 at 08:11 AM
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `customer_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `points` int(50) DEFAULT NULL,
  `swaps` int(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `register`:
--

--
-- Truncate table before insert `register`
--

TRUNCATE TABLE `register`;
-- --------------------------------------------------------

--
-- Table structure for table `swap`
--
-- Creation: Jul 12, 2025 at 09:57 AM
-- Last update: Jul 12, 2025 at 09:57 AM
--

DROP TABLE IF EXISTS `swap`;
CREATE TABLE IF NOT EXISTS `swap` (
  `sender_user_id` int(10) DEFAULT NULL,
  `sender_user_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `sender_one_address` varchar(255) DEFAULT NULL,
  `sender_two_Address` varchar(255) DEFAULT NULL,
  `sender_one_user_id` int(10) DEFAULT NULL,
  `sender_one_product_name` varchar(100) DEFAULT NULL,
  `sender_two_user_id` int(10) DEFAULT NULL,
  `sender_two_product_name` varchar(100) DEFAULT NULL,
  `item_offered` varchar(100) NOT NULL,
  `item_requested` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `swap`:
--

--
-- Truncate table before insert `swap`
--

TRUNCATE TABLE `swap`;

--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table admin
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table item
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table payment
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table register
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table swap
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for database rewear
--

--
-- Truncate table before insert `pma__bookmark`
--

TRUNCATE TABLE `pma__bookmark`;
--
-- Truncate table before insert `pma__relation`
--

TRUNCATE TABLE `pma__relation`;
--
-- Truncate table before insert `pma__savedsearches`
--

TRUNCATE TABLE `pma__savedsearches`;
--
-- Truncate table before insert `pma__central_columns`
--

TRUNCATE TABLE `pma__central_columns`;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
