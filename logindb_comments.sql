CREATE DATABASE  IF NOT EXISTS `logindb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `logindb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: logindb
-- ------------------------------------------------------
-- Server version	5.7.35

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk_idx` (`user_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Das Programm funktioniert großartig!',2),(3,'Leider kenne ich mich nicht aus :(',3),(4,'Java finde ich großartig!',3),(5,'Java is awesome!',4),(6,'Hibernate is easy!!',1),(7,'Wo finde ich die Unterlagen?',5),(8,'Kann schon sein, dass es nicht sein kann.',6),(9,'Wieso kennen sich die meisten Programmierer damit nicht aus?',6),(10,'Was ist die einfachste Lösung dafür?',7),(11,'Welche Note habe ich?',8),(12,'Wie ist der Notendurchschnitt bei diesem Test?',8),(13,'Kann mir jemand helfen ?',9),(14,'I am number 10',10),(15,'I am number 1 !!!',1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'MCurran','uwjlz782','Melanie','Curran','Melanie.Curran@htl-klu.at'),(2,'BTan','bewiv203','Bognar','Tan','Bognar.Tan@htl-klu.at'),(3,'VMühleder','ssoru128','Victor','Mühleder','Victor.Mühleder@gmail.com'),(4,'GFranzoso','gijpp563','Giampiero','Franzoso','Giampiero.Franzoso@gmx.at'),(5,'ICook','moowz848','Inbal','Cook','Inbal.Cook@gmail.com'),(6,'JWoodcock','wfvbk171','Jana','Woodcock','Jana.Woodcock@gmail.com'),(7,'AGehrer','hrjhl933','Anita','Gehrer','Anita.Gehrer@gmail.com'),(8,'VWenegger','zpxnb112','Vincenzo','Wenegger','Vincenzo.Wenegger@gmail.com'),(9,'TMazzocchi','xebue455','Thammasak','Mazzocchi','Thammasak.Mazzocchi@gmx.at'),(10,'JKarlsson','wbodp381','Jennifer','Karlsson','Jennifer.Karlsson@htl-klu.at'),(11,'JAichner','rflmq883','Jane','Aichner','Jane.Aichner@htl-klu.at'),(12,'MSimon','mdoft709','Mirinda','Simon','Mirinda.Simon@gmx.at'),(13,'AGuazzaloca','yssts403','Alessandra','Guazzaloca','Alessandra.Guazzaloca@htl-klu.at'),(14,'FLees','ahqjc190','Fabrizio','Lees','Fabrizio.Lees@gmail.com'),(15,'BMerlo','zsudi983','Bea','Merlo','Bea.Merlo@gmx.at'),(16,'LNewton','cqjzq785','Li','Newton','Li.Newton@gmx.at'),(17,'EHu','odmdk314','Enrico','Hu','Enrico.Hu@htl-klu.at'),(18,'JMichelakis','bkpbc958','Jan-Hendrik','Michelakis','Jan-Hendrik.Michelakis@gmx.at'),(19,'MAckerley','elrel769','Max','Ackerley','Max.Ackerley@gmx.at'),(20,'ADruml','ijrls491','Ariane','Druml','Ariane.Druml@gmail.com'),(21,'SLuwang','rdhco576','Sonja','Luwang','Sonja.Luwang@htl-klu.at'),(22,'NKnoeri','uooip925','Nina','Knoeri','Nina.Knoeri@gmail.com'),(23,'MBesendorfer','fwohy962','Monica','Besendorfer','Monica.Besendorfer@gmx.at'),(24,'FOblak','xjjgg884','Fintan','Oblak','Fintan.Oblak@htl-klu.at'),(25,'KSmallwood','eldya624','Konrad','Smallwood','Konrad.Smallwood@gmx.at'),(26,'KBuccieri','beibm264','Kath','Buccieri','Kath.Buccieri@gmail.com'),(27,'JBaractaru','rvevu861','Jana','Baractaru','Jana.Baractaru@gmx.at'),(28,'CTrnka','ffpqc617','Claudio','Trnka','Claudio.Trnka@htl-klu.at'),(29,'TKilvington','wpypz385','Toralf','Kilvington','Toralf.Kilvington@gmail.com'),(30,'PPeer','yutfq360','Petr','Peer','Petr.Peer@gmail.com'),(31,'RPetersen','ndrpe486','Ronald','Petersen','Ronald.Petersen@gmx.at'),(32,'FLomb','ubliz381','Fabrizio','Lomb','Fabrizio.Lomb@gmx.at'),(33,'TLucchini','qyogb178','Toon','Lucchini','Toon.Lucchini@gmail.com'),(34,'KCamplese','mrozc421','Kaustubh','Camplese','Kaustubh.Camplese@gmail.com'),(35,'MCornaro','udbwk960','Marios','Cornaro','Marios.Cornaro@gmx.at'),(36,'IBartz','vshux765','Irmgard','Bartz','Irmgard.Bartz@gmx.at'),(37,'DBahsoon','ccuwn788','Derek','Bahsoon','Derek.Bahsoon@htl-klu.at'),(38,'EHaertel','gaxys441','Emanuel','Haertel','Emanuel.Haertel@gmx.at'),(39,'TGauld','lgcww948','Tomasz','Gauld','Tomasz.Gauld@htl-klu.at'),(40,'HKurig','jiqiu985','Heribert','Kurig','Heribert.Kurig@gmx.at'),(41,'ISainög','vjgjh688','Ian','Sainög','Ian.Sainög@gmx.at'),(42,'MNugent','eifve264','Michele','Nugent','Michele.Nugent@htl-klu.at'),(43,'ESteel','srlyj996','Elaine','Steel','Elaine.Steel@gmx.at'),(44,'SMcalinden','puhfv436','Saffron','Mcalinden','Saffron.Mcalinden@htl-klu.at'),(45,'AMonat','abcd1234','Albert','Monat','Albert.Monat@htl-klu.at'),(46,'ERadkar','gprpl517','Elodie','Radkar','Elodie.Radkar@gmx.at'),(47,'KBarnert','jawbk920','Kaapo','Barnert','Kaapo.Barnert@htl-klu.at'),(48,'ROpel','pexnd972','Reggie','Opel','Reggie.Opel@gmx.at'),(49,'SSketako','fylgz665','Sarah','Sketako','Sarah.Sketako@gmx.at'),(50,'SSchulnig','xrenh106','Stephanie','Schulnig','Stephanie.Schulnig@gmx.at'),(51,'GStornig','yrruh702','Gabriele','Stornig','Gabriele.Stornig@gmx.at'),(52,'NFickenscher','tctzy181','Nora','Fickenscher','Nora.Fickenscher@gmail.com'),(53,'AReitmayr','bfdhy886','Amichay','Reitmayr','Amichay.Reitmayr@gmx.at'),(54,'JKrimbacher','rzump993','Jan-Hinrich','Krimbacher','Jan-Hinrich.Krimbacher@gmx.at'),(55,'HMandelj','dsjyx145','Hülder','Mandelj','Hülder.Mandelj@gmx.at'),(56,'VMasotti','lhgpl118','Valter','Masotti','Valter.Masotti@gmx.at'),(57,'SHatzis','gjlkv250','Sean','Hatzis','Sean.Hatzis@gmail.com'),(58,'KBaumunk','jtwxb828','Kate','Baumunk','Kate.Baumunk@htl-klu.at'),(59,'OAugel','ulomv224','Or','Augel','Or.Augel@gmail.com'),(60,'CTausch','iujjn664','Camilla','Tausch','Camilla.Tausch@htl-klu.at'),(61,'MFrühwirth','uvstt567','Matthew','Frühwirth','Matthew.Frühwirth@htl-klu.at'),(62,'RKopriva','csnps214','Reinhard','Kopriva','Reinhard.Kopriva@htl-klu.at'),(63,'GManke','qpwkh195','Gerhard','Manke','Gerhard.Manke@htl-klu.at'),(64,'NLüftenegger','mvyoz118','Nicholas','Lüftenegger','Nicholas.Lüftenegger@gmail.com'),(65,'CMikula','frxjf688','Cedric','Mikula','Cedric.Mikula@gmail.com'),(66,'LCanalda','jfdvo134','Luca','Canalda','Luca.Canalda@gmx.at'),(67,'SHallenbarter','opnua829','Silke','Hallenbarter','Silke.Hallenbarter@htl-klu.at'),(68,'RPreissl','aumzn191','Ralph','Preissl','Ralph.Preissl@gmx.at'),(69,'BGibson','kkqkv563','Brendan','Gibson','Brendan.Gibson@gmx.at'),(70,'GChase','abllo411','Gowan','Chase','Gowan.Chase@gmx.at'),(71,'RGschwandtl','jyuir659','Reinhard','Gschwandtl','Reinhard.Gschwandtl@htl-klu.at'),(72,'CHsu','fvfwv495','Carolina','Hsu','Carolina.Hsu@gmail.com'),(73,'ASigle','guhyj555','Annalisa','Sigle','Annalisa.Sigle@gmail.com'),(74,'ZChan','xrbew592','Zoltan','Chan','Zoltan.Chan@gmx.at'),(75,'SPuliatti','hjpvb762','Sonia','Puliatti','Sonia.Puliatti@htl-klu.at'),(76,'SVahldiek','womxe791','Sergey','Vahldiek','Sergey.Vahldiek@htl-klu.at'),(77,'VSchlögel','ldfaf967','Victor','Schlögel','Victor.Schlögel@htl-klu.at'),(78,'DCrabb','bvwlq878','Debbi','Crabb','Debbi.Crabb@htl-klu.at'),(79,'SSecco','gcwvn743','Shawn','Secco','Shawn.Secco@gmx.at'),(80,'MHutter','nhyoy140','Monika','Hutter','Monika.Hutter@gmx.at'),(81,'JStaudacher','mdjdw791','Jarek','Staudacher','Jarek.Staudacher@gmail.com'),(82,'MBertuccini','rvlwl644','Mirinda','Bertuccini','Mirinda.Bertuccini@gmx.at'),(83,'IHaertel','dxobn665','Ignacio','Haertel','Ignacio.Haertel@gmx.at'),(84,'MList','locpz957','Manuela','List','Manuela.List@gmx.at'),(85,'GRoederer','lmyim174','Gil','Roederer','Gil.Roederer@gmx.at'),(86,'MRudolf','lskvc561','Manuela','Rudolf','Manuela.Rudolf@gmail.com'),(87,'ACattaneo','pibiv670','Anja','Cattaneo','Anja.Cattaneo@gmx.at'),(88,'GEberhard','vxyki880','Gitte','Eberhard','Gitte.Eberhard@htl-klu.at'),(89,'BTippelt','ipifa195','Boris','Tippelt','Boris.Tippelt@gmail.com'),(90,'MEntner','wiyfh268','Mathilde','Entner','Mathilde.Entner@htl-klu.at'),(91,'THutter','awpwk212','Tanja','Hutter','Tanja.Hutter@gmail.com'),(92,'IPinha','gresg923','Ines','Pinha','Ines.Pinha@gmail.com'),(93,'JKöller','fpzxl586','Jennifer','Köller','Jennifer.Köller@gmail.com'),(94,'IDekhuyzen','mbkws161','Isabell','Dekhuyzen','Isabell.Dekhuyzen@gmail.com'),(95,'ANordblom','rfjbp725','Ariane','Nordblom','Ariane.Nordblom@gmail.com'),(96,'JPedroni','jknbm648','Jana','Pedroni','Jana.Pedroni@gmail.com'),(97,'LLüftenegger','ptrae139','Leontien','Lüftenegger','Leontien.Lüftenegger@htl-klu.at'),(98,'FBrown','lexbc260','Filip','Brown','Filip.Brown@gmail.com'),(99,'KNemethova','mwuyy390','Kathrin','Nemethova','Kathrin.Nemethova@htl-klu.at'),(100,'HSchicha','exgvc765','Heppu','Schicha','Heppu.Schicha@gmx.at'),(101,'STüll','qdwet125','Saffron','Tüll','Saffron.Tüll@htl-klu.at'),(102,'NSchulze','uweoy821','Nigel','Schulze','Nigel.Schulze@gmail.com'),(103,'LCole','jxdoc734','Luigi','Cole','Luigi.Cole@gmx.at'),(104,'DSimons','fmxgs886','Damien','Simons','Damien.Simons@gmail.com'),(105,'CSoldan','ppgra707','Christa','Soldan','Christa.Soldan@htl-klu.at'),(106,'HThomasson','ftisk561','Heidi','Thomasson','Heidi.Thomasson@gmail.com'),(107,'WGleizes','bzmzu297','Webber','Gleizes','Webber.Gleizes@htl-klu.at'),(108,'LBrussolo','oxpcr862','Lynn','Brussolo','Lynn.Brussolo@gmail.com'),(109,'GKassl','wetjh566','Giovanna','Kassl','Giovanna.Kassl@gmail.com'),(110,'GConradi','iloml724','Gowan','Conradi','Gowan.Conradi@htl-klu.at'),(111,'JRebro','jbqth290','John','Rebro','John.Rebro@gmx.at'),(112,'SOrepic','ajtsu779','Simone','Orepic','Simone.Orepic@gmx.at'),(113,'FTabuchi','diajq877','Fabrizio','Tabuchi','Fabrizio.Tabuchi@htl-klu.at'),(114,'WNordblom','dqosw562','Wayne','Nordblom','Wayne.Nordblom@gmail.com'),(115,'GUllmann','xwsgx283','Glyn','Ullmann','Glyn.Ullmann@gmail.com'),(116,'RStelzl','znyiv928','Reinhold','Stelzl','Reinhold.Stelzl@gmx.at'),(117,'CStagni','kqbxp342','Christa','Stagni','Christa.Stagni@htl-klu.at'),(118,'JSchinagl','cviel712','Jeff','Schinagl','Jeff.Schinagl@htl-klu.at'),(119,'NGermershausen','yktbz385','Nikki','Germershausen','Nikki.Germershausen@htl-klu.at'),(120,'YDrobnic','kjewr994','Yvonne','Drobnic','Yvonne.Drobnic@htl-klu.at'),(121,'YSpears','mhrht500','Yiorgos','Spears','Yiorgos.Spears@gmx.at'),(122,'DPuáwald','qhpxy399','Des','Puáwald','Des.Puáwald@htl-klu.at'),(123,'RTettamanzi','cqwlp757','Renate','Tettamanzi','Renate.Tettamanzi@gmail.com'),(124,'PPieber','dtvag897','Pro','Pieber','Pro.Pieber@htl-klu.at'),(125,'OPauli','ouolx149','Olivier','Pauli','Olivier.Pauli@htl-klu.at'),(126,'MTallafuss','ddpib168','Marlies','Tallafuss','Marlies.Tallafuss@gmail.com'),(127,'IBartonik','gfemw997','Isabell','Bartonik','Isabell.Bartonik@gmx.at'),(128,'APascucci','mowww332','Alfons','Pascucci','Alfons.Pascucci@gmail.com'),(129,'DVogler','ahkgy738','Durdica','Vogler','Durdica.Vogler@gmx.at'),(130,'NMikellides','iowub801','Neil','Mikellides','Neil.Mikellides@gmx.at'),(131,'LShachar','byvjd577','Lorenz','Shachar','Lorenz.Shachar@htl-klu.at'),(132,'YSteinscherer','jsauj873','Yoram','Steinscherer','Yoram.Steinscherer@gmx.at'),(133,'HAckerley','dyacx308','Henna','Ackerley','Henna.Ackerley@gmail.com'),(134,'MBaroni','tukif843','Mary','Baroni','Mary.Baroni@gmail.com'),(135,'GEnetter','vanmi735','Georg','Enetter','Georg.Enetter@htl-klu.at'),(136,'SMayorov','dysae580','Stephanie','Mayorov','Stephanie.Mayorov@htl-klu.at'),(137,'ABrünner','jyfsj447','Angela','Brünner','Angela.Brünner@gmx.at'),(138,'ED\'Auria','sgqip718','Emily','D\'Auria','Emily.D\'Auria@gmail.com'),(139,'MBauer','xpclj719','Michaela','Bauer','Michaela.Bauer@htl-klu.at'),(140,'UTrieb','nnktx896','Ursula','Trieb','Ursula.Trieb@gmail.com'),(141,'GKrimmel','vlqsv739','Guillaume','Krimmel','Guillaume.Krimmel@gmx.at'),(142,'CPosarnig','xzpda213','Carlos','Posarnig','Carlos.Posarnig@htl-klu.at'),(143,'PCowderoy','exfts325','Pia','Cowderoy','Pia.Cowderoy@htl-klu.at'),(144,'VTotschnig','jjgbs481','Valter','Totschnig','Valter.Totschnig@gmail.com'),(145,'SElli','soyna782','Sonia','Elli','Sonia.Elli@gmx.at'),(146,'SBaletti','tvgyq487','Siobhan','Baletti','Siobhan.Baletti@gmail.com'),(147,'SPfeffer','unbbr932','Sabrina','Pfeffer','Sabrina.Pfeffer@gmail.com'),(148,'JLazic','gjmiz500','Johann','Lazic','Johann.Lazic@htl-klu.at'),(149,'JAlbrecht','eprfk280','Julius','Albrecht','Julius.Albrecht@htl-klu.at'),(150,'GSöllman','ruinq528','Gordon','Söllman','Gordon.Söllman@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 13:24:57
