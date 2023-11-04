-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 04, 2023 at 10:11 AM
-- Server version: 10.11.5-MariaDB-1:10.11.5+maria~ubu2204
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ac_db`
--


-- --------------------------------------------------------

--
-- Table structure for table `ACInstallation`
--

CREATE TABLE `ACInstallation` (
  `ID` int(11) NOT NULL,
  `InstallationDate` date DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Room` varchar(255) DEFAULT NULL,
  `ACModel` varchar(255) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ACInstallation`
--

INSERT INTO `ACInstallation` (`ID`, `InstallationDate`, `Address`, `Room`, `ACModel`, `CustomerID`) VALUES
(1, '2023-01-15', '123 Main St', 'livingroom', 'Fujitsu', 1),
(2, '2023-02-20', '456 Elm St', 'master bedroom', 'Panasonic', 2),
(3, '2023-03-10', '789 Oak St', 'guest bedroom', 'Mitsubishi', 3),
(4, '2023-04-05', '101 Pine St', 'kid bedroom', 'LG', 4),
(5, '2023-05-12', '222 Cedar St', 'livingroom', 'Samsung', 5),
(6, '2023-06-18', '333 Maple St', 'master bedroom', 'Daikin', 6),
(7, '2023-07-25', '444 Birch St', 'guest bedroom', 'Fujitsu', 7),
(8, '2023-08-30', '555 Walnut St', 'kid bedroom', 'Panasonic', 8),
(9, '2023-09-11', '666 Spruce St', 'livingroom', 'Mitsubishi', 9),
(10, '2023-10-22', '777 Redwood St', 'master bedroom', 'LG', 10),
(11, '2023-11-03', '888 Sequoia St', 'guest bedroom', 'Samsung', 11),
(12, '2023-12-14', '999 Cedar St', 'kid bedroom', 'Daikin', 12),
(13, '2024-01-25', '111 Oak St', 'livingroom', 'Fujitsu', 13),
(14, '2024-02-26', '222 Pine St', 'master bedroom', 'Panasonic', 14),
(15, '2024-03-17', '333 Elm St', 'guest bedroom', 'Mitsubishi', 15),
(16, '2024-04-08', '444 Cedar St', 'kid bedroom', 'LG', 16),
(17, '2024-05-19', '555 Maple St', 'livingroom', 'Samsung', 17),
(18, '2024-06-20', '666 Birch St', 'master bedroom', 'Daikin', 18),
(19, '2024-07-21', '777 Walnut St', 'guest bedroom', 'Fujitsu', 19),
(20, '2024-08-22', '888 Redwood St', 'kid bedroom', 'Panasonic', 20),
(21, '2024-09-23', '999 Spruce St', 'livingroom', 'Mitsubishi', 21),
(22, '2024-10-24', '101 Sequoia St', 'master bedroom', 'LG', 22),
(23, '2024-11-25', '202 Oak St', 'guest bedroom', 'Samsung', 23),
(24, '2024-12-26', '303 Pine St', 'kid bedroom', 'Daikin', 24),
(25, '2025-01-27', '404 Cedar St', 'livingroom', 'Fujitsu', 25),
(26, '2025-02-28', '505 Elm St', 'master bedroom', 'Panasonic', 26),
(27, '2025-03-29', '606 Maple St', 'guest bedroom', 'Mitsubishi', 27),
(28, '2025-04-30', '707 Birch St', 'kid bedroom', 'LG', 28),
(29, '2025-05-31', '808 Walnut St', 'livingroom', 'Samsung', 29),
(30, '2025-06-30', '909 Pine St', 'master bedroom', 'Daikin', 30);

-- --------------------------------------------------------

--
-- Table structure for table `ACServices`
--

CREATE TABLE `ACServices` (
  `ID` int(11) NOT NULL,
  `InstallationID` int(11) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `ServiceDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ACServices`
--

INSERT INTO `ACServices` (`ID`, `InstallationID`, `ServiceDate`, `ServiceDescription`) VALUES
(1, 1, '2023-01-16', 'Regular maintenance'),
(2, 2, '2023-02-21', 'Filter replacement'),
(3, 3, '2023-03-11', 'Coolant refill'),
(4, 4, '2023-04-06', 'Unit cleaning'),
(5, 5, '2023-05-13', 'Troubleshooting'),
(6, 6, '2023-06-19', 'Emergency repair'),
(7, 7, '2023-07-26', 'Regular maintenance'),
(8, 8, '2023-08-31', 'Filter replacement'),
(9, 9, '2023-09-12', 'Coolant refill'),
(10, 10, '2023-10-23', 'Unit cleaning'),
(11, 11, '2023-11-04', 'Troubleshooting'),
(12, 12, '2023-12-15', 'Emergency repair'),
(13, 13, '2022-01-26', 'Regular maintenance'),
(14, 14, '2021-02-27', 'Filter replacement'),
(15, 15, '2020-03-18', 'Coolant refill'),
(16, 16, '2021-04-09', 'Unit cleaning'),
(17, 17, '2023-05-20', 'Troubleshooting'),
(18, 18, '2023-06-21', 'Emergency repair'),
(19, 19, '2022-07-22', 'Regular maintenance'),
(20, 20, '2019-08-23', 'Filter replacement'),
(21, 21, '2014-09-24', 'Coolant refill'),
(22, 22, '2012-10-25', 'Unit cleaning'),
(23, 23, '2003-11-26', 'Troubleshooting'),
(24, 24, '2014-12-27', 'Emergency repair'),
(25, 25, '2020-01-28', 'Regular maintenance'),
(26, 26, '2000-02-01', 'Filter replacement'),
(27, 27, '2001-03-30', 'Coolant refill'),
(28, 28, '2005-04-11', 'Unit cleaning'),
(29, 29, '2015-05-30', 'Troubleshooting'),
(30, 30, '2015-06-11', 'Emergency repair');

-- --------------------------------------------------------

--
-- Table structure for table `ACUninstallation`
--

CREATE TABLE `ACUninstallation` (
  `ID` int(11) NOT NULL,
  `InstallationID` int(11) DEFAULT NULL,
  `UninstallationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ACUninstallation`
--

INSERT INTO `ACUninstallation` (`ID`, `InstallationID`, `UninstallationDate`) VALUES
(1, 1, '2023-06-01'),
(2, 2, '2023-07-02'),
(3, 3, '2023-08-03'),
(4, 4, '2023-09-04'),
(5, 5, '2023-10-05'),
(6, 6, '2022-11-06'),
(7, 7, '2013-12-07'),
(8, 8, '2014-01-08'),
(9, 9, '2004-02-09'),
(10, 10, '2021-03-10'),
(11, 11, '2020-04-11'),
(12, 12, '2002-05-12'),
(13, 13, '2012-06-13'),
(14, 14, '2022-07-14'),
(15, 15, '2021-08-15'),
(16, 16, '2020-09-16'),
(17, 17, '2001-10-17'),
(18, 18, '2020-11-18'),
(19, 19, '2019-12-19'),
(20, 20, '2015-01-20'),
(21, 21, '2016-02-21'),
(22, 22, '2005-03-22'),
(23, 23, '2015-04-23'),
(24, 24, '2014-05-24'),
(25, 25, '2011-06-25'),
(26, 26, '2004-07-26'),
(27, 27, '2005-08-27'),
(28, 28, '2015-09-28'),
(29, 29, '2022-10-29'),
(30, 30, '2020-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `FirstName`, `LastName`, `PhoneNumber`, `Email`) VALUES
(1, 'John', 'Doe', '123-456-7890', 'john.doe@gmail.com'),
(2, 'Jane', 'Smith', '987-654-3210', 'jane.smith@gmail.com'),
(3, 'Robert', 'Johnson', '555-123-4567', 'robert.johnson@gmail.com'),
(4, 'Emily', 'Williams', '333-555-7777', 'emily.williams@gmail.com'),
(5, 'Michael', 'Brown', '111-222-3333', 'michael.brown@gmail.com'),
(6, 'Sarah', 'Davis', '444-555-6666', 'sarah.davis@gmail.com'),
(7, 'William', 'Jones', '777-888-9999', 'william.jones@gmail.com'),
(8, 'Jessica', 'Taylor', '222-111-9999', 'jessica.taylor@gmail.com'),
(9, 'Daniel', 'Clark', '555-123-7890', 'daniel.clark@gmail.com'),
(10, 'Linda', 'Martinez', '777-555-3333', 'linda.martinez@gmail.com'),
(11, 'David', 'Miller', '222-888-6666', 'david.miller@gmail.com'),
(12, 'Jennifer', 'Harris', '444-777-1111', 'jennifer.harris@gmail.com'),
(13, 'Charles', 'Young', '123-555-4444', 'charles.young@gmail.com'),
(14, 'Maria', 'Anderson', '333-888-2222', 'maria.anderson@gmail.com'),
(15, 'Michael', 'Gonzalez', '999-888-4444', 'michael.gonzalez@gmail.com'),
(16, 'Susan', 'Brown', '555-777-6666', 'susan.brown@gmail.com'),
(17, 'John', 'Lee', '123-444-8888', 'john.lee@gmail.com'),
(18, 'Paul', 'Hall', '777-666-3333', 'paul.hall@gmail.com'),
(19, 'Dorothy', 'Wright', '222-555-1111', 'dorothy.wright@gmail.com'),
(20, 'James', 'Lopez', '444-333-6666', 'james.lopez@gmail.com'),
(21, 'Mary', 'Hill', '111-222-8888', 'mary.hill@gmail.com'),
(22, 'Robert', 'King', '555-444-3333', 'robert.king@gmail.com'),
(23, 'Patricia', 'Scott', '777-999-6666', 'patricia.scott@gmail.com'),
(24, 'Richard', 'Green', '123-888-5555', 'richard.green@gmail.com'),
(25, 'Sarah', 'Turner', '333-444-1111', 'sarah.turner@gmail.com'),
(26, 'Thomas', 'Baker', '444-222-6666', 'thomas.baker@gmail.com'),
(27, 'Nancy', 'Adams', '555-111-8888', 'nancy.adams@gmail.com'),
(28, 'Daniel', 'Ward', '666-555-3333', 'daniel.ward@gmail.com'),
(29, 'Karen', 'Wood', '777-123-1111', 'karen.wood@gmail.com'),
(30, 'Jeffrey', 'Stewart', '444-666-8888', 'jeffrey.stewart@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `MaterialUsedInInstallation`
--

CREATE TABLE `MaterialUsedInInstallation` (
  `ID` int(11) NOT NULL,
  `InstallationID` int(11) DEFAULT NULL,
  `CopperPipe1Diameter` decimal(5,2) DEFAULT NULL,
  `CopperPipe2Diameter` decimal(5,2) DEFAULT NULL,
  `CopperPipe1Length` int(11) DEFAULT NULL,
  `CopperPipe2Length` int(11) DEFAULT NULL,
  `CommunicationCableLength` int(11) DEFAULT NULL,
  `PowerSupplyCableLength` int(11) DEFAULT NULL,
  `WaterDrainHoseLength` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MaterialUsedInInstallation`
