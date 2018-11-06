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
INSERT INTO `products` VALUES (1,'food1.jpg',10,'Bánh Burritos',1,'food'),(2,'food2.jpg',9,'Set bít tết 1 ',1,'food'),(3,'food3.jpg',9,'Set bít tết 2 ',1,'food'),(4,'food4.jpg',7,'Cá phi lê',1,'food'),(5,'food5.jpg',9,'Hamburger',1,'food'),(6,'food6.jpg',10,'Lẩu cá nấu chua',1,'food'),(7,'food7.jpg',12,'Lẩu cá nấu củ cải',1,'food'),(8,'food8.jpg',10,'Phi lê cá bơn',1,'food'),(9,'food9.jpg',9,'Phi lê chiên',1,'food'),(10,'food10.jpg',8,'Pizza nấm',1,'food'),(11,'food11.jpg',8,'Pizza phô mai',1,'food'),(12,'food12.jpg',20,'Bàn ăn trưa gia đình',1,'food'),(13,'food13.jpg',15,'Sushi',1,'food'),(14,'food14.jpg',25,'Trứng cá muối',1,'food'),(15,'food15.jpg',20,'Lẩu của biển',1,'food'),(16,'333Bear.jpg',5,'Bia 333',10,'drink'),(17,'blacklabel.jpg',10,'Black Lable',10,'drink'),(18,'BudweiserBear.jpg',12,'Bia Budweiser',10,'drink'),(19,'cafe.jpg',7,'Cafe',10,'drink'),(20,'chocolate_cake.jpg',8,'Bánh Chocolate',10,'drink'),(21,'coca.jpg',2,'Coca Cola',10,'drink'),(22,'dau_cake.jpg',5,'Bánh dâu tây',10,'drink'),(23,'espresso .jpg',8,'Espresso',10,'drink'),(24,'fruit.jpg',10,'Sinh tố rau củ',10,'drink'),(25,'gin.jpg',15,'Rượu Gin',10,'drink'),(26,'HanoiBear.jpg',10,'Bia Hà Nội',10,'drink'),(27,'HeinekenBear.jpg',12,'Bia Heinekein',10,'drink'),(28,'lemontea.jpg',8,'Trà chanh',10,'drink'),(29,'macallan.jpg',10,'Rượu Macallan',10,'drink'),(30,'mirinda.jpg',5,'Mirinda cam',10,'drink'),(31,'pepsi.jpg',5,'Pepsi',10,'drink'),(32,'rainbow_cake.jpg',7,'Bánh cầu vòng',10,'drink'),(33,'redbull.jpg',6,'Redbull',10,'drink'),(34,'SaigonBear.jpg',10,'Bia Saigon special',10,'drink'),(35,'vang.jpg',12,'Vang đỏ',10,'drink'),(36,'samurai.jpg',5,'Samurai',10,'drink'),(37,'sting.jpg',5,'Sting',10,'drink'),(38,'tea.jpg',8,'Trà hoa cúc',10,'drink'),(39,'TigerBear.jpg',10,'Bia Tiger',10,'drink'),(40,'vodka.jpg',15,'Rượu Vodka',10,'drink'),(41,'water1.jpg',3,'Aquafina',10,'drink'),(42,'water2.jpg',3,'Lavie',10,'drink'),(43,'waterlemon.jpg',7,'Nước ép dưa hấu',10,'drink'),(44,'whisky.jpg',15,'Rượu Whisky',10,'drink'),(45,'BARRETT M107.jpg',250,'Barrett m107',10,'Weapon'),(46,'FARBAM SHOTGUN.png',150,'Shotgun farbam',10,'Weapon'),(47,'H_K USP.jpg',50,'H&K USP',10,'Weapon'),(48,'HK416.jpg',200,'HK416',10,'Weapon'),(49,'HK-UMP9.jpg',160,'HK UMP9',10,'Weapon'),(50,'K54.jpg',80,'K54',10,'Weapon'),(51,'M4A1.jpg',180,'M4A1',10,'Weapon'),(52,'M9 BERETTA.jpg',50,'M9 beretta',10,'Weapon'),(53,'M14-EMR.jpg',200,'M14 EMR',10,'Weapon'),(54,'M60.jpg',180,'M60',10,'Weapon'),(55,'M249.jpg',200,'M249',10,'Weapon'),(56,'M1014.jpg',190,'M1014',10,'Weapon'),(57,'MCMILLAN CS5.jpg',250,'McMillan CS5',10,'Weapon'),(58,'MCMILLAN TAC -50.jpg',250,'McMillan TAC-50',10,'Weapon'),(59,'MG4.png',230,'MG4',10,'Weapon'),(60,'P226.jpg',40,'P226',10,'Weapon'),(61,'PKP.jpg',230,'PKP',10,'Weapon'),(62,'SRR-61.jpg',250,'SRR-61',10,'Weapon'),(63,'TRG M10.jpg',250,'TRG M10',10,'Weapon');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 11:28:28
