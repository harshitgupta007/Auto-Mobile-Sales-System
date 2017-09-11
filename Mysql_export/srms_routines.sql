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
-- Temporary table structure for view `v_bike_color`
--

DROP TABLE IF EXISTS `v_bike_color`;
/*!50001 DROP VIEW IF EXISTS `v_bike_color`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_bike_color` (
  `modelname` tinyint NOT NULL,
  `color` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_bike`
--

DROP TABLE IF EXISTS `v_bike`;
/*!50001 DROP VIEW IF EXISTS `v_bike`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_bike` (
  `vin` tinyint NOT NULL,
  `spid` tinyint NOT NULL,
  `engineno` tinyint NOT NULL,
  `costprice` tinyint NOT NULL,
  `color` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_showroom_district`
--

DROP TABLE IF EXISTS `v_showroom_district`;
/*!50001 DROP VIEW IF EXISTS `v_showroom_district`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_showroom_district` (
  `district` tinyint NOT NULL,
  `state` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_sellinformation`
--

DROP TABLE IF EXISTS `v_sellinformation`;
/*!50001 DROP VIEW IF EXISTS `v_sellinformation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_sellinformation` (
  `custid` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `sellprice` tinyint NOT NULL,
  `selldate` tinyint NOT NULL,
  `sid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_showroomstock`
--

DROP TABLE IF EXISTS `v_showroomstock`;
/*!50001 DROP VIEW IF EXISTS `v_showroomstock`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_showroomstock` (
  `vin` tinyint NOT NULL,
  `engineno` tinyint NOT NULL,
  `costprice` tinyint NOT NULL,
  `color` tinyint NOT NULL,
  `modelname` tinyint NOT NULL,
  `adddate` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `sid` tinyint NOT NULL,
  `edate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_dealer`
--

DROP TABLE IF EXISTS `v_dealer`;
/*!50001 DROP VIEW IF EXISTS `v_dealer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_dealer` (
  `dealershipname` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `street` tinyint NOT NULL,
  `pincode` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mob1` tinyint NOT NULL,
  `mob2` tinyint NOT NULL,
  `std` tinyint NOT NULL,
  `phno` tinyint NOT NULL,
  `fax` tinyint NOT NULL,
  `district` tinyint NOT NULL,
  `state` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_showroom`
--

DROP TABLE IF EXISTS `v_showroom`;
/*!50001 DROP VIEW IF EXISTS `v_showroom`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_showroom` (
  `name` tinyint NOT NULL,
  `addr` tinyint NOT NULL,
  `street` tinyint NOT NULL,
  `pincode` tinyint NOT NULL,
  `tehsil` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mob1` tinyint NOT NULL,
  `mob2` tinyint NOT NULL,
  `std` tinyint NOT NULL,
  `phno` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `district` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_showroomrequest`
--

DROP TABLE IF EXISTS `v_showroomrequest`;
/*!50001 DROP VIEW IF EXISTS `v_showroomrequest`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_showroomrequest` (
  `did` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `modelname` tinyint NOT NULL,
  `color` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `rdate` tinyint NOT NULL,
  `sdate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_modelname`
--

DROP TABLE IF EXISTS `v_modelname`;
/*!50001 DROP VIEW IF EXISTS `v_modelname`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_modelname` (
  `modelname` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_entrystock`
--

DROP TABLE IF EXISTS `v_entrystock`;
/*!50001 DROP VIEW IF EXISTS `v_entrystock`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_entrystock` (
  `sid` tinyint NOT NULL,
  `edate` tinyint NOT NULL,
  `bid` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_companydealer`
--

DROP TABLE IF EXISTS `v_companydealer`;
/*!50001 DROP VIEW IF EXISTS `v_companydealer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_companydealer` (
  `did` tinyint NOT NULL,
  `modelname` tinyint NOT NULL,
  `color` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `requestdate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_showroomforlogin`
--

DROP TABLE IF EXISTS `v_showroomforlogin`;
/*!50001 DROP VIEW IF EXISTS `v_showroomforlogin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_showroomforlogin` (
  `sid` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `addr` tinyint NOT NULL,
  `street` tinyint NOT NULL,
  `pincode` tinyint NOT NULL,
  `tehsil` tinyint NOT NULL,
  `district` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mob1` tinyint NOT NULL,
  `mob2` tinyint NOT NULL,
  `phno` tinyint NOT NULL,
  `std` tinyint NOT NULL,
  `opdate` tinyint NOT NULL,
  `oid` tinyint NOT NULL,
  `did` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_companysupplytodealer`
--

DROP TABLE IF EXISTS `v_companysupplytodealer`;
/*!50001 DROP VIEW IF EXISTS `v_companysupplytodealer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_companysupplytodealer` (
  `vin` tinyint NOT NULL,
  `did` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_sellcart`
--

DROP TABLE IF EXISTS `v_sellcart`;
/*!50001 DROP VIEW IF EXISTS `v_sellcart`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_sellcart` (
  `custid` tinyint NOT NULL,
  `sid` tinyint NOT NULL,
  `bid` tinyint NOT NULL,
  `sellprice` tinyint NOT NULL,
  `selldate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_customers`
--

DROP TABLE IF EXISTS `v_customers`;
/*!50001 DROP VIEW IF EXISTS `v_customers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_customers` (
  `custid` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `dob` tinyint NOT NULL,
  `addr` tinyint NOT NULL,
  `street` tinyint NOT NULL,
  `pincode` tinyint NOT NULL,
  `district` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mob` tinyint NOT NULL,
  `std` tinyint NOT NULL,
  `phno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_dealerstock`
--

DROP TABLE IF EXISTS `v_dealerstock`;
/*!50001 DROP VIEW IF EXISTS `v_dealerstock`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_dealerstock` (
  `did` tinyint NOT NULL,
  `vin` tinyint NOT NULL,
  `engineno` tinyint NOT NULL,
  `modelname` tinyint NOT NULL,
  `color` tinyint NOT NULL,
  `costprice` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `adddate` tinyint NOT NULL,
  `entrydate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_dealer_search`
--

DROP TABLE IF EXISTS `v_dealer_search`;
/*!50001 DROP VIEW IF EXISTS `v_dealer_search`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_dealer_search` (
  `district` tinyint NOT NULL,
  `state` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_showroomdealer`
--

DROP TABLE IF EXISTS `v_showroomdealer`;
/*!50001 DROP VIEW IF EXISTS `v_showroomdealer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_showroomdealer` (
  `sid` tinyint NOT NULL,
  `modelname` tinyint NOT NULL,
  `color` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `rdate` tinyint NOT NULL,
  `did` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_customer`
--

DROP TABLE IF EXISTS `v_customer`;
/*!50001 DROP VIEW IF EXISTS `v_customer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_customer` (
  `custid` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `dob` tinyint NOT NULL,
  `addr` tinyint NOT NULL,
  `street` tinyint NOT NULL,
  `pincode` tinyint NOT NULL,
  `district` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `mob` tinyint NOT NULL,
  `std` tinyint NOT NULL,
  `phno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_bike_feature`
--

DROP TABLE IF EXISTS `v_bike_feature`;
/*!50001 DROP VIEW IF EXISTS `v_bike_feature`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_bike_feature` (
  `vin` tinyint NOT NULL,
  `engineno` tinyint NOT NULL,
  `costprice` tinyint NOT NULL,
  `color` tinyint NOT NULL,
  `modelname` tinyint NOT NULL,
  `adddate` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `maxspeed` tinyint NOT NULL,
  `average` tinyint NOT NULL,
  `fueltank` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_bike_color`
--

/*!50001 DROP TABLE IF EXISTS `v_bike_color`*/;
/*!50001 DROP VIEW IF EXISTS `v_bike_color`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_bike_color` AS (select distinct `bfeature`.`modelname` AS `modelname`,`readybiketable`.`color` AS `color` from (`readybiketable` join `bfeature`) where (`readybiketable`.`spid` = `bfeature`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_bike`
--

/*!50001 DROP TABLE IF EXISTS `v_bike`*/;
/*!50001 DROP VIEW IF EXISTS `v_bike`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_bike` AS (select `bike`.`vin` AS `vin`,`bike`.`spid` AS `spid`,`bike`.`engineno` AS `engineno`,`bike`.`costprice` AS `costprice`,`bike`.`color` AS `color` from `bike`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_showroom_district`
--

/*!50001 DROP TABLE IF EXISTS `v_showroom_district`*/;
/*!50001 DROP VIEW IF EXISTS `v_showroom_district`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_showroom_district` AS select `showroom`.`district` AS `district`,`showroom`.`state` AS `state` from `showroom` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sellinformation`
--

/*!50001 DROP TABLE IF EXISTS `v_sellinformation`*/;
/*!50001 DROP VIEW IF EXISTS `v_sellinformation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sellinformation` AS (select distinct `customers`.`custid` AS `custid`,`customers`.`name` AS `name`,`sellcart`.`bid` AS `bid`,`sellcart`.`sellprice` AS `sellprice`,`sellcart`.`selldate` AS `selldate`,`sellcart`.`sid` AS `sid` from (`customers` join `sellcart`) where (`customers`.`custid` = `sellcart`.`custid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_showroomstock`
--

/*!50001 DROP TABLE IF EXISTS `v_showroomstock`*/;
/*!50001 DROP VIEW IF EXISTS `v_showroomstock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_showroomstock` AS (select `bike`.`vin` AS `vin`,`bike`.`engineno` AS `engineno`,`bike`.`costprice` AS `costprice`,`bike`.`color` AS `color`,`bfeature`.`modelname` AS `modelname`,`bfeature`.`adddate` AS `adddate`,`bfeature`.`type` AS `type`,`showroomstock`.`sid` AS `sid`,`showroomstock`.`edate` AS `edate` from ((`showroomstock` join `bike`) join `bfeature`) where ((`bike`.`vin` = `showroomstock`.`bid`) and (`bike`.`spid` = `bfeature`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_dealer`
--

/*!50001 DROP TABLE IF EXISTS `v_dealer`*/;
/*!50001 DROP VIEW IF EXISTS `v_dealer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dealer` AS select `dealer`.`dealershipname` AS `dealershipname`,`dealer`.`address` AS `address`,`dealer`.`street` AS `street`,`dealer`.`pincode` AS `pincode`,`dealer`.`email` AS `email`,`dealer`.`mob1` AS `mob1`,`dealer`.`mob2` AS `mob2`,`dealer`.`std` AS `std`,`dealer`.`phno` AS `phno`,`dealer`.`fax` AS `fax`,`dealer`.`district` AS `district`,`dealer`.`state` AS `state` from `dealer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_showroom`
--

/*!50001 DROP TABLE IF EXISTS `v_showroom`*/;
/*!50001 DROP VIEW IF EXISTS `v_showroom`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_showroom` AS (select `showroom`.`name` AS `name`,`showroom`.`addr` AS `addr`,`showroom`.`street` AS `street`,`showroom`.`pincode` AS `pincode`,`showroom`.`tehsil` AS `tehsil`,`showroom`.`email` AS `email`,`showroom`.`mob1` AS `mob1`,`showroom`.`mob2` AS `mob2`,`showroom`.`std` AS `std`,`showroom`.`phno` AS `phno`,`showroom`.`state` AS `state`,`showroom`.`district` AS `district` from `showroom`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_showroomrequest`
--

/*!50001 DROP TABLE IF EXISTS `v_showroomrequest`*/;
/*!50001 DROP VIEW IF EXISTS `v_showroomrequest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_showroomrequest` AS (select `showroomdealer`.`did` AS `did`,`showroom`.`name` AS `name`,`showroomdealer`.`modelname` AS `modelname`,`showroomdealer`.`color` AS `color`,`showroomdealer`.`quantity` AS `quantity`,`showroomdealer`.`rdate` AS `rdate`,`showroomdealer`.`sdate` AS `sdate` from (`showroomdealer` join `showroom`) where (`showroom`.`sid` = `showroomdealer`.`sid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_modelname`
--

/*!50001 DROP TABLE IF EXISTS `v_modelname`*/;
/*!50001 DROP VIEW IF EXISTS `v_modelname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_modelname` AS (select `bfeature`.`modelname` AS `modelname` from `bfeature`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_entrystock`
--

/*!50001 DROP TABLE IF EXISTS `v_entrystock`*/;
/*!50001 DROP VIEW IF EXISTS `v_entrystock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_entrystock` AS (select `showroomstock`.`sid` AS `sid`,`showroomstock`.`edate` AS `edate`,`showroomstock`.`bid` AS `bid` from `showroomstock`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_companydealer`
--

/*!50001 DROP TABLE IF EXISTS `v_companydealer`*/;
/*!50001 DROP VIEW IF EXISTS `v_companydealer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_companydealer` AS (select `companydealer`.`did` AS `did`,`companydealer`.`modelname` AS `modelname`,`companydealer`.`color` AS `color`,`companydealer`.`quantity` AS `quantity`,`companydealer`.`requestdate` AS `requestdate` from `companydealer`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_showroomforlogin`
--

/*!50001 DROP TABLE IF EXISTS `v_showroomforlogin`*/;
/*!50001 DROP VIEW IF EXISTS `v_showroomforlogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_showroomforlogin` AS (select `showroom`.`sid` AS `sid`,`showroom`.`name` AS `name`,`showroom`.`addr` AS `addr`,`showroom`.`street` AS `street`,`showroom`.`pincode` AS `pincode`,`showroom`.`tehsil` AS `tehsil`,`showroom`.`district` AS `district`,`showroom`.`state` AS `state`,`showroom`.`email` AS `email`,`showroom`.`mob1` AS `mob1`,`showroom`.`mob2` AS `mob2`,`showroom`.`phno` AS `phno`,`showroom`.`std` AS `std`,`showroom`.`opdate` AS `opdate`,`showroom`.`oid` AS `oid`,`showroom`.`did` AS `did` from `showroom`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_companysupplytodealer`
--

/*!50001 DROP TABLE IF EXISTS `v_companysupplytodealer`*/;
/*!50001 DROP VIEW IF EXISTS `v_companysupplytodealer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_companysupplytodealer` AS (select `companysupplytodealer`.`vin` AS `vin`,`companysupplytodealer`.`did` AS `did` from `companysupplytodealer`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_sellcart`
--

/*!50001 DROP TABLE IF EXISTS `v_sellcart`*/;
/*!50001 DROP VIEW IF EXISTS `v_sellcart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_sellcart` AS (select `sellcart`.`custid` AS `custid`,`sellcart`.`sid` AS `sid`,`sellcart`.`bid` AS `bid`,`sellcart`.`sellprice` AS `sellprice`,`sellcart`.`selldate` AS `selldate` from `sellcart`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_customers`
--

/*!50001 DROP TABLE IF EXISTS `v_customers`*/;
/*!50001 DROP VIEW IF EXISTS `v_customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_customers` AS (select `customers`.`custid` AS `custid`,`customers`.`name` AS `name`,`customers`.`gender` AS `gender`,`customers`.`dob` AS `dob`,`customers`.`addr` AS `addr`,`customers`.`street` AS `street`,`customers`.`pincode` AS `pincode`,`customers`.`district` AS `district`,`customers`.`state` AS `state`,`customers`.`email` AS `email`,`customers`.`mob` AS `mob`,`customers`.`std` AS `std`,`customers`.`phno` AS `phno` from `customers`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_dealerstock`
--

/*!50001 DROP TABLE IF EXISTS `v_dealerstock`*/;
/*!50001 DROP VIEW IF EXISTS `v_dealerstock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dealerstock` AS select `dealerstock`.`did` AS `did`,`bike`.`vin` AS `vin`,`bike`.`engineno` AS `engineno`,`bfeature`.`modelname` AS `modelname`,`bike`.`color` AS `color`,`bike`.`costprice` AS `costprice`,`bfeature`.`type` AS `type`,`bfeature`.`adddate` AS `adddate`,`dealerstock`.`entrydate` AS `entrydate` from ((`dealerstock` join `bfeature`) join `bike`) where ((`bike`.`vin` = `dealerstock`.`bid`) and (`bike`.`spid` = `bfeature`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_dealer_search`
--

/*!50001 DROP TABLE IF EXISTS `v_dealer_search`*/;
/*!50001 DROP VIEW IF EXISTS `v_dealer_search`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dealer_search` AS select `dealer`.`district` AS `district`,`dealer`.`state` AS `state` from `dealer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_showroomdealer`
--

/*!50001 DROP TABLE IF EXISTS `v_showroomdealer`*/;
/*!50001 DROP VIEW IF EXISTS `v_showroomdealer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_showroomdealer` AS (select `showroomdealer`.`sid` AS `sid`,`showroomdealer`.`modelname` AS `modelname`,`showroomdealer`.`color` AS `color`,`showroomdealer`.`quantity` AS `quantity`,`showroomdealer`.`rdate` AS `rdate`,`showroomdealer`.`did` AS `did` from `showroomdealer`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_customer`
--

/*!50001 DROP TABLE IF EXISTS `v_customer`*/;
/*!50001 DROP VIEW IF EXISTS `v_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_customer` AS (select `customers`.`custid` AS `custid`,`customers`.`name` AS `name`,`customers`.`gender` AS `gender`,`customers`.`dob` AS `dob`,`customers`.`addr` AS `addr`,`customers`.`street` AS `street`,`customers`.`pincode` AS `pincode`,`customers`.`district` AS `district`,`customers`.`state` AS `state`,`customers`.`email` AS `email`,`customers`.`mob` AS `mob`,`customers`.`std` AS `std`,`customers`.`phno` AS `phno` from `customers`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_bike_feature`
--

/*!50001 DROP TABLE IF EXISTS `v_bike_feature`*/;
/*!50001 DROP VIEW IF EXISTS `v_bike_feature`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_bike_feature` AS select `bike`.`vin` AS `vin`,`bike`.`engineno` AS `engineno`,`bike`.`costprice` AS `costprice`,`bike`.`color` AS `color`,`bfeature`.`modelname` AS `modelname`,`bfeature`.`adddate` AS `adddate`,`bfeature`.`type` AS `type`,`bfeature`.`maxspeed` AS `maxspeed`,`bfeature`.`average` AS `average`,`bfeature`.`fueltank` AS `fueltank` from (`bike` join `bfeature`) where (`bike`.`spid` = `bfeature`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'srms'
--

--
-- Dumping routines for database 'srms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 18:25:48
