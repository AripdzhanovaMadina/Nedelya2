CREATE DATABASE  IF NOT EXISTS `zadani2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zadani2`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: zadani2
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_price` double NOT NULL,
  `product_quantity_in_stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ботинки','Черные ботинки со шнуровкой на массивной подошве',2890,20),(2,'ботинки','Черные ботинки Челси на массивной подошве',2890,20),(3,'ботинки','Черные байкерские ботинки',3390,15),(4,'ботинки','Черные ботинки челси',2390,20),(5,'ботинки','Кожанные сапоги до колен',6290,20),(6,'кроссовки','Черные кроссовки на массивной подошве',2390,20),(7,'кроссовки','Белые кроссовки на массивной подошве',2390,20),(8,'кроссовки','Кроссовки на танкетке со звериным принтом',4890,20),(9,'кроссовки','Розовые кроссовки на массивной подошве',2390,20),(10,'кроссовки','Черные кроссовки на пузырьковой подошве',2890,20),(11,'босоножки','Черные босоножки на каблуке и платформе для широкой стопы',2690,20),(12,'босоножки','Бежевые босоножки на каблуке и платформе для широкой стопы',2890,20),(13,'туфли','Черные туфли для широкой стопы на высоком каблуке с эластичными ремишками',2890,20),(14,'туфли','Зеленые туфли на высоком каблуке с ремешком через пятку',2690,20),(15,'туфли','Черные туфли для широкой стопы на высоком каблуке',2890,20),(16,'лоферы','Черные кожаные лоферы',3390,20),(17,'лоферы','Черные кожаные премиум лоферы на массивной подошве',5790,20),(18,'лоферы','Черные лоферы на массивной подошве с золотистыми пряжками',3390,20),(19,'лоферы','Черные замшевые лоферы',3390,20),(20,'лоферы','Бежевые лакированные лоферы',2390,20);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size_nomber` int NOT NULL,
  `date_of_purchase` date NOT NULL,
  `purchase_price` double NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,9,2,38,'2020-05-17',2890,1),(2,6,6,37,'2020-05-17',2390,1),(3,4,14,37,'2020-05-19',2690,1),(4,4,10,38,'2020-05-21',2890,1),(5,2,13,37,'2020-05-23',2890,1),(6,5,9,37,'2020-05-27',2390,1),(7,3,7,39,'2020-06-10',2390,1),(8,5,8,37,'2020-06-15',3390,1),(9,7,5,39,'2020-06-16',6290,1),(10,5,18,37,'2020-06-25',3390,1),(11,6,14,39,'2020-07-13',2690,1),(12,8,17,38,'2020-07-21',5790,1),(13,6,4,37,'2020-07-23',2390,1),(14,9,14,39,'2020-07-23',2690,1),(15,4,17,38,'2020-08-11',5790,1),(16,10,4,37,'2020-08-14',2390,1),(17,10,14,39,'2020-08-21',2690,1),(18,9,17,38,'2020-08-23',5790,1),(19,2,4,37,'2020-09-14',2390,1),(20,8,4,37,'2020-09-14',2390,1);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_nomber` varchar(100) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `size_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'36',1),(2,'37',1),(3,'38',1),(4,'39',1),(5,'40',1),(6,'41',1),(7,'36',2),(8,'37',2),(9,'38',2),(10,'39',2),(11,'40',2),(12,'41',2),(13,'36',3),(14,'37',3),(15,'38',3),(16,'39',3),(17,'40',3),(18,'41',3),(19,'36',4),(20,'37',4),(21,'38',4),(22,'39',4),(23,'40',4),(24,'41',4),(25,'36',5),(26,'37',5),(27,'38',5),(28,'39',5),(29,'40',5),(30,'41',5),(31,'36',6),(32,'37',6),(33,'38',6),(34,'39',6),(35,'40',6),(36,'41',6),(37,'36',7),(38,'37',7),(39,'38',7),(40,'39',7),(41,'40',7),(42,'41',7),(43,'36',8),(44,'37',8),(45,'38',8),(46,'39',8),(47,'40',8),(48,'41',8),(49,'36',9),(50,'37',9),(51,'38',9),(52,'39',9),(53,'40',9),(54,'41',9),(55,'36',10),(56,'37',10),(57,'38',10),(58,'39',10),(59,'40',10),(60,'41',10),(61,'36',11),(62,'37',11),(63,'38',11),(64,'39',11),(65,'40',11),(66,'41',11),(67,'36',12),(68,'37',12),(69,'38',12),(70,'39',12),(71,'40',12),(72,'41',12),(73,'36',13),(74,'37',13),(75,'38',13),(76,'39',13),(77,'40',13),(78,'41',13),(79,'36',14),(80,'37',14),(81,'38',14),(82,'39',14),(83,'40',14),(84,'41',14),(85,'36',15),(86,'37',15),(87,'38',15),(88,'39',15),(89,'40',15),(90,'41',15),(91,'36',15),(92,'37',15),(93,'38',15),(94,'39',15),(95,'40',15),(96,'41',15),(97,'36',16),(98,'37',16),(99,'38',16),(100,'39',16),(101,'40',16),(102,'41',16),(103,'36',17),(104,'37',17),(105,'38',17),(106,'39',17),(107,'40',17),(108,'41',17),(109,'36',18),(110,'37',18),(111,'38',18),(112,'39',18),(113,'40',18),(114,'41',18),(115,'36',19),(116,'37',19),(117,'38',19),(118,'39',19),(119,'40',19),(120,'41',19),(121,'36',20),(122,'37',20),(123,'38',20),(124,'39',20),(125,'40',20),(126,'41',20);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','982374',1),(2,'apelsin','apelsin96',2),(3,'cocos','cocosik',2),(4,'baban','banana',2),(5,'klunika','klubnichka',2),(6,'ricinka','ris2000',2),(7,'pelmeshek','pelmen',2),(8,'pompidorka','pomidor',2),(9,'shokoladka','shokolad',2),(10,'pirojochek','pirojok',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'zadani2'
--

--
-- Dumping routines for database 'zadani2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 14:16:17
