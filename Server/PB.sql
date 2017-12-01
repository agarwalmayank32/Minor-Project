-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2017 at 07:31 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PB`
--

-- --------------------------------------------------------

--
-- Table structure for table `allservice`
--

CREATE TABLE `allservice` (
  `serviceid` int(40) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicetype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allservice`
--

INSERT INTO `allservice` (`serviceid`, `servicename`, `servicetype`) VALUES
(1, 'regular haircut', 'Barbershop Services '),
(2, 'fades', 'Barbershop Services '),
(3, 'beard trims', 'Barbershop Services '),
(4, 'line-up', 'Barbershop Services '),
(5, 'shave', 'Barbershop Services '),
(6, 'cut and wash', 'Barbershop Services '),
(7, 'children', 'Barbershop Services '),
(8, 'razor edge', 'Barbershop Services '),
(9, 'eyebrows', 'Barbershop Services '),
(10, 'specialty cuts/designs', 'Barbershop Services '),
(11, 'coloring', 'Salon Services'),
(12, 'extensions', 'Salon Services'),
(13, 'wash and set', 'Salon Services'),
(14, 'flat iron', 'Salon Services'),
(15, 'blow out', 'Salon Services'),
(16, 'Dreadlocks', 'Salon Services'),
(17, 'Braids ', 'Salon Services'),
(18, 'Highlights', 'Salon Services'),
(19, 'Relaxers', 'Salon Services'),
(20, 'Deep Conditioning', 'Salon Services'),
(21, 'Up-Do', 'Salon Services'),
(22, 'Shampoo', 'Salon Services'),
(23, 'Cut & Style', 'Salon Services'),
(24, 'Hair Treatments', 'Salon Services'),
(25, 'Specialty', 'Salon Services'),
(26, 'Eyebrows', 'Salon Services'),
(27, 'Full Set', 'Nail Salons'),
(28, 'Manicure', 'Nail Salons'),
(29, 'Pedicure', 'Nail Salons'),
(30, 'Polish Change', 'Nail Salons'),
(31, 'Waxing', 'Nail Salons'),
(32, 'Lashes', 'Nail Salons'),
(33, 'Repair', 'Nail Salons'),
(34, 'Designs', 'Nail Salons'),
(35, 'Soak Off', 'Nail Salons'),
(36, 'Massages', 'Spa Services'),
(37, 'Facials', 'Spa Services'),
(38, 'Chemical peels', 'Spa Services'),
(39, 'Body Treatments', 'Spa Services'),
(40, 'Waxing', 'Spa Services'),
(41, 'Color', 'Tattoo Shops'),
(42, 'Size', 'Tattoo Shops'),
(43, 'Customs', 'Tattoo Shops'),
(44, 'Piercings ', 'Tattoo Shops');

-- --------------------------------------------------------

--
-- Table structure for table `Authenticator_Customer`
--