--

INSERT INTO `MaterialUsedInInstallation` (`ID`, `InstallationID`, `CopperPipe1Diameter`, `CopperPipe2Diameter`, `CopperPipe1Length`, `CopperPipe2Length`, `CommunicationCableLength`, `PowerSupplyCableLength`, `WaterDrainHoseLength`) VALUES
(1, 1, '1.50', '2.00', 10, 15, 50, 25, 20),
(2, 2, '2.00', '2.50', 12, 18, 55, 30, 22),
(3, 3, '1.80', '2.20', 11, 16, 60, 28, 18),
(4, 4, '1.70', '2.10', 13, 20, 52, 26, 21),
(5, 5, '2.20', '2.70', 14, 19, 57, 33, 24),
(6, 6, '2.50', '3.00', 15, 22, 62, 35, 25),
(7, 7, '1.60', '2.30', 9, 17, 48, 23, 19),
(8, 8, '1.90', '2.40', 10, 15, 58, 27, 23),
(9, 9, '2.30', '2.80', 11, 16, 63, 29, 26),
(10, 10, '2.60', '3.10', 12, 18, 53, 31, 27),
(11, 11, '1.70', '2.00', 13, 20, 51, 32, 20),
(12, 12, '2.10', '2.30', 14, 19, 54, 34, 22),
(13, 13, '2.40', '2.60', 15, 22, 56, 36, 25),
(14, 14, '1.80', '2.20', 16, 23, 49, 30, 28),
(15, 15, '2.20', '2.70', 17, 24, 61, 37, 29),
(16, 16, '2.70', '3.20', 18, 27, 64, 38, 30),
(17, 17, '1.90', '2.50', 19, 28, 65, 39, 31),
(18, 18, '2.30', '2.90', 20, 30, 66, 40, 32),
(19, 19, '2.80', '3.30', 21, 33, 70, 45, 35),
(20, 20, '2.00', '2.60', 22, 34, 71, 46, 36),
(21, 21, '2.50', '3.00', 23, 37, 67, 42, 33),
(22, 22, '2.10', '2.70', 24, 38, 68, 43, 37),
(23, 23, '2.60', '3.10', 25, 39, 69, 44, 38),
(24, 24, '2.90', '3.40', 26, 40, 72, 48, 40),
(25, 25, '2.20', '2.80', 27, 43, 73, 50, 42),
(26, 26, '2.70', '3.20', 28, 44, 74, 51, 44),
(27, 27, '2.30', '2.90', 29, 45, 75, 53, 46),
(28, 28, '2.80', '3.30', 30, 48, 76, 56, 48),
(29, 29, '2.40', '3.00', 31, 49, 77, 58, 50),
(30, 30, '2.90', '3.40', 32, 50, 78, 60, 52);

