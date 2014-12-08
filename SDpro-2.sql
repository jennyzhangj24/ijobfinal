-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-12-08 10:30:48
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
  `ReceiverName` varchar(16) NOT NULL,
  `SenderId` int(16) NOT NULL,
  `FriendGender` text NOT NULL,
  `Telephone` text NOT NULL,
  `Email` text NOT NULL,
  `Request` int(16) NOT NULL,
  `Isfriend` int(16) NOT NULL,
  `ReceiverId` int(16) NOT NULL,
  `SenderName` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `Friend_Table`
--

INSERT INTO `Friend_Table` (`friendid`, `ReceiverName`, `SenderId`, `FriendGender`, `Telephone`, `Email`, `Request`, `Isfriend`, `ReceiverId`, `SenderName`) VALUES
(3, 'Yitian', 2, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Peiliang'),
(4, 'Peiliang', 1, 'Female', '5223849727', 'peiliangzou@gmail.com', 0, 1, 2, 'Yitian'),
(5, 'Yihao', 1, 'Male', '5182976564', 'Yihao@gmail.com', 0, 1, 6, 'Yitian'),
(6, 'Feng', 1, 'Male', '5682394123', 'fengji1991@gmail.com', 0, 1, 7, 'Yitian'),
(7, 'Ingrid', 1, 'Female', '5182724569', 'IngridLiu@gmail.com', 0, 1, 4, 'Yitian'),
(8, 'Jenny', 1, 'Male', '6523897322', 'jenny@gmail.com', 0, 1, 3, 'Yitian'),
(9, 'Jing', 1, 'Female', '5182222222', 'liuj17@rpi.edu', 0, 1, 5, 'Yitian'),
(10, 'Yitian', 4, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Ingrid'),
(11, 'Yitian', 3, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Jenny'),
(12, 'Yitian', 5, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Jing'),
(13, 'Yitian', 6, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Yihao'),
(14, 'Yitian', 7, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Feng'),
(15, 'Bangchen', 1, 'Male', '5187776232', 'Bangc@rpi.edu', 0, 1, 8, 'Yitian'),
(16, 'Yao', 1, 'Male', '5184567367', 'luyao@gmail.com', 0, 1, 9, 'Yitian'),
(17, 'Yitian', 9, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Yao'),
(18, 'Yitian', 8, 'Male', '5182276569', 'skyvivid1991@gmail.com', 0, 1, 1, 'Bangchen');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `memberjobs_table`
--

INSERT INTO `memberjobs_table` (`jobid`, `UserId`, `CompanyName`, `JobTitle`, `ApplyLink`, `ApplyDate`, `Location`, `JobRequirment`, `CurrentStatus`, `Refer`, `Others`) VALUES
(1, 2, 'GE', 'Engineer', 'www.ge.com', '2014-12-17', 'AL', 'Labview', 'Pending', 0, 'other'),
(2, 1, 'Morgan Stanley', 'Risk manager', 'www.morganstanley.com', '12/06/2014', 'AL', 'SAS', 'Pending', 0, 'other'),
(3, 4, 'RPI', 'Professor', 'www.rpi.edu', '10/30/2010', 'NY', 'Java', 'Offer', 0, 'other'),
(4, 5, 'ICBC', 'Financial analyst', 'www.icbc.com', '12/04/2014', 'NY', 'R', 'Pending', 0, 'other'),
(5, 5, 'Morgan Stanley', 'Risk manager', 'www.morganstanley.com', '12/06/2014', 'AL', 'SAS', 'pending', 1, 'Offer'),
(6, 1, 'Jpmorgan', 'financial analyst', 'www.jpmorgan.com', '12/03/2014', 'NY', 'Matlab', 'Pending', 0, 'other'),
(7, 1, 'Bank of America', 'financial analyst', 'www.boa.com', '12/02/2014', 'NY', 'SAS', 'Pending', 0, 'other'),
(8, 1, 'Discover', 'financial modeler', 'www.discover.com', '12/01/2014', 'NJ', 'SAS', 'Pending', 0, 'other'),
(9, 1, 'AmericanExpress', 'sales', 'www.americanexpress.com', '12/04/2014', 'FL', 'Matlab', 'Offer', 0, 'other'),
(10, 1, 'Goldman Sachs', 'Financial analyst', 'www.goldman.com', '11/27/2014', 'NY', 'Matlab', 'Reject', 0, 'other'),
(11, 1, 'PWC', 'financial analyst', 'www.pwc.com', '12/05/2014', 'NY', 'Matlab', 'Reject', 0, 'other'),
(12, 1, 'Deloitte', 'financial analyst', 'www.deloitee.com', '12/1/2014', 'AL', 'SAS', 'Offer', 0, 'other'),
(13, 1, 'EY', 'sales', 'www.ey.com', '11/5/2014', 'AL', 'SAS', 'Reject', 0, 'other'),
(14, 1, 'Key bank', 'risk manager', 'www.keybank.com', '11/1/2014', 'FL', 'SAS', 'Reject', 0, 'other'),
(15, 1, 'Citi', 'risk manager', 'www.citi.com', '11/20/2014', 'NY', 'SAS', 'Offer', 0, 'other'),
(16, 1, 'KPMG', 'financial modeler', 'www.kpmg.com', '10/20/2014', 'NJ', 'SAS', 'Offer', 0, 'other'),
(17, 1, 'Factset', 'financial modeler', 'www.factset.com', '11/11/2014', 'NJ', 'Matlab', 'Reject', 0, 'other'),
(18, 2, 'Goldman Sachs', 'Financial analyst', 'www.goldman.com', '11/27/2014', 'NY', 'Matlab', 'pending', 1, 'Reject'),
(19, 3, 'Morgan Stanley', 'Risk manager', 'www.morganstanley.com', '12/06/2014', 'AL', 'SAS', 'pending', 1, 'Pending'),
(20, 2, 'Discover', 'financial modeler', 'www.discover.com', '12/01/2014', 'NJ', 'SAS', 'pending', 1, 'Pending');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `Member_Table`
--

INSERT INTO `Member_Table` (`UserId`, `Username`, `Password`, `Gender`, `Telephone`, `Address`, `Email`, `Other`) VALUES
(1, 'Yitian', '123456', 'Male', '5182276569', '1520 6th Ave', 'skyvivid1991@gmail.com', ''),
(2, 'Peiliang', '123456', 'Female', '5223849727', 'Troy Garden', 'peiliangzou@gmail.com', ''),
(3, 'Jenny', '123456', 'Male', '6523897322', 'City Station', 'jenny@gmail.com', ''),
(4, 'Ingrid', '123456', 'Female', '5182724569', '15th Ave', 'IngridLiu@gmail.com', ''),
(5, 'Jing', '123456', 'Female', '5182222222', '1521 6thAve', 'liuj17@rpi.edu', ''),
(6, 'Yihao', '123456', 'Male', '5182976564', '1520 6th Ave.', 'Yihao@gmail.com', ''),
(7, 'Feng', '123456', 'Male', '5682394123', '1520 6th Ave', 'fengji1991@gmail.com', ''),
(8, 'Bangchen', '123456', 'Male', '5187776232', '1521 6th Ave', 'Bangc@rpi.edu', ''),
(9, 'Yao', '123456', 'Male', '5184567367', 'Troy Garden', 'luyao@gmail.com', ''),
(10, 'Alex', '123456', 'Male', '54736291104', 'PR', 'Alex@gmail.com', '');

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
MODIFY `friendid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `memberjobs_table`
--
ALTER TABLE `memberjobs_table`
MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Member_Table`
--
ALTER TABLE `Member_Table`
MODIFY `UserId` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
