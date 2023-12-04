-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 04, 2023 at 04:43 PM
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
-- Table structure for table `ac_installation`
--

CREATE TABLE `ac_installation` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `installation_date` date DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac_installation`
--

INSERT INTO `ac_installation` (`id`, `address`, `installation_date`, `model`, `room`, `customer_id`) VALUES
(1, '123 Main St', '2023-01-15', 'Fujitsu', 'livingroom', 1),
(2, '456 Elm St', '2023-02-20', 'Panasonic', 'master bedroom', 2),
(3, '789 Oak St', '2023-03-10', 'Mitsubishi', 'guest bedroom', 3),
(4, '101 Pine St', '2023-04-05', 'LG', 'kid bedroom', 4),
(5, '222 Cedar St', '2023-05-12', 'Samsung', 'livingroom', 5),
(6, '333 Maple St', '2023-06-18', 'Daikin', 'master bedroom', 6),
(7, '444 Birch St', '2023-07-25', 'Fujitsu', 'guest bedroom', 7),
(8, '555 Walnut St', '2023-08-30', 'Panasonic', 'kid bedroom', 8),
(9, '666 Spruce St', '2023-09-11', 'Mitsubishi', 'livingroom', 9),
(10, '777 Redwood St', '2023-10-22', 'LG', 'master bedroom', 10),
(11, '888 Sequoia St', '2023-11-03', 'Samsung', 'guest bedroom', 11),
(12, '999 Cedar St', '2023-12-14', 'Daikin', 'kid bedroom', 12),
(13, '111 Oak St', '2024-01-25', 'Fujitsu', 'livingroom', 13),
(14, '222 Pine St', '2024-02-26', 'Panasonic', 'master bedroom', 14),
(15, '333 Elm St', '2024-03-17', 'Mitsubishi', 'guest bedroom', 15),
(16, '444 Cedar St', '2024-04-08', 'LG', 'kid bedroom', 16),
(17, '555 Maple St', '2024-05-19', 'Samsung', 'livingroom', 17),
(18, '666 Birch St', '2024-06-20', 'Daikin', 'master bedroom', 18),
(19, '777 Walnut St', '2024-07-21', 'Fujitsu', 'guest bedroom', 19),
(20, '888 Redwood St', '2024-08-22', 'Panasonic', 'kid bedroom', 20),
(21, '999 Spruce St', '2024-09-23', 'Mitsubishi', 'livingroom', 21),
(22, '101 Sequoia St', '2024-10-24', 'LG', 'master bedroom', 22),
(23, '202 Oak St', '2024-11-25', 'Samsung', 'guest bedroom', 23),
(24, '303 Pine St', '2024-12-26', 'Daikin', 'kid bedroom', 24),
(25, '404 Cedar St', '2025-01-27', 'Fujitsu', 'livingroom', 25),
(26, '505 Elm St', '2025-02-28', 'Panasonic', 'master bedroom', 26),
(27, '606 Maple St', '2025-03-29', 'Mitsubishi', 'guest bedroom', 27),
(28, '707 Birch St', '2025-04-30', 'LG', 'kid bedroom', 28),
(29, '808 Walnut St', '2025-05-31', 'Samsung', 'livingroom', 29),
(30, '909 Pine St', '2025-06-30', 'Daikin', 'master bedroom', 30);

-- --------------------------------------------------------

--
-- Table structure for table `ac_servicing`
--

CREATE TABLE `ac_servicing` (
  `id` bigint(20) NOT NULL,
  `service_date` date DEFAULT NULL,
  `service_description` varchar(255) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac_servicing`
--

