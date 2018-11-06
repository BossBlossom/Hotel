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
	(201, 2, 2, 'none', 2),
	(202, 2, 2, 'none', 2),
	(203, 2, 2, 'none', 2),
	(204, 2, 2, 'none', 2),
	(205, 2, 2, 'none', 2),
	(301, 2, 3, 'none', 3),
	(302, 2, 3, 'none', 3),
	(303, 2, 3, 'none', 3),
	(304, 2, 3, 'none', 3),
	(305, 2, 3, 'none', 3),
	(401, 3, 2, 'none', 4),
	(402, 3, 2, 'none', 4),
	(403, 3, 2, 'none', 4),
	(404, 3, 2, 'none', 4),
	(405, 3, 2, 'none', 4);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
