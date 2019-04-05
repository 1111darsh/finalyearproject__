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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions_bank`
--
ALTER TABLE `questions_bank`
  ADD PRIMARY KEY (`Qid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
