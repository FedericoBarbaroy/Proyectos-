CREATE DATABASE  IF NOT EXISTS `jugadores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jugadores`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: jugadores
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `id_club` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estadio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'Belgrano de Córdoba','Argentina','Córdoba','Estadio Julio César Villagra'),(2,'Boca Juniors','Argentina','Buenos Aires','La Bombonera'),(3,'River Plate','Argentina','Buenos Aires','Monumental'),(4,'Talleres de Córdoba','Argentina','Córdoba','Estadio Mario Alberto Kempes');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id_contrato` int NOT NULL,
  `id_jugador` int DEFAULT NULL,
  `id_club` int DEFAULT NULL,
  `salario_mensual` decimal(10,2) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_contrato`),
  KEY `id_jugador` (`id_jugador`),
  KEY `id_club` (`id_club`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_club`) REFERENCES `club` (`id_club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,1,1,29991.00,'2024-06-27','2028-06-26'),(2,2,1,25056.00,'2024-01-23','2028-01-22'),(3,3,1,36711.00,'2024-02-03','2027-02-02'),(4,4,1,23389.00,'2024-06-22','2026-06-22'),(5,5,1,27810.00,'2024-08-05','2027-08-05'),(6,6,1,17326.00,'2024-11-27','2028-11-26'),(7,7,1,35412.00,'2024-01-03','2027-01-02'),(8,8,1,21309.00,'2024-09-20','2027-09-20'),(9,9,1,32968.00,'2024-10-15','2026-10-15'),(10,10,1,18211.00,'2024-05-06','2027-05-06'),(11,11,1,19056.00,'2024-05-19','2026-05-19'),(12,12,1,39681.00,'2024-04-18','2027-04-18'),(13,13,1,34848.00,'2024-12-18','2027-12-18'),(14,14,1,33473.00,'2024-11-21','2028-11-20'),(15,15,1,32809.00,'2024-06-10','2028-06-09'),(16,16,1,22561.00,'2024-07-15','2028-07-14'),(17,17,1,28923.00,'2024-07-25','2026-07-25'),(18,18,1,24889.00,'2024-01-14','2026-01-13'),(19,19,1,19021.00,'2024-10-08','2028-10-07'),(20,20,1,37050.00,'2024-03-22','2027-03-22'),(21,21,1,27590.00,'2024-02-21','2026-02-20'),(22,22,1,32612.00,'2024-03-09','2028-03-08'),(23,23,1,33203.00,'2024-10-04','2027-10-04'),(24,24,1,19272.00,'2024-09-11','2027-09-11'),(25,25,1,33680.00,'2024-12-12','2028-12-11'),(26,26,1,21330.00,'2024-12-06','2027-12-06'),(27,27,1,31828.00,'2024-06-09','2026-06-09'),(28,28,1,17908.00,'2024-01-02','2027-01-01'),(29,29,1,29792.00,'2024-04-05','2026-04-05'),(30,30,1,15009.00,'2024-10-21','2026-10-21');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_validar_update_contrato` BEFORE UPDATE ON `contrato` FOR EACH ROW BEGIN
    -- Si se cambia el salario pero no la fecha de fin
    IF NEW.salario_mensual <> OLD.salario_mensual 
       AND NEW.fecha_fin = OLD.fecha_fin THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Si modificas el salario, también debes modificar la fecha de finalización';
    END IF;

    -- Si se cambia la fecha de fin pero no el salario
    IF NEW.fecha_fin <> OLD.fecha_fin 
       AND NEW.salario_mensual = OLD.salario_mensual THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Si modificas la fecha de finalización, también debes modificar el salario';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estadisticajugador`
--

