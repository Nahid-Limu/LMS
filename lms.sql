-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2017 at 12:45 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `edition` int(10) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `page` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `page`) VALUES
(1, 'datacom', 1, 'himu', 500, 100),
(2, 'java', 1, 'nahid', 1000, 200),
(12, 'C++', 1, 'Himu', 150, 90);

-- --------------------------------------------------------

--
-- Table structure for table `issu`
--

CREATE TABLE `issu` (
  `book_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `page` int(100) NOT NULL,
  `student_id` int(100) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `barnch` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `semester` int(100) NOT NULL,
  `dateOfissu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issu`
--

INSERT INTO `issu` (`book_id`, `name`, `edition`, `publisher`, `price`, `page`, `student_id`, `s_name`, `f_name`, `course`, `barnch`, `year`, `semester`, `dateOfissu`) VALUES
(2, 'java', '1', 'nahid', 1000, 200, 244, 'Limu', 'Azizul', 'IT', 'CSE', 4, 4, '2017-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `s_id` int(100) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `semester` int(100) NOT NULL,
  `book_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `page` int(100) NOT NULL,
  `doi` date NOT NULL,
  `dor` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`s_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semester`, `book_id`, `name`, `edition`, `publisher`, `price`, `page`, `doi`, `dor`) VALUES
(244, 'Limu', 'Azizul', 'IT', 'CSE', 4, 4, 12, 'C++', '1', 'Himu', 150, 90, '2017-04-18', '2017-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `singup`
--

CREATE TABLE `singup` (
  `id` int(11) NOT NULL,
  `un` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `sec_q` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `singup`
--

INSERT INTO `singup` (`id`, `un`, `name`, `pass`, `sec_q`, `ans`) VALUES
(1, 'nahid', 'limu', '12345', 'Your Hoby', 'gym'),
(2, 'x', 'x', '123', 'x', 'x'),
(3, 'babu', 'saikat', '12345', 'Item 2', '2'),
(4, 'naim', 'naimul', '12345', 'Item 3', '3'),
(5, 'arfin', 'lubna', '12345', 'Your Best Friend', 'saikat'),
(6, 'hmu', 'rayhan', '12345', 'Youer Nick Name', 'hemel');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `year` int(100) NOT NULL,
  `semester` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `f_name`, `name`, `course`, `branch`, `year`, `semester`) VALUES
(244, 'Limu', 'Azizul', 'IT', 'CSE', 4, 12),
(612, 'nahid', 'azizul', 'IT', 'cse', 3, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `singup`
--
ALTER TABLE `singup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `singup`
--
ALTER TABLE `singup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
