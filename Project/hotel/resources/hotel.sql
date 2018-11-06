-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.12 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hotel
CREATE DATABASE IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `hotel`;

-- Dumping structure for table hotel.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.accounts: ~1 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
REPLACE INTO `accounts` (`username`, `password`) VALUES
	('admin', '$2a$10$Agtzk0GTAYxXgsTcZK4U3.vPIwfdqCYVVtvrV7F4PlmKdj4H.Azpu');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table hotel.bills
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_total` int(11) DEFAULT NULL,
  `service_total` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `booking_information_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK63k5hh5vtrf8lcv7bp24cxas3` (`booking_information_id`),
  KEY `FKja2jdwvsth2hkvlk8k334i822` (`product_id`),
  KEY `FK8oxp6hkw1y2gjdqc65fobwsjf` (`room_no`),
  CONSTRAINT `FK63k5hh5vtrf8lcv7bp24cxas3` FOREIGN KEY (`booking_information_id`) REFERENCES `booking_informations` (`id`),
  CONSTRAINT `FK8oxp6hkw1y2gjdqc65fobwsjf` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`),
  CONSTRAINT `FKja2jdwvsth2hkvlk8k334i822` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.bills: ~0 rows (approximately)
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;

-- Dumping structure for table hotel.bill_details
CREATE TABLE IF NOT EXISTS `bill_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `quantum` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfwm4sko9p82ndh6belyxx12bj` (`bill_id`),
  KEY `FK4iagdr0uhsq4tj0ag99nmmya1` (`product_id`),
  CONSTRAINT `FK4iagdr0uhsq4tj0ag99nmmya1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKfwm4sko9p82ndh6belyxx12bj` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hotel.bill_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;

