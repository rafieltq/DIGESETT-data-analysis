-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: digesett
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `fallecimientos_hora`
--

DROP TABLE IF EXISTS `fallecimientos_hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallecimientos_hora` (
  `ï»¿Intervalos de horas` text,
  `FALLECIDOS` int DEFAULT NULL,
  `AÃ‘O` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallecimientos_hora`
--

LOCK TABLES `fallecimientos_hora` WRITE;
/*!40000 ALTER TABLE `fallecimientos_hora` DISABLE KEYS */;
INSERT INTO `fallecimientos_hora` VALUES ('00:00-05:59 MADRUGADA',356,2016),('06:00-11:59 MAÃ‘ANA',486,2016),('12:00-17:59 TARDE ',491,2016),('18:00-23:59 NOCHE',660,2016),('00:00-05:59 MADRUGADA',228,2017),('06:00-11:59 MAÃ‘ANA',468,2017),('12:00-17:59 TARDE ',411,2017),('18:00-23:59 NOCHE',481,2017),('00:00-05:59 MADRUGADA',245,2018),('06:00-11:59 MAÃ‘ANA',388,2018),('12:00-17:59 TARDE ',387,2018),('18:00-23:59 NOCHE',407,2018),('00:00-05:59 MADRUGADA',436,2019),('06:00-11:59 MAÃ‘ANA',480,2019),('12:00-17:59 TARDE ',498,2019),('18:00-23:59 NOCHE',681,2019),('00:00-05:59 MADRUGADA',167,2020),('06:00-11:59 MAÃ‘ANA',439,2020),('12:00-17:59 TARDE ',563,2020),('18:00-23:59 NOCHE',562,2020),('SIN ESPECIFICACION',1,2020),('00:00-05:59 MADRUGADA',216,2021),('06:00-11:59 MAÃ‘ANA',334,2021),('12:00-17:59 TARDE ',412,2021),('18:00-23:59 NOCHE',580,2021),('SIN ESPECIFICACION',1,2021);
/*!40000 ALTER TABLE `fallecimientos_hora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-22 19:53:14