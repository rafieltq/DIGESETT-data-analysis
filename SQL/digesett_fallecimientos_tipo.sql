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
-- Table structure for table `fallecimientos_tipo`
--

DROP TABLE IF EXISTS `fallecimientos_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fallecimientos_tipo` (
  `ï»¿Tipo de Accidente` text,
  `FALLECIDOS` int DEFAULT NULL,
  `AÃ‘O` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallecimientos_tipo`
--

LOCK TABLES `fallecimientos_tipo` WRITE;
/*!40000 ALTER TABLE `fallecimientos_tipo` DISABLE KEYS */;
INSERT INTO `fallecimientos_tipo` VALUES ('Colisiones',1179,2016),('Deslizamientos',391,2016),('Atropellos',324,2016),('Estrellamientos',67,2016),('CaÃ­das desde VehÃ­culos en Movimiento',13,2016),('Volcaduras de VehÃ­culo',7,2016),('Colisiones con Animales',12,2016),('Aplastamiento',0,2016),('Sin EspecificaciÃ³n',0,2016),('Colisiones',913,2017),('Deslizamientos',311,2017),('Atropellos',275,2017),('Estrellamientos',63,2017),('CaÃ­das desde VehÃ­culos en Movimiento',6,2017),('Volcaduras de VehÃ­culo',6,2017),('Colisiones con Animales',14,2017),('Aplastamiento',0,2017),('Sin EspecificaciÃ³n',0,2017),('Colisiones',846,2018),('Deslizamientos',272,2018),('Atropellos',241,2018),('Estrellamientos',56,2018),('CaÃ­das desde VehÃ­culos en Movimiento',6,2018),('Volcaduras de VehÃ­culo',4,2018),('Colisiones con Animales',2,2018),('Aplastamiento',0,2018),('Sin EspecificaciÃ³n',0,2018),('Colisiones',1219,2019),('Deslizamientos',423,2019),('Atropellos',310,2019),('Estrellamientos',93,2019),('Colisiones con Animales',25,2019),('Caidas',11,2019),('Volcaduras',9,2019),('Aplastamientos',4,2019),('Sin EspecificaciÃ³n',1,2019),('Colisiones',1061,2020),('Deslizamientos',370,2020),('Atropellamientos',214,2020),('Estrellamientos',74,2020),('CaÃ­das desde VehÃ­culos en Movimiento',7,2020),('Volcaduras',3,2020),('Aplastamientos',2,2020),('Sin EspecificaciÃ³n',1,2020),('ColisiÃ³n',965,2021),('Deslizamiento',322,2021),('Atropellamiento',179,2021),('Estrellamiento',52,2021),('CaÃ­da',9,2021),('Aplastamiento',6,2021),('Volcadura',6,2021),('Quemaduras',2,2021),('CaÃ­da y Atroppellamiento',1,2021),('CaÃ­da de Arbol',1,2021);
/*!40000 ALTER TABLE `fallecimientos_tipo` ENABLE KEYS */;
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