-- Dumping structure for table hotel.booking_histories
CREATE TABLE IF NOT EXISTS `booking_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_in` datetime(6) DEFAULT NULL,
  `check_out` datetime(6) DEFAULT NULL,
  `day_total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe53rawn7gpr8dl011uxsunwoi` (`customer_id`),
  KEY `FKbo6tcdk5j4ota1fc0wcq5x4ei` (`room_no`),
  CONSTRAINT `FKbo6tcdk5j4ota1fc0wcq5x4ei` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`),
  CONSTRAINT `FKe53rawn7gpr8dl011uxsunwoi` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.booking_histories: ~0 rows (approximately)
/*!40000 ALTER TABLE `booking_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_histories` ENABLE KEYS */;

-- Dumping structure for table hotel.booking_informations
CREATE TABLE IF NOT EXISTS `booking_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `started_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKginlo886sap4cvvnhtlh8fp9r` (`customer_id`),
  KEY `FKfi4nwf123b07udv84g4x5r1vj` (`room_no`),
  CONSTRAINT `FKfi4nwf123b07udv84g4x5r1vj` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`),
  CONSTRAINT `FKginlo886sap4cvvnhtlh8fp9r` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.booking_informations: ~0 rows (approximately)
/*!40000 ALTER TABLE `booking_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_informations` ENABLE KEYS */;

-- Dumping structure for table hotel.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmnd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- Dumping data for table hotel.customers: ~0 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table hotel.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `quantum` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.products: ~63 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `image`, `price`, `product`, `quantum`, `style`) VALUES
	(1, 'food1.jpg', 5, 'Bánh Burritos', 1, 'food'),
	(2, 'food2.jpg', 50, 'Set bít tết 1 ', 1, 'food'),
	(3, 'food3.jpg', 50, 'Set bít tết 2 ', 1, 'food'),
	(4, 'food4.jpg', 30, 'Cá phi lê', 1, 'food'),
	(5, 'food5.jpg', 10, 'Hamburger', 1, 'food'),
	(6, 'food6.jpg', 80, 'Lẩu cá nấu chua', 1, 'food'),
	(7, 'food7.jpg', 70, 'Lẩu cá nấu củ cải', 1, 'food'),
	(8, 'food8.jpg', 50, 'Phi lê cá bơn', 1, 'food'),
	(9, 'food9.jpg', 60, 'Phi lê chiên', 1, 'food'),
	(10, 'food10.jpg', 30, 'Pizza nấm', 1, 'food'),
	(11, 'food11.jpg', 30, 'Pizza phô mai', 1, 'food'),
	(12, 'food12.jpg', 150, 'Bàn ăn trưa gia đình', 1, 'food'),
	(13, 'food13.jpg', 50, 'Sushi', 1, 'food'),
	(14, 'food14.jpg', 40, 'Trứng cá muối', 1, 'food'),
	(15, 'food15.jpg', 300, 'Lẩu của biển', 1, 'food'),
	(16, '333Bear.jpg', 5, 'Bia 333', 10, 'drink'),
	(17, 'blacklabel.jpg', 500, 'Black Lable', 10, 'drink'),
	(18, 'BudweiserBear.jpg', 10, 'Bia Budweiser', 10, 'drink'),
	(19, 'cafe.jpg', 5, 'Cafe', 10, 'drink'),
	(20, 'chocolate_cake.jpg', 10, 'Bánh Chocolate', 10, 'drink'),
	(21, 'coca.jpg', 5, 'Coca Cola', 10, 'drink'),
	(22, 'dau_cake.jpg', 10, 'Bánh dâu tây', 10, 'drink'),
	(23, 'espresso .jpg', 15, 'Espresso', 10, 'drink'),
	(24, 'fruit.jpg', 10, 'Sinh tố rau củ', 10, 'drink'),
	(25, 'gin.jpg', 700, 'Rượu Gin', 10, 'drink'),
	(26, 'HanoiBear.jpg', 5, 'Bia Hà Nội', 10, 'drink'),
	(27, 'HeinekenBear.jpg', 10, 'Bia Heinekein', 10, 'drink'),
	(28, 'lemontea.jpg', 5, 'Trà chanh', 10, 'drink'),
	(29, 'macallan.jpg', 1000, 'Rượu Macallan', 10, 'drink'),
	(30, 'mirinda.jpg', 5, 'Mirinda cam', 10, 'drink'),
	(31, 'pepsi.jpg', 5, 'Pepsi', 10, 'drink'),
	(32, 'rainbow_cake.jpg', 10, 'Bánh cầu vòng', 10, 'drink'),
	(33, 'redbull.jpg', 5, 'Redbull', 10, 'drink'),
	(34, 'SaigonBear.jpg', 5, 'Bia Saigon special', 10, 'drink'),
	(35, 'vang.jpg', 200, 'Vang đỏ', 10, 'drink'),
	(36, 'samurai.jpg', 5, 'Samurai', 10, 'drink'),
	(37, 'sting.jpg', 5, 'Sting', 10, 'drink'),
	(38, 'tea.jpg', 5, 'Trà hoa cúc', 10, 'drink'),
	(39, 'TigerBear.jpg', 5, 'Bia Tiger', 10, 'drink'),
	(40, 'vodka.jpg', 1500, 'Rượu Vodka', 10, 'drink'),
	(41, 'water1.jpg', 3, 'Aquafina', 10, 'drink'),
	(42, 'water2.jpg', 3, 'Lavie', 10, 'drink'),
	(43, 'waterlemon.jpg', 10, 'Nước ép dưa hấu', 10, 'drink'),
	(44, 'whisky.jpg', 2000, 'Rượu Whisky', 10, 'drink'),
	(45, 'BARRETT M107.jpg', 250, 'Barrett m107', 10, 'Weapon'),
	(46, 'FARBAM SHOTGUN.png', 150, 'Shotgun farbam', 10, 'Weapon'),
	(47, 'H_K USP.jpg', 50, 'H&K USP', 10, 'Weapon'),
	(48, 'HK416.jpg', 200, 'HK416', 10, 'Weapon'),
	(49, 'HK-UMP9.jpg', 160, 'HK UMP9', 10, 'Weapon'),
	(50, 'K54.jpg', 80, 'K54', 10, 'Weapon'),
	(51, 'M4A1.jpg', 180, 'M4A1', 10, 'Weapon'),
	(52, 'M9 BERETTA.jpg', 50, 'M9 beretta', 10, 'Weapon'),
	(53, 'M14-EMR.jpg', 200, 'M14 EMR', 10, 'Weapon'),
	(54, 'M60.jpg', 180, 'M60', 10, 'Weapon'),
	(55, 'M249.jpg', 200, 'M249', 10, 'Weapon'),
	(56, 'M1014.jpg', 190, 'M1014', 10, 'Weapon'),
	(57, 'MCMILLAN CS5.jpg', 250, 'McMillan CS5', 10, 'Weapon'),
	(58, 'MCMILLAN TAC -50.jpg', 250, 'McMillan TAC-50', 10, 'Weapon'),
	(59, 'MG4.png', 230, 'MG4', 10, 'Weapon'),
	(60, 'P226.jpg', 40, 'P226', 10, 'Weapon'),
	(61, 'PKP.jpg', 230, 'PKP', 10, 'Weapon'),
	(62, 'SRR-61.jpg', 250, 'SRR-61', 10, 'Weapon'),
	(63, 'TRG M10.jpg', 250, 'TRG M10', 10, 'Weapon');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table hotel.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `room_no` int(11) NOT NULL,
  `air_conditioner` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `room_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_no`),
  KEY `FKd6pvxdua9wefgjtmca63ifaqc` (`room_style_id`),
  CONSTRAINT `FKd6pvxdua9wefgjtmca63ifaqc` FOREIGN KEY (`room_style_id`) REFERENCES `room_style` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.rooms: ~20 rows (approximately)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
REPLACE INTO `rooms` (`room_no`, `air_conditioner`, `bed`, `status`, `room_style_id`) VALUES
	(101, 1, 1, 'none', 1),
	(102, 1, 1, 'none', 1),
	(103, 1, 1, 'none', 1),
	(104, 1, 1, 'none', 1),
	(105, 1, 1, 'none', 1),
	(201, 1, 2, 'none', 2),
	(202, 1, 2, 'none', 2),
	(203, 1, 2, 'none', 2),
	(204, 1, 2, 'none', 2),
	(205, 1, 2, 'none', 2),
	(301, 2, 3, 'none', 3),
	(302, 2, 3, 'none', 3),
	(303, 2, 3, 'none', 3),
	(304, 2, 3, 'none', 3),
	(305, 2, 3, 'none', 3),
	(401, 3, 2, 'none', 4),
	(402, 3, 2, 'none', 4),
	(403, 3, 2, 'none', 4),
	(404, 3, 3, 'none', 3),
	(501, 3, 2, 'none', 4);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

-- Dumping structure for table hotel.room_style
CREATE TABLE IF NOT EXISTS `room_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.room_style: ~4 rows (approximately)
/*!40000 ALTER TABLE `room_style` DISABLE KEYS */;
REPLACE INTO `room_style` (`id`, `name`, `price`) VALUES
	(1, 'Single', 300),
	(2, 'Double', 600),
	(3, 'Super', 800),
	(4, 'Delux', 1200);
/*!40000 ALTER TABLE `room_style` ENABLE KEYS */;

-- Dumping structure for table hotel.room_style_images
CREATE TABLE IF NOT EXISTS `room_style_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_style` varchar(255) DEFAULT NULL,
  `room_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4r20inmstg6v16wk03n33mbu` (`room_style_id`),
  CONSTRAINT `FK4r20inmstg6v16wk03n33mbu` FOREIGN KEY (`room_style_id`) REFERENCES `room_style` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table hotel.room_style_images: ~0 rows (approximately)
/*!40000 ALTER TABLE `room_style_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_style_images` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
