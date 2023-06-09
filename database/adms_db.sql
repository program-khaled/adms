-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 سبتمبر 2022 الساعة 13:21
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adms_db`
--

-- --------------------------------------------------------

--
-- بنية الجدول `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Mercedes-benz', 1, 0, '2022-06-02 08:55:33', '2022-06-02 08:55:33'),
(2, 'Toyota', 1, 0, '2022-06-02 08:55:47', '2022-06-02 08:55:47'),
(3, 'Ford', 1, 0, '2022-06-02 08:56:01', '2022-06-02 08:56:01'),
(4, 'Hyundai', 1, 0, '2022-06-02 08:56:49', '2022-06-02 08:56:49'),
(5, 'Chevrolet', 1, 0, '2022-06-02 08:56:54', '2022-06-02 08:56:54'),
(6, 'Honda', 1, 0, '2022-06-02 08:57:05', '2022-06-02 08:57:05'),
(7, 'Nissan', 1, 0, '2022-06-02 08:58:03', '2022-06-02 08:58:03'),
(8, 'Jeep', 1, 0, '2022-06-02 08:58:15', '2022-06-02 08:58:15'),
(9, 'Volkswagen', 1, 0, '2022-06-02 08:58:22', '2022-06-02 08:58:22'),
(10, 'Volvo', 1, 0, '2022-06-02 08:58:30', '2022-06-02 08:58:30'),
(11, 'Audi', 1, 0, '2022-06-02 08:58:39', '2022-06-02 08:58:39'),
(12, 'Land Rover', 1, 0, '2022-06-02 08:58:54', '2022-06-02 08:58:54'),
(13, 'Rolls Royce', 1, 0, '2022-06-02 08:59:18', '2022-06-02 08:59:18'),
(14, 'Bugati', 1, 0, '2022-06-02 08:59:27', '2022-06-02 08:59:27'),
(15, 'Porsche', 1, 0, '2022-06-02 08:59:40', '2022-06-02 08:59:40'),
(16, 'BMW', 1, 0, '2022-06-02 08:59:49', '2022-06-02 08:59:49'),
(17, 'Tesla', 1, 0, '2022-06-02 08:59:58', '2022-06-02 08:59:58');

-- --------------------------------------------------------

--
-- بنية الجدول `car_type_list`
--

CREATE TABLE `car_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `car_type_list`
--

INSERT INTO `car_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Sedan', 1, 1, '2022-06-02 09:13:24', '2022-09-04 12:45:29'),
(2, 'Coupe', 1, 1, '2022-06-02 09:13:51', '2022-09-04 12:43:58'),
(3, 'Sports', 1, 1, '2022-06-02 09:14:00', '2022-09-04 12:45:32'),
(4, 'Station Wagon', 1, 1, '2022-06-02 09:14:28', '2022-09-04 12:45:38'),
(5, 'Hatchback', 1, 1, '2022-06-02 09:14:42', '2022-09-04 12:45:19'),
(6, 'Sports-Utility Vehicle (SUV)', 1, 1, '2022-06-02 09:15:13', '2022-09-04 12:45:35'),
(7, 'Minivan', 1, 1, '2022-06-02 09:15:25', '2022-09-04 12:45:22'),
(8, 'Pickup Truck ', 1, 1, '2022-06-02 09:15:43', '2022-09-04 12:45:26'),
(9, 'test - updated', 1, 1, '2022-06-02 09:16:19', '2022-06-02 09:16:36'),
(10, 'Ø³ÙŠØ§Ø±Ø© Ø±ÙŠØ§Ø¶ÙŠØ©', 1, 0, '2022-09-04 12:45:47', '2022-09-04 12:45:47'),
(11, 'Ø³ÙŠØ§Ø±Ø© ØªÙƒØ³ÙŠ', 1, 0, '2022-09-04 12:46:00', '2022-09-04 12:46:00'),
(12, 'Ø³ÙŠØ§Ø±Ø© Ø§Ø³ØªØ®Ø¯Ø§Ù… Ø®Ø§Øµ', 1, 0, '2022-09-04 12:46:21', '2022-09-04 12:46:21'),
(13, 'Ø³ÙŠØ§Ø±Ø© Ù†Ù‚Ù„ ', 1, 0, '2022-09-04 12:46:38', '2022-09-04 12:46:38');

-- --------------------------------------------------------

--
-- بنية الجدول `model_list`
--