-- --------------------------------------------------------

--
-- Table structure for table `PaymentPlans`
--

CREATE TABLE `PaymentPlans` (
  `ID` int(11) NOT NULL,
  `InstallationID` int(11) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `NumberOfInstallments` int(11) DEFAULT NULL,
  `RemainingAmount` decimal(10,2) DEFAULT NULL,
  `InstallmentAmount` decimal(10,2) DEFAULT NULL,
  `DueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PaymentPlans`
--

INSERT INTO `PaymentPlans` (`ID`, `InstallationID`, `TotalAmount`, `NumberOfInstallments`, `RemainingAmount`, `InstallmentAmount`, `DueDate`) VALUES
(1, 1, '800.00', 1, '0.00', '800.00', '2023-02-01'),
(2, 2, '800.00', 2, '600.00', '400.00', '2023-02-01'),
(3, 3, '950.00', 1, '0.00', '950.00', '2023-03-01'),
(4, 4, '400.00', 3, '300.00', '100.00', '2023-04-01'),
(5, 5, '200.00', 1, '0.00', '200.00', '2023-05-01'),
(6, 6, '150.00', 2, '50.00', '75.00', '2023-06-01'),
(7, 7, '1000.00', 1, '0.00', '1000.00', '2023-07-01'),
(8, 8, '200.00', 2, '100.00', '100.00', '2023-08-01'),
(9, 9, '400.00', 1, '0.00', '400.00', '2022-09-01'),
(10, 10, '500.00', 2, '300.00', '200.00', '2021-10-01'),
(11, 11, '800.00', 1, '0.00', '800.00', '2021-11-01'),
(12, 12, '140.00', 2, '70.00', '70.00', '2022-12-01'),
(13, 13, '950.00', 1, '0.00', '950.00', '2023-01-01'),
(14, 14, '200.00', 2, '100.00', '100.00', '2014-02-01'),
(15, 15, '300.00', 1, '0.00', '300.00', '2011-03-01'),
(16, 16, '100.00', 3, '50.00', '33.33', '2004-04-01'),
(17, 17, '200.00', 1, '0.00', '200.00', '2021-05-01'),
(18, 18, '80.00', 2, '40.00', '40.00', '2023-06-01'),
(19, 19, '600.00', 1, '0.00', '600.00', '2022-07-01'),
(20, 20, '200.00', 2, '100.00', '100.00', '2014-08-01'),
(21, 21, '800.00', 1, '0.00', '800.00', '2004-09-01'),
(22, 22, '200.00', 2, '100.00', '100.00', '2021-10-01'),
(23, 23, '400.00', 1, '0.00', '400.00', '2011-11-01'),
(24, 24, '500.00', 2, '300.00', '200.00', '2014-12-01'),
(25, 25, '800.00', 1, '0.00', '800.00', '2020-01-01'),
(26, 26, '140.00', 2, '70.00', '70.00', '2023-02-01'),
(27, 27, '950.00', 1, '0.00', '950.00', '2022-03-01'),
(28, 28, '200.00', 2, '100.00', '100.00', '2021-04-01'),
(29, 29, '300.00', 1, '0.00', '300.00', '2005-05-01'),
(30, 30, '100.00', 3, '50.00', '33.33', '2015-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `Payments`
--

CREATE TABLE `Payments` (
  `ID` int(11) NOT NULL,
  `InstallationID` int(11) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Currency` varchar(3) DEFAULT NULL,
  `PaymentMethod` varchar(20) DEFAULT NULL,
  `InstallmentNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Payments`
--

INSERT INTO `Payments` (`ID`, `InstallationID`, `PaymentDate`, `Amount`, `Currency`, `PaymentMethod`, `InstallmentNumber`) VALUES
(1, 1, '2023-01-15', '200.00', 'EUR', 'Card', 1),
(2, 2, '2023-02-20', '150.00', 'BAM', 'Cash', 3),
(3, 3, '2023-03-10', '200.00', 'EUR', 'Card', 2),
(4, 4, '2023-04-05', '200.00', 'BAM', 'Cash', 1),
(5, 5, '2023-05-12', '150.00', 'EUR', 'Card', 2),
(6, 6, '2023-06-18', '100.00', 'EUR', 'Card', 3),
(7, 7, '2023-07-25', '100.00', 'EUR', 'Card', 3),
(8, 8, '2023-08-30', '150.00', 'BAM', 'Cash', 1),
(9, 9, '2021-09-11', '200.00', 'EUR', 'Card', 1),
(10, 10, '2011-10-22', '200.00', 'BAM', 'Cash', 1),
(11, 11, '2013-11-03', '100.00', 'EUR', 'Card', 3),
(12, 12, '2013-12-14', '100.00', 'EUR', 'Card', 2),
(13, 13, '2004-01-25', '150.00', 'BAM', 'Cash', 3),
(14, 14, '2011-02-26', '200.00', 'EUR', 'Card', 1),
(15, 15, '2021-03-17', '200.00', 'BAM', 'Cash', 1),
(16, 16, '2011-04-08', '100.00', 'EUR', 'Card', 2),
(17, 17, '2010-05-19', '100.00', 'EUR', 'Card', 4),
(18, 18, '2020-06-20', '150.00', 'BAM', 'Cash', 1),
(19, 19, '2014-07-21', '200.00', 'EUR', 'Card', 1),
(20, 20, '2021-08-22', '200.00', 'BAM', 'Cash', 1),
(21, 21, '2011-09-23', '100.00', 'EUR', 'Card', 1),
(22, 22, '2022-10-24', '100.00', 'EUR', 'Card', 4),
(23, 23, '2020-11-25', '150.00', 'BAM', 'Cash', 2),
(24, 24, '2014-12-26', '200.00', 'EUR', 'Card', 1),
(25, 25, '2005-01-27', '200.00', 'BAM', 'Cash', 1),
(26, 26, '2022-02-28', '100.00', 'EUR', 'Card', 1),
(27, 27, '2005-03-29', '100.00', 'EUR', 'Card', 1),
(28, 28, '2022-04-30', '150.00', 'BAM', 'Cash', 1),
(29, 29, '2021-05-31', '200.00', 'EUR', 'Card', 3),
(30, 30, '2015-06-30', '200.00', 'BAM', 'Cash', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Warranty`
--

CREATE TABLE `Warranty` (
  `ID` int(11) NOT NULL,
  `InstallationID` int(11) DEFAULT NULL,
  `WarrantyStartDate` date DEFAULT NULL,
  `WarrantyEndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Warranty`
--

INSERT INTO `Warranty` (`ID`, `InstallationID`, `WarrantyStartDate`, `WarrantyEndDate`) VALUES
(1, 1, '2021-01-15', '2022-01-15'),
(2, 2, '2013-02-20', '2014-02-20'),
(3, 3, '2013-03-10', '2014-03-10'),
(4, 4, '2021-04-05', '2022-04-05'),
(5, 5, '2022-05-12', '2023-05-12'),
(6, 6, '2011-06-18', '2012-06-18'),
(7, 7, '2020-07-25', '2021-07-25'),
(8, 8, '2021-08-30', '2022-08-30'),
(9, 9, '2022-09-11', '2023-09-11'),
(10, 10, '2010-10-22', '2011-10-22'),
(11, 11, '2013-11-03', '2014-11-03'),
(12, 12, '2014-12-14', '2015-12-14'),
(13, 13, '2014-01-25', '2015-01-25'),
(14, 14, '2020-02-26', '2021-02-26'),
(15, 15, '2020-03-17', '2021-03-17'),
(16, 16, '2021-04-08', '2022-04-08'),
(17, 17, '2014-05-19', '2015-05-19'),
(18, 18, '2004-06-20', '2005-06-20'),
(19, 19, '2014-07-21', '2015-07-21'),
(20, 20, '2020-08-22', '2021-08-22'),
(21, 21, '2000-09-23', '2001-09-23'),
(22, 22, '2021-10-24', '2021-10-24'),
(23, 23, '2001-11-25', '2002-11-25'),
(24, 24, '2014-12-26', '2015-12-26'),
(25, 25, '2015-01-27', '2016-01-27'),
(26, 26, '2014-02-28', '2015-02-28'),
(27, 27, '2020-03-29', '2021-03-29'),
(28, 28, '2020-04-30', '2021-04-30'),
(29, 29, '2013-05-31', '2013-05-31'),
(30, 30, '2011-06-30', '2012-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACInstallation`
--
ALTER TABLE `ACInstallation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `ACServices`
--
ALTER TABLE `ACServices`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `InstallationID` (`InstallationID`);

--
-- Indexes for table `ACUninstallation`
--
ALTER TABLE `ACUninstallation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `InstallationID` (`InstallationID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `MaterialUsedInInstallation`
--
ALTER TABLE `MaterialUsedInInstallation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `InstallationID` (`InstallationID`);

--
-- Indexes for table `PaymentPlans`
--
ALTER TABLE `PaymentPlans`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `InstallationID` (`InstallationID`);

--
-- Indexes for table `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `InstallationID` (`InstallationID`);

--
-- Indexes for table `Warranty`
--
ALTER TABLE `Warranty`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `InstallationID` (`InstallationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ACInstallation`
--
ALTER TABLE `ACInstallation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ACServices`
--
ALTER TABLE `ACServices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ACUninstallation`
--
ALTER TABLE `ACUninstallation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `MaterialUsedInInstallation`
--
ALTER TABLE `MaterialUsedInInstallation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `PaymentPlans`
--
ALTER TABLE `PaymentPlans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Payments`
--
ALTER TABLE `Payments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Warranty`
--
ALTER TABLE `Warranty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACInstallation`
--
ALTER TABLE `ACInstallation`
  ADD CONSTRAINT `ACInstallation_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);

--
-- Constraints for table `ACServices`
--
ALTER TABLE `ACServices`
  ADD CONSTRAINT `ACServices_ibfk_1` FOREIGN KEY (`InstallationID`) REFERENCES `ACInstallation` (`ID`);

--
-- Constraints for table `ACUninstallation`
--
ALTER TABLE `ACUninstallation`
  ADD CONSTRAINT `ACUninstallation_ibfk_1` FOREIGN KEY (`InstallationID`) REFERENCES `ACInstallation` (`ID`);

--
-- Constraints for table `MaterialUsedInInstallation`
--
ALTER TABLE `MaterialUsedInInstallation`
  ADD CONSTRAINT `MaterialUsedInInstallation_ibfk_1` FOREIGN KEY (`InstallationID`) REFERENCES `ACInstallation` (`ID`);

--
-- Constraints for table `PaymentPlans`
--
ALTER TABLE `PaymentPlans`
  ADD CONSTRAINT `PaymentPlans_ibfk_1` FOREIGN KEY (`InstallationID`) REFERENCES `ACInstallation` (`ID`);

--
-- Constraints for table `Payments`
--
ALTER TABLE `Payments`
  ADD CONSTRAINT `Payments_ibfk_1` FOREIGN KEY (`InstallationID`) REFERENCES `ACInstallation` (`ID`);

--
-- Constraints for table `Warranty`
--
ALTER TABLE `Warranty`
  ADD CONSTRAINT `Warranty_ibfk_1` FOREIGN KEY (`InstallationID`) REFERENCES `ACInstallation` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
