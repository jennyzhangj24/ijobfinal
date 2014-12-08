-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2014 at 08:37 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Member_Table`
--
DROP TABLE IF EXISTS `Member_Table`;
CREATE TABLE IF NOT EXISTS `Member_Table` (
  `UserId` int(11) NOT NULL auto_increment,
  `UserName` varchar(20) DEFAULT NULL,
  `PassWord` varchar(20) DEFAULT NULL,
  `Gender` tinyint(1) DEFAULT NULL,
  `Telephone` varchar(12) DEFAULT NULL,
  `Address` text NOT NULL,
  `Other` text NOT NULL,
  PRIMARY KEY  (`UserId`)
) AUTO_INCREMENT=4;



DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `testid` int(11) NOT NULL auto_increment,
  `User_Id` int(11) NOT NULL,
  `CompanyName` varchar(20) DEFAULT NULL,
  PRIMARY KEY  (`testid`),
  KEY `User_Id` (`User_Id`)
) AUTO_INCREMENT=4;

--
-- Dumping data for table `Member_Table`
--
DROP TABLE IF EXISTS `MemberJobs_Table`;
CREATE TABLE IF NOT EXISTS `MemberJobs_Table` (
  `JobId` int(11) NOT NULL auto_increment,
  `User_Id` int(11) NOT NULL,
  `CompanyName` varchar(20) DEFAULT NULL,
  `JobTitle` varchar(12) DEFAULT NULL,
  `ApplyLink` text NOT NULL,
  `ApplyDate` date NOT NULL,
  `Location` varchar(20) NOT NULL,
  `JobRequirment` text NOT NULL,
  `Others` text NOT NULL,
  `CurrentStatus` text NOT NULL,
  `Refer` tinyint(1) NOT NULL,
   PRIMARY KEY  (`JobId`),
   KEY `User_Id` (`User_Id`)
) AUTO_INCREMENT=4;



-- CREATE TABLE IF NOT EXISTS `Companys_Table` (
--   `CompanyId` int(6) DEFAULT NULL,
--   `CompanyName` varchar(20) DEFAULT NULL,
--   `JobTitle` varchar(12) DEFAULT NULL,
--   `ApplyLink` text NOT NULL,
--   `ApplyDate` date NOT NULL,
--   `Location` varchar(20) NOT NULL,
--   `JobRequirment` text NOT NULL,
--   `Others` text NOT NULL
-- ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
