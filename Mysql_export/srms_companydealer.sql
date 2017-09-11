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
-- Table structure for table `companydealer`
--

DROP TABLE IF EXISTS `companydealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companydealer` (
  `requestid` bigint(20) NOT NULL AUTO_INCREMENT,
  `did` varchar(12) NOT NULL DEFAULT ' ',
  `modelname` varchar(25) NOT NULL DEFAULT ' ',
  `color` varchar(10) NOT NULL DEFAULT ' ',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `requestdate` date NOT NULL,
  `responddate` date DEFAULT NULL,
  PRIMARY KEY (`requestid`),
  KEY `did` (`did`),
  CONSTRAINT `companydealer_ibfk_1` FOREIGN KEY (`did`) REFERENCES `dealer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companydealer`
--

LOCK TABLES `companydealer` WRITE;
/*!40000 ALTER TABLE `companydealer` DISABLE KEYS */;
INSERT INTO `companydealer` VALUES (1,'237823949909','Honda CB 150R','Yellow',23,'2017-04-05',NULL),(2,'552789933323','Honda CB 1000R','Light Whit',23,'2017-04-06',NULL),(3,'552789933323','Honda CB 150R','White',50,'2017-04-06',NULL),(4,'552789933323','Honda CB 150R','Yellow',10,'2017-04-06',NULL),(5,'895632895647','Honda Activa','Silver',10,'2017-04-06',NULL),(6,'943002983829','Honda CB 150R','Blue',50,'2017-04-06',NULL),(7,'389493992002','Honda CB Shine','Brown',20,'2017-04-06',NULL),(8,'389493992002','Honda CB 150R','Green',30,'2017-04-06',NULL),(9,'932939030202','Honda CB 1000R','Light Gray',65,'2017-04-06',NULL),(10,'467574884939','Honda Activa','Green',20,'2017-04-06',NULL),(11,'389493992002','Honda Activa','Dark Gray',4,'2017-04-06',NULL),(12,'389493992002','Honda CB Shine','Blue',8,'2017-04-06',NULL),(13,'389493992002','Honda CB 1000R','Brown',7,'2017-04-06',NULL),(14,'237737828283','Honda Activa','Red',7,'2017-04-06',NULL),(15,'237737828283','Honda CB 150R','Cream',8,'2017-04-06',NULL),(16,'237737828283','Honda CB Shine','Red',73,'2017-04-06',NULL),(17,'237737828283','Honda CB Shine','Red',1200,'2017-04-06',NULL),(18,'237737828283','Honda CB 150R','Light Gray',12,'2017-04-06',NULL);
/*!40000 ALTER TABLE `companydealer` ENABLE KEYS */;
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