CREATE TABLE `Authenticator_Customer` (
  `acid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `mtoken` varchar(100) NOT NULL,
  `timestmp` bigint(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authenticator_Customer`
--

INSERT INTO `Authenticator_Customer` (`acid`, `custid`, `mtoken`, `timestmp`) VALUES
(1, 1, '182bebfd673d54c4a03a5ff89bfd4a55', 1512022204),
(2, 2, 'd8855e7865600e2214df8bd1e81f7a26', 1510917665),
(3, 3, 'a979bbd88fa4b58d73916970b62e297b', 1512030902),
(4, 4, '48ab23f5d96178c1de939af72c05b35f', 1510917898);

-- --------------------------------------------------------

--
-- Table structure for table `Authenticator_Shop`
--

CREATE TABLE `Authenticator_Shop` (
  `asid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `mtoken` varchar(100) NOT NULL,
  `timestmp` bigint(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Authenticator_Shop`
--

INSERT INTO `Authenticator_Shop` (`asid`, `sid`, `mtoken`, `timestmp`) VALUES
(1, 1, '403ae9c56a00c9cf159c788b4407b2c3', 1512060420),
(2, 3, '2e32a1f727d14085821961104860fa16', 1511934483),
(3, 4, '7148d0743ca3f65cb9e3a2669d8decee', 1511934595),
(4, 5, 'a260853e624156f13ecb734e731098f5', 1511934645);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `service` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending Confirmation'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `sid`, `cid`, `date`, `time`, `service`, `status`) VALUES
(1, 1, 1, '2017-11-29', '12:00:00', 'fades', 'Rejected'),
(2, 1, 1, '2017-11-29', '13:00:00', 'fades', 'Accepted'),
(12, 1, 1, '2017-11-30', '12:00:00', 'fades', 'Rejected'),
(13, 2, 1, '2017-12-01', '11:00:00', 'fades', 'Pending Confirmation'),
(14, 2, 1, '2017-11-30', '22:00:00', 'fades', 'Pending Confirmation'),
(15, 1, 3, '2017-12-01', '13:00:00', 'fades', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `bookingOld`
--

CREATE TABLE `bookingOld` (
  `bid` int(20) NOT NULL,
  `shopemail` varchar(40) NOT NULL,
  `custemail` varchar(40) NOT NULL,
  `custname` varchar(40) NOT NULL,
  `custphone` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `serviceendtime` time NOT NULL,
  `service` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingOld`
--

INSERT INTO `bookingOld` (`bid`, `shopemail`, `custemail`, `custname`, `custphone`, `date`, `time`, `serviceendtime`, `service`, `status`) VALUES
(1, 'agarwal.mayank32@gmail.com', 'mayank@gmail.com', 'Piyush Talele', '7064169037', '30/10/2016', '08:25:00', '09:29:00', 'Haircut', 'accepted'),
(2, 'agarwal.mayank32@gmail.com', 'piyusht189@gmail.com', 'Piyush Talele', '7064169037', '31/10/2016', '09:15:00', '09:45:00', 'Line-up', 'pending'),
(3, 'piyusht189@gmail.com', 'rajesh_supreme15@outlook.com', 'Rajesh', '9830068790', '10/3/2017', '10:30:00', '11:00:00', 'regular haircut', 'pending'),
(4, 'agarwal.mayank32@gmail.com', 'mayank@gmail.com', 'mayank', '86653565', '29/3/2017', '10:30:00', '11:15:00', 'cut and wash', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Mayank', 'agarwal.mayank32@gmail.com', '7064267601', 'qwertyup32'),
(3, 'Mayank', 'agarwal.mayank199632@gmail.com', '7980151015', 'qwertyup32@');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(20) NOT NULL,
  `shopemail` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `Phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `shopemail`, `name`, `email`, `designation`, `Phone`) VALUES
(1, 'agarwal.mayank32@gmail.com', 'Moulik', 'moulikpatra03@gmail.com', 'Hair cutter', '7064267601'),
(2, 'dhhhh@ffjd.com', 'Piyush', 'pt@gmail.com', 'Designer', '7064169037'),
(3, 'agarwal.mayank32@gmail.com', 'Sam', 'racersam.win95@gmail.com', 'Designer', '7064267527');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `seid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `service` varchar(100) NOT NULL,
  `duration` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`seid`, `sid`, `service`, `duration`) VALUES
(1, 1, 'regular haircut', '1'),
(2, 1, 'fades', '1'),
(3, 2, 'fades', '1'),
(4, 1, 'beard trims', '1'),
(6, 1, 'shave', '1');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `sid` int(11) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `opentime` time DEFAULT NULL,
  `closetime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`sid`, `shopname`, `name`, `email`, `phone`, `password`, `address`, `city`, `zip`, `opentime`, `closetime`) VALUES
(1, 'My Saloon', 'Mayank', 'agarwal.mayank32@gmail.com', '7064267601', 'qwertyup32', NULL, NULL, NULL, '11:00:00', '22:00:00'),
(2, 'New Saloon', 'Deepak', 'agarwal.mayank199632@gmail.com', '7980151015', 'qwertyup32@', '14, Chetla Road', 'Kolkata', '700027', '09:00:00', '23:00:00'),
(5, 'Latest ', 'Piyush', '1415018@kiit.ac.in', '9163129216', 'qwertyup32', NULL, NULL, NULL, '10:00:00', '22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `profilepic` varchar(100) NOT NULL DEFAULT 'http://kgbvbundu.org/cs2014/random/a.png',
  `zip` varchar(30) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `forgotpin` int(4) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `password`, `gender`, `phone`, `address`, `profilepic`, `zip`, `city`, `pin`, `forgotpin`, `status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 'qwertyup', 'Male', '7064267601', 'Room No: 2C - 197, KP-6, KIIT UNIVERSITY, PATIA', '', '751024', 'Bhubaneswar', 4483, 0, 'accepted'),
(4, 'hdndnsns', 'bzbz@g.com', 'sbbsyeueksjjemdjdhd', 'Male', '94949899885', 'bzbzysgdbvs', 'http://kgbvbundu.org/cs2014/random/a.png', NULL, NULL, NULL, NULL, 'pending'),
(5, 'testuser', 't@tt.com', 'pass12345', 'Female', '12345', 'test', 'http://kgbvbundu.org/cs2014/random/a.png', NULL, NULL, NULL, NULL, 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allservice`
--
ALTER TABLE `allservice`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `Authenticator_Customer`
--
ALTER TABLE `Authenticator_Customer`
  ADD PRIMARY KEY (`acid`);

--
-- Indexes for table `Authenticator_Shop`
--
ALTER TABLE `Authenticator_Shop`
  ADD PRIMARY KEY (`asid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `bookingOld`
--
ALTER TABLE `bookingOld`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `sid` (`shopemail`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`seid`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allservice`
--
ALTER TABLE `allservice`
  MODIFY `serviceid` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `Authenticator_Customer`
--
ALTER TABLE `Authenticator_Customer`
  MODIFY `acid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Authenticator_Shop`
--
ALTER TABLE `Authenticator_Shop`
  MODIFY `asid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `bookingOld`
--
ALTER TABLE `bookingOld`
  MODIFY `bid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `seid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
