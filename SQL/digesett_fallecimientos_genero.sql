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
-- Table structure for table `fallecimientos_genero`
--

DROP TABLE IF EXISTS `fallecimientos_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallecimientos_genero` (
  `ï»¿GENERO` text,
  `FALLECIDOS` int DEFAULT NULL,
  `AÃ‘O` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallecimientos_genero`
--

LOCK TABLES `fallecimientos_genero` WRITE;
/*!40000 ALTER TABLE `fallecimientos_genero` DISABLE KEYS */;
INSERT INTO `fallecimientos_genero` VALUES ('Hombres ',1785,2016),('Mujeres',208,2016),('Sin EspecificaciÃ³n',0,2016),('Hombres ',1412,2017),('Mujeres',176,2017),('Sin EspecificaciÃ³n',0,2017),('Hombres ',1288,2018),('Mujeres',139,2018),('Sin EspecificaciÃ³n',0,2018),('Hombres ',1860,2019),('Mujeres',228,2019),('Sin EspecificaciÃ³n',7,2019),('Hombres ',1476,2020),('Mujeres',234,2020),('Sin EspecificaciÃ³n',22,2020),('Hombres ',1350,2021),('Mujeres',180,2021),('Sin EspecificaciÃ³n',13,2021);
/*!40000 ALTER TABLE `fallecimientos_genero` ENABLE KEYS */;
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
