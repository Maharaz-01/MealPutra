-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2019 at 07:26 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mealputra`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(3) NOT NULL,
  `message` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `quantity`, `message`, `email`, `username`, `address`) VALUES
(1, 'Nasi Lemak', 2, 'spicy', 'mah@gmail.com', 'yusuf', 'Kolej 17 UPM.'),
(3, 'Nasi Ayam (RM8)', 1, 'No spicy. thanks', 'maharazkaraye01@gmail.com', 'walid', 'no. 234 upm'),
(4, 'Nasi Ayam (RM8)', 1, 'deliver early please', 'walid@gmail.co.m', 'walid', 'kolej kedua upm'),
(52, 'Nasi Goreng Ayam Kunyit (RM6)', 1, 'please deliver early', 'walid@gmail.com', 'walid', 'kolej kedua'),
(53, 'Nasi Lemak (RM7)', 8, 'Spicy Please', 'chin@gmail.com', 'chin', 'No. 12, KMR Upm');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `matric_no` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`matric_no`, `first_name`, `last_name`, `email`, `phone_no`, `password`) VALUES
(7572890, 'null', 'Yusuf', 'maharazkaraye01@gmail.com', '123456789', 'null'),
(987654, 'null', 'Shehu', 'you@my.com', '125475036', '12345'),
(191450, 'null', 'Mujtaba Karaye', 'maharazkaraye@gmail.com', '01113170538', '54321'),
(191450, 'null', 'Mujtaba Karaye', 'maharazkaraye@gmail.com', '01113170538', '54321'),
(191450, 'null', 'Mujtaba Karaye', 'maharazkaraye@gmail.com', '01113170538', '54321'),
(233553, 'null', 'chean', 'tean@gmail.com', '23456746', '0000'),
(23232, 'null', 'Tee', 'chin@gmail.com', '34567898', '1111'),
(1212, 'null', 'nee', 'nee@gmail.com', '34567898', '0000'),
(23454, 'walid', 'ali', 'walid@gmail.com', '04968748366', '0000'),
(1322, 'loo', 'yen', 'loo@yahoo.com', '29384739039', '1111'),
(18134, 'chin', 'sin', 'chin@gmail.com', '384739039', '1234'),
(18134, 'chin', 'sin', 'chin@gmail.com', '384739039', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
