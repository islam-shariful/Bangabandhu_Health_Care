-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 01:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhc`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `aUserName` varchar(32) NOT NULL,
  `aPassword` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`aUserName`, `aPassword`) VALUES
('admin', '6969'),
('hossain', '123'),
('islam', '456'),
('sharif', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admit`
--

CREATE TABLE `admit` (
  `pUserName` varchar(32) NOT NULL,
  `admitID` varchar(32) NOT NULL,
  `catagory` varchar(32) NOT NULL,
  `room` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admit`
--

INSERT INTO `admit` (`pUserName`, `admitID`, `catagory`, `room`, `date`) VALUES
('ifty', '//;#$%^&*()(*&^%$', '', 1, '0000-00-00'),
('@hossain', '@hossain', 'premier2', 4, '2020-04-03'),
('@islam', '@islam', 'premier1', 4, '2020-04-04'),
('@sharif', '@sharif', 'premier1', 4, '2020-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `admitID` varchar(32) NOT NULL,
  `billAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`admitID`, `billAmount`) VALUES
('//;#$%^&*()(*&^%$', 0),
('@hossain', 0),
('@islam', 0),
('@sharif', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `dName` varchar(32) NOT NULL,
  `dUserName` varchar(32) NOT NULL,
  `dPassword` varchar(32) NOT NULL DEFAULT 'doctor',
  `dAge` varchar(32) NOT NULL,
  `dSpeciality` varchar(32) NOT NULL,
  `dAddress` varchar(32) NOT NULL,
  `dPhoneNo` varchar(32) NOT NULL,
  `dBirthday` date NOT NULL,
  `dGender` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`dName`, `dUserName`, `dPassword`, `dAge`, `dSpeciality`, `dAddress`, `dPhoneNo`, `dBirthday`, `dGender`) VALUES
('hossain sharif', '@hossain', 'doctor', '22', 'brain', '22-Baker Street', '01632466063', '2020-03-29', 'male'),
('imran prodhan', '@imran', '123', '23', 'brain', '2/2', '017', '2020-03-16', 'male'),
('sharif', '@sharif', 'doctor', '23', 'heart', '25/2', '66063', '1997-09-27', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eName` varchar(32) NOT NULL,
  `eAge` varchar(32) NOT NULL,
  `eCategory` varchar(32) NOT NULL,
  `eAddress` varchar(32) NOT NULL,
  `ePhoneNo` varchar(32) NOT NULL,
  `eBirthday` date NOT NULL,
  `eGender` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eName`, `eAge`, `eCategory`, `eAddress`, `ePhoneNo`, `eBirthday`, `eGender`) VALUES
('ema', '15', 'nurse', '2/2', '017', '2020-03-03', 'female'),
('y', '30', 'nurse', '2/2', '018', '2020-03-03', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineName` varchar(32) NOT NULL,
  `price` double NOT NULL,
  `serialNo` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineName`, `price`, `serialNo`) VALUES
('paracetamol', 10.5, '112233PL'),
('Ace Plus', 15.5, 'AP332211');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pName` varchar(32) NOT NULL,
  `pUserName` varchar(32) NOT NULL,
  `pPassword` varchar(32) NOT NULL DEFAULT 'patient',
  `pAge` varchar(32) NOT NULL,
  `pAddress` varchar(32) NOT NULL,
  `pPhoneNo` varchar(32) NOT NULL,
  `pBirthday` varchar(32) NOT NULL,
  `pGender` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pName`, `pUserName`, `pPassword`, `pAge`, `pAddress`, `pPhoneNo`, `pBirthday`, `pGender`) VALUES
('hossain', '@hossain', 'patient', '22', 'Baker Street', '66063', '2020-04-01', 'male'),
('islam', '@islam', 'patient', '23', 'Baker Street', '01706569026', '2020-04-03', 'male'),
('sharif', '@sharif', 'patient', '23', 'Baker Street', '01632466063', '2020-04-04', 'male'),
('ifty', 'ifty', 'patient', '23', 'Baker Street', '017', '2020-04-01', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD UNIQUE KEY `aUserName` (`aUserName`);

--
-- Indexes for table `admit`
--
ALTER TABLE `admit`
  ADD PRIMARY KEY (`admitID`),
  ADD KEY `pUserName` (`pUserName`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`admitID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`dUserName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ePhoneNo`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`serialNo`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pUserName`),
  ADD UNIQUE KEY `pPhoneNo` (`pPhoneNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admit`
--
ALTER TABLE `admit`
  ADD CONSTRAINT `admit_ibfk_1` FOREIGN KEY (`pUserName`) REFERENCES `patient` (`pUserName`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`admitID`) REFERENCES `admit` (`admitID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
