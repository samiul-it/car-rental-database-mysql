-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 07:29 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car rental project`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `alltogether`
-- (See below for the actual view)
--
CREATE TABLE `alltogether` (
`Car_model` varchar(10)
,`driver_name` varchar(10)
,`Owner_name` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `CarID` int(10) NOT NULL,
  `CarregNo` varchar(10) DEFAULT NULL,
  `Car_Brand` varchar(10) DEFAULT NULL,
  `Car_Model` varchar(10) DEFAULT NULL,
  `Hire_Date` date DEFAULT NULL,
  `No_of_Seats` int(10) DEFAULT NULL,
  `ClientID` int(10) DEFAULT NULL,
  `OwnerID` int(10) DEFAULT NULL,
  `Per_km_milage` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`CarID`, `CarregNo`, `Car_Brand`, `Car_Model`, `Hire_Date`, `No_of_Seats`, `ClientID`, `OwnerID`, `Per_km_milage`) VALUES
(101, '2004', 'TOYOTA', 'HIACE', '2019-07-17', 10, NULL, 9991, 6),
(102, '2044', 'TOYOTA', 'NOAH', '2019-03-13', 7, NULL, 9991, 7),
(103, '2920', 'TOYOTA', 'COROLLA', '2019-01-16', 4, NULL, 9993, 13),
(104, '1924', 'TOYOTA', 'PRIUS', '2018-05-24', 4, NULL, 9992, 7),
(105, '3554', 'KIA', 'SPORTAGE', '2018-06-20', 4, NULL, 9992, 6),
(106, '5007', 'TOYOTA', 'HIACE', '2018-10-17', 10, NULL, 9993, 7),
(107, '2982', 'Nissan', 'BlueBIRD', '2019-02-03', 4, NULL, 9991, 11),
(108, '7710', 'MITSUBISHI', 'LANCER', '2019-01-16', 4, NULL, 9993, 8),
(109, '4256', 'NISSAN', 'URVAN', '2019-06-12', 12, NULL, 9992, 5),
(110, '6956', 'FORD', 'FIESTA', '2019-07-29', 4, NULL, 9993, 9);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientID` int(10) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Address` varchar(10) DEFAULT NULL,
  `Booking` date DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Discount` int(10) DEFAULT NULL,
  `Previous_DUE` int(10) DEFAULT NULL,
  `TripID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ClientID`, `Name`, `Address`, `Booking`, `Phone`, `Discount`, `Previous_DUE`, `TripID`) VALUES
(232301, 'Mominul H', 'Banani', '2019-07-08', 258365, 0, 200, 8103),
(232302, 'Kamrul ', 'Dhaka', '2019-05-23', 785365, 0, 0, 8102),
(232303, 'Rubel ', 'Rangpur', '2019-09-22', 147855, 1000, 0, 8105),
(232304, 'Farhan ', 'Myemnsingh', '2019-11-11', 365245, 0, 300, 8101),
(232306, 'Farhana', 'Dhaka', '2019-11-18', 258933, 600, 4500, 8107),
(232307, 'Farzana', 'Tongi', '2019-01-28', 369852, 1600, 4500, 8108);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DriverID` int(10) NOT NULL,
  `License_no` int(10) NOT NULL,
  `Driver_Name` varchar(10) DEFAULT NULL,
  `Age` int(10) DEFAULT NULL,
  `Address` varchar(10) DEFAULT NULL,
  `Working_hour` int(10) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Salary` int(10) NOT NULL,
  `CarID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverID`, `License_no`, `Driver_Name`, `Age`, `Address`, `Working_hour`, `Phone`, `Salary`, `CarID`) VALUES
(1001, 147, 'Sharif ', 30, 'Mymensingh', 8, 12345, 20000, 106),
(1002, 148, 'Mahmudul ', 25, 'Mymensingh', 9, 25345, 16000, 103),
(1003, 1547, 'Riyad ', 35, 'Dhaka', 12, 56345, 17000, 101),
(1004, 15744, 'Rony ', 32, 'Dhaka', 11, 656345, 16000, 102),
(1005, 15747, 'Himel ', 25, 'Chittagong', 6, 5745, 12000, 105),
(1006, 156647, 'Shamim ', 25, 'Rajshahi', 9, 96345, 15000, 104),
(1007, 1547, 'Masud ', 35, 'Dhaka', 10, 56585, 17200, 110),
(1008, 967, 'Rubel ', 40, 'Dhaka', 12, 56635, 14000, 108),
(1009, 23207, 'Rahman', 35, 'Mymensingh', 12, 57745, 18500, 109),
(1010, 188547, 'Farzana ', 26, 'Dhaka', 5, 365945, 12000, 107);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OwnerID` int(10) NOT NULL,
  `Owner_name` varchar(10) DEFAULT NULL,
  `Address` varchar(10) DEFAULT NULL,
  `Phone` int(10) DEFAULT NULL,
  `No_of_Cars` int(10) DEFAULT NULL,
  `CarID` int(10) DEFAULT NULL,
  `AccountID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`OwnerID`, `Owner_name`, `Address`, `Phone`, `No_of_Cars`, `CarID`, `AccountID`) VALUES
