-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 09:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multimedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `multiimages`
--

CREATE TABLE `multiimages` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multiimages`
--

INSERT INTO `multiimages` (`id`, `name`, `images`) VALUES
(2, 'shru', '[\"images/shopping_(2)-transformed.png\",\"images/shopping-q7sSW3BQD-transformed (1).png\",\"images/shopping_(3)-transformed.png\",\"images/shopping_(4)-transformed.png\",\"images/shopping_(5)-transformed (2).png\",\"images/shopping_(5)-transformed (1).png\"]'),
(3, 'priti product', '[\"images/shopping_(2)-transformed.png\",\"images/shopping-q7sSW3BQD-transformed (1).png\",\"images/shopping_(3)-transformed.png\",\"images/shopping_(4)-transformed.png\",\"images/shopping_(5)-transformed (2).png\",\"images/shopping_(5)-transformed (1).png\"]'),
(4, 'jay products', '[\"images/shopping_(2)-transformed.png\",\"images/shopping-q7sSW3BQD-transformed (1).png\",\"images/shopping_(3)-transformed.png\",\"images/shopping_(4)-transformed.png\",\"images/shopping_(5)-transformed (2).png\",\"images/shopping_(5)-transformed (1).png\"]'),
(5, 'chips products ', '[\"images/shopping_(6)-transformed.png\",\"images/shopping_(7)-transformed (1).png\",\"images/shopping-q7sSW3BQD-transformed.png\",\"images/shopping_(5)-transformed.png\",\"images/shopping_(7)-transformed.png\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `multiimages`
--
ALTER TABLE `multiimages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `multiimages`
--
ALTER TABLE `multiimages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
