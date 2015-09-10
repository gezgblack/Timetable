-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2015 at 07:44 PM
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
  `class_ID` bigint(25) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `timeframe` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_ID`, `class_name`, `timeframe`) VALUES
(1, 'Innovation and Entrepreneurship', 'Winter Semester'),
(2, 'Algorithms and Data Structures 3', 'Winter Semester'),
(3, 'Web Design', 'Winter Semester'),
(4, 'Advanced Database ', 'Winter Semester'),
(5, 'Cloud Distribution Computing ', 'Winter Semester'),
(6, 'Operating Systems ', 'Winter Semester'),
(7, 'Logic and Problem Solving', 'Spring Semester'),
(8, 'Cloud Distribution Comp 1 Lab', 'Winter Semester'),
(9, 'Cloud Distribution Lab COMP 2', 'Winter Semester'),
(10, 'Algorithm and Data Structures Lab 1', 'Winter Semester'),
(11, 'Algorithm and Data Structures Lab 2', 'Winter Semester'),
(12, 'ADB ITM', 'Winter Semester'),
(13, 'Operating Systems Lab ITM', 'Winter Semester'),
(14, 'Operating Systems Lab 1', 'Winter Semester'),
(15, 'Operating Systems Lab 2', 'Winter Semester'),
(16, 'Advanced Database Lab 1', 'Winter Semester'),
(17, 'Advanced Database Lab 2', 'Winter Semester'),
(18, 'Cloud Distribution Lab ITM', 'Winter Semester'),
(19, 'Web Design Lab ITM', 'Winter Semester'),
(20, 'Web Design Lab 1', 'Winter Semester'),
(21, 'Web Design Lab 2', 'Winter Semester');

-- --------------------------------------------------------

--
-- Table structure for table `class_time`
--

CREATE TABLE IF NOT EXISTS `class_time` (
  `day` varchar(3) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `place` varchar(150) NOT NULL,
  `class_ID` bigint(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_time`
--

INSERT INTO `class_time` (`day`, `start_time`, `end_time`, `place`, `class_ID`) VALUES
('Mon', '09:00:00', '10:00:00', '032', 1),
('Mon', '10:00:00', '11:00:00', '023', 2),
('Mon', '11:00:00', '12:00:00', '231, 216', 2),
('Mon', '13:00:00', '14:00:00', '223', 3),
('Mon', '15:00:00', '16:00:00', '150/152', 4),
('Mon', '16:00:00', '17:00:00', '023', 2),
('Tue', '09:00:00', '10:00:00', '029', 5),
('Tue', '10:00:00', '11:00:00', '029', 4),
('Tue', '11:00:00', '13:00:00', '227', 8),
('Tue', '12:00:00', '14:00:00', '220', 12),
('Tue', '13:00:00', '15:00:00', '227', 9),
('Tue', '14:00:00', '16:00:00', '233', 10),
('Wed', '10:00:00', '11:00:00', '214', 1),
('Wed', '12:00:00', '13:00:00', '001', 3),
('Wed', '14:00:00', '16:00:00', '233', 11),
('Wed', '14:00:00', '16:00:00', '216', 19),
('Thu', '10:00:00', '12:00:00', '229', 10),
('Thu', '10:00:00', '12:00:00', '233', 21),
('Thu', '12:00:00', '14:00:00', '233', 20),
('Thu', '12:00:00', '14:00:00', '227', 11),
('Thu', '13:00:00', '14:00:00', 'Prem F.02', 5),
('Thu', '16:00:00', '17:00:00', 'Prem F.02', 6),
('Thu', '17:00:00', '18:00:00', 'Prem G.02', 2),
('Thu', '10:00:00', '12:00:00', '216', 13),
('Fri', '09:00:00', '10:00:00', '225', 6),
('Fri', '10:00:00', '12:00:00', '216', 14),
('Fri', '10:00:00', '12:00:00', '220', 17),
('Fri', '12:00:00', '14:00:00', '227', 18),
('Fri', '13:00:00', '14:00:00', '216', 15),
('Fri', '14:00:00', '15:00:00', '227', 15),
('Fri', '13:00:00', '15:00:00', '223', 16);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `lecturer_ID` bigint(25) NOT NULL,
  `name` varchar(35) NOT NULL,
  `phone` varchar(35) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_ID`, `name`, `phone`, `email`) VALUES
(1, 'Dara MacCarthy', '3', 'dara@gmail.com'),
(2, 'James Doody', '087958102', 'jamesdoody@itt.ie'),
(3, 'Margret Finnegan', '085679401', 'margo57@gmail.com'),
(4, 'Enda Lee', '087456123', 'shitteacher@itt.ie'),
(5, 'Sean McHugh', '083123645', 'seanMc@live.ie'),
(6, 'Martin O'' Connor', '015487954', 'martinroxx@gmail.com'),
(7, 'Eamon Hyland', '017584963', 'ihateitt@itt.ie'),
(8, 'Cormac Keogh', '0879666666', 'CormacK@itt.ie');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_class`
--

CREATE TABLE IF NOT EXISTS `lecture_class` (
  `lecturer_ID` bigint(25) NOT NULL,
  `class_ID` bigint(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture_class`
--

INSERT INTO `lecture_class` (`lecturer_ID`, `class_ID`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 5),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_ID` bigint(25) NOT NULL,
  `name` varchar(35) NOT NULL,
  `college` varchar(35) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_ID`, `name`, `college`, `phone`, `email`) VALUES
(1, 'Shamil', 'ITT', '082sexy4u', 'shamilski@gmail.com'),
(2, 'Shannon Birch', 'ITT', '0811111111', 'shannon@isis.co.uk'),
(3, 'Shane Preston', 'ITT', '0898378237', 'Prestinator@live.ie');

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

CREATE TABLE IF NOT EXISTS `student_class` (
  `student_ID` bigint(25) NOT NULL,
  `class_ID` bigint(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`student_ID`, `class_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 14),
(1, 16),
(1, 20),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 10),
(2, 14),
(2, 16),
(2, 20),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 9),
(3, 11),
(3, 15),
(3, 17),
(3, 21);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_ID` bigint(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `lecturer_ID` bigint(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_ID` bigint(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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

--
-- Constraints for table `student_class`
--
ALTER TABLE `student_class`
  ADD CONSTRAINT `class_ID_Student` FOREIGN KEY (`class_ID`) REFERENCES `class` (`class_ID`),
  ADD CONSTRAINT `student_ID` FOREIGN KEY (`student_ID`) REFERENCES `student` (`student_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
