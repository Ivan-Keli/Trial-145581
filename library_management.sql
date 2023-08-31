-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2023 at 09:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int(10) UNSIGNED NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('Ivan', 'Ivan Keli', 12345, 'What is your school name?', 'Strathmore'),
('Louis', 'Lousiana Mary', 0, 'What is your nick name?', 'Louis'),
('Major', 'Mario', 4565, 'What is your mother toungue?', 'kikuyu'),
('Marcus', 'Marcus Lee', 123456, 'What is your mother toungue?', 'Kikuyu');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int(10) UNSIGNED NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) UNSIGNED NOT NULL,
  `stock` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `stock`) VALUES
(207, 'My sons', 1, 'Oxford Publishers', 7500, 29),
(702, 'ED and the King', 4, 'MacMillan', 4590, 19),
(811, 'A Little Life', 2, 'Hanya Yanagihara', 2500, 223),
(883, 'Kings and Servants', 1, 'MacMillan', 2000, 34);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int(5) UNSIGNED NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) UNSIGNED NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `doi`) VALUES
(207, 'My sons', 1, 'Oxford Publishers', 7500, 30, 650, 'Ivan', 'John', 'BSc', 'SCES', '1st', '1st', '2023-08-25'),
(702, 'ED and the King', 4, 'MacMillan', 4590, 20, 650, 'Ivan', 'John', 'BSc', 'SCES', '1st', '1st', '2023-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

CREATE TABLE `returntbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `returntbl`
--

INSERT INTO `returntbl` (`stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `doi`, `doreturn`) VALUES
(650, 'Ivan', 'John', 'BSc', 'SCES', '1st', '1st', 811, 'A Little Life', '2', 'Hanya Yanagihara', 2500, 222, '2023-08-30', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fathers_name`, `course`, `branch`, `year`, `semister`) VALUES
(71, 'Marcus', 'Marvin', 'BBA', 'SI', '3rd', '8th'),
(187, '', '', 'BSc', '', '1st', '1st'),
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd'),
(372, 'Angela', 'Francis', 'BA', 'SU', '3rd', '4th'),
(650, 'Ivan', 'John', 'BSc', 'SCES', '1st', '1st'),
(806, 'Marcus', 'Marvin', 'BSS', 'SI', '4th', '4th');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
