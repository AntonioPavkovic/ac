-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 16, 2024 at 09:27 PM
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
-- Table structure for table `installation`
--

CREATE TABLE `installation` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `installation_date_time` datetime(6) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `installation`
--

INSERT INTO `installation` (`id`, `address`, `installation_date_time`, `model`, `room`, `customer_id`) VALUES
(1, '123 Main St', '2023-01-15 12:17:00.000000', 'Fujitsu', 'livingroom', 1),
(2, '456 Elm St', '2023-02-20 21:32:00.000000', 'Panasonic', 'master bedroom', 2),
(3, '789 Oak St', '2023-03-10 00:28:00.000000', 'Mitsubishi', 'guest bedroom', 3),
(4, '101 Pine St', '2023-04-05 07:08:00.000000', 'LG', 'kid bedroom', 4),
(5, '222 Cedar St', '2023-05-12 18:30:00.000000', 'Samsung', 'livingroom', 5),
(6, '333 Maple St', '2023-06-18 03:17:00.000000', 'Daikin', 'master bedroom', 6),
(7, '444 Birch St', '2023-07-25 00:08:00.000000', 'Fujitsu', 'guest bedroom', 7),
(8, '555 Walnut St', '2023-08-30 16:04:00.000000', 'Panasonic', 'kid bedroom', 8),
(9, '666 Spruce St', '2023-09-11 05:59:00.000000', 'Mitsubishi', 'livingroom', 9),
(10, '777 Redwood St', '2023-10-22 05:08:00.000000', 'LG', 'master bedroom', 10),
(11, '888 Sequoia St', '2023-11-03 01:49:00.000000', 'Samsung', 'guest bedroom', 11),
(12, '999 Cedar St', '2023-12-14 23:23:00.000000', 'Daikin', 'kid bedroom', 12),
(13, '111 Oak St', '2024-01-25 00:00:00.000000', 'Fujitsu', 'livingroom', 13),
(14, '222 Pine St', '2024-02-26 22:42:00.000000', 'Panasonic', 'master bedroom', 14),
(15, '333 Elm St', '2024-03-17 17:26:00.000000', 'Mitsubishi', 'guest bedroom', 15),
(16, '444 Cedar St', '2024-04-08 02:05:00.000000', 'LG', 'kid bedroom', 16),
(17, '555 Maple St', '2024-05-19 04:38:00.000000', 'Samsung', 'livingroom', 17),
(18, '666 Birch St', '2024-06-20 15:16:00.000000', 'Daikin', 'master bedroom', 18),
(19, '777 Walnut St', '2024-07-21 10:22:00.000000', 'Fujitsu', 'guest bedroom', 19),
(20, '888 Redwood St', '2024-08-22 13:40:00.000000', 'Panasonic', 'kid bedroom', 20),
(21, '999 Spruce St', '2024-09-23 17:35:00.000000', 'Mitsubishi', 'livingroom', 21),
(22, '101 Sequoia St', '2024-10-24 18:10:00.000000', 'LG', 'master bedroom', 22),
(23, '202 Oak St', '2024-11-25 11:53:00.000000', 'Samsung', 'guest bedroom', 23),
(24, '303 Pine St', '2024-12-26 23:15:00.000000', 'Daikin', 'kid bedroom', 24),
(25, '404 Cedar St', '2025-01-27 07:53:00.000000', 'Fujitsu', 'livingroom', 25),
(26, '505 Elm St', '2025-02-28 11:37:00.000000', 'Panasonic', 'master bedroom', 26),
(27, '606 Maple St', '2025-03-29 18:59:00.000000', 'Mitsubishi', 'guest bedroom', 27),
(28, '707 Birch St', '2025-04-30 15:15:00.000000', 'LG', 'kid bedroom', 28),
(29, '808 Walnut St', '2025-05-31 07:53:00.000000', 'Samsung', 'livingroom', 29),
(30, '909 Pine St', '2025-06-30 10:36:00.000000', 'Daikin', 'master bedroom', 30);

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
  `water_drain_hose_length` double DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_used_in_installation`
--

INSERT INTO `material_used_in_installation` (`id`, `communication_cable_length`, `copper_pipe1_diameter`, `copper_pipe1_length`, `copper_pipe2_diameter`, `copper_pipe2_length`, `power_supply_cable_length`, `water_drain_hose_length`, `installation_id`) VALUES
(1, 50, 1.5, 10, 2, 15, 25, 20, 1),
(2, 55, 2, 12, 2.5, 18, 30, 22, 2),
(3, 60, 1.8, 11, 2.2, 16, 28, 18, 3),
(4, 52, 1.7, 13, 2.1, 20, 26, 21, 4),
(5, 57, 2.2, 14, 2.7, 19, 33, 24, 5),
(6, 62, 2.5, 15, 3, 22, 35, 25, 6),
(7, 48, 1.6, 9, 2.3, 17, 23, 19, 7),
(8, 58, 1.9, 10, 2.4, 15, 27, 23, 8),
(9, 63, 2.3, 11, 2.8, 16, 29, 26, 9),
(10, 53, 2.6, 12, 3.1, 18, 31, 27, 10),
(11, 51, 1.7, 13, 2, 20, 32, 20, 11),
(12, 54, 2.1, 14, 2.3, 19, 34, 22, 12),
(13, 56, 2.4, 15, 2.6, 22, 36, 25, 13),
(14, 49, 1.8, 16, 2.2, 23, 30, 28, 14),
(15, 61, 2.2, 17, 2.7, 24, 37, 29, 15),
(16, 64, 2.7, 18, 3.2, 27, 38, 30, 16),
(17, 65, 1.9, 19, 2.5, 28, 39, 31, 17),
(18, 66, 2.3, 20, 2.9, 30, 40, 32, 18),
(19, 70, 2.8, 21, 3.3, 33, 45, 35, 19),
(20, 71, 2, 22, 2.6, 34, 46, 36, 20),
(21, 67, 2.5, 23, 3, 37, 42, 33, 21),
(22, 68, 2.1, 24, 2.7, 38, 43, 37, 22),
(23, 69, 2.6, 25, 3.1, 39, 44, 38, 23),
(24, 72, 2.9, 26, 3.4, 40, 48, 40, 24),
(25, 73, 2.2, 27, 2.8, 43, 50, 42, 25),
(26, 74, 2.7, 28, 3.2, 44, 51, 44, 26),
(27, 75, 2.3, 29, 2.9, 45, 53, 46, 27),
(28, 76, 2.8, 30, 3.3, 48, 56, 48, 28),
(29, 77, 2.4, 31, 3, 49, 58, 50, 29),
(30, 78, 2.9, 32, 3.4, 50, 60, 52, 30);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `installment_number` int(11) DEFAULT NULL,
  `payment_date_time` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `currency`, `installment_number`, `payment_date_time`, `payment_method`, `installation_id`) VALUES
(1, '200.00', 'EUR', 1, '2023-01-15 15:56:00.000000', 'Card', 1),
(2, '150.00', 'BAM', 3, '2023-02-20 17:47:00.000000', 'Cash', 2),
(3, '200.00', 'EUR', 2, '2023-03-10 18:28:00.000000', 'Card', 3),
(4, '200.00', 'BAM', 1, '2023-04-05 02:00:00.000000', 'Cash', 4),
(5, '150.00', 'EUR', 2, '2023-05-12 19:57:00.000000', 'Card', 5),
(6, '100.00', 'EUR', 3, '2023-06-18 08:59:00.000000', 'Card', 6),
(7, '100.00', 'EUR', 3, '2023-07-25 20:19:00.000000', 'Card', 7),
(8, '150.00', 'BAM', 1, '2023-08-30 00:07:00.000000', 'Cash', 8),
(9, '200.00', 'EUR', 1, '2021-09-11 13:28:00.000000', 'Card', 9),
(10, '200.00', 'BAM', 1, '2011-10-22 16:58:00.000000', 'Cash', 10),
(11, '100.00', 'EUR', 3, '2013-11-03 20:16:00.000000', 'Card', 11),
(12, '100.00', 'EUR', 2, '2013-12-14 20:21:00.000000', 'Card', 12),
(13, '150.00', 'BAM', 3, '2004-01-25 06:20:00.000000', 'Cash', 13),
(14, '200.00', 'EUR', 1, '2011-02-26 21:23:00.000000', 'Card', 14),
(15, '200.00', 'BAM', 1, '2021-03-17 06:11:00.000000', 'Cash', 15),
(16, '100.00', 'EUR', 2, '2011-04-08 02:02:00.000000', 'Card', 16),
(17, '100.00', 'EUR', 4, '2010-05-19 19:01:00.000000', 'Card', 17),
(18, '150.00', 'BAM', 1, '2020-06-20 15:10:00.000000', 'Cash', 18),
(19, '200.00', 'EUR', 1, '2014-07-21 22:04:00.000000', 'Card', 19),
(20, '200.00', 'BAM', 1, '2021-08-22 14:52:00.000000', 'Cash', 20),
(21, '100.00', 'EUR', 1, '2011-09-23 12:56:00.000000', 'Card', 21),
(22, '100.00', 'EUR', 4, '2022-10-24 04:04:00.000000', 'Card', 22),
(23, '150.00', 'BAM', 2, '2020-11-25 20:02:00.000000', 'Cash', 23),
(24, '200.00', 'EUR', 1, '2014-12-26 14:56:00.000000', 'Card', 24),
(25, '200.00', 'BAM', 1, '2005-01-27 21:41:00.000000', 'Cash', 25),
(26, '100.00', 'EUR', 1, '2022-02-28 17:39:00.000000', 'Card', 26),
(27, '100.00', 'EUR', 1, '2005-03-29 00:13:00.000000', 'Card', 27),
(28, '150.00', 'BAM', 1, '2022-04-30 00:26:00.000000', 'Cash', 28),
(29, '200.00', 'EUR', 3, '2021-05-31 03:22:00.000000', 'Card', 29),
(30, '200.00', 'BAM', 1, '2015-06-30 11:12:00.000000', 'Cash', 30);

-- --------------------------------------------------------

--
-- Table structure for table `payment_plan`
--

CREATE TABLE `payment_plan` (
  `id` bigint(20) NOT NULL,
  `due_date_time` datetime(6) DEFAULT NULL,
  `installment_amount` int(11) DEFAULT NULL,
  `number_of_installments` int(11) DEFAULT NULL,
  `remaining_amount` decimal(38,2) DEFAULT NULL,
  `total_amount` decimal(38,2) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_plan`
