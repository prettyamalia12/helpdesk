CREATE DATABASE  IF NOT EXISTS `help_desk` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `help_desk`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: help_desk
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('6m5btj84onrhr0usa6kfk9pdv8e2luue','::1',1530487985,'__ci_last_regenerate|i:1530487147;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530351869\";'),('v6hlmj89qmhbd21jjpvhmt7pq6rt1vkn','::1',1530488091,'__ci_last_regenerate|i:1530487985;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530351869\";'),('vgegbi3lp6bhvaa839msmah8hi923iho','::1',1530488412,'__ci_last_regenerate|i:1530488303;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530351869\";'),('f6rjg68n96dpag3pobm3skiv7e5aglpv','::1',1530489239,'__ci_last_regenerate|i:1530489105;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('v09ibl83fq9o570adc6a4ti514bvvdan','::1',1530489180,'__ci_last_regenerate|i:1530489180;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530351869\";'),('8934c28u39vodub08dlct26br05vsce4','::1',1530489704,'__ci_last_regenerate|i:1530489483;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('d45e7b18dq70r0ja88ffmigugncdldab','::1',1530490130,'__ci_last_regenerate|i:1530489838;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('kcusqnatb27g542rh3u1v248iacome2l','::1',1530490140,'__ci_last_regenerate|i:1530490120;identity|s:13:\"op_networking\";username|s:13:\"op_networking\";email|s:23:\"op_networking@gmail.com\";user_id|s:2:\"12\";old_last_login|s:10:\"1530489597\";'),('8gln1a83gaqd1i66eqhoecd0536g1qel','::1',1530490337,'__ci_last_regenerate|i:1530490330;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('po8p4a8k1kjh5sk8courmaioh312cnqv','::1',1530490490,'__ci_last_regenerate|i:1530490490;identity|s:13:\"op_networking\";username|s:13:\"op_networking\";email|s:23:\"op_networking@gmail.com\";user_id|s:2:\"12\";old_last_login|s:10:\"1530489597\";'),('tdk9j2l2b4b5etd1j54gdkuntapv4mbd','::1',1530491012,'__ci_last_regenerate|i:1530490721;identity|s:13:\"op_networking\";username|s:13:\"op_networking\";email|s:23:\"op_networking@gmail.com\";user_id|s:2:\"12\";old_last_login|s:10:\"1530490135\";'),('739bjm6fait9lmu9g3g2unvc2teftarq','::1',1530491322,'__ci_last_regenerate|i:1530491032;identity|s:13:\"op_networking\";username|s:13:\"op_networking\";email|s:23:\"op_networking@gmail.com\";user_id|s:2:\"12\";old_last_login|s:10:\"1530490135\";'),('in4d7d5iiojt0dekd9umhkh9rhhfpoq9','::1',1530491372,'__ci_last_regenerate|i:1530491338;identity|s:13:\"op_networking\";username|s:13:\"op_networking\";email|s:23:\"op_networking@gmail.com\";user_id|s:2:\"12\";old_last_login|s:10:\"1530490135\";'),('5ujukhlfkigadqgk14s2igjikqsjfk46','::1',1530491654,'__ci_last_regenerate|i:1530491353;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('3sjtm9ig929j0pmq2qdo43vq7bgiem85','::1',1530491804,'__ci_last_regenerate|i:1530491654;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('rid4kj00jag81l4hik91q8mpvhojclvt','::1',1530491783,'__ci_last_regenerate|i:1530491778;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530486812\";'),('fksn3oitr3hb7cr2cmtfj6j4ni4h3s0p','::1',1530492355,'__ci_last_regenerate|i:1530492338;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530486812\";'),('3ljooi8amekj0mq7f4vcjnfl55pm84rt','::1',1530493746,'__ci_last_regenerate|i:1530493548;'),('deg4j5n8gdd1sdlrlu2pkerfr4rv1cu6','::1',1530493998,'__ci_last_regenerate|i:1530493989;'),('na6cge7gd2l915dp78274e92vrb4513t','::1',1530494411,'__ci_last_regenerate|i:1530494345;'),('312bdvn4s63ds2rqs4r087vthqc2s88t','::1',1530494878,'__ci_last_regenerate|i:1530494651;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530491783\";'),('nokc0nslaegia7um71943fnjk00vlefc','::1',1530495124,'__ci_last_regenerate|i:1530495095;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530491783\";'),('cd0975eger9amqjaospjik66tdok63j3','::1',1530495372,'__ci_last_regenerate|i:1530495372;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('4bldi5j2jqopi5u14omt1quo79td7l3a','::1',1530496031,'__ci_last_regenerate|i:1530495970;identity|s:10:\"userreport\";username|s:10:\"userreport\";email|s:20:\"danztensai@gmail.com\";user_id|s:1:\"9\";old_last_login|s:10:\"1530491783\";'),('365g0tfau5tr2pd025g0l18g3la9eaob','::1',1530496098,'__ci_last_regenerate|i:1530496098;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530351967\";'),('fm1als003liqa2mvrqc3rvtarpf4ls7v','::1',1530509252,'__ci_last_regenerate|i:1530509246;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530489118\";'),('tuh0reku6mi3tgc14ltofa2ro8rslbc1','::1',1530511383,'__ci_last_regenerate|i:1530511383;'),('dktomnr5nknpvt2qcjs59hla7apfi321','::1',1530512508,'__ci_last_regenerate|i:1530512499;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530509252\";'),('a0kd7kv9mbi0mcctut8u4pjd3oum8lhi','::1',1530580934,'__ci_last_regenerate|i:1530580934;'),('9k343828c1l7r8okavg6qjoca4epde2t','::1',1530594323,'__ci_last_regenerate|i:1530594323;'),('ai3dbrafbagfd7em24m8vnm0o3hcc6e8','::1',1530694666,'__ci_last_regenerate|i:1530692154;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530512504\";'),('hvb5pondksjjqr7akpkgg0t53k8nlq3p','::1',1530695121,'__ci_last_regenerate|i:1530695120;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530512504\";'),('cl65vrp68q6r8q34sj0gjbh98ca8bap6','::1',1530709612,'__ci_last_regenerate|i:1530709610;identity|s:13:\"administrator\";username|s:13:\"administrator\";email|s:15:\"admin@admin.com\";user_id|s:1:\"1\";old_last_login|s:10:\"1530512504\";');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin','Administrator'),(2,'OPD','General User'),(3,'Network Support','OP Network'),(6,'Operating System Support','User Untuk Operator '),(7,'Application Support','User Untuk Operator '),(8,'Hardware Support','User Untuk Operator ');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_desk_report`
--

DROP TABLE IF EXISTS `help_desk_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_desk_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `description` text,
  `last_update` timestamp NULL DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reporting_type` int(11) NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `process_by` int(11) unsigned DEFAULT NULL,
  `urgent_level_id` int(11) DEFAULT NULL,
  `solution_id` int(11) DEFAULT NULL,
  `status_reporting_id` int(11) unsigned DEFAULT '4',
  `picture` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`idreport`,`reporting_type`,`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_desk_report`
--

LOCK TABLES `help_desk_report` WRITE;
/*!40000 ALTER TABLE `help_desk_report` DISABLE KEYS */;
INSERT INTO `help_desk_report` VALUES (1,'Test ','<p>\r\n	Ini Loh Testnya</p>\r\n','2018-06-11 16:38:44','2018-06-11 16:38:47',3,1,1,1,2,1,NULL),(2,'Dashboard Test','<p>\r\n	TEST SET</p>\r\n',NULL,'2018-06-12 01:14:39',3,9,NULL,NULL,NULL,NULL,NULL),(3,'Permintaan Video Conference','<p>\r\n	mohon difasilitasi permintaan video conference dengan kabupaten/kota tanggal 3 agustus 2018</p>\r\n','2018-06-11 17:00:00','2018-06-12 07:03:19',1,9,1,2,3,2,NULL),(4,NULL,NULL,NULL,'2018-06-12 07:03:30',0,0,NULL,NULL,NULL,NULL,NULL),(5,'jaringan lambat','<p>\r\n	punten ini kenapa jaringan lambat... plis deh</p>\r\n',NULL,'2018-06-28 06:50:52',1,9,NULL,NULL,NULL,NULL,NULL),(6,'jaringan mati','<p>\r\n	punten jaringan di kantor kami putus&nbsp;</p>\r\n','2018-06-29 17:00:00','2018-06-30 09:45:25',1,9,1,1,2,1,NULL),(18,'Website ccangkurileungciapciap.id DOWN tidak ','<p>\r\n	TEST</p>\r\n',NULL,'2018-07-01 23:34:51',3,9,NULL,NULL,NULL,NULL,NULL),(19,'Website ccangkurileungciapciap.id DOWN tidak ','<p>\r\n	23423423</p>\r\n',NULL,'2018-07-01 23:38:31',3,9,NULL,NULL,NULL,NULL,NULL),(20,'Dashboard','<p>\r\n	qazsxdcfvgbhnjmk,</p>\r\n','2018-07-02 00:31:18','2018-07-01 23:40:12',3,9,3,NULL,NULL,NULL,NULL),(21,'Ini Foto',NULL,NULL,'2018-07-02 01:32:04',1,9,3,NULL,NULL,NULL,'403c4-jabar_278403793.png');
/*!40000 ALTER TABLE `help_desk_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instansi`
--

DROP TABLE IF EXISTS `instansi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instansi` (
  `instansi_id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi_name` varchar(145) DEFAULT NULL,
  `instansi_alias` varchar(145) DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_ip_partner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`instansi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instansi`
--

LOCK TABLES `instansi` WRITE;
/*!40000 ALTER TABLE `instansi` DISABLE KEYS */;
INSERT INTO `instansi` VALUES (1,'Badan Kepegawaian Daerah','BKD','2017-08-20 06:03:47',NULL),(2,'Dinas Komunikasi dan Informatika Jawa Barat','Diskominfo','2017-08-20 06:03:47',NULL);
/*!40000 ALTER TABLE `instansi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(45) DEFAULT NULL,
  `partner_alias` varchar(45) DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `app_ip_partner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporting_type`
--

DROP TABLE IF EXISTS `reporting_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporting_type` (
  `idreporting_type` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idreporting_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporting_type`
--

LOCK TABLES `reporting_type` WRITE;
/*!40000 ALTER TABLE `reporting_type` DISABLE KEYS */;
INSERT INTO `reporting_type` VALUES (1,'Network Support',NULL),(2,'Operating System Support',NULL),(3,'Application Support',NULL),(4,'Hardware Support',NULL);
/*!40000 ALTER TABLE `reporting_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution`
--

DROP TABLE IF EXISTS `solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solution` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution`
--

LOCK TABLES `solution` WRITE;
/*!40000 ALTER TABLE `solution` DISABLE KEYS */;
INSERT INTO `solution` VALUES (1,'Solusi Instant','2018-06-11 16:27:36'),(2,'Eskalasi Supporting','2018-06-11 16:27:53'),(3,'Eskalasi Visitasi','2018-06-11 16:28:07');
/*!40000 ALTER TABLE `solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_reporting`
--

DROP TABLE IF EXISTS `status_reporting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_reporting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_reporting`
--

LOCK TABLES `status_reporting` WRITE;
/*!40000 ALTER TABLE `status_reporting` DISABLE KEYS */;
INSERT INTO `status_reporting` VALUES (1,'Di Proses','2018-06-11 16:30:13'),(2,'Selesai','2018-06-11 16:30:19'),(3,'Pending','2018-06-11 16:30:27'),(4,'Baru Masuk','2018-06-11 16:30:27');
/*!40000 ALTER TABLE `status_reporting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urgent_level`
--

DROP TABLE IF EXISTS `urgent_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urgent_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urgent_level`
--

LOCK TABLES `urgent_level` WRITE;
/*!40000 ALTER TABLE `urgent_level` DISABLE KEYS */;
INSERT INTO `urgent_level` VALUES (1,'1','Normal','2018-06-11 16:28:31'),(2,'2','Penting','2018-06-11 16:28:45'),(3,'3','Sangat Penting','2018-06-11 16:29:01');
/*!40000 ALTER TABLE `urgent_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_pic` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'127.0.0.1','administrator','$2y$08$x6iF/tK2.wjIJbiOV6OMNuPfgjMRPGoeen4Pa.8QOSwSymx5rQQG2','','admin@admin.com','',NULL,NULL,NULL,1268889823,1530692160,1,'Admin','istrator','Sisintegrasi','0','4c7ae-capture.png'),(9,'::1','userreport','$2y$08$x6iF/tK2.wjIJbiOV6OMNuPfgjMRPGoeen4Pa.8QOSwSymx5rQQG2',NULL,'danztensai@gmail.com',NULL,NULL,NULL,NULL,1503240466,1530509224,1,'Danial','Habibi','CEFA','089655394054','Profile-Placeholder.png'),(11,'::1','bos','$2y$08$Ri7SiEFR6ckNUan1tj9h0OvBy471Zmih2qWoT6uaTSK6VMbXYT4lW',NULL,'bos@gmail.com',NULL,NULL,NULL,NULL,1503369798,1503369949,1,'bos','bos','Indosis','23123123','f18fc-openbts.png'),(12,'::1','op_networking','$2y$08$5jzScS4fcyrMbcy9a8eRYexjWtoNS2p5DesDih50x7HipKzx4S31C',NULL,'op_networking@gmail.com',NULL,NULL,NULL,NULL,1530489597,1530490752,1,'Op','Networking','CEFA','89655394054','de06d-indihomebapuk.png'),(13,'::1','test2','$2y$08$ZIp7RTldPel25iHrfE7Hl.j7kvxxddE2ZP9FVDBJk478R7WESfdaK',NULL,'test@gmail.com',NULL,NULL,NULL,NULL,1530692209,1530692209,1,'test','2','Bebas','089123','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1,1),(22,9,2),(14,11,2),(15,11,3),(28,12,3),(29,13,8);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_instansi`
--

DROP TABLE IF EXISTS `users_instansi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_instansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `instansi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_instansi`
--

LOCK TABLES `users_instansi` WRITE;
/*!40000 ALTER TABLE `users_instansi` DISABLE KEYS */;
INSERT INTO `users_instansi` VALUES (97,0,2),(98,0,2),(100,12,2),(101,13,2);
/*!40000 ALTER TABLE `users_instansi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_partner`
--

DROP TABLE IF EXISTS `users_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_partner`
--

LOCK TABLES `users_partner` WRITE;
/*!40000 ALTER TABLE `users_partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_partner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-13 13:47:10
