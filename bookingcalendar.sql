-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 01:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingcalendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `code`) VALUES
(1, 'admin', 'mayankshrivastva7@gmail.com', 'df780a97b7d6a8f779f14728bccd3c4c', ''),
(2, 'admin', 'shrivastva.mayank27@gmail.com', 'df780a97b7d6a8f779f14728bccd3c4c', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `email`, `date`, `timeslot`) VALUES
(1, 'iurtiue', 'ufidhfh@fkjhdf.com', '2023-04-14', '17:00PM-18:00PM'),
(2, 'mayank', 'shrivastva.mayank27@gmail.com', '2023-04-14', '12:00PM-13:00PM'),
(3, 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '11:00AM-12:00PM'),
(4, 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '14:00PM-15:00PM'),
(5, 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '14:00PM-15:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `c1`
--

CREATE TABLE `c1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `carmodel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `carnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c1`
--

INSERT INTO `c1` (`id`, `name`, `carmodel`, `email`, `date`, `timeslot`, `carnumber`) VALUES
(1, 'Mayank kumar Shrivastva', '0', 'shrivastva.mayank27@gmail.com', '2023-04-14', '08:00AM-09:00AM', '0'),
(2, 'Mayank kumar Shrivastva', '0', 'shrivastva.mayank27@gmail.com', '2023-04-14', '09:00AM-10:00AM', '0'),
(3, 'Mayank kumar Shrivastva', '0', 'shrivastva.mayank27@gmail.com', '2023-04-14', '10:00AM-11:00AM', '0'),
(4, 'Mayank kumar Shrivastva', 'carmodel', 'shrivastva.mayank27@gmail.com', '2023-04-14', '17:00PM-18:00PM', 'carnumber'),
(5, 'Mayank kumar Shrivastva', 'carmodel', 'shrivastva.mayank27@gmail.com', '2023-04-14', '11:00AM-12:00PM', 'carnumber'),
(6, 'Mayank kumar Shrivastva', 'carmodel', 'shrivastva.mayank27@gmail.com', '2023-04-14', '12:00PM-13:00PM', 'carnumber'),
(7, 'Mayank kumar Shrivastva', 'Tata Tiago EV', 'shrivastva.mayank27@gmail.com', '2023-04-21', '08:00AM-09:00AM', 'HR26DQ5551');

-- --------------------------------------------------------

--
-- Table structure for table `c2`
--

CREATE TABLE `c2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `carmodel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `carnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c2`
--

INSERT INTO `c2` (`id`, `name`, `carmodel`, `email`, `date`, `timeslot`, `carnumber`) VALUES
(1, 'qwwewrtgyui', '', 'shrivastva.mayank27@gmail.com', '2023-04-14', '10:00AM-11:00AM', ''),
(2, 'mayank', 'carmodel', 'shrivastva.mayank27@gmail.com', '2023-04-14', '09:00AM-10:00AM', 'carnumber'),
(3, 'Mayank kumar Shrivastva', 'carmodel', 'shrivastva.mayank27@gmail.com', '2023-04-14', '11:00AM-12:00PM', 'carnumber'),
(4, 'Mayank kumar Shrivastva', 'Kia EV6', 'shrivastva.mayank27@gmail.com', '2023-04-21', '08:00AM-09:00AM', 'HR26DQ6789');

-- --------------------------------------------------------

--
-- Table structure for table `c3`
--

CREATE TABLE `c3` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `carmodel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `carnumber` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c3`
--

INSERT INTO `c3` (`id`, `name`, `carmodel`, `email`, `date`, `timeslot`, `carnumber`) VALUES
(1, 'Mayank kumar Shrivastva', 'MG ZS EV', 'shrivastva.mayank27@gmail.com', '2023-04-21', '08:00AM-09:00AM', 'HR26DQ7854');

-- --------------------------------------------------------

--
-- Table structure for table `c4`
--

CREATE TABLE `c4` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `carmodel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `carnumber` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardetails`
--

CREATE TABLE `cardetails` (
  `id` int(11) NOT NULL,
  `car name` varchar(244) NOT NULL,
  `car number` varchar(255) NOT NULL,
  `mobile` bigint(255) NOT NULL,
  `email id` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `book` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardetails`
--

INSERT INTO `cardetails` (`id`, `car name`, `car number`, `mobile`, `email id`, `price`, `book`) VALUES
(1, 'Tata Tiago EV', 'HR26DQ5551', 8126155501, 'aman@gmail.com', 200, 'car1'),
(2, 'Kia EV6', 'HR26DQ6789', 9315228104, 'yesh12@gmail.com', 250, 'car2'),
(3, 'MG ZS EV', 'HR26DQ7854', 9667585514, 'mayank@gmail.com', 250, 'car3');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `owner name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `GST_number` int(11) NOT NULL,
  `station_address` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `owner name`, `email`, `password`, `GST_number`, `station_address`, `code`) VALUES
(1, 'Maynak Kumar', 'shrivastva.mayank27@gmail.com', 'df780a97b7d6a8f779f14728bccd3c4c', 2147483647, 'l-18 shyam park near nawda metro uttam nagar new delhi', ''),
(2, 'Maynak Kumar', 'mini.project.gla@gmail.com', 'df780a97b7d6a8f779f14728bccd3c4c', 2147483647, 'l-18 shyam park near nawda metro uttam nagar new delhi', '');

-- --------------------------------------------------------

--
-- Table structure for table `s1`
--

CREATE TABLE `s1` (
  `id` int(11) NOT NULL,
  `station` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `vnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s1`
--

INSERT INTO `s1` (`id`, `station`, `name`, `email`, `date`, `timeslot`, `vnumber`) VALUES
(1, '', 'fh', 'xyz@gmail.com', '2023-04-14', '11:00AM-12:00PM', '1234567'),
(2, 'sation1', 'mayank', 'xyz@gmail.com', '2023-04-14', '10:00AM-11:00AM', '0'),
(3, 'dfh', 'dfgh', 'xyz@gmail.com', '2023-04-14', '16:00PM-17:00PM', '0'),
(4, 'sation1', 'mayank', 'xyz@gmail.com', '2023-04-14', '12:00PM-13:00PM', '35465789'),
(5, 'Station1', 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '17:00PM-18:00PM', '0'),
(6, 'Station1', 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '15:00PM-16:00PM', '23456'),
(7, 'Station1', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '08:00AM-09:00AM', 'mh24654'),
(8, 'Station1', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '18:00PM-19:00PM', 'ng6789'),
(9, 'Station1', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '13:00PM-14:00PM', 'ty'),
(10, 'Station1', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-20', '08:00AM-09:00AM', 'mh2425'),
(11, 'AARGO Charging Station (Kosi Kalan)', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-21', '08:00AM-09:00AM', 'mh24654'),
(12, 'AARGO Charging Station (Kosi Kalan)', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-21', '15:00PM-16:00PM', 'rertyui\\');

-- --------------------------------------------------------

--
-- Table structure for table `s2`
--

CREATE TABLE `s2` (
  `id` int(11) NOT NULL,
  `station` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `vnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s2`
--

INSERT INTO `s2` (`id`, `station`, `name`, `email`, `date`, `timeslot`, `vnumber`) VALUES
(1, 'Station1', 'mayank', 'xyz@gmail.com', '2023-04-14', '11:00AM-12:00PM', 'mh24654'),
(2, 'Station2', 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '10:00AM-11:00AM', 'mh24654'),
(3, 'Station2', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '12:00PM-13:00PM', 'wer'),
(4, 'Station2', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '16:00PM-17:00PM', 'trg'),
(5, 'Station2', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '21:00PM-22:00PM', 'sdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `s3`
--

CREATE TABLE `s3` (
  `id` int(11) NOT NULL,
  `station` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `vnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s3`
--

INSERT INTO `s3` (`id`, `station`, `name`, `email`, `date`, `timeslot`, `vnumber`) VALUES
(1, '', 'asdfnm,.', 'shrivastva.mayank27@gmail.com', '2023-04-14', '16:00PM-17:00PM', ''),
(2, '', 'fddfghjresedfg', 'shrivastva.mayank27@gmail.com', '2023-04-14', '21:00PM-22:00PM', ''),
(3, 'Station3', 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '10:00AM-11:00AM', 'dfghj'),
(4, 'Station3', 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', '2023-04-14', '15:00PM-16:00PM', 'dfgh');

-- --------------------------------------------------------

--
-- Table structure for table `s4`
--

CREATE TABLE `s4` (
  `id` int(11) NOT NULL,
  `station` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `vnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s4`
--

INSERT INTO `s4` (`id`, `station`, `name`, `email`, `date`, `timeslot`, `vnumber`) VALUES
(1, 'Station4', 'Mayank kumar Shrivastva', 'xyz@gmail.com', '2023-04-14', '10:00AM-11:00AM', 'mh24654');

-- --------------------------------------------------------

--
-- Table structure for table `stationdetail`
--

CREATE TABLE `stationdetail` (
  `id` int(11) NOT NULL,
  `station-name` varchar(255) NOT NULL,
  `mobile-number` bigint(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `book` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationdetail`
--

INSERT INTO `stationdetail` (`id`, `station-name`, `mobile-number`, `address`, `email`, `book`) VALUES
(1, 'AARGO Charging Station', 9315229435, 'Kosi Kalan', 'aargochargingstation@gmail.com', 'station1/index.php'),
(2, 'Yahhvi Charging Station', 8126166896, 'Vrindavan', 'yahhvichargingstation@gmail.com', 'station2/index.php'),
(3, 'Saraswat Motors Station\n', 9548628618, ' Lohvan', 'saraswatimotorsstation@gmail.com', 'station3/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `code`) VALUES
(7, 'Mayank kumar Shrivastva', 'shrivastva.mayank27@gmail.com', 'df780a97b7d6a8f779f14728bccd3c4c', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c1`
--
ALTER TABLE `c1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c2`
--
ALTER TABLE `c2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c3`
--
ALTER TABLE `c3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardetails`
--
ALTER TABLE `cardetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s1`
--
ALTER TABLE `s1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s2`
--
ALTER TABLE `s2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s3`
--
ALTER TABLE `s3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s4`
--
ALTER TABLE `s4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stationdetail`
--
ALTER TABLE `stationdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `c1`
--
ALTER TABLE `c1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `c2`
--
ALTER TABLE `c2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `c3`
--
ALTER TABLE `c3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cardetails`
--
ALTER TABLE `cardetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `s1`
--
ALTER TABLE `s1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `s2`
--
ALTER TABLE `s2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `s3`
--
ALTER TABLE `s3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `s4`
--
ALTER TABLE `s4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stationdetail`
--
ALTER TABLE `stationdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