DROP TABLE IF EXISTS `estadisticajugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadisticajugador` (
  `id_estadistica` int NOT NULL,
  `id_partido` int DEFAULT NULL,
  `id_jugador` int DEFAULT NULL,
  `minutos` int DEFAULT NULL,
  `goles` int DEFAULT NULL,
  `asistencias` int DEFAULT NULL,
  `amarillas` int DEFAULT NULL,
  `rojas` int DEFAULT NULL,
  `vallas_invictas` int DEFAULT NULL,
  PRIMARY KEY (`id_estadistica`),
  KEY `id_partido` (`id_partido`),
  KEY `id_jugador` (`id_jugador`),
  CONSTRAINT `estadisticajugador_ibfk_1` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id_partido`),
  CONSTRAINT `estadisticajugador_ibfk_2` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadisticajugador`
--

LOCK TABLES `estadisticajugador` WRITE;
/*!40000 ALTER TABLE `estadisticajugador` DISABLE KEYS */;
INSERT INTO `estadisticajugador` VALUES (1,1,4,75,1,0,0,0,NULL),(2,1,7,90,2,1,0,0,NULL),(3,1,10,105,0,0,0,0,NULL),(4,1,13,60,1,1,1,0,NULL),(5,1,16,75,2,0,0,0,NULL),(6,1,19,90,0,1,0,0,NULL),(7,1,22,105,1,0,0,0,NULL),(8,1,25,60,2,1,1,0,NULL),(9,1,28,75,0,0,0,0,NULL),(10,1,1,90,1,1,0,0,NULL),(11,2,4,105,2,0,0,0,NULL),(12,2,7,60,0,1,1,0,NULL),(13,2,10,75,1,0,0,0,NULL),(14,2,13,90,2,1,0,0,NULL),(15,2,16,105,0,0,0,1,NULL),(16,2,19,60,1,1,1,0,NULL),(17,2,22,75,2,0,0,0,NULL),(18,2,25,90,0,1,0,0,NULL),(19,2,28,105,1,0,0,0,NULL),(20,2,1,60,2,1,1,0,NULL),(21,3,4,75,0,0,0,0,NULL),(22,3,7,90,1,1,0,0,NULL),(23,3,10,105,2,0,0,0,NULL),(24,3,13,60,0,1,1,0,NULL),(25,3,16,75,1,0,0,0,NULL),(26,3,19,90,2,1,0,0,NULL),(27,3,22,105,0,0,0,0,NULL),(28,3,25,60,1,1,1,0,NULL),(29,3,28,75,2,0,0,0,NULL),(30,3,1,90,0,1,0,1,NULL),(31,4,4,105,1,0,0,0,NULL),(32,4,7,60,2,1,1,0,NULL),(33,4,10,75,0,0,0,0,NULL),(34,4,13,90,1,1,0,0,NULL),(35,4,16,105,2,0,0,0,NULL),(36,4,19,60,0,1,1,0,NULL),(37,4,22,75,1,0,0,0,NULL),(38,4,25,90,2,1,0,0,NULL),(39,4,28,105,0,0,0,0,NULL),(40,4,1,60,1,1,1,0,NULL),(41,5,4,75,2,0,0,0,NULL),(42,5,7,90,0,1,0,0,NULL),(43,5,10,105,1,0,0,0,NULL),(44,5,13,60,2,1,1,0,NULL),(45,5,16,75,0,0,0,1,NULL),(46,5,19,90,1,1,0,0,NULL),(47,5,22,105,2,0,0,0,NULL),(48,5,25,60,0,1,1,0,NULL),(49,5,28,75,1,0,0,0,NULL),(50,5,1,90,2,1,0,0,NULL),(51,6,4,105,0,0,0,0,NULL),(52,6,7,60,1,1,1,0,NULL),(53,6,10,75,2,0,0,0,NULL),(54,6,13,90,0,1,0,0,NULL),(55,6,16,105,1,0,0,0,NULL),(56,6,19,60,2,1,1,0,NULL),(57,6,22,75,0,0,0,0,NULL),(58,6,25,90,1,1,0,0,NULL),(59,6,28,105,2,0,0,0,NULL),(60,6,1,60,0,1,1,1,NULL),(61,7,4,75,1,0,0,0,NULL),(62,7,7,90,2,1,0,0,NULL),(63,7,10,105,0,0,0,0,NULL),(64,7,13,60,1,1,1,0,NULL),(65,7,16,75,2,0,0,0,NULL),(66,7,19,90,0,1,0,0,NULL),(67,7,22,105,1,0,0,0,NULL),(68,7,25,60,2,1,1,0,NULL),(69,7,28,75,0,0,0,0,NULL),(70,7,1,90,1,1,0,0,NULL),(71,8,4,105,2,0,0,0,NULL),(72,8,7,60,0,1,1,0,NULL),(73,8,10,75,1,0,0,0,NULL),(74,8,13,90,2,1,0,0,NULL),(75,8,16,105,0,0,0,1,NULL),(76,8,19,60,1,1,1,0,NULL),(77,8,22,75,2,0,0,0,NULL),(78,8,25,90,0,1,0,0,NULL),(79,8,28,105,1,0,0,0,NULL),(80,8,1,60,2,1,1,0,NULL),(81,9,4,75,0,0,0,0,NULL),(82,9,7,90,1,1,0,0,NULL),(83,9,10,105,2,0,0,0,NULL),(84,9,13,60,0,1,1,0,NULL),(85,9,16,75,1,0,0,0,NULL),(86,9,19,90,2,1,0,0,NULL),(87,9,22,105,0,0,0,0,NULL),(88,9,25,60,1,1,1,0,NULL),(89,9,28,75,2,0,0,0,NULL),(90,9,1,90,0,1,0,1,NULL),(91,10,4,105,1,0,0,0,NULL),(92,10,7,60,2,1,1,0,NULL),(93,10,10,75,0,0,0,0,NULL),(94,10,13,90,1,1,0,0,NULL),(95,10,16,105,2,0,0,0,NULL),(96,10,19,60,0,1,1,0,NULL),(97,10,22,75,1,0,0,0,NULL),(98,10,25,90,2,1,0,0,NULL),(99,10,28,105,0,0,0,0,NULL),(100,10,1,60,1,1,1,0,NULL);
/*!40000 ALTER TABLE `estadisticajugador` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_jugador_unico_partido` BEFORE INSERT ON `estadisticajugador` FOR EACH ROW BEGIN
    IF EXISTS (
        SELECT 1 
        FROM EstadisticaJugador 
        WHERE id_partido = NEW.id_partido
          AND id_jugador = NEW.id_jugador
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El jugador ya tiene estadísticas en este partido';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `id_jugador` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `altura` decimal(5,2) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `pierna_habil` varchar(10) DEFAULT NULL,
  `posicion_id` int DEFAULT NULL,
  `nacionalidad_id` int DEFAULT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `fk_posicion` (`posicion_id`),
  KEY `fk_nacionalidad` (`nacionalidad_id`),
  CONSTRAINT `fk_nacionalidad` FOREIGN KEY (`nacionalidad_id`) REFERENCES `nacionalidad` (`id_nacionalidad`),
  CONSTRAINT `fk_posicion` FOREIGN KEY (`posicion_id`) REFERENCES `posicion` (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Juan Pérez','1995-08-24',176.00,72.00,'Derecha',4,1),(2,'Matías González','2003-05-22',181.00,70.00,'Derecha',7,1),(3,'Lucas Fernández','1994-11-15',181.00,80.00,'Derecha',1,4),(4,'Diego Suárez','2003-05-12',189.00,81.00,'Derecha',8,2),(5,'Ezequiel Ramírez','1997-02-11',189.00,83.00,'Izquierda',9,2),(6,'Gonzalo Silva','1994-11-28',182.00,69.00,'Izquierda',8,2),(7,'Rodrigo Morales','2001-11-13',180.00,79.00,'Derecha',3,1),(8,'Nicolás Rojas','1995-10-17',179.00,72.00,'Derecha',1,5),(9,'Agustín López','1997-05-29',181.00,69.00,'Izquierda',5,4),(10,'Franco Castro','1999-01-20',187.00,73.00,'Derecha',4,4),(11,'Bruno Pereira','2000-03-04',186.00,71.00,'Izquierda',1,3),(12,'Martín Herrera','1995-06-29',181.00,70.00,'Izquierda',6,5),(13,'Cristian Díaz','2001-09-30',189.00,81.00,'Izquierda',2,5),(14,'Jorge Benítez','1997-05-20',184.00,83.00,'Derecha',3,5),(15,'Santiago Álvarez','2000-05-05',190.00,68.00,'Derecha',3,5),(16,'Felipe Oliveira','2000-10-09',184.00,78.00,'Izquierda',3,5),(17,'Claudio Torres','1998-04-10',182.00,70.00,'Izquierda',7,3),(18,'Matheo Correa','1995-11-26',186.00,69.00,'Derecha',9,2),(19,'Gastón Muñoz','1998-06-19',183.00,77.00,'Derecha',7,5),(20,'Hernán Figueroa','2001-10-09',179.00,75.00,'Derecha',7,1),(21,'Pablo Medina','1994-09-23',183.00,68.00,'Izquierda',8,1),(22,'Leandro Cabrera','1996-04-02',189.00,70.00,'Izquierda',9,1),(23,'Tomás Bravo','2003-04-26',180.00,73.00,'Izquierda',6,3),(24,'Ricardo Núñez','1997-01-10',185.00,79.00,'Izquierda',4,4),(25,'Andrés Ferreira','1998-12-27',179.00,77.00,'Izquierda',4,2),(26,'Sebastián Vega','2002-08-20',179.00,76.00,'Izquierda',5,2),(27,'Lautaro Ortiz','1999-12-18',187.00,70.00,'Izquierda',9,2),(28,'Marcos Villalba','1996-01-31',189.00,84.00,'Derecha',1,5),(29,'Daniel González','2000-05-24',187.00,82.00,'Derecha',4,1),(30,'Federico Castillo','2001-01-30',180.00,74.00,'Izquierda',9,2);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalidad`
--

DROP TABLE IF EXISTS `nacionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int NOT NULL,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id_nacionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidad`
--

LOCK TABLES `nacionalidad` WRITE;
/*!40000 ALTER TABLE `nacionalidad` DISABLE KEYS */;
INSERT INTO `nacionalidad` VALUES (1,'Argentina'),(2,'Uruguay'),(3,'Paraguay'),(4,'Brasil'),(5,'Chile');
/*!40000 ALTER TABLE `nacionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `id_partido` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `goles_local` int DEFAULT NULL,
  `goles_visitante` int DEFAULT NULL,
  `id_club_visitante` int DEFAULT NULL,
  `id_club_local` int DEFAULT NULL,
  `estadio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_partido`),
  KEY `id_club_visitante` (`id_club_visitante`),
  KEY `id_club_local` (`id_club_local`),
  CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`id_club_visitante`) REFERENCES `club` (`id_club`),
  CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`id_club_local`) REFERENCES `club` (`id_club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,'2023-03-08',2,0,1,4,'Estadio Mario Alberto Kempes'),(2,'2023-03-15',0,3,1,3,'Monumental'),(3,'2023-03-22',2,3,3,4,'Estadio Mario Alberto Kempes'),(4,'2023-03-29',2,2,4,2,'La Bombonera'),(5,'2023-04-05',3,3,2,4,'Estadio Mario Alberto Kempes'),(6,'2023-04-12',0,2,1,2,'La Bombonera'),(7,'2023-04-19',1,0,3,1,'Estadio Julio César Villagra'),(8,'2023-04-26',3,1,3,1,'Estadio Julio César Villagra'),(9,'2023-05-03',3,2,3,1,'Estadio Julio César Villagra'),(10,'2023-05-10',0,1,4,1,'Estadio Julio César Villagra');
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `id_posicion` int NOT NULL,
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'Arquero'),(2,'Defensor Central'),(3,'Lateral Derecho'),(4,'Lateral Izquierdo'),(5,'Mediocentro'),(6,'Mediocampista Ofensivo'),(7,'Extremo Derecho'),(8,'Extremo Izquierdo'),(9,'Delantero Centro');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salario_jugador_mensual`
--

DROP TABLE IF EXISTS `salario_jugador_mensual`;
/*!50001 DROP VIEW IF EXISTS `salario_jugador_mensual`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salario_jugador_mensual` AS SELECT 
 1 AS `nombre`,
 1 AS `salario_mensual`,
 1 AS `fecha_inicio`,
 1 AS `fecha_fin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `traspaso`
--

DROP TABLE IF EXISTS `traspaso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traspaso` (
  `id_traspaso` int NOT NULL,
  `id_jugador` int DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `fecha_traspaso` date DEFAULT NULL,
  `club_origen_id` int DEFAULT NULL,
  `club_destino_id` int DEFAULT NULL,
  `valor` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_traspaso`),
  KEY `id_jugador` (`id_jugador`),
  KEY `club_origen_id` (`club_origen_id`),
  KEY `club_destino_id` (`club_destino_id`),
  CONSTRAINT `traspaso_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugador` (`id_jugador`),
  CONSTRAINT `traspaso_ibfk_2` FOREIGN KEY (`club_origen_id`) REFERENCES `club` (`id_club`),
  CONSTRAINT `traspaso_ibfk_3` FOREIGN KEY (`club_destino_id`) REFERENCES `club` (`id_club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traspaso`
--

LOCK TABLES `traspaso` WRITE;
/*!40000 ALTER TABLE `traspaso` DISABLE KEYS */;
/*!40000 ALTER TABLE `traspaso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_jugadores_derechos`
--

DROP TABLE IF EXISTS `vista_jugadores_derechos`;
/*!50001 DROP VIEW IF EXISTS `vista_jugadores_derechos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_jugadores_derechos` AS SELECT 
 1 AS `nombre`,
 1 AS `fecha_nacimiento`,
 1 AS `pierna_habil`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_jugadores_izquierdos`
--

DROP TABLE IF EXISTS `vista_jugadores_izquierdos`;
/*!50001 DROP VIEW IF EXISTS `vista_jugadores_izquierdos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_jugadores_izquierdos` AS SELECT 
 1 AS `nombre`,
 1 AS `fecha_nacimiento`,
 1 AS `pierna_habil`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaestadisticasjugadores`
--

DROP TABLE IF EXISTS `vistaestadisticasjugadores`;
/*!50001 DROP VIEW IF EXISTS `vistaestadisticasjugadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaestadisticasjugadores` AS SELECT 
 1 AS `id_jugador`,
 1 AS `nombre`,
 1 AS `goles_totales`,
 1 AS `asistencias_totales`,
 1 AS `amarillas_totales`,
 1 AS `rojas_totales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistainfojugadores`
--

DROP TABLE IF EXISTS `vistainfojugadores`;
/*!50001 DROP VIEW IF EXISTS `vistainfojugadores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistainfojugadores` AS SELECT 
 1 AS `id_jugador`,
 1 AS `nombre`,
 1 AS `salario_mensual`,
 1 AS `salario_anual`,
 1 AS `dias_restantes_contrato`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistasalarioanual`
--

DROP TABLE IF EXISTS `vistasalarioanual`;
/*!50001 DROP VIEW IF EXISTS `vistasalarioanual`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistasalarioanual` AS SELECT 
 1 AS `id_jugador`,
 1 AS `nombre`,
 1 AS `salario_anual`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'jugadores'
--

--
-- Dumping routines for database 'jugadores'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularSalarioAnual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularSalarioAnual`(p_id_jugador INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE salarioMensual DECIMAL(10,2);
    DECLARE salarioAnual DECIMAL(10,2);

    -- Obtener el salario mensual del jugador
    SELECT c.salario_mensual INTO salarioMensual
    FROM Contrato c
    WHERE c.id_jugador = p_id_jugador
    ORDER BY c.fecha_inicio DESC
    LIMIT 1;

    -- Calcular el salario anual
    SET salarioAnual = salarioMensual * 12;

    RETURN salarioAnual;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `DiasRestantesContrato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `DiasRestantesContrato`(p_id_jugador INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE dias_restantes INT;

    -- Tomamos la fecha_fin del contrato más reciente del jugador
    SELECT DATEDIFF(c.fecha_fin, CURDATE())
    INTO dias_restantes
    FROM Contrato c
    WHERE c.id_jugador = p_id_jugador
    ORDER BY c.fecha_inicio DESC
    LIMIT 1;

    -- Si no tiene contrato, devolvemos NULL (podés cambiar a -1 si preferís)
    IF dias_restantes IS NULL THEN
        RETURN NULL;
    END IF;

    -- Si ya expiró, devolvemos 0 (no -ve)
    IF dias_restantes < 0 THEN
        RETURN 0;
    END IF;

    RETURN dias_restantes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `TotalamarillasJugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TotalamarillasJugador`(v_id_jugador INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_amarillas INT;

    SELECT SUM(e.amarillas) 
    INTO total_amarillas
    FROM EstadisticaJugador e
    WHERE e.id_jugador = v_id_jugador;

    -- Si el jugador no tiene registros, devolvemos 0
    IF total_amarillas IS NULL THEN
        RETURN 0;
    END IF;

    RETURN total_amarillas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `TotalAsistenciasJugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TotalAsistenciasJugador`(v_id_jugador INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_asistencias INT;

    SELECT SUM(e.asistencias) 
    INTO total_asistencias
    FROM EstadisticaJugador e
    WHERE e.id_jugador = v_id_jugador;

    -- Si el jugador no tiene registros, devolvemos 0
    IF total_asistencias IS NULL THEN
        RETURN 0;
    END IF;

    RETURN total_asistencias;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `TotalGolesJugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TotalGolesJugador`(v_id_jugador INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_goles INT;

    SELECT SUM(e.goles) 
    INTO total_goles
    FROM EstadisticaJugador e
    WHERE e.id_jugador = v_id_jugador;

    -- Si el jugador no tiene registros, devolvemos 0
    IF total_goles IS NULL THEN
        RETURN 0;
    END IF;

    RETURN total_goles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `TotalrojasJugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TotalrojasJugador`(v_id_jugador INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_rojas INT;

    SELECT SUM(e.rojas) 
    INTO total_rojas
    FROM EstadisticaJugador e
    WHERE e.id_jugador = v_id_jugador;

    -- Si el jugador no tiene registros, devolvemos 0
    IF total_rojas IS NULL THEN
        RETURN 0;
    END IF;

    RETURN total_rojas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ContratosVigentesJugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ContratosVigentesJugador`(IN p_id_jugador INT)
BEGIN
    SELECT 
        c.id_contrato,
        j.nombre,
        c.salario_mensual,
        c.fecha_inicio,
        c.fecha_fin
    FROM Contrato c
    INNER JOIN Jugador j ON c.id_jugador = j.id_jugador
    WHERE c.id_jugador = p_id_jugador
      AND c.fecha_fin >= CURDATE(); -- Solo contratos que no vencieron
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListarJugadores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListarJugadores`()
BEGIN
    SELECT id_jugador, nombre, fecha_nacimiento, pierna_habil
    FROM Jugador;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `salario_jugador_mensual`
--

/*!50001 DROP VIEW IF EXISTS `salario_jugador_mensual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salario_jugador_mensual` AS select `j`.`nombre` AS `nombre`,`ct`.`salario_mensual` AS `salario_mensual`,`ct`.`fecha_inicio` AS `fecha_inicio`,`ct`.`fecha_fin` AS `fecha_fin` from (`contrato` `ct` join `jugador` `j` on((`ct`.`id_jugador` = `j`.`id_jugador`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_jugadores_derechos`
--

/*!50001 DROP VIEW IF EXISTS `vista_jugadores_derechos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_jugadores_derechos` AS select `jugador`.`nombre` AS `nombre`,`jugador`.`fecha_nacimiento` AS `fecha_nacimiento`,`jugador`.`pierna_habil` AS `pierna_habil` from `jugador` where (`jugador`.`pierna_habil` = 'Derecha') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_jugadores_izquierdos`
--

/*!50001 DROP VIEW IF EXISTS `vista_jugadores_izquierdos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_jugadores_izquierdos` AS select `jugador`.`nombre` AS `nombre`,`jugador`.`fecha_nacimiento` AS `fecha_nacimiento`,`jugador`.`pierna_habil` AS `pierna_habil` from `jugador` where (`jugador`.`pierna_habil` = 'Izquierda') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaestadisticasjugadores`
--

/*!50001 DROP VIEW IF EXISTS `vistaestadisticasjugadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaestadisticasjugadores` AS select `j`.`id_jugador` AS `id_jugador`,`j`.`nombre` AS `nombre`,`TotalGolesJugador`(`j`.`id_jugador`) AS `goles_totales`,`TotalAsistenciasJugador`(`j`.`id_jugador`) AS `asistencias_totales`,`TotalAmarillasJugador`(`j`.`id_jugador`) AS `amarillas_totales`,`TotalRojasJugador`(`j`.`id_jugador`) AS `rojas_totales` from `jugador` `j` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistainfojugadores`
--

/*!50001 DROP VIEW IF EXISTS `vistainfojugadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistainfojugadores` AS select `j`.`id_jugador` AS `id_jugador`,`j`.`nombre` AS `nombre`,`c`.`salario_mensual` AS `salario_mensual`,`CalcularSalarioAnual`(`j`.`id_jugador`) AS `salario_anual`,`DiasRestantesContrato`(`j`.`id_jugador`) AS `dias_restantes_contrato` from (`jugador` `j` left join `contrato` `c` on((`j`.`id_jugador` = `c`.`id_jugador`))) order by `j`.`id_jugador` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistasalarioanual`
--

/*!50001 DROP VIEW IF EXISTS `vistasalarioanual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistasalarioanual` AS select `j`.`id_jugador` AS `id_jugador`,`j`.`nombre` AS `nombre`,`CalcularSalarioAnual`(`j`.`id_jugador`) AS `salario_anual` from `jugador` `j` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-11  9:23:48
