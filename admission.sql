-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 09:18 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `first_name`, `last_name`, `email`, `comment`, `datetime`) VALUES
(1, 'Ram', 'Sahu', 'ramsukhsahu@gmail.com', 'Please tell us the total course fee?', '2020-10-12 04:00:00'),
(2, 'Ajay', 'Kumar', 'ajay878@gmail.com', 'What is assessment of course?', '2020-10-13 03:11:00'),
(3, 'Vijay', 'Singh', 'vijay435@gmail.com', 'What about the placement after course?', '2020-10-14 22:13:25'),
(4, 'Suman', 'Devi', 'sumandevi324@gmail.com', 'What is Course fee structure?', '2020-10-15 00:18:48'),
(5, 'Ravi', 'Kumar', 'ravikumar34@gmail.com', 'What about the course certification?', '2020-10-15 00:20:50'),
(6, 'Kusum', 'Kumari', 'kusumkumari45@yahoo.com', 'What are different streams in this MBA course?', '2020-10-15 00:21:36'),
(7, 'Sanjay', 'Rajput', 'sanjayrajput67@gmail.com', 'Please tell the MBA course duration?', '2020-10-15 00:22:17'),
(8, 'Vikas', 'Saini', 'vikassaini87@gmail.com', 'What is course fee and duration?', '2020-10-15 00:22:33'),
(9, 'Akash', 'Malhotra', 'akashmalhotra898@yahoo.com', 'Please tell about any scholarship for students?', '2020-10-15 00:25:57'),
(10, 'Rohit', 'Kapoor', 'rohitkapoor8@gmail.com', 'What is the total seats in each stream of the MBA course?', '2020-10-15 00:26:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
