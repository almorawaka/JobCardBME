-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2022 at 06:13 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

DROP TABLE IF EXISTS `institutes`;
CREATE TABLE IF NOT EXISTS `institutes` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt2` datetime DEFAULT NULL,
  `institute_name` varchar(20) NOT NULL,
  `location_id` varchar(20) NOT NULL,
  `equipment_name` varchar(30) NOT NULL,
  `equipment_make` varchar(30) NOT NULL,
  `equipment_model` varchar(30) NOT NULL,
  `oic_id` int(20) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`job_id`, `dt2`, `institute_name`, `location_id`, `equipment_name`, `equipment_make`, `equipment_model`, `oic_id`) VALUES
(1, '2022-03-29 07:35:44', 'NHSL', '1', 'monitor', 'NK', 'nk', 882);

-- --------------------------------------------------------

--
-- Table structure for table `job_attendee`
--

DROP TABLE IF EXISTS `job_attendee`;
CREATE TABLE IF NOT EXISTS `job_attendee` (
  `e1` varchar(20) DEFAULT NULL,
  `e2` varchar(20) DEFAULT NULL,
  `e3` varchar(20) DEFAULT NULL,
  `e4` varchar(20) DEFAULT NULL,
  `e5` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_attendee`
--

INSERT INTO `job_attendee` (`e1`, `e2`, `e3`, `e4`, `e5`) VALUES
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('882', '902', '707', '', ''),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(20) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`) VALUES
(1, 'OPD'),
(2, 'ETU'),
(3, 'ICU'),
(5, 'CCU');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `oic_id` int(20) NOT NULL,
  `oic_name` varchar(30) NOT NULL,
  PRIMARY KEY (`oic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`oic_id`, `oic_name`) VALUES
(882, 'MAL'),
(902, 'RSC'),
(505, 'JMA'),
(602, 'KVR'),
(655, 'GPW'),
(597, 'SPP');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
