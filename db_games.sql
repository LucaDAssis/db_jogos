CREATE DATABASE  IF NOT EXISTS `jogoseletronicos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jogoseletronicos`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: jogoseletronicos
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `DeveloperID` int NOT NULL AUTO_INCREMENT,
  `DeveloperName` varchar(100) NOT NULL,
  `Country` varchar(50) NOT NULL,
  PRIMARY KEY (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Nintendo','Japan'),(2,'Ubisoft','France'),(3,'Electronic Arts','USA');
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `GameID` int NOT NULL AUTO_INCREMENT,
  `GameName` varchar(100) NOT NULL,
  `DeveloperID` int NOT NULL,
  `GenreID` int NOT NULL,
  `PlatformID` int NOT NULL,
  `ReleaseDate` date DEFAULT NULL,
  PRIMARY KEY (`GameID`),
  KEY `DeveloperID` (`DeveloperID`),
  KEY `GenreID` (`GenreID`),
  KEY `PlatformID` (`PlatformID`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`DeveloperID`) REFERENCES `developers` (`DeveloperID`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `genres` (`GenreID`),
  CONSTRAINT `games_ibfk_3` FOREIGN KEY (`PlatformID`) REFERENCES `platforms` (`PlatformID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Super Mario Odyssey',1,2,4,'2017-10-27'),(2,'The Legend of Zelda: Breath of the Wild',1,2,4,'2017-03-03'),(3,'Mario Kart 8 Deluxe',1,2,4,'2017-04-28'),(4,'Splatoon 2',1,1,4,'2017-07-21'),(5,'Mario Party 10',1,2,4,'2015-03-20'),(6,'Assassin\'s Creed Valhalla',2,1,3,'2020-11-10'),(7,'Rainbow Six Siege',2,1,3,'2015-12-01'),(8,'Sea of Thieves',2,2,3,'2018-03-20'),(9,'FIFA 21',3,4,1,'2020-10-09'),(10,'NBA 2K21',3,4,1,'2020-09-04'),(11,'The Sims 4',3,4,1,'2014-09-02');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `GenreID` int NOT NULL AUTO_INCREMENT,
  `GenreName` varchar(50) NOT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Adventure'),(3,'RPG'),(4,'Simulation');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `PlatformID` int NOT NULL AUTO_INCREMENT,
  `PlatformName` varchar(50) NOT NULL,
  PRIMARY KEY (`PlatformID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (1,'PC'),(2,'PlayStation 5'),(3,'Xbox Series X'),(4,'Nintendo Switch');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 20:06:28
