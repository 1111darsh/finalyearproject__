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
-- Table structure for table `questions_criteria`
--

CREATE TABLE `questions_criteria` (
  `Subject` varchar(20) NOT NULL,
  `Qid` varchar(10) NOT NULL,
  `attempt` int(11) NOT NULL,
  `right_attempt` int(11) NOT NULL,
  `avg` float NOT NULL,
  `criteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_criteria`
--

INSERT INTO `questions_criteria` (`Subject`, `Qid`, `attempt`, `right_attempt`, `avg`, `criteria`) VALUES
('C', 'C1', 18, 18, 100, 'easy'),
('C', 'C2', 18, 6, 33, 'medium'),
('C', 'C3', 18, 5, 27, 'hard'),
('C', 'C4', 18, 18, 100, 'easy'),
('C', 'C5', 6, 1, 16, 'hard'),
('C', 'C6', 6, 6, 100, 'easy'),
('C', 'C7', 6, 6, 100, 'easy'),
('C', 'C8', 6, 4, 66, 'medium'),
('Computer Graphics', 'cg2', 1, 1, 0, ''),
('HTML', 'HTML1', 2, 2, 100, 'easy'),
('HTML', 'HTML10', 2, 2, 100, 'easy'),
('HTML', 'HTML11', 2, 2, 100, 'easy'),
('HTML', 'HTML12', 2, 2, 100, 'easy'),
('HTML', 'HTML13', 2, 2, 100, 'easy'),
('HTML', 'HTML14', 2, 2, 100, 'easy'),
('HTML', 'HTML15', 2, 2, 100, 'easy'),
('HTML', 'HTML16', 2, 2, 100, 'easy'),
('HTML', 'HTML17', 2, 2, 100, 'easy'),
('HTML', 'HTML18', 2, 2, 100, 'easy'),
('HTML', 'HTML19', 2, 2, 100, 'easy'),
('HTML', 'HTML2', 2, 2, 100, 'easy'),
('HTML', 'HTML20', 2, 2, 100, 'easy'),
('HTML', 'HTML3', 2, 2, 100, 'easy'),
('HTML', 'HTML4', 2, 2, 100, 'easy'),
('HTML', 'HTML5', 2, 2, 100, 'easy'),
('HTML', 'HTML6', 1, 1, 100, 'easy'),
('HTML', 'HTML7', 1, 1, 100, 'easy'),
('HTML', 'HTML8', 1, 1, 100, 'easy'),
('HTML', 'HTML9', 1, 1, 100, 'easy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions_criteria`
--
ALTER TABLE `questions_criteria`
  ADD PRIMARY KEY (`Qid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions_criteria`
--
ALTER TABLE `questions_criteria`
  ADD CONSTRAINT `questions_criteria_ibfk_1` FOREIGN KEY (`Qid`) REFERENCES `questions_bank` (`Qid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