INSERT INTO `ac_servicing` (`id`, `service_date`, `service_description`, `installation_id`) VALUES
(1, '2023-01-16', 'Regular maintenance', 1),
(2, '2023-02-21', 'Filter replacement', 2),
(3, '2023-03-11', 'Coolant refill', 3),
(4, '2023-04-06', 'Unit cleaning', 4),
(5, '2023-05-13', 'Troubleshooting', 5),
(6, '2023-06-19', 'Emergency repair', 6),
(7, '2023-07-26', 'Regular maintenance', 7),
(8, '2023-08-31', 'Filter replacement', 8),
(9, '2023-09-12', 'Coolant refill', 9),
(10, '2023-10-23', 'Unit cleaning', 10),
(11, '2023-11-04', 'Troubleshooting', 11),
(12, '2023-12-15', 'Emergency repair', 12),
(13, '2022-01-26', 'Regular maintenance', 13),
(14, '2021-02-27', 'Filter replacement', 14),
(15, '2020-03-18', 'Coolant refill', 15),
(16, '2021-04-09', 'Unit cleaning', 16),
(17, '2023-05-20', 'Troubleshooting', 17),
(18, '2023-06-21', 'Emergency repair', 18),
(19, '2022-07-22', 'Regular maintenance', 19),
(20, '2019-08-23', 'Filter replacement', 20),
(21, '2014-09-24', 'Coolant refill', 21),
(22, '2012-10-25', 'Unit cleaning', 22),
(23, '2003-11-26', 'Troubleshooting', 23),
(24, '2014-12-27', 'Emergency repair', 24),
(25, '2020-01-28', 'Regular maintenance', 25),
(26, '2000-02-01', 'Filter replacement', 26),
(27, '2001-03-30', 'Coolant refill', 27),
(28, '2005-04-11', 'Unit cleaning', 28),
(29, '2015-05-30', 'Troubleshooting', 29),
(30, '2015-06-11', 'Emergency repair', 30);

-- --------------------------------------------------------

--
-- Table structure for table `ac_uninstallation`
--

