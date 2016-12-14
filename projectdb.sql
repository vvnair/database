-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2016 at 11:23 AM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_details`
--

CREATE TABLE IF NOT EXISTS `tbl_login_details` (
  `pk_int_lid` int(11) NOT NULL AUTO_INCREMENT,
  `vchr_username` varchar(30) NOT NULL,
  `vchr_password` varchar(30) NOT NULL,
  PRIMARY KEY (`pk_int_lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_login_details`
--

INSERT INTO `tbl_login_details` (`pk_int_lid`, `vchr_username`, `vchr_password`) VALUES
(1, 'user', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_details`
--

CREATE TABLE IF NOT EXISTS `tbl_user_details` (
  `pk_int_id` int(11) NOT NULL AUTO_INCREMENT,
  `vchr_image` varchar(100) DEFAULT NULL,
  `vchr_fname` varchar(30) DEFAULT NULL,
  `vchr_lname` varchar(30) DEFAULT NULL,
  `fk_int_lid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_int_id`),
  KEY `fk_int_lid` (`fk_int_lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user_details`
--

INSERT INTO `tbl_user_details` (`pk_int_id`, `vchr_image`, `vchr_fname`, `vchr_lname`, `fk_int_lid`) VALUES
(1, 'http://localhost/images/lamb.jpg', 'user', 'lname', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
