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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `custid` varchar(15) NOT NULL DEFAULT ' ',
  `name` varchar(25) NOT NULL DEFAULT ' ',
  `gender` varchar(15) NOT NULL DEFAULT ' ',
  `dob` date NOT NULL,
  `addr` varchar(20) NOT NULL DEFAULT ' ',
  `street` varchar(10) DEFAULT NULL,
  `pincode` varchar(8) DEFAULT ' ',
  `district` varchar(20) NOT NULL DEFAULT ' ',
  `state` varchar(20) NOT NULL DEFAULT ' ',
  `email` varchar(30) DEFAULT ' ',
  `mob` varchar(14) DEFAULT ' ',
  `std` varchar(10) DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('234589123412','Harshit Gupta','Male','1990-12-20','Near Railway Station','','212134','Urai','Uttar Pradesh','harshit@gmail.com','9934567812','',''),('293456234567','Surendra','Male','1960-07-12','Derawari','12','212108','Allahabad','Uttar Pradesh','','9454072123','',''),('741523698523','Harshit','Male','1990-02-25','manit','manit','462003','bhopal','madhya pradesh','harshitgupta@gmail.com','9479952365','0755',''),('873838929012','Jackky','Select Gender','1981-07-12','Mauranipur','12','285001','Mauranipur','Uttar Pradesh','','9454072934','','');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