CREATE TABLE `ac_uninstallation` (
  `id` bigint(20) NOT NULL,
  `uninstallation_date` date DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac_uninstallation`
--

INSERT INTO `ac_uninstallation` (`id`, `uninstallation_date`, `installation_id`) VALUES
(1, '2023-06-01', 1),
(2, '2023-07-02', 2),
(3, '2023-08-03', 3),
(4, '2023-09-04', 4),
(5, '2023-10-05', 5),
(6, '2022-11-06', 6),
(7, '2013-12-07', 7),
(8, '2014-01-08', 8),
(9, '2004-02-09', 9),
(10, '2021-03-10', 10),
(11, '2020-04-11', 11),
(12, '2002-05-12', 12),
(13, '2012-06-13', 13),
(14, '2022-07-14', 14),
(15, '2021-08-15', 15),
(16, '2020-09-16', 16),
(17, '2001-10-17', 17),
(18, '2020-11-18', 18),
(19, '2019-12-19', 19),
(20, '2015-01-20', 20),
(21, '2016-02-21', 21),
(22, '2005-03-22', 22),
(23, '2015-04-23', 23),
(24, '2014-05-24', 24),
(25, '2011-06-25', 25),
(26, '2004-07-26', 26),
(27, '2005-08-27', 27),
(28, '2015-09-28', 28),
(29, '2022-10-29', 29),
(30, '2020-11-30', 30);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `first_name`, `last_name`, `phone_number`) VALUES
(1, 'john.doe@gmail.com', 'John', 'Doe', '123-456-7890'),
(2, 'jane.smith@gmail.com', 'Jane', 'Smith', '987-654-3210'),
(3, 'robert.johnson@gmail.com', 'Robert', 'Johnson', '555-123-4567'),
(4, 'emily.williams@gmail.com', 'Emily', 'Williams', '333-555-7777'),
(5, 'michael.brown@gmail.com', 'Michael', 'Brown', '111-222-3333'),
(6, 'sarah.davis@gmail.com', 'Sarah', 'Davis', '444-555-6666'),
(7, 'william.jones@gmail.com', 'William', 'Jones', '777-888-9999'),
(8, 'jessica.taylor@gmail.com', 'Jessica', 'Taylor', '222-111-9999'),
(9, 'daniel.clark@gmail.com', 'Daniel', 'Clark', '555-123-7890'),
(10, 'linda.martinez@gmail.com', 'Linda', 'Martinez', '777-555-3333'),
(11, 'david.miller@gmail.com', 'David', 'Miller', '222-888-6666'),
(12, 'jennifer.harris@gmail.com', 'Jennifer', 'Harris', '444-777-1111'),
(13, 'charles.young@gmail.com', 'Charles', 'Young', '123-555-4444'),
(14, 'maria.anderson@gmail.com', 'Maria', 'Anderson', '333-888-2222'),
(15, 'michael.gonzalez@gmail.com', 'Michael', 'Gonzalez', '999-888-4444'),
(16, 'susan.brown@gmail.com', 'Susan', 'Brown', '555-777-6666'),
(17, 'john.lee@gmail.com', 'John', 'Lee', '123-444-8888'),
(18, 'paul.hall@gmail.com', 'Paul', 'Hall', '777-666-3333'),
(19, 'dorothy.wright@gmail.com', 'Dorothy', 'Wright', '222-555-1111'),
(20, 'james.lopez@gmail.com', 'James', 'Lopez', '444-333-6666'),
(21, 'mary.hill@gmail.com', 'Mary', 'Hill', '111-222-8888'),
(22, 'robert.king@gmail.com', 'Robert', 'King', '555-444-3333'),
(23, 'patricia.scott@gmail.com', 'Patricia', 'Scott', '777-999-6666'),
(24, 'richard.green@gmail.com', 'Richard', 'Green', '123-888-5555'),
(25, 'sarah.turner@gmail.com', 'Sarah', 'Turner', '333-444-1111'),
(26, 'thomas.baker@gmail.com', 'Thomas', 'Baker', '444-222-6666'),
(27, 'nancy.adams@gmail.com', 'Nancy', 'Adams', '555-111-8888'),
(28, 'daniel.ward@gmail.com', 'Daniel', 'Ward', '666-555-3333'),
(29, 'karen.wood@gmail.com', 'Karen', 'Wood', '777-123-1111'),
(30, 'jeffrey.stewart@gmail.com', 'Jeffrey', 'Stewart', '444-666-8888');

-- --------------------------------------------------------

--
-- Table structure for table `material_used_in_installation`
--

CREATE TABLE `material_used_in_installation` (
  `id` bigint(20) NOT NULL,
  `communication_cable_length` double DEFAULT NULL,
  `copper_pipe1_diameter` double DEFAULT NULL,
  `copper_pipe1_length` double DEFAULT NULL,
  `copper_pipe2_diameter` double DEFAULT NULL,
  `copper_pipe2_length` double DEFAULT NULL,
  `power_supply_cable_length` double DEFAULT NULL,
  `water_drain_hose` double DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL,
  `water_drain_hose_length` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_used_in_installation`
--

INSERT INTO `material_used_in_installation` (`id`, `communication_cable_length`, `copper_pipe1_diameter`, `copper_pipe1_length`, `copper_pipe2_diameter`, `copper_pipe2_length`, `power_supply_cable_length`, `water_drain_hose`, `installation_id`, `water_drain_hose_length`) VALUES
(1, 50, 1.5, 10, 2, 15, 25, NULL, 1, 20),
(2, 55, 2, 12, 2.5, 18, 30, NULL, 2, 22),
(3, 60, 1.8, 11, 2.2, 16, 28, NULL, 3, 18),
(4, 52, 1.7, 13, 2.1, 20, 26, NULL, 4, 21),
(5, 57, 2.2, 14, 2.7, 19, 33, NULL, 5, 24),
(6, 62, 2.5, 15, 3, 22, 35, NULL, 6, 25),
(7, 48, 1.6, 9, 2.3, 17, 23, NULL, 7, 19),
(8, 58, 1.9, 10, 2.4, 15, 27, NULL, 8, 23),
(9, 63, 2.3, 11, 2.8, 16, 29, NULL, 9, 26),
(10, 53, 2.6, 12, 3.1, 18, 31, NULL, 10, 27),
(11, 51, 1.7, 13, 2, 20, 32, NULL, 11, 20),
(12, 54, 2.1, 14, 2.3, 19, 34, NULL, 12, 22),
(13, 56, 2.4, 15, 2.6, 22, 36, NULL, 13, 25),
(14, 49, 1.8, 16, 2.2, 23, 30, NULL, 14, 28),
(15, 61, 2.2, 17, 2.7, 24, 37, NULL, 15, 29),
(16, 64, 2.7, 18, 3.2, 27, 38, NULL, 16, 30),
(17, 65, 1.9, 19, 2.5, 28, 39, NULL, 17, 31),
(18, 66, 2.3, 20, 2.9, 30, 40, NULL, 18, 32),
(19, 70, 2.8, 21, 3.3, 33, 45, NULL, 19, 35),
(20, 71, 2, 22, 2.6, 34, 46, NULL, 20, 36),
(21, 67, 2.5, 23, 3, 37, 42, NULL, 21, 33),
(22, 68, 2.1, 24, 2.7, 38, 43, NULL, 22, 37),
(23, 69, 2.6, 25, 3.1, 39, 44, NULL, 23, 38),
(24, 72, 2.9, 26, 3.4, 40, 48, NULL, 24, 40),
(25, 73, 2.2, 27, 2.8, 43, 50, NULL, 25, 42),
(26, 74, 2.7, 28, 3.2, 44, 51, NULL, 26, 44),
(27, 75, 2.3, 29, 2.9, 45, 53, NULL, 27, 46),
(28, 76, 2.8, 30, 3.3, 48, 56, NULL, 28, 48),
(29, 77, 2.4, 31, 3, 49, 58, NULL, 29, 50),
(30, 78, 2.9, 32, 3.4, 50, 60, NULL, 30, 52);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `installment_number` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `currency`, `installment_number`, `payment_date`, `payment_method`, `installation_id`) VALUES
(1, '200.00', 'EUR', 1, '2023-01-15', 'Card', 1),
(2, '150.00', 'BAM', 3, '2023-02-20', 'Cash', 2),
(3, '200.00', 'EUR', 2, '2023-03-10', 'Card', 3),
(4, '200.00', 'BAM', 1, '2023-04-05', 'Cash', 4),
(5, '150.00', 'EUR', 2, '2023-05-12', 'Card', 5),
(6, '100.00', 'EUR', 3, '2023-06-18', 'Card', 6),
(7, '100.00', 'EUR', 3, '2023-07-25', 'Card', 7),
(8, '150.00', 'BAM', 1, '2023-08-30', 'Cash', 8),
(9, '200.00', 'EUR', 1, '2021-09-11', 'Card', 9),
(10, '200.00', 'BAM', 1, '2011-10-22', 'Cash', 10),
(11, '100.00', 'EUR', 3, '2013-11-03', 'Card', 11),
(12, '100.00', 'EUR', 2, '2013-12-14', 'Card', 12),
(13, '150.00', 'BAM', 3, '2004-01-25', 'Cash', 13),
(14, '200.00', 'EUR', 1, '2011-02-26', 'Card', 14),
(15, '200.00', 'BAM', 1, '2021-03-17', 'Cash', 15),
(16, '100.00', 'EUR', 2, '2011-04-08', 'Card', 16),
(17, '100.00', 'EUR', 4, '2010-05-19', 'Card', 17),
(18, '150.00', 'BAM', 1, '2020-06-20', 'Cash', 18),
(19, '200.00', 'EUR', 1, '2014-07-21', 'Card', 19),
(20, '200.00', 'BAM', 1, '2021-08-22', 'Cash', 20),
(21, '100.00', 'EUR', 1, '2011-09-23', 'Card', 21),
(22, '100.00', 'EUR', 4, '2022-10-24', 'Card', 22),
(23, '150.00', 'BAM', 2, '2020-11-25', 'Cash', 23),
(24, '200.00', 'EUR', 1, '2014-12-26', 'Card', 24),
(25, '200.00', 'BAM', 1, '2005-01-27', 'Cash', 25),
(26, '100.00', 'EUR', 1, '2022-02-28', 'Card', 26),
(27, '100.00', 'EUR', 1, '2005-03-29', 'Card', 27),
(28, '150.00', 'BAM', 1, '2022-04-30', 'Cash', 28),
(29, '200.00', 'EUR', 3, '2021-05-31', 'Card', 29),
(30, '200.00', 'BAM', 1, '2015-06-30', 'Cash', 30);

