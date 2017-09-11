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
-- Table structure for table `showroomdealer`
--

DROP TABLE IF EXISTS `showroomdealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showroomdealer` (
  `requestid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `modelname` varchar(30) NOT NULL DEFAULT ' ',
  `color` varchar(10) NOT NULL DEFAULT ' ',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `rdate` date DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `did` varchar(12) NOT NULL,
  PRIMARY KEY (`requestid`),
  KEY `sid` (`sid`),
  KEY `did` (`did`),
  CONSTRAINT `showroomdealer_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `showroom` (`sid`),
  CONSTRAINT `showroomdealer_ibfk_3` FOREIGN KEY (`did`) REFERENCES `dealer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showroomdealer`
--

LOCK TABLES `showroomdealer` WRITE;
/*!40000 ALTER TABLE `showroomdealer` DISABLE KEYS */;
INSERT INTO `showroomdealer` VALUES (1,13,'Honda CB 150R','Light Gray',12,'2017-04-03',NULL,'237737828283'),(2,13,'Honda Activa','Light Whit',12,'2017-04-04',NULL,'237737828283'),(3,21,'Honda CB Shine','Red',12,'2017-04-05',NULL,'928393812003'),(4,13,'Honda CB Shine','Light Whit',50,'2017-04-06',NULL,'237737828283'),(5,21,'Honda Activa','Cream',1,'2017-04-06',NULL,'928393812003'),(6,21,'Honda Activa','Cream',7,'2017-04-06',NULL,'928393812003'),(7,13,'Honda CB 150R','Blue',20,'2017-04-06',NULL,'237737828283');
/*!40000 ALTER TABLE `showroomdealer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 18:25:47
