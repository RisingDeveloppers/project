-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 04:58 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_detail`
--

CREATE TABLE `basic_detail` (
  `id` int(25) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `objective` varchar(250) NOT NULL,
  `declaration` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basic_detail`
--

INSERT INTO `basic_detail` (`id`, `user_code`, `name`, `address`, `email`, `mobile`, `profile`, `objective`, `declaration`) VALUES
(1, 'sujith', 'place 1', 'Kulapurm', 'user@gmai.com', 1234567890, 'ds', 'hello', 'welcome');

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `id` int(25) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `passyear` int(10) NOT NULL,
  `percentage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_details`
--

INSERT INTO `education_details` (`id`, `user_code`, `coursename`, `university`, `college`, `passyear`, `percentage`) VALUES
(2, 'new', 'B.E', 'anna', 'TCE', 2017, 70);

-- --------------------------------------------------------

--
-- Table structure for table `experience_details`
--

CREATE TABLE `experience_details` (
  `id` int(25) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `role` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience_details`
--

INSERT INTO `experience_details` (`id`, `user_code`, `organization_name`, `experience`, `role`) VALUES
(2, 'ajith', 'tce', '123', 'qc');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` int(10) NOT NULL,
  `user_code` varchar(10) NOT NULL,
  `personal_type` varchar(400) NOT NULL,
  `personal_detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id`, `user_code`, `personal_type`, `personal_detail`) VALUES
(3, 'sujith', 'male', 'kulappuram'),
(4, 'suj', 'kjy', 'nhu');

-- --------------------------------------------------------

--
-- Table structure for table `technology_details`
--

CREATE TABLE `technology_details` (
  `id` int(25) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `experience_type` varchar(25) NOT NULL,
  `experience_detail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technology_details`
--

INSERT INTO `technology_details` (`id`, `user_code`, `experience_type`, `experience_detail`) VALUES
(1, 'sujith', 'qc engineer', 'oil and gas'),
(3, 'ajith', 'developer', 'software'),
(5, 'bjhu', 'vu', 'bubu'),
(6, 'jlj', 'jnhgg', 'bgt');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `name`, `username`, `password`, `email`, `mobileno`) VALUES
(6, 'sujith', 'ds', '1234', 'ab@gmail.com', '12345'),
(9, 'sujin', 'ds', '12345', 'user@gmai.com', '54321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_detail`
--
ALTER TABLE `basic_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_details`
--
ALTER TABLE `education_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_details`
--
ALTER TABLE `experience_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology_details`
--
ALTER TABLE `technology_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_detail`
--
ALTER TABLE `basic_detail`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `education_details`
--
ALTER TABLE `education_details`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experience_details`
--
ALTER TABLE `experience_details`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `technology_details`
--
ALTER TABLE `technology_details`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
