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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `A_ID` varchar(10) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `contect_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `managequestion`
--

CREATE TABLE `managequestion` (
  `A_ID` varchar(10) NOT NULL,
  `Qid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE `paper` (
  `Qid` varchar(10) NOT NULL,
  `pid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`Qid`, `pid`) VALUES
('C1', 'p1'),
('C3', 'p1');

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

-- --------------------------------------------------------

--
-- Table structure for table `questions_bank`
--

CREATE TABLE `questions_bank` (
  `Qid` varchar(10) NOT NULL,
  `Question` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_bank`
--

INSERT INTO `questions_bank` (`Qid`, `Question`, `a`, `b`, `c`, `d`, `ans`) VALUES
('C1', 'What is the maximun number of dimensions an array in C may have?', 'Two', 'Eight', 'Twenty', 'Theoratically no limit. The only practical limits are memory size and compilers', 'Theoratically no limit. The only practical limits are memory size and compilers'),
('C2', 'If x is an array of interger, then the value of &x[i] is same as', '&x[i-1] + sizeof (int)', 'x + sizeof (int) * i', 'x+i', 'none of these', '&x[i-1] + sizeof (int)'),
('C3', 'Size of the array need not be specified, when', 'Initialization is a part of definition', 'It is a declaratrion', 'It is a formal parameter', 'All of these', 'Initialization is a part of definition'),
('C4', 'A one dimensional array A has indices 1....75.Each element is a string and takes up three memory words. The array is stored starting at location 1120 decimal. The starting address of A[49] is', '1167', '1164', '1264', '1169', '1264'),
('C5', 'Minimum number of interchange needed to convert the array 89,19,40,14,17,12,10,2,5,7,11,6,9,70, into a heap with the maximum element at the root is', '0', '1', '2', '3', '2'),
('C6', 'Which of the following is an illegal array definition?', 'Type COLOGNE:(LIME,PINE,MUSK,MENTHOL); var a:array[COLOGNE]of REAL', 'var a:array[REAL]of REAL;', 'var a:array[\'A\'..\'Z\']of REAL;', 'var a:array[BOOLEAN]of REAL;', 'var a:array[REAL]of REAL;'),
('C7', 'Minimun number of comparison required to compute the largest and second largest element in array is', 'n-[logâ‚‚n]-2', 'n+[logâ‚‚n-2]', 'logâ‚‚n', 'None of these', 'n+[logâ‚‚n-2]'),
('C8', 'The information about an array used in a program will be sorted in', 'Symbol table', 'Activation record', 'Both (a) and (b)', 'Dope vector', 'Dope vector'),
('cg2', ' The phenomenon of having a continuous glow of a beam on the screen even after it is removed is called as', 'fluorescence', 'persistence', 'phosphorescence', 'incandescence', 'fluorescence'),
('HTML1', 'HTML stands for?', 'Hyper Text Markup Language', 'High Text Markup Language', 'Hyper Tabular Markup Language', 'None of these', 'Hyper Text Markup Language'),
('HTML10', 'Web pages starts with which ofthe following tag?', '<Body>', '<Title>', '<HTML>', '<Form>', '<HTML>'),
('HTML11', 'HTML is a subset of', 'SGMT', 'SGML', 'SGMD', 'None of these', 'SGML'),
('HTML12', 'Which of the following is a container?', '<SELECT>', '<BODY>', '<INPUT>', 'Both (a) and (b)', 'Both (a) and (b)'),
('HTML13', 'The attribute, which define the relationship between current document and HREF\'ed URL is', 'REL', 'URL', 'REV', 'all of these', 'REL'),
('HTML14', '<DT> tag is designed to fit a single line of our web page but <DD> tag will accept a', 'line of text', 'full paragraph', 'word', 'request', 'full paragraph'),
('HTML15', 'Character encoding is', 'method used to represent numbers in a character', 'method used to represent character in a number', 'a system that consists of a code which pairs each character with a pattern,sequence of natural numbers or electrical pulse in order to transmit the data', 'none of these', 'a system that consists of a code which pairs each character with a pattern,sequence of natural numbers or electrical pulse in order to transmit the data'),
('HTML16', 'From which tag the descriptive list starts?', '<LL>', '<DD>', '<DL>', '<DS>', '<DL>'),
('HTML17', 'A much better approach to establish the base URL is to use', 'BASE element', 'HEAD element', 'both (a) and (b)', 'none of these', 'BASE element'),
('HTML18', 'The tag used to create a new list item and also include a hyperlink is', '<LI>', '<DL>', '<DD>', '<UL>', '<LI>'),
('HTML19', 'Can the element <First> be replaced with <first>', 'No, they represent different elements altogether', 'Both are same', 'First is correct only', 'first is only correct', 'Both are same'),
('HTML2', 'which of the following tag is used to mark a begining of paragraph ?', '<TD>', '<br>', '<P>', '<TR>', '<P>'),
('HTML20', 'Any part of the graphic that is not included in another hot zone is considered to be part of', 'rect', 'point', 'default', 'polygon', 'default'),
('HTML3', 'From which tag descriptive list starts ?', '<LL>', '<DD>', '<DL>', '<DS>', '<DL>'),
('HTML4', 'Correct HTML tag for the largest heading is', '<head>', '<h6>', '<heading>', '<h1>', '<h1>'),
('HTML5', 'The attribute of <form> tag', 'Method', 'Action', 'Both (a)&(b)', 'None of these', 'Both (a)&(b)'),
('HTML6', 'Markup tags tell the web browser', 'How to organise the page', 'How to display the page', 'How to display message box on page', 'None of these', 'How to display the page'),
('HTML7', 'www is based on which model?', 'Local-server', 'Client-server', '3-tier', 'None of these', 'Client-server'),
('HTML8', 'What are Empty elements and is it valid?', 'No, there is no such terms as Empty Element', 'Empty elements are element with no data', 'No, it is not valid to use Empty Element', 'None of these', 'Empty elements are element with no data'),
('HTML9', 'Which of the following attributes of text box control allow to limit the maximum character?', 'size', 'len', 'maxlength', 'all of these', 'maxlength');

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

-- --------------------------------------------------------

--
-- Table structure for table `students_faceimage`
--

CREATE TABLE `students_faceimage` (
  `S_ID` varchar(10) NOT NULL,
  `Fid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_ID`),
  ADD UNIQUE KEY `contect_no` (`contect_no`);

--
-- Indexes for table `managequestion`
--
ALTER TABLE `managequestion`
  ADD PRIMARY KEY (`Qid`),
  ADD KEY `A_ID` (`A_ID`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`Qid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `paper_criteria`
--
ALTER TABLE `paper_criteria`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `questions_bank`
--
ALTER TABLE `questions_bank`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `questions_criteria`
--
ALTER TABLE `questions_criteria`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contect_no` (`contect_no`);

--
-- Indexes for table `students_faceimage`
--
ALTER TABLE `students_faceimage`
  ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `students_qualification`
--
ALTER TABLE `students_qualification`
  ADD PRIMARY KEY (`S_ID`);

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
-- Constraints for table `managequestion`
--
ALTER TABLE `managequestion`
  ADD CONSTRAINT `managequestion_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `admin` (`A_ID`),
  ADD CONSTRAINT `managequestion_ibfk_2` FOREIGN KEY (`Qid`) REFERENCES `questions_bank` (`Qid`);

--
-- Constraints for table `paper`
--
ALTER TABLE `paper`
  ADD CONSTRAINT `paper_ibfk_1` FOREIGN KEY (`Qid`) REFERENCES `questions_bank` (`Qid`),
  ADD CONSTRAINT `paper_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `paper_criteria` (`p_id`);

--
-- Constraints for table `questions_criteria`
--
ALTER TABLE `questions_criteria`
  ADD CONSTRAINT `questions_criteria_ibfk_1` FOREIGN KEY (`Qid`) REFERENCES `questions_bank` (`Qid`);

--
-- Constraints for table `students_faceimage`
--
ALTER TABLE `students_faceimage`
  ADD CONSTRAINT `students_faceimage_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `students` (`S_ID`);

--
-- Constraints for table `students_qualification`
--
ALTER TABLE `students_qualification`
  ADD CONSTRAINT `students_qualification_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `students` (`S_ID`);

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
