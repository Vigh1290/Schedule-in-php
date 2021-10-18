-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2021 at 08:01 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `rajesh`
--

CREATE TABLE `rajesh` (
  `id` int(33) NOT NULL,
  `Event` varchar(333) NOT NULL,
  `date` date NOT NULL,
  `Start` time NOT NULL,
  `End` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rajesh`
--

INSERT INTO `rajesh` (`id`, `Event`, `date`, `Start`, `End`) VALUES
(1, 'Meeting with Manager', '2021-10-13', '09:30:00', '10:30:00'),
(2, 'Meeting with client', '2021-10-13', '10:00:00', '11:00:00'),
(3, 'Meeting with engineer', '2021-10-13', '13:00:00', '13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`) VALUES
('vikas'),
('rajesh');

-- --------------------------------------------------------

--
-- Table structure for table `vikas`
--

CREATE TABLE `vikas` (
  `id` int(50) NOT NULL,
  `Event` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `Start` time NOT NULL,
  `End` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vikas`
--

INSERT INTO `vikas` (`id`, `Event`, `date`, `Start`, `End`) VALUES
(1, 'Meeting with HR', '2021-10-13', '09:00:00', '10:00:00'),
(2, 'Meeting with client', '2021-10-13', '11:00:00', '13:00:00'),
(3, 'Meeting with Manager', '2021-10-13', '12:00:00', '14:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rajesh`
--
ALTER TABLE `rajesh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vikas`
--
ALTER TABLE `vikas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rajesh`
--
ALTER TABLE `rajesh`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vikas`
--
ALTER TABLE `vikas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
