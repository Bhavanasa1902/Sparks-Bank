-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 03:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankofsparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(5) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `balance` int(8) NOT NULL,
  `dateime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Krish', 'Arpita', 3456, '2021-07-17 22:00:00'),
(2, 'Yash', 'Anu', 2364, '2021-07-17 22:01:12'),
(3, 'Vaish', 'Raksh', 2388, '2021-07-17 22:01:30'),
(4, 'Neha', 'Shrav', 1200, '2021-07-17 22:02:35'),
(5, 'Saak', 'Prajwal', 5302, '2021-07-17 22:03:10'),
(6, 'Shrav', 'Saak', 5300, '2021-07-17 22:14:21'),
(7, 'Raksh', 'Neha', 2340, '2021-07-17 22:14:55'),
(8, 'Prajwal', 'Krish', 8500, '2021-07-17 22:17:34'),
(9, 'Arpita', 'Yash', 4500, '2021-07-17 22:18:11');
(10,'Anu', 'Vaish', 4500, '2021-07-17 22:19:32');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Krish', 'krish213@gmail.com', 16632),
(2, 'Arpita', 'arpita@gmail.com', 28740),
(3, 'Yash', 'yashh@gmail.com', 39456),
(4, 'Anu', 'anu17@gmail.com', 13868),
(5, 'Vaish', 'vaish2@gmail.com', 23430),
(6, 'Raksh', 'raksh@gmail.com', 12000),
(7, 'Neha', 'neha5@gmail.com', 53020),
(8, 'Shrav', 'shrav1@gmail.com', 23850),
(9, 'Saak', 'saak23@gmail.com', 25100),
(10, 'Prajwal', 'prajwal@gmail.com', 17320);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `customers`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
