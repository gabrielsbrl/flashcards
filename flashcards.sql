-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 10:51 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flashcards`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `interval` varchar(255) NOT NULL,
  `repetitions` varchar(255) NOT NULL,
  `easeFactor` varchar(255) NOT NULL,
  `exibition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `content`, `interval`, `repetitions`, `easeFactor`, `exibition`) VALUES
(1, 'teste', '67', '4', '3.460000000000001', '2020-04-24T21:48:01.778Z'),
(2, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(3, 'teste hehehe', '1', '0', '2.36', 'Tue Feb 17 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(4, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(5, 'teste hehehe', '1', '0', '2.36', 'Tue Feb 17 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(6, 'teste hehehe', '1', '0', '2.36', 'Tue Feb 17 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(7, 'teste hehehe', '1', '0', '2.36', 'Tue Feb 17 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(8, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(9, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(10, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(11, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(12, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)'),
(13, 'teste', '0', '0', '2.5', 'Tue Feb 18 2020 17:39:10 GMT-0300 (Brasilia Standard Time)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
