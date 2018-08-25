-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2018 at 11:54 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `ID` int(255) NOT NULL,
  `areaname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `ID` int(255) NOT NULL,
  `constituencyname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int(255) NOT NULL,
  `countryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE `county` (
  `ID` int(255) NOT NULL,
  `countyname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `ID` int(255) NOT NULL,
  `districtname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `ID` int(255) NOT NULL,
  `divisionname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estate`
--

CREATE TABLE `estate` (
  `ID` int(255) NOT NULL,
  `estatename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `infotable`
--

CREATE TABLE `infotable` (
  `ID` int(255) NOT NULL,
  `facilityname` text NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `country` text NOT NULL,
  `county` text NOT NULL,
  `constituency` text NOT NULL,
  `division` text NOT NULL,
  `district` text NOT NULL,
  `location` text NOT NULL,
  `sublocation` text NOT NULL,
  `estate` text NOT NULL,
  `area` text NOT NULL,
  `village` text NOT NULL,
  `town` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `ID` int(255) NOT NULL,
  `locationname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`) VALUES
(1, 'man', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `remittance`
--

CREATE TABLE `remittance` (
  `ID` int(11) NOT NULL,
  `remittanceid` int(11) NOT NULL,
  `remittancedate` date NOT NULL,
  `supplierid` varchar(40) DEFAULT NULL,
  `suppliername` text NOT NULL,
  `approvalstatus` text,
  `Currency` varchar(11) DEFAULT NULL,
  `remittancetotal` int(40) DEFAULT NULL,
  `credit` int(11) NOT NULL,
  `debit` int(11) NOT NULL,
  `Comments` text,
  `Ispaid` bigint(20) NOT NULL,
  `checkno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remittance`
--

INSERT INTO `remittance` (`ID`, `remittanceid`, `remittancedate`, `supplierid`, `suppliername`, `approvalstatus`, `Currency`, `remittancetotal`, `credit`, `debit`, `Comments`, `Ispaid`, `checkno`) VALUES
(10, 10, '2018-02-23', '80000001-1516174993', 'khetia', 'Approved', 'AUD', 0, 0, 0, 'ju', 1, 4),
(11, 11, '2018-02-23', '80000001-1516174993', 'khetia', 'Approved', NULL, 100, 100, 0, NULL, 0, 0),
(18, 18, '2018-02-24', '80000001-1516174993', 'khetia', 'Approved', NULL, 20, 10, 10, NULL, 0, 0),
(19, 19, '2018-03-06', '80000001-1516174993', 'khetia', 'Approved', NULL, 4500, 40, 4460, NULL, 0, 0),
(20, 20, '2018-03-06', '80000001-1516174993', 'khetia', 'Approved', NULL, 54, 10, 44, NULL, 0, 0),
(21, 21, '2018-03-06', '80000001-1516174993', 'khetia', 'Approved', NULL, 900, 0, 0, NULL, 0, 0),
(22, 22, '2018-03-06', '80000001-1516174993', 'khetia', 'Approved', NULL, 700, 170, 530, NULL, 0, 0),
(23, 23, '2018-03-06', '80000001-1516174993', 'khetia', 'Approved', NULL, 500, 10, 490, NULL, 0, 0),
(24, 24, '2018-03-07', '80000001-1516174993', 'khetia', 'Approved', NULL, 2278, 0, 2278, NULL, 0, 0),
(25, 25, '2018-03-07', '80000001-1516174993', 'khetia', 'Approved', NULL, 1809, 5, 895, NULL, 0, 0),
(26, 26, '2018-03-08', '80000001-1516174993', 'khetia', 'Approved', '', 0, 0, 0, '', 1, 2),
(27, 27, '2018-03-08', '80000001-1516174993', 'khetia', 'Not Approved', NULL, 100, 0, 100, NULL, 0, 0),
(28, 28, '2018-03-08', '80000001-1516174993', 'khetia', 'Approved', '', 0, 0, 0, '', 1, 1),
(29, 29, '2018-03-08', '80000001-1516174993', 'khetia', 'Approved', NULL, 0, 0, 0, NULL, 0, 0),
(30, 30, '2018-03-08', '80000001-1516174993', 'khetia', 'Approved', NULL, 500, 0, 500, NULL, 0, 0),
(31, 31, '2018-03-08', '80000001-1516174993', 'khetia', 'Approved', NULL, 0, 0, 0, NULL, 0, 0),
(32, 32, '2018-03-08', '80000001-1516174993', 'khetia', 'Not Approved', 'KES', 1460, 0, 1460, NULL, 0, 0),
(33, 33, '2018-03-09', '80000001-1516174993', 'khetia', 'Not Approved', 'KES', 45556, 0, 45556, NULL, 0, 0),
(34, 34, '2018-03-09', '80000001-1516174993', 'khetia', 'Approved', 'KES', 777, 777, 0, '', 0, 0),
(35, 35, '2018-03-09', '80000001-1516174993', 'khetia', 'Approved', 'KES', 7550, 0, 7550, '', 0, 0),
(36, 36, '2018-03-09', '80000001-1516174993', 'khetia', 'Approved', 'KES', 0, 0, 0, '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `remittancelog`
--

CREATE TABLE `remittancelog` (
  `remittancelogid` int(11) NOT NULL,
  `billnumber` varchar(40) NOT NULL,
  `billcurrency` varchar(11) NOT NULL,
  `billammount` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `debit` int(11) NOT NULL,
  `remittanceid` varchar(40) NOT NULL,
  `remittancedate` date NOT NULL,
  `supplierid` varchar(40) NOT NULL,
  `approvalstatus` text NOT NULL,
  `Currency` varchar(11) NOT NULL,
  `Comments` text NOT NULL,
  `Ispaid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remittancelog`
--

INSERT INTO `remittancelog` (`remittancelogid`, `billnumber`, `billcurrency`, `billammount`, `credit`, `debit`, `remittanceid`, `remittancedate`, `supplierid`, `approvalstatus`, `Currency`, `Comments`, `Ispaid`) VALUES
(17, '14-1516863044', '', 0, 0, 0, '10', '2018-02-23', '80000001-1516174993', 'Approved', 'AUD', 'ju', ''),
(18, 'A-1516785776', '', 0, 0, 0, '11', '2018-02-23', '80000001-1516174993', 'Approved', '', '', ''),
(19, 'E-1516785802', '', 100, 100, 0, '11', '2018-02-23', '80000001-1516174993', 'Approved', '', '', ''),
(20, '11-1516785849', '', 0, 0, 0, '11', '2018-02-23', '80000001-1516174993', 'Not Approved', '', '', ''),
(21, '4-1516175125', '', 20, 10, 10, '18', '2018-02-24', '80000001-1516174993', 'Not Approved', '', '', ''),
(22, '119-1520326987', '', 4500, 40, 4460, '19', '2018-03-06', '80000001-1516174993', 'Approved', '', '', ''),
(23, '190', '', 54, 10, 44, '20', '2018-03-06', '80000001-1516174993', 'Approved', '', '', ''),
(24, '116-1520326979', '', 900, 10, 890, '21', '2018-03-06', '80000001-1516174993', 'Approved', 'AUD', '', ''),
(25, '113-1519376346', '', 700, 170, 530, '22', '2018-03-06', '80000001-1516174993', 'Approved', '', '', ''),
(26, '110-1519376337', '', 500, 10, 490, '23', '2018-03-06', '80000001-1516174993', 'Approved', '', '', ''),
(27, '10D-1519365700', '', 478, 0, 478, '24', '2018-03-07', '80000001-1516174993', 'Approved', '', '', ''),
(28, '11E-1520406297', '', 1800, 0, 1800, '24', '2018-03-07', '80000001-1516174993', 'Approved', '', '', ''),
(29, '10A-1519294081', '', 909, 10, 899, '25', '2018-03-07', '80000001-1516174993', 'Approved', '', '', ''),
(30, '191', '', 900, 5, 895, '25', '2018-03-07', '80000001-1516174993', 'Approved', '', '', ''),
(31, '14-1516863044', '', 0, 0, 0, '29', '2018-03-08', '80000001-1516174993', 'Approved', 'KES', 'checked', ''),
(32, 'F4-1518015602', '', 500, 0, 500, '30', '2018-03-08', '80000001-1516174993', 'Approved', 'KES', '', ''),
(33, 'F7-1518069768', '', 0, 0, 0, '31', '2018-03-08', '80000001-1516174993', 'Not Approved', 'KES', 'checked', ''),
(34, 'E8-1518004105', '', 1460, 0, 1460, '32', '2018-03-08', '80000001-1516174993', 'Approved', 'KES', 'checked', ''),
(35, '107-1519289479', '', 45556, 0, 45556, '33', '2018-03-09', '80000001-1516174993', 'Approved', 'KES', '', ''),
(36, '104-1519287382', '', 777, 777, 0, '34', '2018-03-09', '80000001-1516174993', 'Approved', 'KES', '', '1'),
(37, '101-1519282135', '', 7550, 0, 7550, '35', '2018-03-09', '80000001-1516174993', 'Approved', 'KES', '', ''),
(38, '125-1520417140', '', 0, 0, 0, '36', '2018-03-09', '80000001-1516174993', 'Approved', 'KES', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sublocation`
--

CREATE TABLE `sublocation` (
  `ID` int(255) NOT NULL,
  `sublocationname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `town`
--

CREATE TABLE `town` (
  `ID` int(255) NOT NULL,
  `townname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `ID` int(255) NOT NULL,
  `villagename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `estate`
--
ALTER TABLE `estate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `infotable`
--
ALTER TABLE `infotable`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `remittance`
--
ALTER TABLE `remittance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `remittancelog`
--
ALTER TABLE `remittancelog`
  ADD PRIMARY KEY (`remittancelogid`),
  ADD KEY `billcurrency` (`billcurrency`),
  ADD KEY `billcurrency_2` (`billcurrency`);

--
-- Indexes for table `sublocation`
--
ALTER TABLE `sublocation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constituency`
--
ALTER TABLE `constituency`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estate`
--
ALTER TABLE `estate`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infotable`
--
ALTER TABLE `infotable`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `remittance`
--
ALTER TABLE `remittance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `remittancelog`
--
ALTER TABLE `remittancelog`
  MODIFY `remittancelogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sublocation`
--
ALTER TABLE `sublocation`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `town`
--
ALTER TABLE `town`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
