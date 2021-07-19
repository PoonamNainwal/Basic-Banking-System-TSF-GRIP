-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 07:19 PM
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
-- Database: `basic bank system database`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Vedprakash Pandey', 'Ro Superhit Sharma', 800, '2021-07-11 18:07:13'),
(2, 'Abhram Devillers', 'Glenn Maxwell', 540, '2021-07-12 20:44:53'),
(3, 'Lokesh Patil', 'Sagar Sharma', 280, '2021-07-13 07:34:22'),
(4, 'Lokesh Patil', 'Shailesh Gupta', 1, '2021-07-13 19:27:31'),
(5, 'Mahendra Singh Dhoni', 'Ro Superhit Sharma', 827, '2021-07-16 21:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Vedprakash Pandey', 'Vedprakashpandey2022@gmail.com', 42253),
(2, 'Sagar Sharma', 'sagar.sharma12@gmail.com', 35000),
(3, 'Lokesh Patil', 'patil.lokesh@gmail.com', 47190),
(4, 'Jay Ghayar', 'JayGhayar2000@gmail.com', 48590),
(5, 'Shailesh Gupta', 'Gupta.shailesh2001@gmail.com', 35800),
(6, 'sahil Gupta', 'Sahilpinkugupta@gmail.com', 34806),
(7, 'Glenn Maxwell', 'Nahipata@gmail.com', 50077),
(8, 'Ro Superhit Sharma', 'imRo45@gmail.com', 37654),
(9, 'Abhram Devillers', 'ABD360@gmail.com', 29200),
(10, 'Mahendra Singh Dhoni', 'CaptainCool07@gmail.com', 50069);

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
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
