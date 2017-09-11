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
-- Table structure for table `showroom`
--

DROP TABLE IF EXISTS `showroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showroom` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT ' ',
  `addr` varchar(50) NOT NULL DEFAULT ' ',
  `street` varchar(10) DEFAULT ' ',
  `pincode` varchar(8) NOT NULL DEFAULT ' ',
  `tehsil` varchar(30) NOT NULL DEFAULT ' ',
  `district` varchar(20) NOT NULL DEFAULT ' ',
  `state` varchar(20) NOT NULL DEFAULT ' ',
  `email` varchar(30) DEFAULT ' ',
  `mob1` varchar(14) DEFAULT ' ',
  `mob2` varchar(14) DEFAULT ' ',
  `phno` varchar(10) DEFAULT NULL,
  `std` varchar(10) DEFAULT NULL,
  `opdate` date NOT NULL,
  `oid` varchar(12) NOT NULL,
  `did` varchar(12) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `oid` (`oid`),
  KEY `did` (`did`),
  CONSTRAINT `showroom_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `sowner` (`id`),
  CONSTRAINT `showroom_ibfk_2` FOREIGN KEY (`did`) REFERENCES `dealer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showroom`
--

LOCK TABLES `showroom` WRITE;
/*!40000 ALTER TABLE `showroom` DISABLE KEYS */;
INSERT INTO `showroom` VALUES (1,'Bhagat Automobiles',' Pitam Pura','14','462003','Makronia','Sagar ','Madhya Pradesh','bharatautomobiles@gmail.com','9856985663','7894562317','224455','75824','2005-10-12','458956325214','123786213908'),(2,'BGS Honda','Ispat Bhavan','15','456526','Bara','Allahabad ','Uttar Pradesh','bgshonda@gmail.com','7485965263','9875643210','663254','53333','2006-03-25','458956325214','552878995322'),(3,'Aript Honda','Dak Bhavan','15/3','245856','Marine Drive','Mumbai','Maharastraa','arpitautomobiles@gmaili.com','7485965241','9632587412','556325','22342','2008-09-30','458956325214','928393812003'),(4,'Neela Automobiles','Example Exports','71','256398','Kotra','Bhopal','Madhya Pradesh','neelaautomobile@gmail.com','7485966352','9856321475','222446','75514','2020-01-21','458956325214','895632895647'),(6,'Naresh Honda','Bhavan','52','486952','Washim','Aurangabad','Maharastra','nareshautomobiles@gmai.com','9856324178','5869325698','226589','23676','2006-05-30','458963254125','677889998777'),(7,'Rajesh Honda',' Ludhiana','63/3','523652','Latur','Thane','Maharastra','rajeshhonda@gmai.com','8569231475','8547963214','365214','45645','2007-05-30','458963254125','676789900988'),(8,'BSG Automobiles','Ram Nagar','613','283102','Orai','Jalaun','Uttar Pradesh','da@gmail.com','8423820719','8756892318','262711','56128','2004-07-09','569712385619','568898778899'),(9,'Kelash Automobiles','Bhola Road','12','250002','Shakargarh','Allahabad','Uttar Pradesh','kelash@gmail.com','8965327895','7895624798','842382','56789','2004-12-03','569712385619','552878995322'),(10,'Anjani Automobiles','Ekurga B.O','ward no 12','413511','Kanpur Dehat','Kanpur Nagar','Uttar Pradesh','anjani@gmail.com','8965743105','8563258746','458732','56971','2009-07-04','569712385619','552789933323'),(11,'Rajshree Automobiles','Akbarpur B.O','15','301001','Beera','Berasia','Madhya Pradesh','rajshree@gmail.com','7489563285','9896341528','568746','53214','2008-03-22','690326145844','456778878999'),(12,'Texus Automobiles','Crpf Ajmer S.O','34','305005','Balish','Burhanpur','Madhya Pradesh','texus@gmail.com','9689452314','8844553322','561234','52789','2001-02-01','690326145844','894563287956'),(13,'Viru Automobiles','C.B.I.T S.O','Gamma 34','500075','Bandli','Bijawar','Madhya Pradesh','viru@gmail.com','8956742573','8754632587','258791','64218','2001-02-20','690326145844','237737828283'),(14,'Rahul Automobiles','Nauroji Nagar S.O','45','110029','Banea','Thunag','Bihar','rahul@gmail.com','9025896431','8874596238','321478','45972','1995-07-05','589359387103','788877889998'),(15,'Bhojh Automobiles','Andheri East S.O','23','400069','Banewal','Padhar','Bihar','bhojh@gmail.com','9853524849','8723658720','897456','56123','1998-08-04','589359387103','456785789988'),(16,'Race Automobiles','Agrod','78','455001','Ilmi','Baldwara','Bihar','tail@gmail.com','9453524849','9087567432','564728','47820','1996-07-07','589359387103','352455515667'),(17,'Gopal Automobiles','Anand Vihar S.O','32','110092','Jadeog','Bali Chowki','Delhi','race@gmail.com','7895643128','9756852574','564189','45623','1998-07-03','895678959023','445666522322'),(18,'Sanjana Automobiles','Arya Nagar','78','234190','Jadun','Nihri','Delhi','goapl@gmail.com','8756821496','9945632587','547239','47985','1999-06-04','895678959023','789552212202'),(19,'Ram Automobiles','Abhiabazar B.O','32','329075','Gadchiroli','Dharmpur','Delhi','ram@gmail.com','7458962798','7269785412','572689','56231','1996-11-29','895678959023','458855223323'),(20,'Dheeraj Automobiles','Amehata B.O','8','632890','Aheri','Aut','Maharshtra','dheeraj@gmail.com','7456821987','8569731254','421398','78540','1999-06-07','789352013409','554565223256'),(21,'Jai Automobiles','A.Babhangama B.O','54','688390','Kurkheda','Mumbai','Maharshtra','jai@gmail.com','8856852479','8879562394','541237','47123','2002-07-19','789352013409','928393812003'),(22,'Jony Automobiles','Ratoor Pura','23','462045','Makrooo','Sagar','Madhya Pradesh','jonyautomobiles@gmail.com','9856985678','7894562313','224454','75823','2005-10-12','458956325210','123786213908'),(23,'Jeetu Automobiles','Yali Pura','23','213334','Chinoor','Mumbai','Maharshtra','jeetuautomobiles@gmail.com','9043985583','7783493939','838944','83833','2009-11-20','327838383289','928393812003'),(24,'Harendra Automobiles','Saroj Road','4','232312','Makandr','Aut','Maharshtra','handraautomobiles@gmail.com','9575378344','7823999923','239384','83893','2008-08-11','384889489923','554565223256'),(25,'Sanju Automobiles','Juggu Pura ','5','231334','Eliis','Dharmpur','Delhi','sanjuautomobiles@gmail.com','9948389239','7932030399','283833','28839','2002-08-22','458956325210','458855223323'),(26,'Fareed Automobiles','Andheri Road','32','213134','Aait','Nihri','Delhi','faredautomobiles@gmail.com','9482839933','7643789323','832329','21838','2010-11-25','674673839282','789552212202'),(28,'Rahul Automobiles ','Ganta ghar','12','123344','Pukhraya','Bali Chowki','Delhi','rahulautomobiles@gmail.com','9423929030','7548349923','238819','12828','1997-12-30','849930302039','445666522322'),(29,'Tarun Automobiles','Barra','12','213455','Kalpi','Baldwara','Bihar','tarunautomobiles@gmail.com','9248949494','7483929393','832993','12883','1998-06-07','298393203323','352455515667'),(30,'Sonu  Automobiles','Ganj Road','2','647384','Kusmuliya','Padhar','Bihar','sonuautomobiles@gmail.com','9034489595','9622555665','795455','86523','2001-03-19','743899838323','456785789988'),(31,'Mahindra Automobiles','JMA  Road','23','244234','Karond','Thunag','Bihar','mahendraautomobiles@gmail.com','9865905205','9955522223','546558','52221','1999-04-05','743899835673','788877889998'),(32,'Dolli Automobiles','Sanmacs Road','3','124234','Bapera','Bijawar','Madhya Pradesh','doliautomobiles@gmail.com','9684295995','8955422123','522556','25528','2002-03-06','743899834556','237737828283'),(33,'Ramzan Automobiles','Nimcet Road','4','242124','Tasoon','Burhanpur','Madhya Pradesh','ramzaanautomobiles@gmail.com','9482938393','9842132122','622255','21553','2003-05-06','743899833454','894563287956'),(34,'Dhlakiya Automobiles','Nimse Road','33','242424','Lalpur','Berasia','Madhya Pradesh','dhalkiyautomobiles@gmail.com','9298484845','9521242123','985221','22556','2003-04-05','743899834444','456778878999'),(35,'Chuto Automobiles','Madhuraj Road','23','123345','Bhimshen','Kanpur Nagar','Uttar Pradesh','chotautomobiles@gmail.com','9083988493','9712223222','212055','55255','2004-11-23','743899822324','552789933323'),(36,'Ankush Automobiles','Arayan Road','23','232455','Jais','Allahabad','Uttar Pradesh','ankusautomobiles@gmail.com','9637488993','8954553322','588952','55222','2002-12-22','743899832422','552878995322'),(37,'Manoj Automobiles','Arush Road','234','355675','Hawani','Jalaun','Uttar Pradesh','manojautomobiles@gmail.com','9222897344','9324455456','588752','55523','2003-11-26','743899834234','568898778899'),(38,'Abhishek Automobiles','Mcom Road','5','644553','Quret','Thane','Maharastra','abhishekautomobiles@gmail.com','9559940395','8523220788','205546','85452','1997-11-23','743899823424','676789900988'),(39,'Neeraj Automobiles','Fruits Road','56','324234','Veha','Aurangabad','Maharastra','neerjautomobiles@gmail.com','9464384788','7854122232','698952','55232','2003-11-12','743899812334','677889998777'),(40,'jeetendra Automobiles','Ratan Road','7','234545','Lalganj','Bhopal','Madhya Pradesh','jetndraautomobiles@gmail.com','8312893844','7412558855','689822','97855','2002-12-12','743899834344','895632895647'),(41,'Ganga Automobiles','Jamuna Road','76','234545','Unnao','Bhopal','Madhya Pradesh','ganautomobiles@gmail.com','8634874884','7412556699','212565','56522','2008-11-24','743899832333','895632895647'),(42,'Durga Automobiles','Soft Road','45','443345','Phulpur','Jalaun','Uttar Pradesh','durgautomobiles@gmail.com','9484884994','8785322123','879556','25556','2003-12-12','743899832332','568898778899'),(43,'Kalpana Automobiles','Rwt Road','3','345535','Dhumpur','Berasia','Madhya Pradesh','kalpanaautomobiles@gmail.com','9393904949','7884522225','320558','78556','2005-05-12','743899832123','456778878999'),(44,'fauz Automobiles','ert Road','4','734744','tyir','Thunag','Bihar','tayir@gmail.com','9854859945','7855522225','785632','62022','2009-12-24','743899833245','788877889998');
/*!40000 ALTER TABLE `showroom` ENABLE KEYS */;
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
