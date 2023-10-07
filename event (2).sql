-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2022 at 07:02 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`email`, `pwd`) VALUES
('ayush@gmail.com', 'adminadmin');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE IF NOT EXISTS `applicant` (
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `pwd` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`name`, `email`, `pwd`) VALUES
('neha', 'neha123@gmail.com', 'Neha@12345'),
('Arun', 'ar@gmail.com', 'R@12345'),
('A', 'ayush@gmail.com', 'Ram@123456'),
('Vivekananda', 'vivek123@gmail.com', 'v@123'),
('Prashant', 'Pk@gmail.com', 'Pk@123'),
('Ashish', 'ash@yahoo.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bevent`
--

CREATE TABLE IF NOT EXISTS `bevent` (
  `applicantName` varchar(30) DEFAULT NULL,
  `applicantEmail` varchar(30) DEFAULT NULL,
  `EID` int(30) DEFAULT NULL,
  `Ename` varchar(30) DEFAULT NULL,
  `edate` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bevent`
--

INSERT INTO `bevent` (`applicantName`, `applicantEmail`, `EID`, `Ename`, `edate`) VALUES
('shiva', 'shiva@gmail.com', 7, 'Dance', '1/1/2022'),
('shiva', 'shiva@gmail.com', 8, 'Speech', '1/1/2022'),
('shiva', 'shiva@gmail.com', 8, 'Speech', '1/1/2022'),
('shiva', 'shiva@gmail.com', 7, 'Dance', '1/1/2022'),
('shiva', 'shiva@gmail.com', 7, 'Dance', '1/1/2022'),
('Prashant', 'Pk@gmail.com', 7, 'Dance', '1/1/2022'),
('Prashant', 'Pk@gmail.com', 7, 'Dance', '1/1/2022'),
('Prashant', 'Pk@gmail.com', 9, 'Race', '1/1/2022'),
('Prashant', 'Pk@gmail.com', 7, 'Dance', '1/1/2022'),
('Vivekananda', 'vivek123@gmail.com', 7, 'Dance', '1/1/2022'),
('Vivekananda', 'vivek123@gmail.com', 7, 'Dance', '1/1/2022'),
('Vivekananda', 'vivek123@gmail.com', 7, 'Dance', '1/1/2022'),
('Vivekananda', 'vivek123@gmail.com', 9, 'Race', '1/1/2022'),
('Arun', 'ar@gmail.com', 9, 'Race', '2022-04-28'),
('neha', 'neha123@gmail.com', 7, 'Dance', '2022-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `Name` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `email`, `Phone`, `message`) VALUES
('Ashish', 'as@yahoo.com', '3345678312', NULL),
('Nishchhal', '2111reeta@gmail.com', '3345678312', NULL),
('Ashish', 'as@yahoo.com', '3345678312', 'guvuyvyuyubib hbyub                  '),
('Ashish', 'as@yahoo.com', '3345678312', 'guvuyvyuyubib hbyub                  '),
('ram', 'ram07@gmail.com', '2345678912', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, natus rem. Reiciendis impedit, perferendis odio aut '),
('ram', 'ram07@gmail.com', '2345678912', NULL),
('Ashish', 'as@yahoo.com', '3345678312', NULL),
('Rahil', 'rahul122@gmail.com', '9878654312', NULL),
('Rahil', 'rahul122@gmail.com', '9878654312', NULL),
('Rahil', 'rahul122@gmail.com', '9878654312', NULL),
('Mano', 'mann@gmail.com', '9899898989', NULL),
('Mano', 'mann@gmail.com', '9899898989', NULL),
('Prashant', 'Pk@gmail.com', '6589875576', NULL),
('Prashant', 'Pk@gmail.com', '6589875576', NULL),
('Mayak', 'ash@yahoo.com', '9899898989', NULL),
('Ashish', 'asss@gamail.com', '6589875576', NULL),
('Bhoopendra Singh', 'admin123@gmail.com', '8787878787', 'yugyg                            '),
('Arun', 'ar@gmail.com', '9898989867', '                            ');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `EventId` int(11) NOT NULL AUTO_INCREMENT,
  `EType` varchar(40) DEFAULT NULL,
  `EName` varchar(40) DEFAULT NULL,
  `EDate` varchar(40) DEFAULT NULL,
  `Estart` varchar(30) DEFAULT NULL,
  `Eend` varchar(30) DEFAULT NULL,
  `Price1` int(11) DEFAULT NULL,
  `Price2` int(11) DEFAULT NULL,
  `Price3` int(11) DEFAULT NULL,
  `OrgBy` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EventId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventId`, `EType`, `EName`, `EDate`, `Estart`, `Eend`, `Price1`, `Price2`, `Price3`, `OrgBy`) VALUES
(7, 'Cultural', 'Dance', '2022-04-16', '09:00', '12:00', 3000, 1500, 800, 'Tiruchapali Radhakrishnan '),
(9, 'Sports', 'Race', '2022-04-28', '09:00', '15:00', 5000, 2000, 1000, 'Aayush');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--


-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `EID` int(30) DEFAULT NULL,
  `Etype` varchar(30) DEFAULT NULL,
  `Ename` varchar(30) DEFAULT NULL,
  `Edate` varchar(30) DEFAULT NULL,
  `WID` varchar(30) DEFAULT NULL,
  `Wname` varchar(30) DEFAULT NULL,
  `rank` int(30) DEFAULT NULL,
  `price` int(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`EID`, `Etype`, `Ename`, `Edate`, `WID`, `Wname`, `rank`, `price`) VALUES
(6, 'Cultural', 'Singing ', '2022-04-14', 'aditya717.qe@gmail.com', 'Aditya Kushvah', 3, 750),
(6, 'Cultural', 'Singing ', '2022-04-14', 'ranvir75@gmail.com', 'Ranvir Bharti', 2, 1000),
(6, 'Cultural', 'Singing ', '2022-04-14', 'neha2002@gmai.com', 'Neha', 1, 2000),
(7, 'Cultural', 'Dance', '2022-04-16', 'raghavan1997@gmail.com', 'Raghavan Sharama', 1, 3000),
(7, 'Cultural', 'Dance', '2022-04-16', 'monapa.in@gmail.com', 'Monapa', 2, 1500),
(7, 'Cultural', 'Dance', '2022-04-16', 'dev1996@gmail.com', 'Dev Pratap Singh', 3, 800),
(8, 'Personalty  Development ', 'Speech ', '2022-04-20', 'shiva@gmail.com', 'shiva', 1, 4000),
(32, 'Sports', 'Race', '2022-04-30', 'shiva@gmail.com', 'Shiva', 2, 500),
(3, 'Sports', 'Race', '2022-05-28', 'shiva@gmail.com', 'shiva', 1, NULL),
(9, 'Sports', 'Race', '2022-05-19', 'ar@gmail.com', 'arun', 1, NULL),
(9, 'Sports', 'Race', '2022-05-20', 'neha123@gmail.com', 'Neha', 2, NULL);
