CREATE DATABASE  IF NOT EXISTS `rinconbotanico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rinconbotanico`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rinconbotanico
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Temporary view structure for view `datafull`
--

DROP TABLE IF EXISTS `datafull`;
/*!50001 DROP VIEW IF EXISTS `datafull`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `datafull` AS SELECT 
 1 AS `idPlantas`,
 1 AS `PlantasNombre`,
 1 AS `idCategoria`,
 1 AS `CategoriaDescripcion`,
 1 AS `ImagenesLinkFoto`,
 1 AS `Ubicacion`,
 1 AS `Sustrato`,
 1 AS `Riego`,
 1 AS `Floracion`,
 1 AS `Tamano`,
 1 AS `Observaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `datafull`
--

/*!50001 DROP VIEW IF EXISTS `datafull`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `datafull` AS select `plantasconfoto`.`idPlantas` AS `idPlantas`,`plantasconfoto`.`PlantasNombre` AS `PlantasNombre`,`plantasconfoto`.`idCategoria` AS `idCategoria`,`plantasconfoto`.`CategoriaDescripcion` AS `CategoriaDescripcion`,`plantasconfoto`.`ImagenesLinkFoto` AS `ImagenesLinkFoto`,`dataplantas`.`Ubicacion` AS `Ubicacion`,`dataplantas`.`Sustrato` AS `Sustrato`,`dataplantas`.`Riego` AS `Riego`,`dataplantas`.`Floracion` AS `Floracion`,`dataplantas`.`Tamano` AS `Tamano`,`dataplantas`.`Observaciones` AS `Observaciones` from (`plantasconfoto` join `dataplantas`) where (`dataplantas`.`idPlantas` = `plantasconfoto`.`idPlantas`) */;
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

-- Dump completed