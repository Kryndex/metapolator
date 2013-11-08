-- MySQL dump 10.14  Distrib 5.5.33a-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `globalparam`
--

DROP TABLE IF EXISTS `globalparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalparam` (
  `idglobal` int(11) NOT NULL AUTO_INCREMENT,
  `metapolation` float DEFAULT '0',
  `unitwidth` float DEFAULT '0',
  `fontsize` int(11) DEFAULT '10',
  `mean` float DEFAULT '5',
  `cap` float DEFAULT '8',
  `ascl` float DEFAULT '2',
  `des` float DEFAULT '2',
  `box` float DEFAULT '10',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`idglobal`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalparam`
--

LOCK TABLES `globalparam` WRITE;
/*!40000 ALTER TABLE `globalparam` DISABLE KEYS */;
INSERT INTO `globalparam` VALUES (1,0,1,10,5,8,2,2,10,1),(2,1,1,10,5,8,2,2,10,1);
/*!40000 ALTER TABLE `globalparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glyph`
--

DROP TABLE IF EXISTS `glyph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glyph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmaster` int(11) DEFAULT NULL,
  `fontsource` enum('A','B') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(3) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `unicode` text,
  PRIMARY KEY (`id`),
  KEY `ix_glyph_user_id` (`user_id`),
  KEY `ix_glyph_idmaster` (`idmaster`),
  KEY `ix_glyph_name` (`name`),
  KEY `ix_glyph_fontsource` (`fontsource`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glyph`
--

LOCK TABLES `glyph` WRITE;
/*!40000 ALTER TABLE `glyph` DISABLE KEYS */;
INSERT INTO `glyph` VALUES (1,2,'A',1,'47',1266,'004F'),(2,2,'A',1,'79',1164,'006F'),(3,2,'A',1,'93',569,'007D'),(4,2,'A',1,'59',602,'005B'),(5,2,'A',1,'83',1018,'0073'),(6,2,'A',1,'6',1277,'0026'),(7,2,'A',1,'11',866,'002B'),(8,2,'A',1,'39',1220,'0047'),(9,2,'A',1,'37',1079,'0045'),(10,2,'A',1,'57',1031,'0059'),(11,2,'A',1,'9',569,'0029'),(12,2,'A',1,'60',4159,'005C'),(13,2,'A',1,'34',1184,'0042'),(14,2,'A',1,'25',1091,'0039'),(15,2,'A',1,'54',1167,'0056'),(16,2,'A',1,'94',817,'007E'),(17,2,'A',1,'95',358,'0020'),(18,2,'A',1,'44',1004,'004C'),(19,2,'A',1,'77',1670,'006D'),(20,2,'A',1,'30',1029,'003E'),(21,2,'A',1,'10',829,'002A'),(22,2,'A',1,'86',1089,'0076'),(23,2,'A',1,'13',778,'002D'),(24,2,'A',1,'82',795,'0072'),(25,2,'A',1,'78',1076,'006E'),(26,2,'A',1,'88',1119,'0078'),(27,2,'A',1,'55',1601,'0057'),(28,2,'A',1,'24',1083,'0038'),(29,2,'A',1,'76',466,'006C'),(30,2,'A',1,'43',1143,'004B'),(31,2,'A',1,'75',1010,'006B'),(32,2,'A',1,'19',993,'0033'),(33,2,'A',1,'51',1149,'0053'),(34,2,'A',1,'58',1201,'005A'),(35,2,'A',1,'50',1179,'0052'),(36,2,'A',1,'33',1288,'0041'),(37,2,'A',1,'84',822,'0074'),(38,2,'A',1,'73',531,'0069'),(39,2,'A',1,'63',778,'005F'),(40,2,'A',1,'31',1024,'003F'),(41,2,'A',1,'56',1225,'0058'),(42,2,'A',1,'36',1217,'0044'),(43,2,'A',1,'17',747,'0031'),(44,2,'A',1,'20',1053,'0034'),(45,2,'A',1,'8',569,'0028'),(46,2,'A',1,'81',1108,'0071'),(47,2,'A',1,'89',1122,'0079'),(48,2,'A',1,'41',482,'0049'),(49,2,'A',1,'53',1241,'0055'),(50,2,'A',1,'7',399,'0027'),(51,2,'A',1,'1',447,'0021'),(52,2,'A',1,'70',825,'0066'),(53,2,'A',1,'38',1064,'0046'),(54,2,'A',1,'64',1218,'0060'),(55,2,'A',1,'12',536,'002C'),(56,2,'A',1,'16',1313,'0030'),(57,2,'A',1,'21',1025,'0035'),(58,2,'A',1,'85',1086,'0075'),(59,2,'A',1,'28',1104,'003C'),(60,2,'A',1,'22',1126,'0036'),(61,2,'A',1,'80',1155,'0070'),(62,2,'A',1,'91',569,'007B'),(63,2,'A',1,'72',1083,'0068'),(64,2,'A',1,'2',718,'0022'),(65,2,'A',1,'49',1354,'0051'),(66,2,'A',1,'52',1021,'0054'),(67,2,'A',1,'92',482,'007C'),(68,2,'A',1,'68',1176,'0064'),(69,2,'A',1,'35',1209,'0043'),(70,2,'A',1,'71',1110,'0067'),(71,2,'A',1,'29',811,'003D'),(72,2,'A',1,'67',1085,'0063'),(73,2,'A',1,'18',1124,'0032'),(74,2,'A',1,'15',759,'002F'),(75,2,'A',1,'14',498,'002E'),(76,2,'A',1,'74',706,'006A'),(77,2,'A',1,'45',1376,'004D'),(78,2,'A',1,'65',1059,'0061'),(79,2,'A',1,'46',1227,'004E'),(80,2,'A',1,'40',1275,'0048'),(81,2,'A',1,'23',988,'0037'),(82,2,'A',1,'32',1495,'0040'),(83,2,'A',1,'90',1009,'007A'),(84,2,'A',1,'48',1043,'0050'),(85,2,'A',1,'61',659,'005D'),(86,2,'A',1,'26',459,'003A'),(87,2,'A',1,'42',943,'004A'),(88,2,'A',1,'27',482,'003B'),(89,2,'A',1,'66',1187,'0062'),(90,2,'A',1,'87',1404,'0077'),(91,2,'A',1,'69',1146,'0065'),(92,2,'B',1,'47',1266,'004F'),(93,2,'B',1,'79',1164,'006F'),(94,2,'B',1,'93',569,'007D'),(95,2,'B',1,'59',602,'005B'),(96,2,'B',1,'83',1018,'0073'),(97,2,'B',1,'6',1277,'0026'),(98,2,'B',1,'11',866,'002B'),(99,2,'B',1,'39',1220,'0047'),(100,2,'B',1,'37',1079,'0045'),(101,2,'B',1,'57',1031,'0059'),(102,2,'B',1,'9',569,'0029'),(103,2,'B',1,'60',4159,'005C'),(104,2,'B',1,'34',1184,'0042'),(105,2,'B',1,'25',1091,'0039'),(106,2,'B',1,'54',1167,'0056'),(107,2,'B',1,'94',817,'007E'),(108,2,'B',1,'95',358,'0020'),(109,2,'B',1,'44',1004,'004C'),(110,2,'B',1,'77',1670,'006D'),(111,2,'B',1,'30',1029,'003E'),(112,2,'B',1,'10',829,'002A'),(113,2,'B',1,'86',1089,'0076'),(114,2,'B',1,'13',778,'002D'),(115,2,'B',1,'82',795,'0072'),(116,2,'B',1,'78',1076,'006E'),(117,2,'B',1,'88',1119,'0078'),(118,2,'B',1,'55',1601,'0057'),(119,2,'B',1,'24',1083,'0038'),(120,2,'B',1,'76',466,'006C'),(121,2,'B',1,'43',1143,'004B'),(122,2,'B',1,'75',1010,'006B'),(123,2,'B',1,'19',993,'0033'),(124,2,'B',1,'51',1149,'0053'),(125,2,'B',1,'58',1201,'005A'),(126,2,'B',1,'50',1179,'0052'),(127,2,'B',1,'33',1288,'0041'),(128,2,'B',1,'84',822,'0074'),(129,2,'B',1,'73',531,'0069'),(130,2,'B',1,'63',778,'005F'),(131,2,'B',1,'31',1024,'003F'),(132,2,'B',1,'56',1225,'0058'),(133,2,'B',1,'36',1217,'0044'),(134,2,'B',1,'17',747,'0031'),(135,2,'B',1,'20',1053,'0034'),(136,2,'B',1,'8',569,'0028'),(137,2,'B',1,'81',1108,'0071'),(138,2,'B',1,'89',1122,'0079'),(139,2,'B',1,'41',482,'0049'),(140,2,'B',1,'53',1241,'0055'),(141,2,'B',1,'7',399,'0027'),(142,2,'B',1,'1',447,'0021'),(143,2,'B',1,'70',825,'0066'),(144,2,'B',1,'38',1064,'0046'),(145,2,'B',1,'64',1218,'0060'),(146,2,'B',1,'12',536,'002C'),(147,2,'B',1,'16',1313,'0030'),(148,2,'B',1,'21',1025,'0035'),(149,2,'B',1,'85',1086,'0075'),(150,2,'B',1,'28',1104,'003C'),(151,2,'B',1,'22',1126,'0036'),(152,2,'B',1,'80',1155,'0070'),(153,2,'B',1,'91',569,'007B'),(154,2,'B',1,'72',1083,'0068'),(155,2,'B',1,'2',718,'0022'),(156,2,'B',1,'49',1354,'0051'),(157,2,'B',1,'52',1021,'0054'),(158,2,'B',1,'92',482,'007C'),(159,2,'B',1,'68',1176,'0064'),(160,2,'B',1,'35',1209,'0043'),(161,2,'B',1,'71',1110,'0067'),(162,2,'B',1,'29',811,'003D'),(163,2,'B',1,'67',1085,'0063'),(164,2,'B',1,'18',1124,'0032'),(165,2,'B',1,'15',759,'002F'),(166,2,'B',1,'14',498,'002E'),(167,2,'B',1,'74',706,'006A'),(168,2,'B',1,'45',1376,'004D'),(169,2,'B',1,'65',1059,'0061'),(170,2,'B',1,'46',1227,'004E'),(171,2,'B',1,'40',1275,'0048'),(172,2,'B',1,'23',988,'0037'),(173,2,'B',1,'32',1495,'0040'),(174,2,'B',1,'90',1009,'007A'),(175,2,'B',1,'48',1043,'0050'),(176,2,'B',1,'61',659,'005D'),(177,2,'B',1,'26',459,'003A'),(178,2,'B',1,'42',943,'004A'),(179,2,'B',1,'27',482,'003B'),(180,2,'B',1,'66',1187,'0062'),(181,2,'B',1,'87',1404,'0077'),(182,2,'B',1,'69',1146,'0065'),(183,4,'A',1,'78',578,'006E'),(184,4,'A',1,'92',47,'007C'),(185,4,'A',1,'65',492,'0061'),(186,4,'B',1,'78',578,'006E'),(187,4,'B',1,'92',47,'007C'),(188,4,'B',1,'65',492,'0061'),(189,5,'A',1,'78',578,'006E'),(190,5,'A',1,'92',47,'007C'),(191,5,'A',1,'65',492,'0061'),(192,5,'B',1,'78',578,'006E'),(193,5,'B',1,'92',47,'007C'),(194,5,'B',1,'65',492,'0061');
/*!40000 ALTER TABLE `glyph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glyphoutline`
--

DROP TABLE IF EXISTS `glyphoutline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glyphoutline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glyphname` varchar(3) DEFAULT NULL,
  `idmaster` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fontsource` enum('A','B') DEFAULT NULL,
  `pointnr` int(11) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_glyphoutline_fontsource` (`fontsource`),
  KEY `ix_glyphoutline_user_id` (`user_id`),
  KEY `ix_glyphoutline_pointnr` (`pointnr`),
  KEY `ix_glyphoutline_idmaster` (`idmaster`),
  KEY `ix_glyphoutline_glyphname` (`glyphname`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glyphoutline`
--

LOCK TABLES `glyphoutline` WRITE;
/*!40000 ALTER TABLE `glyphoutline` DISABLE KEYS */;
INSERT INTO `glyphoutline` VALUES (1,'65',2,1,'A',1,124,348),(2,'65',2,1,'A',2,124,503),(3,'65',2,1,'A',3,350,695),(4,'65',2,1,'A',4,521,695),(5,'65',2,1,'A',5,672,695),(6,'65',2,1,'A',6,874,505),(7,'65',2,1,'A',7,874,355),(8,'65',2,1,'A',8,874,196),(9,'65',2,1,'A',9,661,-7),(10,'65',2,1,'A',10,521,-7),(11,'65',2,1,'A',11,351,-7),(12,'65',2,1,'A',12,124,179),(13,'65',2,1,'A',13,124,348),(14,'65',2,1,'A',14,284,348),(15,'65',2,1,'A',15,284,254),(16,'65',2,1,'A',16,420,148),(17,'65',2,1,'A',17,521,148),(18,'65',2,1,'A',18,623,148),(19,'65',2,1,'A',19,746,258),(20,'65',2,1,'A',20,746,348),(21,'65',2,1,'A',21,746,436),(22,'65',2,1,'A',22,625,540),(23,'65',2,1,'A',23,521,540),(24,'65',2,1,'A',24,419,540),(25,'65',2,1,'A',25,284,439),(26,'65',2,1,'A',26,284,348),(27,'65',2,1,'A',27,752,0),(28,'65',2,1,'A',28,752,0),(29,'65',2,1,'A',29,752,682),(30,'65',2,1,'A',30,752,682),(31,'65',2,1,'A',31,752,786),(32,'65',2,1,'A',32,607,875),(33,'65',2,1,'A',33,521,875),(34,'65',2,1,'A',34,451,875),(35,'65',2,1,'A',35,342,824),(36,'65',2,1,'A',36,304,772),(37,'65',2,1,'A',37,174,847),(38,'65',2,1,'A',38,228,936),(39,'65',2,1,'A',39,410,1031),(40,'65',2,1,'A',40,521,1031),(41,'65',2,1,'A',41,688,1031),(42,'65',2,1,'A',42,913,857),(43,'65',2,1,'A',43,913,698),(44,'65',2,1,'A',44,913,0),(45,'65',2,1,'B',1,124,348),(46,'65',2,1,'B',2,124,503),(47,'65',2,1,'B',3,350,695),(48,'65',2,1,'B',4,521,695),(49,'65',2,1,'B',5,672,695),(50,'65',2,1,'B',6,874,505),(51,'65',2,1,'B',7,874,355),(52,'65',2,1,'B',8,874,196),(53,'65',2,1,'B',9,661,-7),(54,'65',2,1,'B',10,521,-7),(55,'65',2,1,'B',11,351,-7),(56,'65',2,1,'B',12,124,179),(57,'65',2,1,'B',13,124,348),(58,'65',2,1,'B',14,284,348),(59,'65',2,1,'B',15,284,254),(60,'65',2,1,'B',16,420,148),(61,'65',2,1,'B',17,521,148),(62,'65',2,1,'B',18,623,148),(63,'65',2,1,'B',19,746,258),(64,'65',2,1,'B',20,746,348),(65,'65',2,1,'B',21,746,436),(66,'65',2,1,'B',22,625,540),(67,'65',2,1,'B',23,521,540),(68,'65',2,1,'B',24,419,540),(69,'65',2,1,'B',25,284,439),(70,'65',2,1,'B',26,284,348),(71,'65',2,1,'B',27,752,0),(72,'65',2,1,'B',28,752,0),(73,'65',2,1,'B',29,752,682),(74,'65',2,1,'B',30,752,682),(75,'65',2,1,'B',31,752,786),(76,'65',2,1,'B',32,607,875),(77,'65',2,1,'B',33,521,875),(78,'65',2,1,'B',34,451,875),(79,'65',2,1,'B',35,342,824),(80,'65',2,1,'B',36,304,772),(81,'65',2,1,'B',37,174,847),(82,'65',2,1,'B',38,228,936),(83,'65',2,1,'B',39,410,1031),(84,'65',2,1,'B',40,521,1031),(85,'65',2,1,'B',41,688,1031),(86,'65',2,1,'B',42,913,857),(87,'65',2,1,'B',43,913,698),(88,'65',2,1,'B',44,913,0);
/*!40000 ALTER TABLE `glyphoutline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glyphparam`
--

DROP TABLE IF EXISTS `glyphparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glyphparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `glyphname` varchar(32) DEFAULT NULL,
  `fontsource` enum('A','B') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `idmaster` int(11) DEFAULT NULL,
  `pointnr` int(11) DEFAULT NULL,
  `pointname` varchar(32) DEFAULT NULL,
  `groupname` varchar(32) DEFAULT NULL,
  `startp` int(11) DEFAULT NULL,
  `doubledash` int(11) DEFAULT NULL,
  `tripledash` int(11) DEFAULT NULL,
  `superleft` float DEFAULT NULL,
  `superright` float DEFAULT NULL,
  `leftp` int(11) DEFAULT NULL,
  `rightp` int(11) DEFAULT NULL,
  `downp` int(11) DEFAULT NULL,
  `upp` int(11) DEFAULT NULL,
  `dir` varchar(32) DEFAULT NULL,
  `leftp2` int(11) DEFAULT NULL,
  `rightp2` int(11) DEFAULT NULL,
  `downp2` int(11) DEFAULT NULL,
  `upp2` int(11) DEFAULT NULL,
  `dir2` varchar(32) DEFAULT NULL,
  `tension` varchar(32) DEFAULT NULL,
  `tensionand` varchar(32) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `penshifted` varchar(32) DEFAULT NULL,
  `pointshifted` varchar(32) DEFAULT NULL,
  `angle` varchar(32) DEFAULT NULL,
  `penwidth` varchar(32) DEFAULT NULL,
  `overx` varchar(32) DEFAULT NULL,
  `overbase` varchar(32) DEFAULT NULL,
  `overcap` varchar(32) DEFAULT NULL,
  `overasc` varchar(32) DEFAULT NULL,
  `overdesc` varchar(32) DEFAULT NULL,
  `ascpoint` int(11) DEFAULT NULL,
  `descpoint` int(11) DEFAULT NULL,
  `stemcutter` varchar(32) DEFAULT NULL,
  `stemshift` varchar(32) DEFAULT NULL,
  `inktrap_l` float DEFAULT NULL,
  `inktrap_r` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_glyphparam_user_id` (`user_id`),
  KEY `ix_glyphparam_fontsource` (`fontsource`),
  KEY `ix_glyphparam_glyphname` (`glyphname`),
  KEY `ix_glyphparam_idmaster` (`idmaster`),
  KEY `ix_glyphparam_pointnr` (`pointnr`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glyphparam`
--

LOCK TABLES `glyphparam` WRITE;
/*!40000 ALTER TABLE `glyphparam` DISABLE KEYS */;
INSERT INTO `glyphparam` VALUES (1,'65','A',1,2,1,'z1l',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'65','A',1,2,2,'p2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'65','A',1,2,3,'p3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'65','A',1,2,4,'z2l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'65','A',1,2,5,'p5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'65','A',1,2,6,'p6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'65','A',1,2,7,'z3l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'65','A',1,2,8,'p8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'65','A',1,2,9,'p9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'65','A',1,2,10,'z4l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'65','A',1,2,11,'p11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'65','A',1,2,12,'p12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'65','A',1,2,13,'z5l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'65','A',1,2,14,'z5r',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'65','A',1,2,15,'p15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'65','A',1,2,16,'p16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'65','A',1,2,17,'z4r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'65','A',1,2,18,'p18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'65','A',1,2,19,'p19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'65','A',1,2,20,'z3r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'65','A',1,2,21,'p21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'65','A',1,2,22,'p22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'65','A',1,2,23,'z2r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'65','A',1,2,24,'p24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'65','A',1,2,25,'p25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'65','A',1,2,26,'z1r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'65','A',1,2,27,'z6l',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'65','A',1,2,28,'p28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'65','A',1,2,29,'p29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'65','A',1,2,30,'z7l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'65','A',1,2,31,'p31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'65','A',1,2,32,'p32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'65','A',1,2,33,'z8l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'65','A',1,2,34,'p34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'65','A',1,2,35,'p35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'65','A',1,2,36,'z9l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'65','A',1,2,37,'z9r',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'65','A',1,2,38,'p38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'65','A',1,2,39,'p39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'65','A',1,2,40,'z8r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'65','A',1,2,41,'p41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'65','A',1,2,42,'p42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'65','A',1,2,43,'z7r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'65','A',1,2,44,'z6r',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'65','B',1,2,1,'z1l',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'65','B',1,2,2,'p2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'65','B',1,2,3,'p3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'65','B',1,2,4,'z2l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'65','B',1,2,5,'p5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'65','B',1,2,6,'p6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'65','B',1,2,7,'z3l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'65','B',1,2,8,'p8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'65','B',1,2,9,'p9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'65','B',1,2,10,'z4l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'65','B',1,2,11,'p11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'65','B',1,2,12,'p12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'65','B',1,2,13,'z5l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'65','B',1,2,14,'z5r',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'65','B',1,2,15,'p15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'65','B',1,2,16,'p16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'65','B',1,2,17,'z4r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'65','B',1,2,18,'p18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'65','B',1,2,19,'p19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'65','B',1,2,20,'z3r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,'65','B',1,2,21,'p21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'65','B',1,2,22,'p22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'65','B',1,2,23,'z2r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'65','B',1,2,24,'p24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'65','B',1,2,25,'p25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'65','B',1,2,26,'z1r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'65','B',1,2,27,'z6l',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'65','B',1,2,28,'p28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'65','B',1,2,29,'p29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'65','B',1,2,30,'z7l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'65','B',1,2,31,'p31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'65','B',1,2,32,'p32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'65','B',1,2,33,'z8l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'65','B',1,2,34,'p34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'65','B',1,2,35,'p35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'65','B',1,2,36,'z9l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'65','B',1,2,37,'z9r',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'65','B',1,2,38,'p38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'65','B',1,2,39,'p39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'65','B',1,2,40,'z8r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'65','B',1,2,41,'p41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'65','B',1,2,42,'p42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'65','B',1,2,43,'z7r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,'65','B',1,2,44,'z6r',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `glyphparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupparam`
--

DROP TABLE IF EXISTS `groupparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupparam` (
  `groupname` varchar(10) NOT NULL DEFAULT '',
  `startp` int(11) DEFAULT NULL,
  `doubledash` int(11) DEFAULT NULL,
  `tripledash` int(11) DEFAULT NULL,
  `superleft` float DEFAULT NULL,
  `superright` float DEFAULT NULL,
  `leftp` int(11) DEFAULT NULL,
  `rightp` int(11) DEFAULT NULL,
  `downp` int(11) DEFAULT NULL,
  `upp` int(11) DEFAULT NULL,
  `dir` varchar(30) DEFAULT NULL,
  `leftp2` int(11) DEFAULT NULL,
  `rightp2` int(11) DEFAULT NULL,
  `downp2` int(11) DEFAULT NULL,
  `upp2` int(11) DEFAULT NULL,
  `dir2` varchar(30) DEFAULT NULL,
  `tension` varchar(30) DEFAULT NULL,
  `tensionand` varchar(30) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `penshifted` varchar(30) DEFAULT NULL,
  `pointshifted` varchar(30) DEFAULT NULL,
  `angle` varchar(30) DEFAULT NULL,
  `penwidth` varchar(30) DEFAULT NULL,
  `overx` varchar(10) DEFAULT NULL,
  `overbase` varchar(10) DEFAULT NULL,
  `overcap` varchar(10) DEFAULT NULL,
  `overasc` varchar(10) DEFAULT NULL,
  `overdesc` varchar(10) DEFAULT NULL,
  `ascpoint` int(11) DEFAULT NULL,
  `descpoint` int(11) DEFAULT NULL,
  `stemcutter` varchar(30) DEFAULT NULL,
  `stemshift` varchar(30) DEFAULT NULL,
  `inktrap_l` float DEFAULT NULL,
  `inktrap_r` float DEFAULT NULL,
  `idmaster` int(11) NOT NULL DEFAULT '0',
  `vdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`idmaster`,`groupname`,`user_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupparam`
--

LOCK TABLES `groupparam` WRITE;
/*!40000 ALTER TABLE `groupparam` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localparam`
--

DROP TABLE IF EXISTS `localparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localparam` (
  `idlocal` int(11) NOT NULL AUTO_INCREMENT,
  `px` float DEFAULT '0',
  `width` float DEFAULT '1',
  `space` float DEFAULT '0',
  `xheight` float DEFAULT '5',
  `capital` float DEFAULT '8',
  `boxheight` float DEFAULT '10',
  `ascender` float DEFAULT '8',
  `descender` float DEFAULT '2',
  `inktrap` int(11) DEFAULT '10',
  `stemcut` int(11) DEFAULT '20',
  `skeleton` float DEFAULT '0',
  `superness` float DEFAULT '1',
  `over` float DEFAULT '0.1',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`idlocal`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localparam`
--

LOCK TABLES `localparam` WRITE;
/*!40000 ALTER TABLE `localparam` DISABLE KEYS */;
INSERT INTO `localparam` VALUES (1,0,1,0,5,8,10,8,2,10,20,0,1,0.1,1),(2,0,1,0,5,8,10,8,2,10,20,0,1,0.1,1),(3,0,1,0,5,8,10,8,2,10,20,0,1,0.1,1),(4,0,1,0,5,8,10,8,2,10,20,0,1,0.1,1);
/*!40000 ALTER TABLE `localparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master` (
  `idmaster` int(11) NOT NULL AUTO_INCREMENT,
  `FontName` varchar(30) NOT NULL,
  `FontNameA` varchar(30) DEFAULT NULL,
  `FontNameB` varchar(30) DEFAULT NULL,
  `idglobal` int(11) DEFAULT NULL,
  `idlocalA` int(11) DEFAULT NULL,
  `idlocalB` int(11) DEFAULT NULL,
  `vdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`idmaster`),
  KEY `idx_name` (`FontName`),
  KEY `idx_idglobal` (`idglobal`),
  KEY `idx_idlocalA` (`idlocalA`),
  KEY `idx_idlocalB` (`idlocalB`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master`
--

LOCK TABLES `master` WRITE;
/*!40000 ALTER TABLE `master` DISABLE KEYS */;
INSERT INTO `master` VALUES (1,'Foxtail','FoxtailA.ufo','FoxtailA.ufo',1,NULL,NULL,'2013-11-01 10:20:15',1),(2,'MP_akku','MP_akkuA.UFO','',1,3,2,'2013-11-01 10:20:45',1),(3,'Baramba','BarambaA.UFO','',1,NULL,NULL,'2013-11-06 19:03:24',1),(4,'Fox','FoxA.UFO','FoxB.UFO',NULL,NULL,NULL,'2013-11-08 10:59:29',1),(5,'Foxtail-demo','Foxtail-demoA.UFO','Foxtail-demoB.UFO',NULL,NULL,NULL,'2013-11-08 11:00:49',1);
/*!40000 ALTER TABLE `master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` char(128) NOT NULL,
  `atime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(100) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'guest1','$2a$12$sZKe4qnuECXbACZcbZeJpuB3HmIxWooFsdXP3Y.nO8Qgz5wuhONsq','guest1@example.com',0,NULL),(2,'guest2','$2a$12$sZKe4qnuECXbACZcbZeJpuB3HmIxWooFsdXP3Y.nO8Qgz5wuhONsq','guest2@example.com',0,NULL);
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

-- Dump completed on 2013-11-08 13:47:39
