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
-- Table structure for table `sellcart`
--

DROP TABLE IF EXISTS `sellcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellcart` (
  `sellid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `bid` varchar(20) DEFAULT NULL,
  `custid` varchar(12) DEFAULT NULL,
  `sellprice` int(11) DEFAULT NULL,
  `selldate` date DEFAULT NULL,
  PRIMARY KEY (`sellid`),
  UNIQUE KEY `tute` (`bid`),
  KEY `sid` (`sid`),
  KEY `custid` (`custid`),
  CONSTRAINT `sellcart_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `showroom` (`sid`),
  CONSTRAINT `sellcart_ibfk_3` FOREIGN KEY (`bid`) REFERENCES `bike` (`vin`),
  CONSTRAINT `sellcart_ibfk_4` FOREIGN KEY (`custid`) REFERENCES `customers` (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellcart`
--

LOCK TABLES `sellcart` WRITE;
/*!40000 ALTER TABLE `sellcart` DISABLE KEYS */;
INSERT INTO `sellcart` VALUES (1,10,'2H2XA59DWDY990665','234589123412',50000,'2017-04-06'),(2,2,'2H2XA59DWDY990590','293456234567',160000,'2017-04-06'),(3,2,'2H2XA59DWDY990626','873838929012',47000,'2017-04-06'),(4,13,'2H2XA59DWDY990569','741523698523',75000,'2017-04-06');
/*!40000 ALTER TABLE `sellcart` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger v_bikesell after insert on sellcart for each row
begin
delete from showroomstock where bid=new.bid;
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

-- Dump completed on 2017-09-11 18:25:48
