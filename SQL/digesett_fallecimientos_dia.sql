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
-- Table structure for table `fallecimientos_dia`
--

DROP TABLE IF EXISTS `fallecimientos_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallecimientos_dia` (
  `ï»¿DIA DE SEMANA` text,
  `FALLECIDOS` int DEFAULT NULL,
  `AÃ‘O` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallecimientos_dia`
--

LOCK TABLES `fallecimientos_dia` WRITE;
/*!40000 ALTER TABLE `fallecimientos_dia` DISABLE KEYS */;
INSERT INTO `fallecimientos_dia` VALUES ('Lunes',334,2016),('Martes',205,2016),('MiÃ©rcoles',191,2016),('Jueves ',197,2016),('Viernes',230,2016),('SÃ¡bado',347,2016),('Domingo',489,2016),('Lunes',277,2017),('Martes',159,2017),('MiÃ©rcoles',157,2017),('Jueves ',192,2017),('Viernes',171,2017),('SÃ¡bado',243,2017),('Domingo',389,2017),('Lunes',249,2018),('Martes',168,2018),('MiÃ©rcoles',194,2018),('Jueves ',133,2018),('Viernes',154,2018),('SÃ¡bado',185,2018),('Domingo',344,2018),('Lunes',320,2019),('Martes',225,2019),('MiÃ©rcoles',200,2019),('Jueves ',247,2019),('Viernes',223,2019),('SÃ¡bado',310,2019),('Domingo',570,2019),('Lunes',292,2020),('Martes',178,2020),('MiÃ©rcoles',189,2020),('Jueves ',164,2020),('Viernes',220,2020),('SÃ¡bado',309,2020),('Domingo',380,2020),('Lunes',248,2021),('Martes',154,2021),('MiÃ©rcoles',146,2021),('Jueves',183,2021),('Viernes',188,2021),('SÃ¡bado',234,2021),('Domingo',390,2021);
/*!40000 ALTER TABLE `fallecimientos_dia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-22 19:53:15
