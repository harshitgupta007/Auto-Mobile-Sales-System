CREATE DATABASE  IF NOT EXISTS `srms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `srms`;
-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: srms
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `showroomstock`
--

DROP TABLE IF EXISTS `showroomstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showroomstock` (
  `sid` int(11) NOT NULL DEFAULT '0',
  `edate` date DEFAULT NULL,
  `bid` varchar(20) NOT NULL,
  UNIQUE KEY `bid` (`bid`),
  KEY `sindex` (`sid`),
  CONSTRAINT `showroomstock_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `bike` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showroomstock`
--

LOCK TABLES `showroomstock` WRITE;
/*!40000 ALTER TABLE `showroomstock` DISABLE KEYS */;
INSERT INTO `showroomstock` VALUES (13,'2017-04-06','2H2XA59DWDY990575'),(2,'2017-04-06','2H2XA59DWDY990596'),(2,'2017-04-06','2H2XA59DWDY990602'),(2,'2017-04-06','2H2XA59DWDY990608'),(2,'2017-04-06','2H2XA59DWDY990614'),(2,'2017-04-06','2H2XA59DWDY990620'),(2,'2017-04-06','2H2XA59DWDY990632'),(2,'2017-04-06','2H2XA59DWDY990638'),(2,'2017-04-06','2H2XA59DWDY990644'),(2,'2017-04-06','2H2XA59DWDY990650'),(2,'2017-04-06','2H2XA59DWDY990656'),(2,'2017-04-06','2H2XA59DWDY990662'),(13,'2017-04-06','2H2XA59DWDY990668');
/*!40000 ALTER TABLE `showroomstock` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger on_showroomentry after insert on showroomstock
for each row
begin
delete from dealersupplytoshowroom where bid=new.bid;
update logreport_showroomsupply set recievedate=curdate() where bid=new.bid;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 18:25:47
