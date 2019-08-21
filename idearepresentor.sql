-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 01:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `idearepresentor`
--

CREATE TABLE `idearepresentor` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `School` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `University` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `Address` text NOT NULL,
  `age` varchar(5) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'idearepresentor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idearepresentor`
--

INSERT INTO `idearepresentor` (`id`, `name`, `School`, `college`, `University`, `email`, `phone`, `Address`, `age`, `type`) VALUES
(1, 'siyam01', 'zilla school', 'govt clg', 'aiub', 'sohanshovik@gmail.com', '015', 'nikuja dhaka', '222', 'idearepresentor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idearepresentor`
--
ALTER TABLE `idearepresentor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idearepresentor`
--
ALTER TABLE `idearepresentor`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
