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
-- Table structure for table `paper_criteria`
--

CREATE TABLE `paper_criteria` (
  `p_id` varchar(10) NOT NULL,
  `sub` text NOT NULL,
  `easy` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `high` int(11) NOT NULL,
  `NOQ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper_criteria`
--

INSERT INTO `paper_criteria` (`p_id`, `sub`, `easy`, `medium`, `high`, `NOQ`) VALUES
('p1', 'c,html', 40, 50, 10, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paper_criteria`
--
ALTER TABLE `paper_criteria`
  ADD PRIMARY KEY (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
