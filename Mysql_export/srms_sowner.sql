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
-- Table structure for table `sowner`
--

DROP TABLE IF EXISTS `sowner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sowner` (
  `id` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ' ',
  `fname` varchar(25) NOT NULL DEFAULT ' ',
  `gender` varchar(6) NOT NULL,
  `dob` date DEFAULT NULL,
  `paddr` varchar(25) NOT NULL DEFAULT ' ',
  `pstreet` varchar(5) DEFAULT ' ',
  `ppincode` varchar(6) NOT NULL,
  `taddr` varchar(25) DEFAULT NULL,
  `tstreet` varchar(5) DEFAULT ' ',
  `tpincode` varchar(6) DEFAULT NULL,
  `qualification` varchar(25) DEFAULT NULL,
  `percent` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sowner`
--

LOCK TABLES `sowner` WRITE;
/*!40000 ALTER TABLE `sowner` DISABLE KEYS */;
INSERT INTO `sowner` VALUES ('298393203323','Kailash','santosh','Male','0000-00-00','Siddhi Nagar','35','829922','Ratn','47','383782','LLB','65'),('327838383289','Seema','Eliana','Female','1988-09-16','Gopi Road','12','890303','Tutuk Road','34','239389','MD',NULL),('384889489923','Sanjoli','Rajesh','Female','1994-09-12','Heena Road ','35','838949','Rodex Road','23','237837','BCA',NULL),('456963252156','Narehsh','Nikhelesh','Male','1986-05-31','Lady Jamshetjee Road, Mum','Lamin','521365','Mahim Causeway','36, M','453652','MA','68'),('458956325210','Jai','Mathur','Male','1994-09-09','Sancrus Road','12','902833','Roshan Billa','13','789923','MSC','67'),('458956325214','Akash','Badal','Male','1986-03-04','P L Lokhande Marg','15, P','456935','Nana Chowk','41/8,','456935','MA','65'),('458963254125','Preeti','Nandkishore Bairagi','Female','1980-06-25','Fashion Street','12, H','465236','Jeejabai Bhosle Marg','15, H','485965','BCA','71'),('478596235896','Noori','Rohan','Female','1968-04-15','Altamount Road','15/3,','485693','Hill Road','18, H','452632','BSC','65'),('569712385619','Mohit Solanki','Rajesh Solanki','Male','0000-00-00','Near Airtel Tower,Kanpur','Ward ','208002','Akola ,Agra','12','234901','MCA','67'),('589359387103','Mahesh Bhutt','Puja Bhutt','Male','0000-00-00','Gopal Ganj ,Mumbai','Bambi','110055','Oposite Big Bazar','23','843678','BCA','89'),('674673839282','Dheeru','Malini','Male','1986-09-07','Sahwaaz Road','12','456443','NTR garden','14','564567','BTECH','56'),('690326145844','Dinesh Rathor','Seema Rathor','Male','0000-00-00','Near Junction,Buxar','Ward ','802128','Salem nagar,Patna','14','237659','BSC','78'),('706422145236','Anshu','Nirmal Dutta','Male','1980-04-15','Altamount Road','24/3,','462005','Hill Road','24/9,','462039','BCA','69'),('706425896325','Nikhil','Narendra','Male','1986-05-12','Nana Chowk','169, ','421025','Mahim Causeway','39, M','478546','BA','68'),('709865321536','Romil','Naved','Male','1985-02-26','Mahim Causeway','12, M','412563','P L Lokhande Marg','14, S','456325','BA','59'),('741580936989','Rajesh','Kamal','Male','1982-05-14','Bandstand Promenade','12, B','412563','Carmichael Road','12, C','412365','MCA','64'),('743899812334','Hardik','Kalika','Male','0000-00-00','Kalika Nagar','34','435334','Hardik  Road','4','544245','LLB','77'),('743899822324','Hansaraj','Kajri','Male','0000-00-00','Kajri Nagar','7','242212','Hansaraj  Road','56','435345','LLB','76'),('743899823424','Hanuman','Kalicharan','Male','0000-00-00','Kalicharan Nagar','54','435532','Hanuman  Road','6','344533','BSC','43'),('743899832123','Naakesh','Sabhajit','Male','0000-00-00','Sabhajit Nagar','4','434212','Naakesh  Road','445','342556','MBA','56'),('743899832332','Naagpati','Saaz','Male','0000-00-00','Saaz Nagar','2','243112','Naagpati  Road','56','343245','LLB','87'),('743899832333','Naagesh','Saatvika','Male','0000-00-00','Saatvika Nagar','32','444223','Naagesh  Road','90','452345','BSC','65'),('743899832422','Hanshal','Kalan','Male','0000-00-00','Kalan Nagar','8','344233','Hanshal  Road','54','343534','MBA','55'),('743899833245','Nabhya','Saanjh','Female','0000-00-00','Saanjh Nagar','24','344222','Nabhya  Road','5','323213','10th','76'),('743899833454','Advik','Kaashi','Male','0000-00-00','Kaashi Nagar','45','234233','Advik  Road','6','455543','MBA','67'),('743899834234','Hansini','Kalavati','Female','0000-00-00','Kalavati Nagar','6','342443','Hansini  Road','5','435532','12th','65'),('743899834344','Harihar','Saarang','Male','0000-00-00','Saarang Nagar','4','345322','Harihar  Road','56','234423','MBA','98'),('743899834444','Arav','Kairav','Male','0000-00-00','Kairav Nagar','6','232322','Arav  Road','7','435344','BSC','57'),('743899834556','Aadit','Kaanchana','Male','0000-00-00','Kaanchana Nagar','23','324444','Aadit  Road','56','455455','LLB','56'),('743899835673','Rangoli','Nabhi','Female','0000-00-00','Nabhi Nagar','24','378938','Rangoli Road','65','655445','BSC','78'),('743899838323','Karan','Kiran','Male','0000-00-00','Mahnohar Nagar','37','237333','taran','98','344222','MBA','88'),('789352013409','Meera Gupta','Ram Kumar Gupta','Female','0000-00-00','Near Lela Hospital,Delhi','23 Al','834081','Gomti nagar,Nagpur','Ward ','349872','MD','73'),('849930302039','Jack','Senchroos','Male','1986-09-23','Rani Ganj','34','893646','Rajwaraha','45','748493','BSC','45'),('895678959023','Ratnesh Yadav','Ramesh Yadav','Male','0000-00-00','Behind D.V.C,Hydrabad','Ward ','894567','Ameerpeeth,Hydrabad','Ward ','498056','LLB','57'),('896532145236','Yogesh','Romesh','Male','0000-00-00','Altamount Road','14, B','456325','Rajpath','Gali ','489658','BSC','68');
/*!40000 ALTER TABLE `sowner` ENABLE KEYS */;
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
