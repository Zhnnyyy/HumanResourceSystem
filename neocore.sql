-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 06:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neocore`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `ID` int(11) NOT NULL,
  `AccountID` int(11) NOT NULL,
  `Resume` longblob NOT NULL,
  `cvtype` varchar(255) NOT NULL,
  `Image` longblob NOT NULL,
  `imgtype` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`ID`, `AccountID`, `Resume`, `cvtype`, `Image`, `imgtype`, `Date`, `Position`, `status`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `TimeIn` varchar(255) DEFAULT NULL,
  `TimeOut` varchar(244) DEFAULT NULL,
  `WorkHours` varchar(255) DEFAULT NULL,
  `Date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `EmployeeID`, `TimeIn`, `TimeOut`, `WorkHours`, `Date`, `status`) VALUES
(46, 93933, '06:00', '15:09', '549', '2023-05-16', 'present'),
(47, 93933, '06:00', '15:09', '549', '2023-05-17', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ID` int(11) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID`, `DepartmentName`) VALUES
(1, 'Minimum Wager'),
(2, 'IT Department'),
(3, 'Accounting Department'),
(4, 'HR Department'),
(5, 'Admin Department');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `ApplicantID` varchar(255) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Pin` varchar(255) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Middlename` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Birthday` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `PositionType` varchar(255) NOT NULL,
  `Shift` varchar(255) NOT NULL,
  `Department` int(255) NOT NULL,
  `Manager` int(11) DEFAULT NULL,
  `DateHired` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `ApplicantID`, `EmployeeID`, `Pin`, `Firstname`, `Middlename`, `Lastname`, `Gender`, `Birthday`, `Email`, `Position`, `PositionType`, `Shift`, `Department`, `Manager`, `DateHired`, `status`) VALUES
(29, '26', 93933, 'a4bb297d3613561d93143e142f9dba52', 'Ed Emmanuel', 'Crisosotomo', 'Perpetua', 'Male', '2001-12-25', 'perpetuaedemmanuel1225@gmail.com', '1', '2', '2', 4, NULL, '2023-05-15', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `employeecredits`
--

CREATE TABLE `employeecredits` (
  `ID` int(11) NOT NULL,
  `EmployeeID` varchar(255) NOT NULL,
  `Vacation leave` int(11) NOT NULL,
  `Sick leave` int(11) NOT NULL,
  `Parental leave` int(11) NOT NULL,
  `Maternity leave` int(11) NOT NULL,
  `Paternity leave` int(11) NOT NULL,
  `Personal leave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeecredits`
--

INSERT INTO `employeecredits` (`ID`, `EmployeeID`, `Vacation leave`, `Sick leave`, `Parental leave`, `Maternity leave`, `Paternity leave`, `Personal leave`) VALUES
(16, '93933', 3, 3, 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employeerequest`
--

CREATE TABLE `employeerequest` (
  `ID` int(11) NOT NULL,
  `LeaveName` varchar(255) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeerequest`
--

INSERT INTO `employeerequest` (`ID`, `LeaveName`, `Credits`) VALUES
(1, 'Vacation leave', 5),
(2, 'Sick leave', 5),
(3, 'Parental leave', 5),
(4, 'Maternity leave', 5),
(5, 'Paternity leave', 5),
(6, 'Personal leave', 5);

-- --------------------------------------------------------

--
-- Table structure for table `employeetype`
--

CREATE TABLE `employeetype` (
  `ID` int(11) NOT NULL,
  `EmployeeType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeetype`
--

INSERT INTO `employeetype` (`ID`, `EmployeeType`) VALUES
(1, 'Regular'),
(2, 'Irregular');

-- --------------------------------------------------------

--
-- Table structure for table `jobposition`
--

CREATE TABLE `jobposition` (
  `ID` int(11) NOT NULL,
  `PositionName` varchar(255) NOT NULL,
  `Rate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobposition`
--

INSERT INTO `jobposition` (`ID`, `PositionName`, `Rate`) VALUES
(1, 'IT Trainer', '$20'),
(2, 'System Analyst', '$57'),
(3, 'Technical Support Analyst', '$40'),
(4, 'Cybersecurity Specialist', '$80'),
(5, 'Data Analyst', '$45'),
(6, 'Project Manager', '$54'),
(7, 'Manager', '$90');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `ID` int(11) NOT NULL,
  `JobTitle` varchar(255) NOT NULL,
  `JobDescription` text NOT NULL,
  `Salary` varchar(255) NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`ID`, `JobTitle`, `JobDescription`, `Salary`, `Location`) VALUES
(1, 'Cybersecurity Specialist', 'Develop software application', '$50', 'Valenzuela'),
(5, 'Backend Developer', 'Developer for web and android application', '$80', 'Villa luis'),
(6, 'Data Analyst', 'Sample Description', '$30', 'Manila'),
(7, 'Manager', 'Manage all employees', '$100', 'Monumento Circle');

-- --------------------------------------------------------

--
-- Table structure for table `requestlog`
--

CREATE TABLE `requestlog` (
  `ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `RequestType` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `StartDate` varchar(255) NOT NULL,
  `EndDate` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `ID` int(11) NOT NULL,
  `ApplicantID` int(11) NOT NULL,
  `Attachment` longblob NOT NULL,
  `attachmentType` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`ID`, `ApplicantID`, `Attachment`, `attachmentType`, `Date`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Grosspay` varchar(255) NOT NULL,
  `Deduction` varchar(255) NOT NULL,
  `Netpay` varchar(255) NOT NULL,
  `StartDate` varchar(255) NOT NULL,
  `EndDate` varchar(255) NOT NULL,
  `Shift` varchar(255) NOT NULL,
  `Issued` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `webaccount`
--

CREATE TABLE `webaccount` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Middlename` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Birthday` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webaccount`
--

INSERT INTO `webaccount` (`ID`, `Firstname`, `Middlename`, `Lastname`, `Birthday`, `Gender`, `email`, `password`) VALUES
(13, 'Ed Emmanuel', 'Crisosotomo', 'Perpetua', '2001-12-25', 'Male', 'perpetuaedemmanuel1225@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `workshift`
--

CREATE TABLE `workshift` (
  `ID` int(11) NOT NULL,
  `ShiftName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshift`
--

INSERT INTO `workshift` (`ID`, `ShiftName`) VALUES
(1, 'Day Shift'),
(2, 'Night Shift'),
(3, 'Mid Shift');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmployeeID` (`EmployeeID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `employeecredits`
--
ALTER TABLE `employeecredits`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `employeerequest`
--
ALTER TABLE `employeerequest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employeetype`
--
ALTER TABLE `employeetype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobposition`
--
ALTER TABLE `jobposition`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `requestlog`
--
ALTER TABLE `requestlog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `webaccount`
--
ALTER TABLE `webaccount`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `workshift`
--
ALTER TABLE `workshift`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `employeecredits`
--
ALTER TABLE `employeecredits`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employeerequest`
--
ALTER TABLE `employeerequest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employeetype`
--
ALTER TABLE `employeetype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobposition`
--
ALTER TABLE `jobposition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requestlog`
--
ALTER TABLE `requestlog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webaccount`
--
ALTER TABLE `webaccount`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `workshift`
--
ALTER TABLE `workshift`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;