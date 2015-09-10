-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2015 at 02:13 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_ID` varchar(25) NOT NULL,
  `class_name` varchar(35) NOT NULL,
  `timeframe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_ID`, `class_name`, `timeframe`) VALUES
('TA_KACOM_A', 'Web Development 2', '2015-09-17'),
('TA_KACOM_B', 'Software Development 2', '2015-09-17'),
('TA_KACOM_C', 'Business', '2015-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `class_time`
--

CREATE TABLE IF NOT EXISTS `class_time` (
  `day` varchar(3) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `class_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_time`
--

INSERT INTO `class_time` (`day`, `start_time`, `end_time`, `class_ID`) VALUES
('MON', '09:00:00', '11:00:00', 'TA_KACOM_A'),
('MON', '14:00:00', '17:00:00', 'TA_KACOM_B'),
('MON', '12:00:00', '14:00:00', 'TA_KACOM_C'),
('TUE', '09:01:00', '11:00:00', 'TA_KACOM_C');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `lecturer_ID` varchar(25) NOT NULL,
  `name` varchar(35) NOT NULL,
  `phone` varchar(35) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lecture_class`
--

CREATE TABLE IF NOT EXISTS `lecture_class` (
  `lecturer_ID` varchar(25) NOT NULL,
  `class_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_ID` varchar(6) NOT NULL,
  `name` varchar(35) NOT NULL,
  `college` varchar(35) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_ID`, `name`, `college`, `phone`, `email`) VALUES
('x12345', 'Shamil Ataev', 'ITT', '857321672', 'bigboyz@gmail.com'),
('x54321', 'Shannon Birch', 'ITT', '876542564', 'helichopters@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

CREATE TABLE IF NOT EXISTS `student_class` (
  `student_ID` varchar(6) NOT NULL,
  `class_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`student_ID`, `class_ID`) VALUES
('', ''),
('x54321', 'TA_KACOM_A'),
('X12345', 'TA_KACOM_B'),
('X12345', 'TA_KACOM_C');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_ID` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `code` varchar(25) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `username`, `password`, `email`, `active`, `code`, `date`) VALUES
(1, 'shamil', 'password', 'shamilsemail@gmail.com', 0, '12345', '8 September, 2015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_ID`);

--
-- Indexes for table `class_time`
--
ALTER TABLE `class_time`
  ADD KEY `class_ID` (`class_ID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `lecture_class`
--
ALTER TABLE `lecture_class`
  ADD KEY `lecturer_ID` (`lecturer_ID`),
  ADD KEY `class_ID` (`class_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_ID`);

--
-- Indexes for table `student_class`
--
ALTER TABLE `student_class`
  ADD KEY `student_ID` (`student_ID`),
  ADD KEY `class_ID` (`class_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_time`
--
ALTER TABLE `class_time`
  ADD CONSTRAINT `class_time_ID` FOREIGN KEY (`class_ID`) REFERENCES `class` (`class_ID`);

--
-- Constraints for table `lecture_class`
--
ALTER TABLE `lecture_class`
  ADD CONSTRAINT `class_ID` FOREIGN KEY (`class_ID`) REFERENCES `class` (`class_ID`),
  ADD CONSTRAINT `lecturer_ID` FOREIGN KEY (`lecturer_ID`) REFERENCES `lecturer` (`lecturer_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
