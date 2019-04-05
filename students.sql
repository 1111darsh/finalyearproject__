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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `S_ID` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contect_no` varchar(10) NOT NULL,
  `Account_Created_Date` datetime NOT NULL,
  `Last_Login_Time` datetime NOT NULL,
  `OTP` int(11) NOT NULL,
  `otpverifed` varchar(3) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`S_ID`, `Name`, `Lastname`, `email`, `password`, `contect_no`, `Account_Created_Date`, `Last_Login_Time`, `OTP`, `otpverifed`) VALUES
('abcd', 'abcd', 'zxcv ', 'abcdef@gmail.com', '8ab4b7d22b56c2f8a437d60dca8d5faf', '5653988790', '2019-02-04 04:59:05', '2019-02-04 09:17:05', 6140, 'yes'),
('darfgh', 'darfgh', 'fygyhh', 'sef@dgv.guh', 'eb9cd8dae18d01693a2ce2aceb7c1989', '56999', '2019-02-26 10:23:49', '0000-00-00 00:00:00', 7423, 'yes'),
('dasdrsh', 'dasdrsh', 'Mistdry', '1111dasdvrsh@gmail.c', '5d41402abc4b2a76b9719d911017c592', '7687598754', '2019-02-04 04:45:19', '0000-00-00 00:00:00', 3208, 'No'),
('fgsh', 'fgsh', 'adf_-|', 'ads@gmail.com', '22d7fe8c185003c98f97e5d6ced420c7', '1234567890', '2019-02-26 10:31:25', '0000-00-00 00:00:00', 2501, 'yes'),
('rss', 'rss', 'gsts', 'te.fuf@gfhd.fuf', 'eaa6fd63b1b10ce8f16427cc03b148ef', '689886', '2019-02-26 10:28:38', '0000-00-00 00:00:00', 1932, 'No'),
('tactful 5', 'tactful 5', '7txtxy', '124t@dgv.gu', '9e8d7925b5c89abe0973dbc899141f69', '980', '2019-02-26 01:56:31', '0000-00-00 00:00:00', 5891, 'No'),
('zxcv', 'zxcv', 'mnbv', 'zxcv@gmail.com', '22d7fe8c185003c98f97e5d6ced420c7', '3125467809', '2019-02-05 03:42:02', '2019-02-05 03:46:17', 7998, 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contect_no` (`contect_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
