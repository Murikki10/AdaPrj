-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-11-01 14:31:45
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ins`
--

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`customer_ID`, `firstName`, `lastName`, `email`, `password`, `region`) VALUES
(5, 'Hong', 'la', 'murikki@iCloud.com', '$2y$10$i3U9AFmNTk5ioOSnI0Xa6.eNMl2voPEiatnvMBfUb2Kx6fmZUwwLC', 'Canada'),
(6, 'Hong', 'la', 'murikki@iCloud.com', '$2y$10$gRgJzZZUiS6s9ctcXrgP1el5kLGsqM/K1Gn5Vy2.mDW0VhS9Kl7qu', 'Canada');

-- --------------------------------------------------------

--
-- 資料表結構 `insurance_requests`
--

CREATE TABLE `insurance_requests` (
  `insuranceID` int(11) NOT NULL,
  `vehicle_year` varchar(4) DEFAULT NULL,
  `cc` varchar(10) DEFAULT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `driver_age` varchar(3) DEFAULT NULL,
  `driver_occupation` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `customer_ID` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `insurance_requests`
--

INSERT INTO `insurance_requests` (`insuranceID`, `vehicle_year`, `cc`, `vehicle_model`, `driver_age`, `driver_occupation`, `name`, `phone`, `email`, `StaffID`, `customer_ID`) VALUES
(13, '2018', '1500', 'jazz', '22', 'student', 'Wong Chun Wing', '67002314', 'asddd@gmail.com', NULL, 12345);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `staff`
--

CREATE TABLE `staff` (
  `userID` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `insuranceID` int(11) DEFAULT NULL,
  `staffType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `staff`
--

INSERT INTO `staff` (`userID`, `first_name`, `last_name`, `email`, `password`, `created_at`, `insuranceID`, `staffType`) VALUES
(61, 'WONG CHAK YUEN', '黃澤元', '1@gmail.com', '$2y$10$b2Tr.tV/FVOvBnKdq/YWk.3soKu2BeeGYj2JfxnPgwImA8DEQujnq', '2024-10-12 13:09:54', NULL, 'CarStaff'),
(62, 'WONG CHAK YUEN', '黃澤元', '2@gmail.com', '$2y$10$CEK/U2Cz4xQxV5dGfR2Gc.hvJz8DVrVCpSSlQNegWI4yZ2Q0FQcGG', '2024-10-18 03:16:28', NULL, 'CarStaff'),
(72, 'Wong', 'Wing', 'asddd@gmail.com', '$2y$10$iYNuVzeq07XHe0KgLh3bFO2ItRgdHVGVAGiGnoz7AJcdQLQgleJGS', '2024-11-01 13:17:26', NULL, 'insuranceS');

-- --------------------------------------------------------

--
-- 資料表結構 `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `engine_type` varchar(50) NOT NULL,
  `performance` text DEFAULT NULL,
  `technology` text DEFAULT NULL,
  `luxury_comfort` text DEFAULT NULL,
  `sustainability` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `model_name`, `vehicle_type`, `engine_type`, `performance`, `technology`, `luxury_comfort`, `sustainability`, `price`, `stock_status`) VALUES
(1, 'Aether X', 'Electric Car', 'Electric', 'High-performance electric drivetrain with rapid acceleration', 'Advanced battery technology and smart connectivity', 'Premium interior with spacious design', 'Zero emissions for eco-conscious driving', 45000.00, 'In Stock'),
(2, 'Ignis Turbo', 'Sports Car', 'Gasoline', 'Turbocharged engine with 500 hp', 'Enhanced driver-assist features and racing technology', 'Luxury seats with in-car entertainment system', 'Fuel-efficient with low CO2 emissions', 70000.00, 'On Order'),
(3, 'EcoRide 2024', 'Hybrid', 'Hybrid', 'Balanced hybrid powertrain with excellent fuel economy', 'Hybrid engine management and regenerative braking', 'Quiet cabin with smart infotainment', 'Environmentally friendly hybrid technology', 30000.00, 'In Stock'),
(4, 'Solaris EV', 'SUV', 'Electric', 'Powerful off-road capabilities with electric torque', 'Advanced solar-charging technology', 'Spacious interior with ergonomic seating', 'Zero emissions with sustainable materials', 60000.00, 'Out of Stock'),
(5, 'Velocity GT', 'Coupe', 'Gasoline', 'Precision handling with 0-60 mph in 3.5 seconds', 'Performance-oriented telemetry system', 'Leather interior with advanced climate control', 'High fuel efficiency with eco-mode', 80000.00, 'In Stock'),
(6, 'Zenith LX', 'Sedan', 'Hybrid', 'Seamless hybrid transition between electric and gasoline', 'Enhanced safety and autonomous driving features', 'Luxury interior with reclining rear seats', 'Low emissions with reduced fuel consumption', 55000.00, 'On Order');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- 資料表索引 `insurance_requests`
--
ALTER TABLE `insurance_requests`
  ADD PRIMARY KEY (`insuranceID`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- 資料表索引 `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `insurance_requests`
--
ALTER TABLE `insurance_requests`
  MODIFY `insuranceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `staff`
--
ALTER TABLE `staff`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
