-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 24, 2024 at 07:22 PM
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
(10, 'linda.martinez@gmail.com', 'Linda', 'Martinez', '777-555-3333');

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
(10, '777 Redwood St', '2023-10-22 05:08:00.000000', 'LG', 'master bedroom', 10);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`id`, `name`, `quantity`, `installation_id`) VALUES
(1, 'Copper pipe - 6 mm', '1.5 m', 1),
(2, 'Copper pipe - 10 mm', '1.5 m', 1),
(3, 'Communication cable - 5x1.5', '2.5 m', 1),
(4, 'Power supply cable - 3x1.5', '2 m', 1),
(5, 'Water drain hose', '1 m', 1),
(6, 'Copper pipe - 6 mm', '2 m', 2),
(7, 'Copper pipe - 10 mm', '2 m', 2),
(8, 'Communication cable - 5x1.5', '3 m', 2),
(9, 'Power supply cable - 3x1.5', '1 m', 2),
(10, 'Water drain hose', '2 m', 2),
(11, 'Copper pipe - 6 mm', '2 m', 3),
(12, 'Copper pipe - 12 mm', '2 m', 3),
(13, 'Communication cable - 5x1.5', '3 m', 3),
(14, 'Power supply cable - 3x1.5', '1.5 m', 3),
(15, 'Water drain hose', '1m', 3),
(16, 'Copper pipe - 6 mm', '2.5 m', 4),
(17, 'Copper pipe - 12 mm', '2.5 m', 4),
(18, 'Communication cable - 5x1.5', '3.5 m', 4),
(19, 'Power supply cable - 3x1.5', '1.5 m', 4),
(20, 'Water drain hose', '1m', 4),
(21, 'Copper pipe - 6 mm', '2.5 m', 5),
(22, 'Copper pipe - 10 mm', '2.5 m', 5),
(23, 'Communication cable - 5x1.5', '3.5 m', 5),
(24, 'Power supply cable - 3x1.5', '1.5m', 5),
(25, 'Water drain hose', '1 m', 5),
(26, 'Copper pipe - 6 mm', '3.5 m', 6),
(27, 'Copper pipe - 10 mm', '3.5 m', 6),
(28, 'Communication cable - 5x1.5', '2.5 m', 6),
(29, 'Power supply cable - 3x1.5', '2 m', 6),
(30, 'Water drain hose', '1.5 m', 6),
(31, 'Copper pipe - 6 mm', '3.5 m', 7),
(32, 'Copper pipe - 10 mm', '3.5 m', 7),
(33, 'Communication cable - 5x1.5', '4.5 m', 7),
(34, 'Power supply cable - 3x1.5', '2.5 m', 7),
(35, 'Water drain hose', '2 m', 7),
(36, 'Copper pipe - 6 mm', '3 m', 8),
(37, 'Copper pipe - 10 mm', '3 m', 8),
(38, 'Communication cable - 5x1.5', '4 m', 8),
(39, 'Power supply cable - 3x1.5', '2 m', 8),
(40, 'Water drain hose', '2 m', 8),
(41, 'Copper pipe - 6 mm', '2 m', 9),
(42, 'Copper pipe - 10 mm', '2 m', 9),
(43, 'Communication cable - 5x1.5', '3 m', 9),
(44, 'Power supply cable - 3x1.5', '1 m', 9),
(45, 'Water drain hose', '1.5 m', 9),
(46, 'Copper pipe - 6 mm', '1 .5 m', 10),
(47, 'Copper pipe - 16 mm', '1.5 m', 10),
(48, 'Communication cable - 5x1.5', '2.5 m', 10),
(49, 'Power supply cable - 3x1.5', '1.5 m', 10),
(50, 'Water drain hose', '1 m', 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
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
(1, 200, 'EUR', 1, '2023-01-15 15:56:00.000000', 'Card', 1),
(2, 150, 'BAM', 3, '2023-02-20 17:47:00.000000', 'Cash', 2),
(3, 200, 'EUR', 2, '2023-03-10 18:28:00.000000', 'Card', 3),
(4, 200, 'BAM', 1, '2023-04-05 02:00:00.000000', 'Cash', 4),
(5, 150, 'EUR', 2, '2023-05-12 19:57:00.000000', 'Card', 5),
(6, 100, 'EUR', 3, '2023-06-18 08:59:00.000000', 'Card', 6),
(7, 100, 'EUR', 3, '2023-07-25 20:19:00.000000', 'Card', 7),
(8, 150, 'BAM', 1, '2023-08-30 00:07:00.000000', 'Cash', 8),
(9, 200, 'EUR', 1, '2021-09-11 13:28:00.000000', 'Card', 9),
(10, 200, 'BAM', 1, '2011-10-22 16:58:00.000000', 'Cash', 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment_plan`
--

CREATE TABLE `payment_plan` (
  `id` bigint(20) NOT NULL,
  `due_date_time` datetime(6) DEFAULT NULL,
  `installment_amount` double DEFAULT NULL,
  `number_of_installments` int(11) DEFAULT NULL,
  `remaining_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `installation_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_plan`
--

INSERT INTO `payment_plan` (`id`, `due_date_time`, `installment_amount`, `number_of_installments`, `remaining_amount`, `total_amount`, `installation_id`) VALUES
(1, '2023-02-01 13:25:00.000000', 800, 1, 0, 800, 1),
(2, '2023-02-01 08:28:00.000000', 400, 2, 600, 800, 2),
(3, '2023-03-01 08:15:00.000000', 950, 1, 0, 950, 3),
(4, '2023-04-01 07:43:00.000000', 100, 3, 300, 400, 4),
(5, '2023-05-01 16:22:00.000000', 200, 1, 0, 200, 5),
(6, '2023-06-01 17:29:00.000000', 75, 2, 50, 150, 6),
(7, '2023-07-01 07:08:00.000000', 1000, 1, 0, 1000, 7),
(8, '2023-08-01 16:05:00.000000', 100, 2, 100, 200, 8),
(9, '2022-09-01 08:31:00.000000', 400, 1, 0, 400, 9),
(10, '2021-10-01 13:10:00.000000', 200, 2, 300, 500, 10);

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
(10, '2023-10-23 15:05:00.000000', 'Unit cleaning', 10);

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
(10, '2021-03-10 22:16:00.000000', 10);

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
(10, '2011-10-22 03:40:00.000000', '2010-10-22 07:15:00.000000', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`);

--
-- Indexes for table `installation`
--
ALTER TABLE `installation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7fykwe8hm1hhlgfpv3pl1woqh` (`customer_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2y61cdrxi6vkqu3j62qlb9r1v` (`installation_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKoe2mwen6jh6ux60ukvfimngyy` (`payment_date_time`,`amount`,`currency`),
  ADD KEY `FKe1jxs4ym8h7qsc6smkbam1x0r` (`installation_id`);

--
-- Indexes for table `payment_plan`
--
ALTER TABLE `payment_plan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK4ne90vro538m1j62r0th4i8eh` (`total_amount`,`due_date_time`),
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `installation`
--
ALTER TABLE `installation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_plan`
--
ALTER TABLE `payment_plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `servicing`
--
ALTER TABLE `servicing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uninstallation`
--
ALTER TABLE `uninstallation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `warranty`
--
ALTER TABLE `warranty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `installation`
--
ALTER TABLE `installation`
  ADD CONSTRAINT `FK7fykwe8hm1hhlgfpv3pl1woqh` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `FK2y61cdrxi6vkqu3j62qlb9r1v` FOREIGN KEY (`installation_id`) REFERENCES `installation` (`id`);

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
