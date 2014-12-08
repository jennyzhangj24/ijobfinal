-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-12-08 00:57:15
-- 服务器版本： 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SDpro`
--

-- --------------------------------------------------------

--
-- 表的结构 `Friend_Table`
--

CREATE TABLE IF NOT EXISTS `Friend_Table` (
`friendid` int(11) NOT NULL,
  `FriendName` varchar(16) NOT NULL,
  `UserId` int(16) NOT NULL,
  `FriendGender` text NOT NULL,
  `Telephone` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `Friend_Table`
--

INSERT INTO `Friend_Table` (`friendid`, `FriendName`, `UserId`, `FriendGender`, `Telephone`, `Email`) VALUES
(1, 'sky2', 2, 'Male', '222222', ''),
(2, 'sky1', 1, 'Male', '1111111', '11111'),
(3, 'sky2', 2, 'Male', '222222', ''),
(5, 'peiliang', 3, 'Female', '123456', ''),
(6, 'peiliang', 1, 'Female', '123456', ''),
(7, 'sky2', 1, 'Male', '222222', '');

-- --------------------------------------------------------

--
-- 表的结构 `memberjobs_table`
--

CREATE TABLE IF NOT EXISTS `memberjobs_table` (
`jobid` int(11) NOT NULL,
  `UserId` int(32) NOT NULL,
  `CompanyName` text NOT NULL,
  `JobTitle` text NOT NULL,
  `ApplyLink` text NOT NULL,
  `ApplyDate` text NOT NULL,
  `Location` text NOT NULL,
  `JobRequirment` text NOT NULL,
  `CurrentStatus` text NOT NULL,
  `Refer` int(16) NOT NULL,
  `Others` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `memberjobs_table`
--

INSERT INTO `memberjobs_table` (`jobid`, `UserId`, `CompanyName`, `JobTitle`, `ApplyLink`, `ApplyDate`, `Location`, `JobRequirment`, `CurrentStatus`, `Refer`, `Others`) VALUES
(3, 2, 'JP morgan', 'Quantitative Analyst', 'www.jpmorgan.com', '12/08/2014', 'NY', 'Matlab', 'Pending', 0, ''),
(4, 1, 'oracle', 'software developer', 'www.oracle.com', '12/08/2014', 'AL', 'Java', 'Pending', 0, ''),
(7, 2, 'oracle', 'software developer', 'www.oracle.com', '12/08/2014', 'AL', 'Java', 'pending', 1, ''),
(8, 1, 'JPmorgan', 'Quantitative Analyst', 'www.jpmorgan.com', '12/04/2014', 'NY', '', 'Pending', 0, 'other'),
(9, 1, 'Goldman Sachs', 'Risk manager', 'www.goldman.com', '12/06/2014', 'AL', 'Matlab', 'Pending', 0, 'other'),
(10, 3, 'oracle', 'software developer', 'www.oracle.com', '12/08/2014', 'AL', 'Java', 'pending', 1, 'Pending');

-- --------------------------------------------------------

--
-- 表的结构 `Member_Table`
--

CREATE TABLE IF NOT EXISTS `Member_Table` (
`UserId` int(16) NOT NULL,
  `Username` text NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Gender` text NOT NULL,
  `Telephone` varchar(16) NOT NULL,
  `Address` text NOT NULL,
  `Email` text NOT NULL,
  `Other` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `Member_Table`
--

INSERT INTO `Member_Table` (`UserId`, `Username`, `Password`, `Gender`, `Telephone`, `Address`, `Email`, `Other`) VALUES
(1, 'sky1', '111111', 'Male', '1111111', '11111', '', ''),
(2, 'sky2', '222222', 'Male', '222222', '', '', ''),
(3, 'peiliang', '12345', 'Female', '123456', 'troy', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Friend_Table`
--
ALTER TABLE `Friend_Table`
 ADD UNIQUE KEY `friendid_2` (`friendid`), ADD KEY `FriendId` (`friendid`);

--
-- Indexes for table `memberjobs_table`
--
ALTER TABLE `memberjobs_table`
 ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `Member_Table`
--
ALTER TABLE `Member_Table`
 ADD PRIMARY KEY (`UserId`), ADD UNIQUE KEY `UserId` (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Friend_Table`
--
ALTER TABLE `Friend_Table`
MODIFY `friendid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `memberjobs_table`
--
ALTER TABLE `memberjobs_table`
MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Member_Table`
--
ALTER TABLE `Member_Table`
MODIFY `UserId` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
