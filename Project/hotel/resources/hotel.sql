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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accounts` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('admin','$2a$10$Agtzk0GTAYxXgsTcZK4U3.vPIwfdqCYVVtvrV7F4PlmKdj4H.Azpu');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bill_details` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bills` (
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (10,0,0,'none',36,NULL,104),(11,0,0,'none',37,NULL,405),(12,0,0,'none',38,NULL,204),(13,0,0,'none',39,NULL,105),(14,0,0,'none',40,NULL,305);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

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
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe53rawn7gpr8dl011uxsunwoi` (`customer_id`),
  KEY `FKbo6tcdk5j4ota1fc0wcq5x4ei` (`room_no`),
  CONSTRAINT `FKbo6tcdk5j4ota1fc0wcq5x4ei` FOREIGN KEY (`room_no`) REFERENCES `rooms` (`room_no`),
  CONSTRAINT `FKe53rawn7gpr8dl011uxsunwoi` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_histories`
--

LOCK TABLES `booking_histories` WRITE;
/*!40000 ALTER TABLE `booking_histories` DISABLE KEYS */;
INSERT INTO `booking_histories` VALUES (26,'2018-11-01 09:54:45.735000',NULL,1,300,62,104,'none'),(27,'2018-11-07 09:56:38.289000',NULL,1,600,64,204,'none'),(28,'2018-11-07 19:53:17.355000',NULL,1,300,65,105,'none');
/*!40000 ALTER TABLE `booking_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_informations`
--

DROP TABLE IF EXISTS `booking_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_informations` (
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_informations`
--

