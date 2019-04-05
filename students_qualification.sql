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
-- Table structure for table `students_qualification`
--

CREATE TABLE `students_qualification` (
  `S_ID` varchar(10) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `graduate_year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_qualification`
--

INSERT INTO `students_qualification` (`S_ID`, `degree`, `graduate_year`) VALUES
('abcd', 'M.C.A.', '2019-01-01'),
('darfgh', 'M.C.A.', '2014-01-01'),
('dasdrsh', 'B.E', '2019-01-01'),
('fgsh', 'B.Sc.', '2013-01-01'),
('rss', 'M.C.A.', '2014-01-01'),
('tactful 5', 'M.Sc.', '2013-01-01'),
('zxcv', 'B.E/B.Tech.', '2015-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students_qualification`
--
ALTER TABLE `students_qualification`
  ADD PRIMARY KEY (`S_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students_qualification`
--
ALTER TABLE `students_qualification`
  ADD CONSTRAINT `students_qualification_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `students` (`S_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
