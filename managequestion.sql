-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2019 at 02:08 PM
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
-- Table structure for table `managequestion`
--

CREATE TABLE `managequestion` (
  `A_ID` varchar(10) NOT NULL,
  `Qid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `managequestion`
--
ALTER TABLE `managequestion`
  ADD PRIMARY KEY (`Qid`),
  ADD KEY `A_ID` (`A_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `managequestion`
--
ALTER TABLE `managequestion`
  ADD CONSTRAINT `managequestion_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `admin` (`A_ID`),
  ADD CONSTRAINT `managequestion_ibfk_2` FOREIGN KEY (`Qid`) REFERENCES `questions_bank` (`Qid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