(9991, 'Samiul', 'Mymensingh', 145236, 3, 102, 4503),
(9992, 'Rafiul', 'Mymensingh', 9853314, 3, 103, 4502),
(9993, 'Safiul', 'Mymensingh', 745314, 4, 106, 4501);

-- --------------------------------------------------------

--
-- Table structure for table `profit_amount`
--

CREATE TABLE `profit_amount` (
  `AccountID` int(10) NOT NULL,
  `NetProfit` int(10) DEFAULT NULL,
  `Capital` int(10) DEFAULT NULL,
  `Transection_Amount` int(10) DEFAULT NULL,
  `TrxnID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profit_amount`
--

INSERT INTO `profit_amount` (`AccountID`, `NetProfit`, `Capital`, `Transection_Amount`, `TrxnID`) VALUES
(4501, 6000, 50000, 6000, 7801),
(4502, 8000, 70000, 7500, 7802),
(4503, 18000, 170000, 16000, 7803);

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE `transection` (
  `TrxnID` int(10) NOT NULL,
  `Trip_income` int(10) NOT NULL,
  `Net_Payable` int(10) DEFAULT NULL,
  `Amount` int(10) DEFAULT NULL,
  `Account_Shifting` varchar(10) DEFAULT NULL,
  `ClientID` int(10) DEFAULT NULL,
  `TripID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`TrxnID`, `Trip_income`, `Net_Payable`, `Amount`, `Account_Shifting`, `ClientID`, `TripID`) VALUES
(7801, 6000, 5000, 5000, '5000', 232303, 8106),
(7802, 11000, 12200, 12200, '12200', 232306, 8102),
(7803, 9000, 9300, 9300, '9300', 232304, 8101),
(7804, 9000, 14000, 14000, '14000', 232306, 8107);

-- --------------------------------------------------------

--
-- Table structure for table `trip_details`
--

CREATE TABLE `trip_details` (
  `TripID` int(10) NOT NULL,
  `Destination` varchar(10) DEFAULT NULL,
  `Fare` int(10) NOT NULL,
  `Rented_Time` int(10) DEFAULT NULL,
  `Fuel_cost` int(10) DEFAULT NULL,
  `CarID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_details`
--

INSERT INTO `trip_details` (`TripID`, `Destination`, `Fare`, `Rented_Time`, `Fuel_cost`, `CarID`) VALUES
(8101, 'Chittagong', 8000, 7, 2500, 102),
(8102, 'Coxs Bazar', 18000, 23, 5500, 106),
(8103, 'Sylhet', 12000, 16, 6000, 107),
(8104, 'Netrokona', 9000, 9, 2500, 104),
(8105, 'Chittagong', 11000, 14, 6000, 109),
(8106, 'Gazipur', 3000, 11, 3000, 105),
(8107, 'Panchagar', 18000, 34, 7000, 110),
(8108, 'Sathkhira', 16000, 22, 5500, 105);

-- --------------------------------------------------------

--
-- Structure for view `alltogether`
--
DROP TABLE IF EXISTS `alltogether`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alltogether`  AS  select `car`.`Car_Model` AS `Car_model`,`driver`.`Driver_Name` AS `driver_name`,`owner`.`Owner_name` AS `Owner_name` from ((`car` join `driver`) join `owner`) where `car`.`CarID` = `driver`.`CarID` and `owner`.`CarID` = `car`.`CarID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`CarID`),
  ADD KEY `ClientID` (`ClientID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`),
  ADD KEY `TripID` (`TripID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DriverID`),
  ADD KEY `CarID` (`CarID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OwnerID`),
  ADD KEY `CarID` (`CarID`),
  ADD KEY `AccountID` (`AccountID`);

--
-- Indexes for table `profit_amount`
--
ALTER TABLE `profit_amount`
  ADD PRIMARY KEY (`AccountID`),
  ADD KEY `TrxnID` (`TrxnID`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
  ADD PRIMARY KEY (`TrxnID`),
  ADD KEY `ClientID` (`ClientID`),
  ADD KEY `TripID` (`TripID`);

--
-- Indexes for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD PRIMARY KEY (`TripID`),
  ADD KEY `CarID` (`CarID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`TripID`) REFERENCES `trip_details` (`TripID`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `car` (`CarID`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `car` (`CarID`),
  ADD CONSTRAINT `owner_ibfk_2` FOREIGN KEY (`AccountID`) REFERENCES `profit_amount` (`AccountID`);

--
-- Constraints for table `profit_amount`
--
ALTER TABLE `profit_amount`
  ADD CONSTRAINT `profit_amount_ibfk_1` FOREIGN KEY (`TrxnID`) REFERENCES `transection` (`TrxnID`);

--
-- Constraints for table `transection`
--
ALTER TABLE `transection`
  ADD CONSTRAINT `transection_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`),
  ADD CONSTRAINT `transection_ibfk_2` FOREIGN KEY (`TripID`) REFERENCES `trip_details` (`TripID`);

--
-- Constraints for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD CONSTRAINT `trip_details_ibfk_1` FOREIGN KEY (`CarID`) REFERENCES `car` (`CarID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
