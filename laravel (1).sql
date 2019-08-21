-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2019 at 01:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

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
-- Table structure for table `accountinfo`
--

CREATE TABLE `accountinfo` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountinfo`
--

INSERT INTO `accountinfo` (`id`, `username`, `card_number`, `balance`) VALUES
(1, 'investor', '1122345', 749000);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'srv', '123', 'srv@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `investor_name` varchar(50) NOT NULL,
  `representor_name` varchar(50) NOT NULL,
  `ammount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `investor_name`, `representor_name`, `ammount`, `date`) VALUES
(1, 'investor', 'idea11', 1000, '2019-08-17'),
(3, 'investor', 'idea22', 500, '2019-08-17'),
(4, 'investor', 'idea11', 5000, '2019-08-17'),
(5, 'investor', 'idea11', 4500, '2019-08-17'),
(6, 'investor', 'idea11', 9000, '2019-08-17'),
(7, 'investor', 'idea11', 10000, '2019-08-17'),
(8, 'investor', 'idea11', 20000, '2019-08-17'),
(9, 'investor', 'idea11', 20500, '2019-08-17'),
(10, 'investor', 'idea11', 21000, '2019-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `projected_amount` int(11) NOT NULL,
  `donated_amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`id`, `username`, `title`, `details`, `projected_amount`, `donated_amount`) VALUES
(1, 'idea11', 'RFID Based Door Access Control', 'The conception of entrance control is brought about by mean of a card, a parallel card reader and a control board is amalgamated with the server. This is a proximity card with a unique ID number incorporated in it. The card reader interprets the data and sends it to the control board, which is a microcontroller. This microcontroller tests the legality of the data with the incorporated server, which abides the database. The attached server is uploaded with the details of the worker for that unique ID number.', 500000, 21000),
(2, 'idea22', 'Automatic Solar Tracker', 'Automatic solar tracker begins to follow the SUN exactly from sunrise, all through the day, till sunset, and begins the work all over again from sunrise next day. On hazy weather day, it lingers motionless and grasps the SUN yet again as it peeps out of clouds. It does all this mechanically, by employing inexpensive and economical constituents, and is extremely accurate. Let us make out how all this is done.', 100000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `idea_review`
--

CREATE TABLE `idea_review` (
  `id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `complain` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`, `name`, `email`, `phone`) VALUES
(1, 'admin', '123', 'admin', 'sourav', 'souravsarkersrv@gmail.com', '01683135468'),
(2, 'investor', '123', 'investor', 'sarker', 'souravsarkersrv@gmail.com', '01683135468'),
(3, 'fahim', '123', 'investor', 'Sourav Sarker', 'souravsarkersrv@gmail.com', '1683135468');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_time`
--

CREATE TABLE `user_login_time` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountinfo`
--
ALTER TABLE `accountinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_time`
--
ALTER TABLE `user_login_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountinfo`
--
ALTER TABLE `accountinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_login_time`
--
ALTER TABLE `user_login_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
