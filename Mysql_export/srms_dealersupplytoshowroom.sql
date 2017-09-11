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
-- Table structure for table `dealersupplytoshowroom`
--

DROP TABLE IF EXISTS `dealersupplytoshowroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealersupplytoshowroom` (
  `did` varchar(12) NOT NULL,
  `bid` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `supplydate` date DEFAULT NULL,
  UNIQUE KEY `e45` (`bid`),
  KEY `did` (`did`),
  KEY `sid` (`sid`),
  CONSTRAINT `dealersupplytoshowroom_ibfk_1` FOREIGN KEY (`did`) REFERENCES `dealer` (`id`),
  CONSTRAINT `dealersupplytoshowroom_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `bike` (`vin`),
  CONSTRAINT `dealersupplytoshowroom_ibfk_3` FOREIGN KEY (`sid`) REFERENCES `showroom` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealersupplytoshowroom`
--

LOCK TABLES `dealersupplytoshowroom` WRITE;
/*!40000 ALTER TABLE `dealersupplytoshowroom` DISABLE KEYS */;
INSERT INTO `dealersupplytoshowroom` VALUES ('552878995322','2H2XA59DWDY990572',9,'2017-04-06'),('237737828283','2H2XA59DWDY990578',32,'2017-04-06'),('552878995322','2H2XA59DWDY990593',9,'2017-04-06'),('552878995322','2H2XA59DWDY990599',9,'2017-04-06'),('552878995322','2H2XA59DWDY990605',36,'2017-04-06'),('552878995322','2H2XA59DWDY990611',9,'2017-04-06'),('552878995322','2H2XA59DWDY990617',9,'2017-04-06'),('552878995322','2H2XA59DWDY990623',36,'2017-04-06'),('552878995322','2H2XA59DWDY990629',9,'2017-04-06'),('552878995322','2H2XA59DWDY990635',36,'2017-04-06'),('552878995322','2H2XA59DWDY990641',9,'2017-04-06'),('552878995322','2H2XA59DWDY990653',9,'2017-04-06');
/*!40000 ALTER TABLE `dealersupplytoshowroom` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger dealer_supply after insert on dealersupplytoshowroom for each row
begin
insert into logreport_showroomsupply(did,bid,sid,supplydate) values(new.did,new.bid,new.sid,new.supplydate);
update logreport_showroomsupply set entrydate=(select entrydate from dealerstock where bid=new.bid);
delete from dealerstock where bid=new.bid;
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