--

INSERT INTO `payment_plan` (`id`, `due_date_time`, `installment_amount`, `number_of_installments`, `remaining_amount`, `total_amount`, `installation_id`) VALUES
(1, '2023-02-01 13:25:00.000000', 800, 1, '0.00', '800.00', 1),
(2, '2023-02-01 08:28:00.000000', 400, 2, '600.00', '800.00', 2),
(3, '2023-03-01 08:15:00.000000', 950, 1, '0.00', '950.00', 3),
(4, '2023-04-01 07:43:00.000000', 100, 3, '300.00', '400.00', 4),
(5, '2023-05-01 16:22:00.000000', 200, 1, '0.00', '200.00', 5),
(6, '2023-06-01 17:29:00.000000', 75, 2, '50.00', '150.00', 6),
(7, '2023-07-01 07:08:00.000000', 1000, 1, '0.00', '1000.00', 7),
(8, '2023-08-01 16:05:00.000000', 100, 2, '100.00', '200.00', 8),
(9, '2022-09-01 08:31:00.000000', 400, 1, '0.00', '400.00', 9),
(10, '2021-10-01 13:10:00.000000', 200, 2, '300.00', '500.00', 10),
(11, '2021-11-01 05:37:00.000000', 800, 1, '0.00', '800.00', 11),
(12, '2022-12-01 10:17:00.000000', 70, 2, '70.00', '140.00', 12),
(13, '2023-01-01 03:54:00.000000', 950, 1, '0.00', '950.00', 13),
(14, '2014-02-01 01:31:00.000000', 100, 2, '100.00', '200.00', 14),
(15, '2011-03-01 12:56:00.000000', 300, 1, '0.00', '300.00', 15),
(16, '2004-04-01 04:12:00.000000', 33, 3, '50.00', '100.00', 16),
(17, '2021-05-01 09:20:00.000000', 200, 1, '0.00', '200.00', 17),
(18, '2023-06-01 12:31:00.000000', 40, 2, '40.00', '80.00', 18),
(19, '2022-07-01 02:55:00.000000', 600, 1, '0.00', '600.00', 19),
(20, '2014-08-01 08:53:00.000000', 100, 2, '100.00', '200.00', 20),
(21, '2004-09-01 10:34:00.000000', 800, 1, '0.00', '800.00', 21),
(22, '2021-10-01 12:51:00.000000', 100, 2, '100.00', '200.00', 22),
(23, '2011-11-01 17:03:00.000000', 400, 1, '0.00', '400.00', 23),
(24, '2014-12-01 02:23:00.000000', 200, 2, '300.00', '500.00', 24),
(25, '2020-01-01 15:57:00.000000', 800, 1, '0.00', '800.00', 25),
(26, '2023-02-01 22:47:00.000000', 70, 2, '70.00', '140.00', 26),
(27, '2022-03-01 02:14:00.000000', 950, 1, '0.00', '950.00', 27),
(28, '2021-04-01 21:38:00.000000', 100, 2, '100.00', '200.00', 28),
(29, '2005-05-01 14:06:00.000000', 300, 1, '0.00', '300.00', 29),
(30, '2015-06-01 17:17:00.000000', 33, 3, '50.00', '100.00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `servicing`
--

CREATE TABLE `servicing` (
  `id` bigint(20) NOT NULL,
  `service_date_time` datetime(6) DEFAULT NULL,
  `service_description` varchar(255) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicing`
--

INSERT INTO `servicing` (`id`, `service_date_time`, `service_description`, `installation_id`) VALUES
(1, '2023-01-16 02:39:00.000000', 'Regular maintenance', 1),
(2, '2023-02-21 23:52:00.000000', 'Filter replacement', 2),
(3, '2023-03-11 11:47:00.000000', 'Coolant refill', 3),
(4, '2023-04-06 11:02:00.000000', 'Unit cleaning', 4),
(5, '2023-05-13 18:43:00.000000', 'Troubleshooting', 5),
(6, '2023-06-19 07:27:00.000000', 'Emergency repair', 6),
(7, '2023-07-26 06:02:00.000000', 'Regular maintenance', 7),
(8, '2023-08-31 08:39:00.000000', 'Filter replacement', 8),
(9, '2023-09-12 04:03:00.000000', 'Coolant refill', 9),
(10, '2023-10-23 15:05:00.000000', 'Unit cleaning', 10),
(11, '2023-11-04 12:14:00.000000', 'Troubleshooting', 11),
(12, '2023-12-15 16:46:00.000000', 'Emergency repair', 12),
(13, '2022-01-26 18:27:00.000000', 'Regular maintenance', 13),
(14, '2021-02-27 00:41:00.000000', 'Filter replacement', 14),
(15, '2020-03-18 10:07:00.000000', 'Coolant refill', 15),
(16, '2021-04-09 06:05:00.000000', 'Unit cleaning', 16),
(17, '2023-05-20 13:33:00.000000', 'Troubleshooting', 17),
(18, '2023-06-21 01:39:00.000000', 'Emergency repair', 18),
(19, '2022-07-22 03:39:00.000000', 'Regular maintenance', 19),
(20, '2019-08-23 22:38:00.000000', 'Filter replacement', 20),
(21, '2014-09-24 10:11:00.000000', 'Coolant refill', 21),
(22, '2012-10-25 15:44:00.000000', 'Unit cleaning', 22),
(23, '2003-11-26 18:34:00.000000', 'Troubleshooting', 23),
(24, '2014-12-27 13:11:00.000000', 'Emergency repair', 24),
(25, '2020-01-28 04:20:00.000000', 'Regular maintenance', 25),
(26, '2000-02-01 03:42:00.000000', 'Filter replacement', 26),
(27, '2001-03-30 02:23:00.000000', 'Coolant refill', 27),
(28, '2005-04-11 14:56:00.000000', 'Unit cleaning', 28),
(29, '2015-05-30 20:26:00.000000', 'Troubleshooting', 29),
(30, '2015-06-11 14:48:00.000000', 'Emergency repair', 30);

-- --------------------------------------------------------

--
-- Table structure for table `uninstallation`
--

CREATE TABLE `uninstallation` (
  `id` bigint(20) NOT NULL,
  `uninstallation_date_time` datetime(6) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uninstallation`
--

INSERT INTO `uninstallation` (`id`, `uninstallation_date_time`, `installation_id`) VALUES
(1, '2023-06-01 00:26:00.000000', 1),
(2, '2023-07-02 03:19:00.000000', 2),
(3, '2023-08-03 06:17:00.000000', 3),
(4, '2023-09-04 17:45:00.000000', 4),
(5, '2023-10-05 13:38:00.000000', 5),
(6, '2022-11-06 11:28:00.000000', 6),
(7, '2013-12-07 21:06:00.000000', 7),
(8, '2014-01-08 19:49:00.000000', 8),
(9, '2004-02-09 15:46:00.000000', 9),
(10, '2021-03-10 22:16:00.000000', 10),
(11, '2020-04-11 15:17:00.000000', 11),
(12, '2002-05-12 14:09:00.000000', 12),
(13, '2012-06-13 23:22:00.000000', 13),
(14, '2022-07-14 22:36:00.000000', 14),
(15, '2021-08-15 05:20:00.000000', 15),
(16, '2020-09-16 00:06:00.000000', 16),
(17, '2001-10-17 10:49:00.000000', 17),
(18, '2020-11-18 19:36:00.000000', 18),
(19, '2019-12-19 15:18:00.000000', 19),
(20, '2015-01-20 15:13:00.000000', 20),
(21, '2016-02-21 06:40:00.000000', 21),
(22, '2005-03-22 13:45:00.000000', 22),
(23, '2015-04-23 03:24:00.000000', 23),
(24, '2014-05-24 15:57:00.000000', 24),
(25, '2011-06-25 20:22:00.000000', 25),
(26, '2004-07-26 08:33:00.000000', 26),
(27, '2005-08-27 19:22:00.000000', 27),
(28, '2015-09-28 09:55:00.000000', 28),
(29, '2022-10-29 09:15:00.000000', 29),
(30, '2020-11-30 01:33:00.000000', 30);

-- --------------------------------------------------------

--
-- Table structure for table `warranty`
--

CREATE TABLE `warranty` (
  `id` bigint(20) NOT NULL,
  `warranty_end_date_time` datetime(6) DEFAULT NULL,
  `warranty_start_date_time` datetime(6) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warranty`
--

INSERT INTO `warranty` (`id`, `warranty_end_date_time`, `warranty_start_date_time`, `installation_id`) VALUES
(1, '2012-06-01 12:26:00.000000', '2011-06-01 08:45:00.000000', 1),
(2, '2003-07-02 03:19:00.000000', '2002-07-02 14:30:00.000000', 2),
(3, '2014-03-10 09:15:00.000000', '2013-03-10 10:30:00.000000', 3),
(4, '2022-04-05 18:45:00.000000', '2021-04-05 15:20:00.000000', 4),
(5, '2023-05-12 23:30:00.000000', '2022-05-12 17:40:00.000000', 5),
(6, '2012-06-18 09:30:00.000000', '2011-06-18 20:20:00.000000', 6),
(7, '2021-07-25 16:10:00.000000', '2020-07-25 12:45:00.000000', 7),
(8, '2022-08-30 13:45:00.000000', '2021-08-30 11:00:00.000000', 8),
(9, '2023-09-11 20:00:00.000000', '2022-09-11 18:30:00.000000', 9),
(10, '2011-10-22 03:40:00.000000', '2010-10-22 07:15:00.000000', 10),
(11, '2014-11-03 14:25:00.000000', '2013-11-03 16:50:00.000000', 11),
(12, '2015-12-14 11:55:00.000000', '2014-12-14 09:20:00.000000', 12),
(13, '2015-01-25 05:30:00.000000', '2014-01-25 08:15:00.000000', 13),
(14, '2021-02-26 09:45:00.000000', '2020-02-26 16:00:00.000000', 14),
(15, '2021-03-17 14:20:00.000000', '2020-03-17 12:05:00.000000', 15),
(16, '2022-04-08 16:35:00.000000', '2021-04-08 18:50:00.000000', 16),
(17, '2015-05-19 19:10:00.000000', '2014-05-19 21:25:00.000000', 17),
(18, '2005-06-20 22:35:00.000000', '2004-06-20 20:20:00.000000', 18),
(19, '2015-07-21 08:00:00.000000', '2014-07-21 10:15:00.000000', 19),
(20, '2021-08-22 17:25:00.000000', '2020-08-22 19:40:00.000000', 20),
(21, '2001-09-23 21:50:00.000000', '2000-09-23 23:05:00.000000', 21),
(22, '2021-10-24 04:15:00.000000', '2021-10-24 06:30:00.000000', 22),
(23, '2002-11-25 13:40:00.000000', '2001-11-25 15:55:00.000000', 23),
(24, '2015-12-26 19:05:00.000000', '2014-12-26 17:50:00.000000', 24),
(25, '2016-01-27 11:20:00.000000', '2015-01-27 09:35:00.000000', 25),
(26, '2015-02-28 03:35:00.000000', '2014-02-28 05:50:00.000000', 26),
(27, '2021-03-29 15:50:00.000000', '2020-03-29 18:05:00.000000', 27),
(28, '2021-04-30 07:05:00.000000', '2020-04-30 10:20:00.000000', 28),
(29, '2013-05-31 21:20:00.000000', '2013-05-31 23:35:00.000000', 29),
(30, '2012-06-30 17:45:00.000000', '2011-06-30 19:00:00.000000', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installation`
--
ALTER TABLE `installation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7fykwe8hm1hhlgfpv3pl1woqh` (`customer_id`);

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
  ADD KEY `FKe1jxs4ym8h7qsc6smkbam1x0r` (`installation_id`);

--
-- Indexes for table `payment_plan`
--
ALTER TABLE `payment_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa1gguceihrca9ggpafekduljo` (`installation_id`);

--
-- Indexes for table `servicing`
--
ALTER TABLE `servicing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe4fjsti8y0wdq2s7pv64f87h7` (`installation_id`);

--
-- Indexes for table `uninstallation`
--
ALTER TABLE `uninstallation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_g9viv5mjy5tk0laoyi1cksge6` (`installation_id`);

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
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `installation`
--
ALTER TABLE `installation`
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
-- AUTO_INCREMENT for table `servicing`
--
ALTER TABLE `servicing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `uninstallation`
--
ALTER TABLE `uninstallation`
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
-- Constraints for table `installation`
--
ALTER TABLE `installation`
  ADD CONSTRAINT `FK7fykwe8hm1hhlgfpv3pl1woqh` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `material_used_in_installation`
--
ALTER TABLE `material_used_in_installation`
  ADD CONSTRAINT `FKnjll5bpfxj7ratvkbeeeykct9` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FKe1jxs4ym8h7qsc6smkbam1x0r` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);

--
-- Constraints for table `payment_plan`
--
ALTER TABLE `payment_plan`
  ADD CONSTRAINT `FKa1gguceihrca9ggpafekduljo` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);

--
-- Constraints for table `servicing`
--
ALTER TABLE `servicing`
  ADD CONSTRAINT `FKe4fjsti8y0wdq2s7pv64f87h7` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);

--
-- Constraints for table `uninstallation`
--
ALTER TABLE `uninstallation`
  ADD CONSTRAINT `FK7ngjin5p9n38b32o8knahfuay` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);

--
-- Constraints for table `warranty`
--
ALTER TABLE `warranty`
  ADD CONSTRAINT `FKq6m7kdyjty30b1ve96svta9j2` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
