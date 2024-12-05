-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2024 at 07:08 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game_suit`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int NOT NULL,
  `user_choice` varchar(10) DEFAULT NULL,
  `computer_choice` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_choice`, `computer_choice`, `result`, `created_at`) VALUES
(1, 'gunting', 'batu', 'kalah', '2024-12-05 06:00:58'),
(2, 'kertas', 'batu', 'menang', '2024-12-05 06:00:59'),
(3, 'batu', 'kertas', 'kalah', '2024-12-05 06:01:00'),
(6, 'batu', 'batu', 'seri', '2024-12-05 06:05:06'),
(7, 'kertas', 'batu', 'menang', '2024-12-05 06:05:07'),
(9, 'batu', 'gunting', 'menang', '2024-12-05 06:05:08'),
(10, 'gunting', 'kertas', 'menang', '2024-12-05 06:05:08'),
(11, 'gunting', 'gunting', 'seri', '2024-12-05 06:05:09'),
(12, 'batu', 'batu', 'seri', '2024-12-05 06:05:34'),
(13, 'kertas', 'batu', 'menang', '2024-12-05 06:05:35'),
(14, 'kertas', 'batu', 'menang', '2024-12-05 06:05:35'),
(15, 'kertas', 'kertas', 'seri', '2024-12-05 06:09:32'),
(16, 'batu', 'gunting', 'menang', '2024-12-05 06:09:34'),
(17, 'batu', 'kertas', 'kalah', '2024-12-05 06:12:15'),
(18, 'batu', 'batu', 'seri', '2024-12-05 06:27:49'),
(19, 'kertas', 'batu', 'menang', '2024-12-05 06:27:50'),
(20, 'kertas', 'gunting', 'kalah', '2024-12-05 06:51:01'),
(21, 'batu', 'batu', 'seri', '2024-12-05 06:51:01'),
(22, 'kertas', 'kertas', 'seri', '2024-12-05 07:07:49'),
(23, 'batu', 'gunting', 'menang', '2024-12-05 07:07:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
