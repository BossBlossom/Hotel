-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking_histories`
--

DROP TABLE IF EXISTS `booking_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_in` datetime(6) DEFAULT NULL,
  `check_out` datetime(6) DEFAULT NULL,
  `day_total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe53rawn7gpr8dl011uxsunwoi` (`customer_id`),
  KEY `FKbo6tcdk5j4ota1fc0wcq5x4ei` (`room_no`),
  CONSTRAINT `FKbo6tcdk5j4ota1fc0wcq5x4ei` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`),
  CONSTRAINT `FKe53rawn7gpr8dl011uxsunwoi` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_histories`
--

LOCK TABLES `booking_histories` WRITE;
/*!40000 ALTER TABLE `booking_histories` DISABLE KEYS */;
INSERT INTO `booking_histories` VALUES (14,'2018-10-30 23:29:14.111000','2018-11-02 23:30:03.376000',3,300,47,101),(15,'2018-11-04 16:16:53.051000','2018-11-04 16:17:01.097000',1,300,48,103);
/*!40000 ALTER TABLE `booking_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-04 17:21:54
