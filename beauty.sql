-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 09:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `category_id`, `sub_category_id`) VALUES
(1, 'Makeup', 0, 0),
(2, 'Skin', 0, 0),
(3, 'Hair', 0, 0),
(4, 'Fragances', 0, 0),
(5, 'Face', 1, 0),
(6, 'Eyes', 1, 0),
(7, 'Lips', 1, 0),
(8, 'Cleansers', 2, 0),
(9, 'Moisturizers', 2, 0),
(10, 'Toners', 2, 0),
(11, 'Masks', 2, 0),
(12, 'Hair Care', 3, 0),
(13, 'Tools $ Accessories', 3, 0),
(14, 'Women\'s Fragance', 4, 0),
(15, 'Men\'s Fragance', 4, 0),
(16, 'Premium & Designer Fragance', 4, 0),
(17, 'Body Mist/Spray', 4, 14),
(18, 'Perfume(EDT & EDP', 4, 14),
(19, 'Deodorants/Roll-ons', 4, 14),
(20, 'Face Primer', 1, 5),
(21, 'Concealer', 1, 5),
(22, 'Foundation', 1, 5),
(23, 'Eyeliner', 1, 6),
(24, 'Eye Shadow', 1, 6),
(25, 'Kajal', 1, 6),
(26, 'Lipstick', 1, 7),
(27, 'Lip stain', 1, 7),
(28, 'Face wash', 2, 8),
(29, 'Cleansing oils & Balm', 2, 8),
(30, 'Serums & Essence', 2, 9),
(31, 'Face Oils', 2, 9),
(32, 'Face Moisturizer & Day Cream', 2, 9),
(33, 'Toners & MIsts', 2, 10),
(34, 'Rose water', 2, 10),
(35, 'Sheet Masks', 2, 11),
(36, 'Face Packs', 2, 11),
(37, 'Peeling Mask', 2, 11),
(38, 'Shampoo', 3, 12),
(39, 'Hair OIl', 3, 12),
(40, 'Conditioner', 3, 12),
(41, 'Hair Creams & Masks', 3, 12),
(42, 'Hair Brushes', 3, 13),
(43, 'Hair Combs', 3, 13),
(44, 'Colognes & After Shaves', 4, 15),
(45, 'Perfumes (EDT & EDP )', 4, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