LOCK TABLES `booking_informations` WRITE;
/*!40000 ALTER TABLE `booking_informations` DISABLE KEYS */;
INSERT INTO `booking_informations` VALUES (36,'none',62,104,'2018-11-01'),(37,'none',63,405,'2018-11-07'),(38,'none',64,204,'2018-11-07'),(39,'none',65,105,'2018-11-07'),(40,'none',66,305,'2018-11-07');
/*!40000 ALTER TABLE `booking_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmnd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (62,'025753282','Nguyễn Việt Dũng','0903627908'),(63,'036853282','Nguyễn Thiên Ân','0974384921'),(64,'042754291','Thân Văn Quốc Bảo','0969605103'),(65,'025753282','Nguyễn Việt Dũng','0903627908'),(66,'012345678','Lê Quang Anh','01694535400');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `quantum` int(11) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'food1.jpg',5,'Bánh Burritos',1,'food'),(2,'food2.jpg',50,'Set bít tết 1 ',1,'food'),(3,'food3.jpg',50,'Set bít tết 2 ',1,'food'),(4,'food4.jpg',30,'Cá phi lê',1,'food'),(5,'food5.jpg',10,'Hamburger',1,'food'),(6,'food6.jpg',80,'Lẩu cá nấu chua',1,'food'),(7,'food7.jpg',70,'Lẩu cá nấu củ cải',1,'food'),(8,'food8.jpg',50,'Phi lê cá bơn',1,'food'),(9,'food9.jpg',60,'Phi lê chiên',1,'food'),(10,'food10.jpg',30,'Pizza nấm',1,'food'),(11,'food11.jpg',30,'Pizza phô mai',1,'food'),(12,'food12.jpg',150,'Bàn ăn trưa gia đình',1,'food'),(13,'food13.jpg',50,'Sushi',1,'food'),(14,'food14.jpg',40,'Trứng cá muối',1,'food'),(15,'food15.jpg',300,'Lẩu của biển',1,'food'),(16,'333Bear.jpg',5,'Bia 333',10,'drink'),(17,'blacklabel.jpg',500,'Black Lable',10,'drink'),(18,'BudweiserBear.jpg',10,'Bia Budweiser',10,'drink'),(19,'cafe.jpg',5,'Cafe',10,'drink'),(20,'chocolate_cake.jpg',10,'Bánh Chocolate',10,'drink'),(21,'coca.jpg',5,'Coca Cola',10,'drink'),(22,'dau_cake.jpg',10,'Bánh dâu tây',10,'drink'),(23,'espresso .jpg',15,'Espresso',10,'drink'),(24,'fruit.jpg',10,'Sinh tố rau củ',10,'drink'),(25,'gin.jpg',700,'Rượu Gin',10,'drink'),(26,'HanoiBear.jpg',5,'Bia Hà Nội',10,'drink'),(27,'HeinekenBear.jpg',10,'Bia Heinekein',10,'drink'),(28,'lemontea.jpg',5,'Trà chanh',10,'drink'),(29,'macallan.jpg',1000,'Rượu Macallan',10,'drink'),(30,'mirinda.jpg',5,'Mirinda cam',10,'drink'),(31,'pepsi.jpg',5,'Pepsi',10,'drink'),(32,'rainbow_cake.jpg',10,'Bánh cầu vòng',10,'drink'),(33,'redbull.jpg',5,'Redbull',10,'drink'),(34,'SaigonBear.jpg',5,'Bia Saigon special',10,'drink'),(35,'vang.jpg',200,'Vang đỏ',10,'drink'),(36,'samurai.jpg',5,'Samurai',10,'drink'),(37,'sting.jpg',5,'Sting',10,'drink'),(38,'tea.jpg',5,'Trà hoa cúc',10,'drink'),(39,'TigerBear.jpg',5,'Bia Tiger',10,'drink'),(40,'vodka.jpg',1500,'Rượu Vodka',10,'drink'),(41,'water1.jpg',3,'Aquafina',10,'drink'),(42,'water2.jpg',3,'Lavie',10,'drink'),(43,'waterlemon.jpg',10,'Nước ép dưa hấu',10,'drink'),(44,'whisky.jpg',2000,'Rượu Whisky',10,'drink'),(45,'BARRETT M107.jpg',250,'Barrett m107',10,'Weapon'),(46,'FARBAM SHOTGUN.png',150,'Shotgun farbam',10,'Weapon'),(47,'H_K USP.jpg',50,'H&K USP',10,'Weapon'),(48,'HK416.jpg',200,'HK416',10,'Weapon'),(49,'HK-UMP9.jpg',160,'HK UMP9',10,'Weapon'),(50,'K54.jpg',80,'K54',10,'Weapon'),(51,'M4A1.jpg',180,'M4A1',10,'Weapon'),(52,'M9 BERETTA.jpg',50,'M9 beretta',10,'Weapon'),(53,'M14-EMR.jpg',200,'M14 EMR',10,'Weapon'),(54,'M60.jpg',180,'M60',10,'Weapon'),(55,'M249.jpg',200,'M249',10,'Weapon'),(56,'M1014.jpg',190,'M1014',10,'Weapon'),(57,'MCMILLAN CS5.jpg',250,'McMillan CS5',10,'Weapon'),(58,'MCMILLAN TAC -50.jpg',250,'McMillan TAC-50',10,'Weapon'),(59,'MG4.png',230,'MG4',10,'Weapon'),(60,'P226.jpg',40,'P226',10,'Weapon'),(61,'PKP.jpg',230,'PKP',10,'Weapon'),(62,'SRR-61.jpg',250,'SRR-61',10,'Weapon'),(63,'TRG M10.jpg',250,'TRG M10',10,'Weapon');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_style`
--

DROP TABLE IF EXISTS `room_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_style`
--

LOCK TABLES `room_style` WRITE;
/*!40000 ALTER TABLE `room_style` DISABLE KEYS */;
INSERT INTO `room_style` VALUES (1,'Single',300),(2,'Double',600),(3,'Super',800),(4,'Delux',1200);
/*!40000 ALTER TABLE `room_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_style_images`
--

DROP TABLE IF EXISTS `room_style_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_style_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_style` varchar(255) DEFAULT NULL,
  `room_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4r20inmstg6v16wk03n33mbu` (`room_style_id`),
  CONSTRAINT `FK4r20inmstg6v16wk03n33mbu` FOREIGN KEY (`room_style_id`) REFERENCES `room_style` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_style_images`
--

LOCK TABLES `room_style_images` WRITE;
/*!40000 ALTER TABLE `room_style_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_style_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rooms` (
  `room_no` int(11) NOT NULL,
  `air_conditioner` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `room_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_no`),
  KEY `FKd6pvxdua9wefgjtmca63ifaqc` (`room_style_id`),
  CONSTRAINT `FKd6pvxdua9wefgjtmca63ifaqc` FOREIGN KEY (`room_style_id`) REFERENCES `room_style` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,1,1,'none',1),(102,1,1,'none',1),(103,1,1,'none',1),(104,1,1,'check in',1),(105,1,1,'check in',1),(201,2,2,'none',2),(202,2,2,'none',2),(203,2,2,'none',2),(204,2,2,'check in',2),(205,2,2,'none',2),(301,2,3,'closed',3),(302,2,3,'none',3),(303,2,3,'none',3),(304,2,3,'none',3),(305,2,3,'customer',3),(401,3,2,'none',4),(402,3,2,'none',4),(403,3,2,'none',4),(404,3,2,'none',4),(405,3,2,'customer',4);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-07 19:56:43
