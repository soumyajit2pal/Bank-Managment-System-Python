-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 19, 2018 at 03:20 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--
CREATE DATABASE IF NOT EXISTS `banking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banking`;

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
  `customertid` int(255) NOT NULL AUTO_INCREMENT,
  `acc_num` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(200) NOT NULL,
  `income` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `amount` int(255) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `passcode` varchar(200) NOT NULL,
  PRIMARY KEY (`acc_num`),
  UNIQUE KEY `customertid` (`customertid`),
  UNIQUE KEY `acc_num` (`acc_num`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customertid`, `acc_num`, `name`, `age`, `sex`, `address`, `phone`, `income`, `status`, `date`, `amount`, `userid`, `passcode`) VALUES
(8, 332, 'Soumyajit Pal', 21, 'Male', 'Kasba', 943215525, 20000, 'TRUE', '2018-02-12 15:35:54.000000', 8000, 'uid123', 'uid123'),
(12, 333, 'Souvik Auddy', 21, 'Male', 'Entally Kolkata West Bengal', 896761027, 20000, 'TRUE', '2018-02-13 12:42:25.000000', 78977, 'uid333', 'uid333'),
(14, 334, 'Chandrima Ghosh', 25, 'Female', 'Nangi Mahestola West Bengal', 98564321, 40000, 'TRUE', '2018-02-14 11:56:00.000000', 28900, 'uid334', 'uid334'),
(15, 335, 'Souvik Auddy', 30, 'Male', 'kasba Kolkta West Bengal', 89676102, 20000, 'TRUE', '2018-02-14 12:27:48.000000', 220000, 'uid335', 'uid335');

-- --------------------------------------------------------

--
-- Table structure for table `login_accountant`
--

DROP TABLE IF EXISTS `login_accountant`;
CREATE TABLE IF NOT EXISTS `login_accountant` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_accountant`
--

INSERT INTO `login_accountant` (`username`, `password`) VALUES
('soumya', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_histoty`
--

DROP TABLE IF EXISTS `transaction_histoty`;
CREATE TABLE IF NOT EXISTS `transaction_histoty` (
  `tid` int(255) NOT NULL AUTO_INCREMENT,
  `debit` int(255) DEFAULT '0',
  `credit` int(255) DEFAULT '0',
  `balance` int(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `account` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_histoty`
--

INSERT INTO `transaction_histoty` (`tid`, `debit`, `credit`, `balance`, `date`, `account`, `status`) VALUES
(77, 30000, 0, 8000, '2018-02-18 21:09:09.000000', 332, 'IMPS'),
(76, 0, 30000, 78977, '2018-02-18 21:09:09.000000', 333, 'IMPS'),
(75, 30000, 0, 220000, '2018-02-18 21:06:50.000000', 335, 'IMPS'),
(74, 0, 30000, 38000, '2018-02-18 21:06:50.000000', 332, 'IMPS'),
(73, 30000, 0, 8000, '2018-02-18 20:59:47.000000', 332, 'IMPS'),
(72, 0, 30000, 48977, '2018-02-18 20:59:47.000000', 333, 'IMPS'),
(71, 12000, 0, 38000, '2018-02-18 20:43:00.000000', 332, 'SELF'),
(70, 0, 12000, 50000, '2018-02-18 20:42:47.000000', 332, 'SELF');
--
-- Database: `date`
--
CREATE DATABASE IF NOT EXISTS `date` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `date`;

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
CREATE TABLE IF NOT EXISTS `date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`id`, `date`, `Amount`) VALUES
(1, '2018-02-12 00:00:00', 2042),
(2, '2018-02-11 00:00:00', 12032),
(3, '2018-02-11 00:00:00', 2032),
(4, '2018-02-12 15:16:20', 2000);
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `FIRST_NAME` char(20) NOT NULL,
  `LAST_NAME` char(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `INCOME` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`FIRST_NAME`, `LAST_NAME`, `AGE`, `SEX`, `INCOME`) VALUES
('Mac', 'Mohan', 24, 'M', 2000),
('Soumya', 'Pal', 24, 'M', 2000),
('Soumyajit', 'Pal', 24, 'M', 500),
('Souvik', 'Auddy', 24, 'M', 5000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
