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
-- Table structure for table `infodealer`
--

DROP TABLE IF EXISTS `infodealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infodealer` (
  `id` varchar(12) NOT NULL,
  `name` varchar(25) NOT NULL DEFAULT ' ',
  `pname` varchar(40) NOT NULL DEFAULT ' ',
  `gender` varchar(6) NOT NULL DEFAULT ' ',
  `dob` date NOT NULL,
  `paddr` varchar(40) NOT NULL DEFAULT ' ',
  `pstreet` varchar(10) DEFAULT ' ',
  `ppincode` varchar(6) NOT NULL DEFAULT ' ',
  `pdistrict` varchar(20) NOT NULL DEFAULT ' ',
  `pstate` varchar(20) NOT NULL DEFAULT ' ',
  `taddr` varchar(40) DEFAULT ' ',
  `tstreet` varchar(10) DEFAULT ' ',
  `tpincode` varchar(6) DEFAULT ' ',
  `tdistrict` varchar(20) DEFAULT ' ',
  `tstate` varchar(20) DEFAULT ' ',
  `securityam` float NOT NULL DEFAULT '0',
  `hdegree` varchar(15) DEFAULT ' ',
  `percentage` float DEFAULT '0',
  KEY `id` (`id`),
  CONSTRAINT `infodealer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `dealer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infodealer`
--

LOCK TABLES `infodealer` WRITE;
/*!40000 ALTER TABLE `infodealer` DISABLE KEYS */;
INSERT INTO `infodealer` VALUES ('895632895647','Mohit Chahar','Mohit Singh Chahar','Male','1992-05-12','near airtel ward no 3','C.B.I.T S.','301001','Jalaun','Uttar Pradesh','akola agra','ram nagar','283102','Jalaun','Uttar Pradesh',5630040,'MCA',68),('894563287956','Rajeev Sharma','Rajeev Sharma','Male','1989-05-11','meerut','naveen man','305005','Allahabad','Uttar Pradesh','meerut','bhola road','250002','Allahabad','Uttar Pradesh',5640040,'BCA',71),('665995324589','Anas malik','Anas malik','Male','1889-07-12','Allahabad','Allahabad ','500075','Kanpur','Uttar Pradesh','Latur','Ekurga B.O','413511','Kanpur','Uttar Pradesh',5650040,'BA',74),('655542655552','mohini Bhatia','Mohini kumar Bhatia','Female','1888-02-16','Kanpur Nagar','Arya Nagar','110029','Berasia','Madhya Pradesh','Alwar','Akbarpur B','301001','Berasia','Madhya Pradesh',5660040,'MA',77),('556236556222','Santosh dixit','Santosh dixit','Male','1887-12-11','Bhagalpur','Abhiabazar','400069','Burhanpur','Madhya Pradesh','Ajmer','Crpf Ajmer','305005','Burhanpur','Madhya Pradesh',5670040,'BSC',80),('523568879562','Sandesh takur','Sandesh takur','Male','1992-09-09','Bhojpur','Amehata B.','455001','Bijawar','Madhya Pradesh','Hyderabad','Kanpur Nag','500075','Bijawar','Madhya Pradesh',5680040,'BCOM',83),('552878995322','Anmol kumar','Animol kumar soni','Male','1995-03-03','Buxar','Banni B.O','110092','Thunag','Bihar','New Delhi','Nauroji Na','110029','Thunag','Bihar',5690040,'10th',86),('552789933323','Richa Sindde','Richa Sindde','Female','1975-06-08','Darbhanga','A.Babhanga','250009','Padhar','Bihar','Mumbai','Andheri Ea','400069','Padhar','Bihar',5700040,'BSC',58),('554785548893','Mukesh Gupta','Mukesh Gupta','Male','1967-09-15','Central Delhi','A.K.Market','301014','Baldwara','Bihar','Dewas','Agrod','455001','Baldwara','Bihar',5710040,'LLB',65),('356784927898','Seema yadav','Seema kumar yadav','Female','1993-04-03','East Delhi','Anand Viha','413510','Bali Chowki','Delhi','East Delhi','Anand Viha','110092','Bali Chowki','Delhi',5720040,'12th',72),('948848329922','Prakash Tagour','Raj Sharma','Male','1993-02-12','meerut','Bhojpur','526006','Nihri','Delhi','Arya Nagar','meerut','250009','Nihri','Delhi',5420040,'BA',79),('948382193303','Rahul Modi','Pradeep Modi','Male','1993-06-04','Latur','Buxar','638502','Dharmpur','Delhi','Abhiabazar B.O','Latur','301014','Dharmpur','Delhi',5430040,'MA',86),('228389492090','Mahesh Soni','Narendra Soni','Male','1992-04-09','Alwar','Darbhanga','750998','Aut','Maharshtra','Amehata B.O','Alwar','413510','Aut','Maharshtra',5440040,'BSC',49),('356784927898','Seema yadav','Seema kumar yadav','Female','1993-04-03','East Delhi','Anand Viha','413510','Bali Chowki','Delhi','East Delhi','Anand Viha','110092','Bali Chowki','Delhi',5720040,'12th',72),('948848329922','Prakash Tagour','Raj Sharma','Male','1993-02-12','meerut','Bhojpur','526006','Nihri','Delhi','Arya Nagar','meerut','250009','Nihri','Delhi',5420040,'BA',79),('948382193303','Rahul Modi','Pradeep Modi','Male','1993-06-04','Latur','Buxar','638502','Dharmpur','Delhi','Abhiabazar B.O','Latur','301014','Dharmpur','Delhi',5430040,'MA',86),('228389492090','Mahesh Soni','Narendra Soni','Male','1992-04-09','Alwar','Darbhanga','750998','Aut','Maharshtra','Amehata B.O','Alwar','413510','Aut','Maharshtra',5440040,'BSC',49),('356784927898','Seema yadav','Seema kumar yadav','Female','1993-04-03','East Delhi','Anand Viha','413510','Bali Chowki','Delhi','East Delhi','Anand Viha','110092','Bali Chowki','Delhi',5720040,'12th',72),('948848329922','Prakash Tagour','Raj Sharma','Male','1993-02-12','meerut','Bhojpur','526006','Nihri','Delhi','Arya Nagar','meerut','250009','Nihri','Delhi',5420040,'BA',79),('948382193303','Rahul Modi','Pradeep Modi','Male','1993-06-04','Latur','Buxar','638502','Dharmpur','Delhi','Abhiabazar B.O','Latur','301014','Dharmpur','Delhi',5430040,'MA',86),('228389492090','Mahesh Soni','Narendra Soni','Male','1992-04-09','Alwar','Darbhanga','750998','Aut','Maharshtra','Amehata B.O','Alwar','413510','Aut','Maharshtra',5440040,'BSC',49),('932020100298','Abhi Gupta','Anil Gupta','Male','1992-04-04','New Delhi','meerut','975990','Jalaun','DELHI','A.K.Market S.O','Alwar','750998','Nihri','RAJASTHAN',5470040,'BA',56),('467574884939','Raj Tomar','Sudhakar Tomar','Male','1994-06-05','Mumbai','Latur','589656','Allahabad','DELHI','Anand Vihar S.O','Ajmer','863494','Dharmpur','TELANGANA',5480040,'MA',59),('389493992002','Saloni Deep','Susheel Deep','Female','1994-06-05','Kanpur Nagar','Alwar','568974','Kanpur','DELHI','Bhojpur','Hyderabad','975990','Aut','TELANGANA',5490040,'BA',62),('938499320209','Lokesh Kumar','Sameer Kumar','Male','1967-09-04','Bhagalpur','Ajmer','789652','Berasia','GOA','Buxar','New Delhi','108848','Kotli','TAMIL NADU',5500040,'12th',65),('298934934002','Pawan Dumaka','Surendra Dumaka','Male','1993-06-04','Bhojpur','Hyderabad','885556','Burhanpur','GOA','Darbhanga','Mumbai','120098','Lad Bharol','TAMIL NADU',5510040,'10th',68),('932939030202','Sailesh Jeet','Harsh Jeet','Male','1994-06-05','Buxar','New Delhi','655668','Bijawar','ANDHRA PRADESH','Central Delhi','Dewas','131347','Bhadrota','TAMIL NADU',5520040,'BSC',71),('939320102849','Rahul Verma','Nitin Verma','Male','1994-06-05','Darbhanga','Mumbai','656225','Bhojpur','ANDHRA PRADESH','East Delhi','East Delhi','142597','Sandhol','UTTARAKHAND',5530040,'LLB',74),('237737828283','Seeta Kumar','Shailesh Kumar','Female','1994-06-05','Central Delhi','Kanpur Nag','589963','Buxar','ANDHRA PRADESH','meerut','Arya Nagar','153847','Vatsavai','UTTARAKHAND',5540040,'12th',77),('237823949909','Deepak Jha','R.S.Rana','Male','1994-06-05','East Delhi','Bhagalpur','468966','Darbhanga','ANDHRA PRADESH','Latur','Abhiabazar','165096','Macherla','UTTARAKHAND',5550040,'BA',80),('389499400404','Kailash Singh','Manish Singh','Male','1967-09-04','meerut','Bhojpur','554565','Central Delhi','CHATTISGARH','Alwar','Amehata B.','176346','Yerragondapalem','HARYANA',5560040,'MA',83),('388472991929','Akshay Prajapati','Mukesh Prajapati','Male','1967-09-04','Latur','Buxar','458965','East Delhi','CHATTISGARH','Ajmer','Banni B.O','187595','Seetharamapuram','HARYANA',5570040,'BE',86),('328393984949','Shivani Singh','Ameer Singh','Female','1995-03-03','Alwar','Darbhanga','445552','New Delhi','CHATTISGARH','Hyderabad','A.Babhanga','198845','Kondapuram','HARYANA',5580040,'BTECH',59),('218398291929','Manoj Patel','Mahesh Patel','Male','1995-03-03','Ajmer','Central De','545455','North Delh','CHATTISGARH','New Delhi','A.K.Market','210095','Mantralayam','KARNATAKA',5590040,'12th',62),('928393812003','Kumar Singh','Narayan Singh','Male','1995-03-03','Hyderabad','Ajmer','545452','North Goa','MAHARASHTRA','Mumbai','Anand Viha','221344','D.Hirehal','KARNATAKA',5600040,'12th',65),('938949932402','Aarush Lohiya','Rajesh Lohiya','Male','1995-03-03','New Delhi','Hyderabad','785662','South Goa','MAHARASHTRA','Kanpur Nagar','Bhojpur','232594','Mulakalacheruvu','KARNATAKA',5610040,'BCOM',68),('239933002939','Bhavin Chahar','Jitendra Chahar','Male','1995-03-03','Arya Nagar','New Delhi','555552','Ananthapur','MAHARASHTRA','Bhagalpur','Hyderabad','243843','Theog','UTTARAKHAND',5620040,'10th',71),('932884892930','Devansh Butt','Mukesh Butt','Male','1995-03-03','Abhiabazar B.O','akola agra','655563','Chittoor','MAHARASHTRA','Bhojpur','New Delhi','255093','Shimlarural','HARYANA',5630040,'MSC',59),('938389292992','Eshan Deiwedi','Surendra Dwivedi','Male','1995-03-03','Amehata B.O','meerut','542155','Cuddapah','RAJASTHAN','Buxar','Mumbai','266343','Rampur','HARYANA',5640040,'MLIB',62),('744839992920','Hansh Sahu','Himesh Sahu','Male','1995-03-03','Banni B.O','Latur','455266','East Godavari','RAJASTHAN','Darbhanga','Kanpur Nag','277592','Rohru','GOA',5650040,'10th',65),('943002983829','Amit Agrawal','Neetesh Agarwal','Male','1995-03-03','Ajmer','Central De','562369','Laher','MAHARASHTRA','Banni B.O','Ajmer','546783','Dharmpur','Madhya Pradesh',875490,'10th',90),('298392202029','Ashutosh Jain','Sujeet Jain','Male','1995-03-03','Hyderabad','East Delhi','563236','Mumbai','Madhya Pradesh','A.Babhangama B.O','Alwar','789045','Rampur','Delhi',653789,'BCA',56);
/*!40000 ALTER TABLE `infodealer` ENABLE KEYS */;
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
