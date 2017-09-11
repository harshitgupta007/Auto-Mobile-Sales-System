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
-- Table structure for table `dealer`
--

DROP TABLE IF EXISTS `dealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealer` (
  `id` varchar(12) NOT NULL,
  `dealershipname` varchar(50) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `mob1` varchar(14) NOT NULL DEFAULT ' ',
  `mob2` varchar(14) DEFAULT ' ',
  `std` varchar(10) DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT ' ',
  `address` varchar(40) DEFAULT NULL,
  `street` varchar(5) DEFAULT NULL,
  `pincode` varchar(8) DEFAULT NULL,
  `district` varchar(15) DEFAULT ' ',
  `state` varchar(15) DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer`
--

LOCK TABLES `dealer` WRITE;
/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` VALUES ('123786213908','Sagar Galaxy','sachendra@gmail.com','9459872922','8092342134','0897','242818','24218','Near Railway Station','78','321245','Sagar','Madhya Pradesh'),('123897123432','Gupta Automobile','harshitgupta@gmail.c','9459890922','8097642134','212156','234213','23421','Near Ram Mandir Temple',' ','212189','Urai','Uttar Pradesh'),('218398291929','Neerav Honda','neerajauto@gmail.com','8734563908','7789459037','98546','238965','986580','Ekurga B.O','34','413511','Latur','MAHARASHTRA'),('228389492090','Seeta Honda','anseetaauto@gmail.com','9012564398','8855674387','67590','894509','564870','A.K.Market S.O','86','110055','Central Delhi','DELHI'),('237737828283','Eshan Honda','Eshanauto@gmail.com','9543720987','9207648594','89409','765901','865490','Adenga B.O','42','494331','Bastar','CHATTISGARH'),('237823949909','Hansh Honda','hanshauto@gmail.com','8923549876','9487654070','56438','897654','564098','Nemed B.O','51','494444','Bijapur(CGH)','CHATTISGARH'),('239933002939','Ranbir Honda','ranvirauto@gmail.com','9022334455','8765893456','32901','345769','564853','Crpf Ajmer S.O','23','305005','Ajmer','RAJASTHAN'),('298392202029','Kailash Honda','kaileshauto@gmail.com','8943207854','7765430257','23453','785643','978659','Nauroji Nagar S.O','74','110029','New Delhi','DELHI'),('298934934002','Aarush Honda','aarrushauto@gmail.com','8823081928','9878097456','54876','243765','453897','Angallu B.O','43','517326','Chittoor','ANDHRA PRADESH'),('328393984949','Jayesh Honda','javeshauto@gmail.com','8876209569','8890340856','45380','354898','675490','Ambavade B.O','87','416201','Kolhapur','MAHARASHTRA'),('352455515667','Kalam Honda','kalamauto@gmail.com','9612883299','9183993040','78556','532233','655123','Chupati','54','566389','Baldwara','Bihar'),('356784927898','Pawan Honda','pawanauto@gmail.com','9022384589','8623091671','27890','243674','986754','Amehata B.O','45','802202','Bhojpur','BIHAR'),('388472991929','Lakshay Honda','lakshavauto@gmail.com','8877554432','8243790679','56739','875067','679840','Amgaon B.O','51','495690','Dantewada','CHATTISGARH'),('389493992002','Manoj Honda','manojauto@gmail.com','9698457629','9345278690','36548','238945','342654','Agapur Adpoi B.O','21','403401','South Goa','GOA'),('389499400404','Indrajit Honda','indrajitauto@gmail.com','8745902509','8423820719','64390','786542','456370','Bharni B.O','87','495112','Bilaspur(CGH)','CHATTISGARH'),('445666522322','Royal Honda','rayalauto@gmail.com','9921783239','9238438484','85522','223665','233202','jaiswal sweet','82','855633','Bali Chowki','Delhi'),('446678990099','Rickki Honda','rickkiauto@gmail.com','9738934020','9483920203','55522','552223','623322','Venkay','96','986663','Burhanpur','Madhya Pradesh'),('456778878999','Hind Honda','hindauto@gmail.com','9803848393','9603490034','56552','987522','852332','Donkar','45','566233','Berasia','Madhya Pradesh'),('456785789988','Ginni Honda','ginniauto@gmail.com','9478122929','9283834494','52235','545556','622533','virla mandir','78','623598','Padhar','Bihar'),('458855223323','Ullah Honda','ullahauto@gmail.com','9572812992','9485885955','32255','652232','895445','gulmaohar','96','556323','Dharmpur','Delhi'),('467574884939','Shivani Honda','shivaniauto@gmail.com','8909358786','8890346289','93458','673409','856437','Advalpal B.O','65','403503','North Goa','GOA'),('471871882819','Baba Honda','sushilkumardwivedi@gmail.com','9454072922','8912342134','0532','222818','22818','Near Big Bazar Civil Lines','12/34','212117','Indore','Madhya Pradesh'),('523568879562','Abhi Honda','abhiauto@gmail.com','9956234852','9023769845','80657','345329','547560','Baraula B.O','ward ','202126','Aligarh','UTTAR PRADESH'),('552789933323','Saloni Honda','saloniauto@gmail.com','7688980456','8765342145','89657','754671','986578','Arya Nagar','90','208002','Kanpur Nagar','UTTAR PRADESH'),('552878995322','Raj Honda','rajauto@gmail.com','8855664422','7645989764','99567','783549','876045','Allahabad High Court','alpha','211017','Allahabad','UTTAR PRADESH'),('554565223256','Salik Honda','salikauto@gmail.com','9028932939','9743949954','56633','555222','552523','raisen road','48','565633','Aut','Maharshtra'),('554785548893','Lokesh Honda','lokeshauto@gmail.com','8891230988','9876544323','88765','453747','875467','Abhiabazar B.O','17','853204','Bhagalpur','BIHAR'),('556236556222','Ashutosh Honda','ashutoshauto@gmail.com','8745692352','9992309870','56789','238934','895760','Agra Chauk S.O','34','282003','Agra','UTTAR PRADESH'),('568898778899','Jignesh Honda','jigneshauto@gmail.com','9109384949','9723939233','68752','552333','874596','S.O','78','653326','Jalaun','Uttar Pradesh'),('655542655552','Amit Honda','amitauto@gmail.com','8889562487','9453524849','89567','345628','895670','Agrod','45','455001','Dewas','MADHYA PRADESH'),('665995324589','Mahesh Honda','maheshauto@gmail.com','7956258741','9289763891','89567','255902','987067','Abhau','34','471510','Chhatarpur','MADHYA PRADESH'),('676789900988','Takur Honda','takurauto@gmail.com','9084949589','8903902030','56922','654566','523666','gama B.O','45','565323','Thane','Maharastra'),('677889998777','Mahi Honda','mahiauto@gmail.com','7809568909','8809329333','56595','895532','895623','ABabh B.O','12','987556','Aurangabad','Maharastra'),('744839992920','Tushar Honda','tusharauto@gmail.com','9765450987','9878645390','64893','349862','786540','Adegaon B.O','98','504307','Adilabad','TELANGANA'),('788877889998','JMA Honda','jmaauto@gmail.com','9930939903','9783293939','52223','789532','953223','kalva B.O','53','366655','Thunag','Bihar'),('789552212202','King Honda','kingauto@gmail.com','9821737832','9344885858','98553','556233','632255','Veshnavi','48','458963','Nihri','Delhi'),('894563287956','Modi Honda','lalitauto@gmail.com','7898526381','8823081928','90345','263549','897683','Burhanpur City','23','450331','Burhanpur','MADHYA PRADESH'),('895632895647','Prakash Honda','anupamauto@gmail.com','8956280378','9387406728','98864','252712','876905','Ayodhaya Nagar','12','462041','Bhopal','MADHYA PRADESH'),('928393812003','Priyansh Honda','priyashauto@gmail.com','8623091671','9087679052','76498','906534','976590','Andheri East S.O','56','400069','Mumbai','MAHARASHTRA'),('932020100298','Akshay Honda','akshayauto@gmail.com','9023457643','8490345678','65489','674534','905648','Delhi G.P.O.','32','110006','North Delh','DELHI'),('932884892930','Samar Honda','samarauto@gmail.com','9123093756','9756407859','43289','674509','854678','Akbarpur B.O','78','301001','Alwar','RAJASTHAN'),('932939030202','Bhavin Honda','bhavinamauto@gmail.com','9289763891','9765405387','45673','873509','754800','Venkayakalva B.O','23','515465','Cuddapah','ANDHRA PRADESH'),('938389292992','Shlok Honda','shalokauto@gmail.com','9387450988','8878906741','28746','450982','453098','Bareth B.O','17','327031','Banswara','RAJASTHAN'),('938499320209','Kumar Honda','prakashauto@gmail.com','9387406728','8634208764','97658','567398','643780','Ayyavaripalli B.O','27','515722','Ananthapur','ANDHRA PRADESH'),('938949932402','Rachit Honda','rachitauto@gmail.com','8867450923','9034765846','67540','784509','345639','Raje Raghujinagar S.O','55','440024','Nagpur','MAHARASHTRA'),('939320102849','Devansh Honda','devanshauto@gmail.com','9453524849','9574902398','43678','265784','756498','Donkarayi S.O','89','507130','East Godavari','ANDHRA PRADESH'),('943002983829','Deepak Honda','deepakauto@gmail.com','8909564538','7734569067','34569','985645','354765','Anand Vihar S.O','94','110092','East Delhi','DELHI'),('948382193303','Rahul Honda','rahulauto@gmail.com','9234576890','9022334455','67459','129865','977650','A.Babhangama B.O','87','847121','Darbhanga','BIHAR'),('948848329922','Sailesh Honda','saileshauto@gmail.com','9311092390','8867450923','34527','239856','897650','Banni B.O','ward ','802128','Buxar','BIHAR');
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;
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