CREATE TABLE `model_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `model` text NOT NULL,
  `engine_type` text NOT NULL,
  `transmission_type` text NOT NULL,
  `car_type_id` int(30) NOT NULL,
  `technology` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `model_list`
--

INSERT INTO `model_list` (`id`, `brand_id`, `model`, `engine_type`, `transmission_type`, `car_type_id`, `technology`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 2, '2021', 'Gasoline', 'Manual (2WD) (5-Speed)', 12, 'Sample Only', 1, 0, '2022-06-02 09:49:08', '2022-09-04 12:49:35'),
(3, 16, 'test', 'test', 'test', 5, 'test', 1, 1, '2022-06-02 13:31:30', '2022-06-02 13:31:35'),
(4, 16, '2020', 'a12', 'Ø§ÙˆØªÙˆÙ…Ø§ØªÙŠÙƒ', 8, 'Ù…ÙˆØ§ØµÙØ§Øª Ø¬ÙŠØ¯Ø©', 1, 0, '2022-09-03 21:46:06', '2022-09-03 21:46:06'),
(5, 16, '2020', 'a12', 'Ø§ÙˆØªÙˆÙ…Ø§ØªÙŠÙƒ', 13, 'dwadawd', 1, 0, '2022-09-24 14:14:19', '2022-09-24 14:14:19');

-- --------------------------------------------------------

--
-- بنية الجدول `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Ù†Ø¸Ø§Ù… Ø¨ÙŠØ¹ Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª'),
(6, 'short_name', 'Ù†Ø¸Ø§Ù… Ø¨ÙŠØ¹ Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª'),
(11, 'logo', 'uploads/logo.png?v=1654130795'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1654130796'),
(17, 'phone', '456-987-1231'),
(18, 'mobile', '09123456987 / 094563212222 '),
(19, 'email', 'info@sample.com'),
(20, 'address', '7087 Henry St. Clifton Park, NY 12065 - updated address');

-- --------------------------------------------------------

--
-- بنية الجدول `transaction_list`
--

CREATE TABLE `transaction_list` (
  `id` int(30) NOT NULL,
  `vehicle_id` int(30) NOT NULL,
  `agent_name` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `contact` text NOT NULL,
  `email` text DEFAULT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `transaction_list`
--

INSERT INTO `transaction_list` (`id`, `vehicle_id`, `agent_name`, `firstname`, `middlename`, `lastname`, `sex`, `dob`, `contact`, `email`, `address`, `date_created`, `date_updated`) VALUES
(4, 2, 'Mark Cooper', 'John', 'D', 'Smith', 'Male', '1997-06-23', '09123456789', 'jsmith@sample.com', 'Sample Only', '2022-06-02 13:40:37', '2022-06-02 13:40:37'),
(5, 1, 'ahmed', 'ahmed', 'wadwa', 'awdwa', 'Male', '2022-09-15', '07705445247', 'admin@gmail.com', 'awdawdwadw', '2022-09-03 12:52:26', '2022-09-03 12:52:26'),
(6, 4, 'ahmed', 'ahmed', 'Ø¬Ø§Ø³Ù… ', 'Ù…Ø­Ù…Ø¯ ', 'Ø°ÙƒØ±', '2022-08-04', '07705445247', 'admin@gmail.com', 'Ø§Ù„Ø¹Ø±Ø§Ù‚ Ø¨ØºØ¯Ø§Ø¯', '2022-09-03 14:27:46', '2022-09-03 14:27:46'),
(7, 5, 'Ù…Ø­Ù…Ø¯ Ø³Ø¹ÙŠØ¯ Ø¹Ù„ÙŠ', 'Ù…Ø­Ù…Ø¯', 'Ø³Ø¹ÙŠØ¯', 'Ø¹Ù„ÙŠ', 'Ø°ÙƒØ±', '2022-06-15', '07705445247', 'admin@gmail.com', 'Ø§Ù„Ø¹Ø±Ø§Ù‚ /Ø¨ØºØ¯Ø§Ø¯', '2022-09-03 21:53:16', '2022-09-03 21:53:16');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(14, 'Ø§Ø­Ù…Ø¯', '', 'Ø§Ø­Ù…Ø¯', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 1, '2022-09-24 13:41:53', '2022-09-24 13:43:59');

-- --------------------------------------------------------

--
-- بنية الجدول `vehicle_list`
--

CREATE TABLE `vehicle_list` (
  `id` int(30) NOT NULL,
  `model_id` int(30) NOT NULL,
  `mv_number` text NOT NULL,
  `plate_number` text NOT NULL,
  `variant` text NOT NULL,
  `mileage` varchar(20) NOT NULL,
  `engine_number` varchar(100) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available,\r\n1=Sold',
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `vehicle_list`
--

INSERT INTO `vehicle_list` (`id`, `model_id`, `mv_number`, `plate_number`, `variant`, `mileage`, `engine_number`, `chasis_number`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 2, '6231415', 'GBN-2306', 'Gray Metalic', '10000', '10141997', '19971507', 450000.00, 1, 0, '2022-06-02 10:52:13', '2022-09-03 12:52:26'),
(2, 2, '123654', 'CDM-9879', 'Red', '15879', '78954623', '5646897546', 425000.00, 1, 0, '2022-06-02 10:58:04', '2022-06-02 13:40:37'),
(3, 2, 'test', 'test', 'test', 'test', 'test', 'test', 123.00, 0, 1, '2022-06-02 13:31:59', '2022-06-02 13:33:12'),
(4, 2, '42', '1242', '244', '21414', '521', '2541', 1000.00, 1, 0, '2022-09-03 12:56:01', '2022-09-03 14:27:46'),
(5, 4, '1', '1242', 'Ø§Ø³ÙˆØ¯', '200', '521', '2541', 20.00, 1, 0, '2022-09-03 21:50:19', '2022-09-03 21:53:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type_list`
--
ALTER TABLE `car_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_list`
--
ALTER TABLE `model_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `car_type_id` (`car_type_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `car_type_list`
--
ALTER TABLE `car_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `model_list`
--
ALTER TABLE `model_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vehicle_list`
--
ALTER TABLE `vehicle_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `model_list`
--
ALTER TABLE `model_list`
  ADD CONSTRAINT `brand_id_fk_ml` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `car_type_id_fk_ml` FOREIGN KEY (`car_type_id`) REFERENCES `car_type_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- القيود للجدول `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD CONSTRAINT `vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- القيود للجدول `vehicle_list`
--
ALTER TABLE `vehicle_list`
  ADD CONSTRAINT `model_id_fk_vl` FOREIGN KEY (`model_id`) REFERENCES `model_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
