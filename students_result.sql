-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2019 at 02:09 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartexamination`
--

-- --------------------------------------------------------

--
-- Table structure for table `students_result`
--

CREATE TABLE `students_result` (
  `S_ID` varchar(10) NOT NULL,
  `pid` varchar(10) DEFAULT NULL,
  `attemt` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_result`
--
ALTER TABLE `students_result`
  ADD PRIMARY KEY (`S_ID`),
  ADD KEY `pid` (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students_result`
--
ALTER TABLE `students_result`
  ADD CONSTRAINT `students_result_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `students` (`S_ID`),
  ADD CONSTRAINT `students_result_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `paper_criteria` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