-- --------------------------------------------------------

--
-- Table structure for table `payment_plan`
--

CREATE TABLE `payment_plan` (
  `id` bigint(20) NOT NULL,
  `due_date` date DEFAULT NULL,
  `installment_amount` int(11) DEFAULT NULL,
  `number_of_installments` int(11) DEFAULT NULL,
  `remaining_amount` decimal(38,2) DEFAULT NULL,
  `total_amount` decimal(38,2) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_plan`
--

INSERT INTO `payment_plan` (`id`, `due_date`, `installment_amount`, `number_of_installments`, `remaining_amount`, `total_amount`, `installation_id`) VALUES
(1, '2023-02-01', 800, 1, '0.00', '800.00', 1),
(2, '2023-02-01', 400, 2, '600.00', '800.00', 2),
(3, '2023-03-01', 950, 1, '0.00', '950.00', 3),
(4, '2023-04-01', 100, 3, '300.00', '400.00', 4),
(5, '2023-05-01', 200, 1, '0.00', '200.00', 5),
(6, '2023-06-01', 75, 2, '50.00', '150.00', 6),
(7, '2023-07-01', 1000, 1, '0.00', '1000.00', 7),
(8, '2023-08-01', 100, 2, '100.00', '200.00', 8),
(9, '2022-09-01', 400, 1, '0.00', '400.00', 9),
(10, '2021-10-01', 200, 2, '300.00', '500.00', 10),
(11, '2021-11-01', 800, 1, '0.00', '800.00', 11),
(12, '2022-12-01', 70, 2, '70.00', '140.00', 12),
(13, '2023-01-01', 950, 1, '0.00', '950.00', 13),
(14, '2014-02-01', 100, 2, '100.00', '200.00', 14),
(15, '2011-03-01', 300, 1, '0.00', '300.00', 15),
(16, '2004-04-01', 33, 3, '50.00', '100.00', 16),
(17, '2021-05-01', 200, 1, '0.00', '200.00', 17),
(18, '2023-06-01', 40, 2, '40.00', '80.00', 18),
(19, '2022-07-01', 600, 1, '0.00', '600.00', 19),
(20, '2014-08-01', 100, 2, '100.00', '200.00', 20),
(21, '2004-09-01', 800, 1, '0.00', '800.00', 21),
(22, '2021-10-01', 100, 2, '100.00', '200.00', 22),
(23, '2011-11-01', 400, 1, '0.00', '400.00', 23),
(24, '2014-12-01', 200, 2, '300.00', '500.00', 24),
(25, '2020-01-01', 800, 1, '0.00', '800.00', 25),
(26, '2023-02-01', 70, 2, '70.00', '140.00', 26),
(27, '2022-03-01', 950, 1, '0.00', '950.00', 27),
(28, '2021-04-01', 100, 2, '100.00', '200.00', 28),
(29, '2005-05-01', 300, 1, '0.00', '300.00', 29),
(30, '2015-06-01', 33, 3, '50.00', '100.00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `warranty`
--

CREATE TABLE `warranty` (
  `id` bigint(20) NOT NULL,
  `warranty_end_date` date DEFAULT NULL,
  `warranty_start_date` date DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warranty`
--

INSERT INTO `warranty` (`id`, `warranty_end_date`, `warranty_start_date`, `installation_id`) VALUES
(1, '2022-01-15', '2021-01-15', 1),
(2, '2014-02-20', '2013-02-20', 2),
(3, '2014-03-10', '2013-03-10', 3),
(4, '2022-04-05', '2021-04-05', 4),
(5, '2023-05-12', '2022-05-12', 5),
(6, '2012-06-18', '2011-06-18', 6),
(7, '2021-07-25', '2020-07-25', 7),
(8, '2022-08-30', '2021-08-30', 8),
(9, '2023-09-11', '2022-09-11', 9),
(10, '2011-10-22', '2010-10-22', 10),
(11, '2014-11-03', '2013-11-03', 11),
(12, '2015-12-14', '2014-12-14', 12),
(13, '2015-01-25', '2014-01-25', 13),
(14, '2021-02-26', '2020-02-26', 14),
(15, '2021-03-17', '2020-03-17', 15),
(16, '2022-04-08', '2021-04-08', 16),
(17, '2015-05-19', '2014-05-19', 17),
(18, '2005-06-20', '2004-06-20', 18),
(19, '2015-07-21', '2014-07-21', 19),
(20, '2021-08-22', '2020-08-22', 20),
(21, '2001-09-23', '2000-09-23', 21),
(22, '2021-10-24', '2021-10-24', 22),
(23, '2002-11-25', '2001-11-25', 23),
(24, '2015-12-26', '2014-12-26', 24),
(25, '2016-01-27', '2015-01-27', 25),
(26, '2015-02-28', '2014-02-28', 26),
(27, '2021-03-29', '2020-03-29', 27),
(28, '2021-04-30', '2020-04-30', 28),
(29, '2013-05-31', '2013-05-31', 29),
(30, '2012-06-30', '2011-06-30', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_installation`
--
ALTER TABLE `ac_installation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc3c7ic8lc1g3wertkhhvgkrjh` (`customer_id`);

--
-- Indexes for table `ac_servicing`
--
ALTER TABLE `ac_servicing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj3rml81njowfat4msj02eeyo` (`installation_id`);

--
-- Indexes for table `ac_uninstallation`
--
ALTER TABLE `ac_uninstallation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_h2yu875w3eqa8dd8r6s0hwxcj` (`installation_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_used_in_installation`
--
ALTER TABLE `material_used_in_installation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_f6u7ks7rkq6yiaww0vrl3g6p4` (`installation_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlxx8ch71jsniorwckrl81bbwg` (`installation_id`);

--
-- Indexes for table `payment_plan`
--
ALTER TABLE `payment_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKmara3hoixtyye73pdhsxs3ybd` (`installation_id`);

--
-- Indexes for table `warranty`
--
ALTER TABLE `warranty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_hqog40vq7e3te3txb9sypb5cx` (`installation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_installation`
--
ALTER TABLE `ac_installation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ac_servicing`
--
ALTER TABLE `ac_servicing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ac_uninstallation`
--
ALTER TABLE `ac_uninstallation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `material_used_in_installation`
--
ALTER TABLE `material_used_in_installation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment_plan`
--
ALTER TABLE `payment_plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `warranty`
--
ALTER TABLE `warranty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ac_installation`
--
ALTER TABLE `ac_installation`
  ADD CONSTRAINT `FKc3c7ic8lc1g3wertkhhvgkrjh` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `ac_servicing`
--
ALTER TABLE `ac_servicing`
  ADD CONSTRAINT `FKj3rml81njowfat4msj02eeyo` FOREIGN KEY (`installation_id`) REFERENCES `ac_installation` (`id`);

--
-- Constraints for table `ac_uninstallation`
--
ALTER TABLE `ac_uninstallation`
  ADD CONSTRAINT `FKkn9hhjh110v6ojf1ddpuv8ql2` FOREIGN KEY (`installation_id`) REFERENCES `ac_installation` (`id`);

--
-- Constraints for table `material_used_in_installation`
--
ALTER TABLE `material_used_in_installation`
  ADD CONSTRAINT `FK9kw3b0w03qhygboot2r4x4a2w` FOREIGN KEY (`installation_id`) REFERENCES `ac_installation` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FKlxx8ch71jsniorwckrl81bbwg` FOREIGN KEY (`installation_id`) REFERENCES `ac_installation` (`id`);

--
-- Constraints for table `payment_plan`
--
ALTER TABLE `payment_plan`
  ADD CONSTRAINT `FKmara3hoixtyye73pdhsxs3ybd` FOREIGN KEY (`installation_id`) REFERENCES `ac_installation` (`id`);

--
-- Constraints for table `warranty`
--
ALTER TABLE `warranty`
  ADD CONSTRAINT `FKf03li8si81x8ll08nx0f1jgvt` FOREIGN KEY (`installation_id`) REFERENCES `ac_installation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
