-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: DB_BTD
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `CAT_Action`
--

DROP TABLE IF EXISTS `CAT_Action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAT_Action` (
  `INT_Action` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `VCH_Command` varchar(255) DEFAULT NULL,
  `VCH_Icon` varchar(255) DEFAULT NULL,
  `TXT_Combine` text,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Action`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAT_Action`
--

LOCK TABLES `CAT_Action` WRITE;
/*!40000 ALTER TABLE `CAT_Action` DISABLE KEYS */;
INSERT INTO `CAT_Action` VALUES (1,'Ver','view','remove_red_eye','Agregó','2017-07-08 15:28:06','2017-07-08 15:28:06',1),(2,'Añadir','add','add','Añadió','2017-07-08 15:28:06','2017-07-08 15:28:06',1),(3,'Eliminar','remove','delete','Eliminó','2017-07-08 15:28:06','2017-07-08 15:28:06',1),(4,'Editar','edit','edit','Editó','2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `CAT_Action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAT_Engine`
--

DROP TABLE IF EXISTS `CAT_Engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAT_Engine` (
  `INT_Engine` int(11) NOT NULL AUTO_INCREMENT,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `VCH_Description` varchar(255) DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Engine`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAT_Engine`
--

LOCK TABLES `CAT_Engine` WRITE;
/*!40000 ALTER TABLE `CAT_Engine` DISABLE KEYS */;
INSERT INTO `CAT_Engine` VALUES (1,'Web page','Para poner en una pagina web','2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `CAT_Engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAT_Establishment`
--

DROP TABLE IF EXISTS `CAT_Establishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAT_Establishment` (
  `INT_Establishment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `VCH_Email` varchar(255) DEFAULT NULL,
  `VCH_Telephone` varchar(255) DEFAULT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Establishment`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAT_Establishment`
--

LOCK TABLES `CAT_Establishment` WRITE;
/*!40000 ALTER TABLE `CAT_Establishment` DISABLE KEYS */;
INSERT INTO `CAT_Establishment` VALUES (1,'Dinamo Inc.','administracion@StartumoDinamo.mx','5548635716','2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `CAT_Establishment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAT_Module`
--

DROP TABLE IF EXISTS `CAT_Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAT_Module` (
  `INT_Module` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `INT_Order` int(11) DEFAULT NULL,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `VCH_Link` varchar(255) DEFAULT NULL,
  `VCH_Icon` varchar(255) DEFAULT NULL,
  `TXT_Combine` text,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Module`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAT_Module`
--

LOCK TABLES `CAT_Module` WRITE;
/*!40000 ALTER TABLE `CAT_Module` DISABLE KEYS */;
INSERT INTO `CAT_Module` VALUES (1,1,'Usuarios','users','person','el usuario','2017-07-08 15:28:06','2017-07-08 15:28:06',1),(2,2,'Posiciones','positions','recent_actors','la posición','2017-07-08 15:28:06','2017-07-08 15:28:06',1),(3,3,'Bots','bots','insert_chart','el bot','2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `CAT_Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_Bots`
--

DROP TABLE IF EXISTS `TBL_Bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBL_Bots` (
  `INT_Bot` int(11) NOT NULL AUTO_INCREMENT,
  `INT_User` int(11) unsigned NOT NULL,
  `INT_Engine` int(11) NOT NULL,
  `INT_Calls` int(11) DEFAULT NULL,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `TXT_Json` text,
  `VCH_Description` varchar(255) DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Bot`),
  KEY `fk_TBL_Bots_CAT_Engine1_idx` (`INT_Engine`),
  KEY `fk_TBL_Bots_TBL_User1_idx` (`INT_User`),
  CONSTRAINT `fk_TBL_Bots_CAT_Engine1` FOREIGN KEY (`INT_Engine`) REFERENCES `CAT_Engine` (`INT_Engine`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TBL_Bots_TBL_User1` FOREIGN KEY (`INT_User`) REFERENCES `TBL_User` (`INT_User`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_Bots`
--

LOCK TABLES `TBL_Bots` WRITE;
/*!40000 ALTER TABLE `TBL_Bots` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBL_Bots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_Permission`
--

DROP TABLE IF EXISTS `TBL_Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBL_Permission` (
  `INT_Permission` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `INT_Position` int(11) unsigned NOT NULL,
  `INT_Schema` int(11) unsigned NOT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Permission`),
  UNIQUE KEY `index2` (`INT_Position`,`INT_Schema`),
  KEY `fk_TBL_Permission_2_idx` (`INT_Schema`),
  CONSTRAINT `fk_TBL_Permission_1` FOREIGN KEY (`INT_Position`) REFERENCES `TBL_Position` (`INT_Position`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_TBL_Permission_2` FOREIGN KEY (`INT_Schema`) REFERENCES `TBL_Schema` (`INT_Schema`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_Permission`
--

LOCK TABLES `TBL_Permission` WRITE;
/*!40000 ALTER TABLE `TBL_Permission` DISABLE KEYS */;
INSERT INTO `TBL_Permission` VALUES (1,1,1,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(2,1,2,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(3,1,3,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(4,1,4,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(5,1,5,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(6,1,6,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(7,1,7,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(8,1,8,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(9,1,9,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(10,1,10,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(11,1,11,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(12,1,12,'2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `TBL_Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_Position`
--

DROP TABLE IF EXISTS `TBL_Position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBL_Position` (
  `INT_Position` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_Position`
--

LOCK TABLES `TBL_Position` WRITE;
/*!40000 ALTER TABLE `TBL_Position` DISABLE KEYS */;
INSERT INTO `TBL_Position` VALUES (1,'Administrador del sistema','2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `TBL_Position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_Schema`
--

DROP TABLE IF EXISTS `TBL_Schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBL_Schema` (
  `INT_Schema` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `INT_Module` int(11) unsigned NOT NULL,
  `INT_Action` int(11) unsigned NOT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_Schema`),
  UNIQUE KEY `index2` (`INT_Module`,`INT_Action`),
  KEY `fk_TBL_Schema_2_idx` (`INT_Action`),
  CONSTRAINT `fk_TBL_Schema_1` FOREIGN KEY (`INT_Module`) REFERENCES `CAT_Module` (`INT_Module`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_TBL_Schema_2` FOREIGN KEY (`INT_Action`) REFERENCES `CAT_Action` (`INT_Action`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_Schema`
--

LOCK TABLES `TBL_Schema` WRITE;
/*!40000 ALTER TABLE `TBL_Schema` DISABLE KEYS */;
INSERT INTO `TBL_Schema` VALUES (1,1,1,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(2,1,2,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(3,1,3,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(4,1,4,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(5,2,1,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(6,2,2,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(7,2,3,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(8,2,4,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(9,3,1,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(10,3,2,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(11,3,3,'2017-07-08 15:28:06','2017-07-08 15:28:06',1),(12,3,4,'2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `TBL_Schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_User`
--

DROP TABLE IF EXISTS `TBL_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBL_User` (
  `INT_User` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `INT_Position` int(11) unsigned NOT NULL,
  `VCH_Name` varchar(255) DEFAULT NULL,
  `VCH_Lastname` varchar(255) DEFAULT NULL,
  `VCH_Email` varchar(255) DEFAULT NULL,
  `VCH_Telephone` varchar(255) DEFAULT NULL,
  `VCH_Cellphone` varchar(255) DEFAULT NULL,
  `VCH_Password` varchar(255) DEFAULT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_User`),
  KEY `fk_TBL_User_1_idx` (`INT_Position`),
  CONSTRAINT `fk_TBL_User_1` FOREIGN KEY (`INT_Position`) REFERENCES `TBL_Position` (`INT_Position`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_User`
--

LOCK TABLES `TBL_User` WRITE;
/*!40000 ALTER TABLE `TBL_User` DISABLE KEYS */;
INSERT INTO `TBL_User` VALUES (1,1,'Admin','Demo','admin@wiggi.mx','5544332211','5544332211','dd654af362e4e29929776a68781e242f33d773b25b91817beea3c567','2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `TBL_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBL_UserEstablishment`
--

DROP TABLE IF EXISTS `TBL_UserEstablishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBL_UserEstablishment` (
  `INT_UserEstablishment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `INT_User` int(11) unsigned NOT NULL,
  `INT_Establishment` int(11) unsigned NOT NULL,
  `DTT_Create` datetime DEFAULT NULL,
  `DTT_Change` datetime DEFAULT NULL,
  `TYI_Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INT_UserEstablishment`),
  UNIQUE KEY `index4` (`INT_User`,`INT_Establishment`),
  KEY `fk_TBL_UserEstablishment_1_idx` (`INT_User`),
  CONSTRAINT `fk_TBL_UserEstablishment_1` FOREIGN KEY (`INT_User`) REFERENCES `TBL_User` (`INT_User`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBL_UserEstablishment`
--

LOCK TABLES `TBL_UserEstablishment` WRITE;
/*!40000 ALTER TABLE `TBL_UserEstablishment` DISABLE KEYS */;
INSERT INTO `TBL_UserEstablishment` VALUES (1,1,1,'2017-07-08 15:28:06','2017-07-08 15:28:06',1);
/*!40000 ALTER TABLE `TBL_UserEstablishment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'DB_BTD'
--
/*!50003 DROP FUNCTION IF EXISTS `FUN_Password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` FUNCTION `FUN_Password`(VCH_Password TEXT) RETURNS text CHARSET utf8
BEGIN
  RETURN SHA2(CONCAT('BTDW1GG1',VCH_Password), 224);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_AddBot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_AddBot`(
    IN bName    TEXT,
	IN bUser  INTEGER,
	IN bCalls  INTEGER,
	IN bEngine  INTEGER,
    IN bJson TEXT,
    IN bDescription TEXT
)
BEGIN
  INSERT INTO TBL_Bots
    SET 
		VCH_Name    = bName,
		INT_User  = bUser,
        INT_Calls = bCalls,
        INT_Engine = bEngine,
        TXT_Json = bJson,
        VCH_Description = bDescription,
		DTT_Create    = NOW(),
		DTT_Change    = NOW(),
		TYI_Active    = 1;
  SELECT  LAST_INSERT_ID() AS INT_Bot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_AddPosition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_AddPosition`(IN pName TEXT)
BEGIN
  INSERT INTO TBL_Position
    SET VCH_Name  = pName,
      DTT_Create  = NOW(),
      DTT_Change  = NOW(),
      TYI_Active  = 1;
  SELECT  LAST_INSERT_ID() AS INT_Position;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_AddUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_GCM`@`localhost` PROCEDURE `PRO_AddUser`(
    IN uName    TEXT,
        IN uLastname  TEXT,
        IN uEmail   TEXT,
        IN uPassword  TEXT,
        IN uTelephone TEXT,
    IN uCellphone TEXT,
        IN uPosition  INTEGER
)
BEGIN
  INSERT INTO TBL_User
    SET 
      VCH_Name    = uName,
      VCH_Lastname  = uLastname,
            VCH_Email   = uEmail,
            VCH_Password  = GCM_Password(uPassword),
            VCH_Telephone = uTelephone,
      VCH_Cellphone = uCellphone,
      INT_Position  = uPosition,
            DTT_Create    = NOW(),
            DTT_Change    = NOW(),
            TYI_Active    = 1;
  SELECT  LAST_INSERT_ID() AS INT_User;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_DoLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_DoLogin`(
  IN userEmail TEXT,
  IN uPassword TEXT)
BEGIN
  SELECT  INT_User,
      VCH_Name,
      VCH_Lastname,
      VCH_Email
  FROM  TBL_User
  WHERE VCH_Email = userEmail
  AND   VCH_Password  = FUN_Password(uPassword)
  AND   TYI_Active    = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_EditUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_EditUser`(
    IN uId      INTEGER,
    IN uName    TEXT,
        IN uLastname  TEXT,
        IN uEmail   TEXT,
        IN uTelephone TEXT,
    IN uCellphone TEXT,
    IN uPosition  INTEGER
        )
BEGIN
  UPDATE  TBL_User
    SET 
      VCH_Name    = uName,
      VCH_Lastname  = uLastname,
            VCH_Email   = uEmail,
      VCH_Telephone = uTelephone,
            VCH_Cellphone = uCellphone,
            INT_Position  = uPosition,
            DTT_Change    = NOW()
    WHERE INT_User  = uId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetAllActions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetAllActions`()
BEGIN
  SELECT 
		INT_Action,
        VCH_Name,
        VCH_Command,
        VCH_Icon,
        TXT_Combine
  FROM  CAT_Action TBLA
  WHERE TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetAllBots` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetAllBots`()
BEGIN
  SELECT 
		VCH_Name,
        VCH_Description,
        INT_Bot
  FROM  TBL_Bots 
  WHERE TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetAllEstablishments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetAllEstablishments`()
BEGIN
  SELECT  TBLS.INT_Establishment,
      TBLS.VCH_Name
  FROM  CAT_Establishment TBLS
  WHERE TBLS.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetAllPositions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetAllPositions`()
BEGIN
  SELECT  TBLP.INT_Position,
      TBLP.VCH_Name,
      ( SELECT  SUM(1)
        FROM  TBL_User TBLU
        WHERE TBLU.INT_Position = TBLP.INT_Position
        AND   TBLU.TYI_Active = 1
      ) AS INT_Users
  FROM  TBL_Position TBLP
  WHERE TBLP.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetAllSchemas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetAllSchemas`()
BEGIN
  SELECT  TBLS.INT_Schema,
      CATM.INT_Module,
      CATM.VCH_Name AS VCH_Module,
      CATA.INT_Action,
      CATA.VCH_Name AS VCH_Action,
      CATA.VCH_Icon
  FROM  TBL_Schema TBLS
  LEFT JOIN CAT_Module CATM  ON(CATM.INT_Module  = TBLS.INT_Module)
  LEFT JOIN CAT_Action CATA  ON(CATA.INT_Action  = TBLS.INT_Action)
  WHERE TBLS.TYI_Active   = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetAllUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetAllUsers`()
BEGIN
  SELECT  TBLU.INT_User,
      TBLU.VCH_Name,
            TBLU.VCH_Lastname,
            TBLU.VCH_Email,
      TBLP.VCH_Name AS VCH_Position,
            TBLP.INT_Position,
            TBLF.TXT_File AS VCH_Photo
  FROM  TBL_User TBLU
  LEFT JOIN TBL_Position TBLP ON(TBLU.INT_Position = TBLP.INT_Position)
  LEFT JOIN TBL_File   TBLF ON(TBLU.INT_Photo    = TBLF.INT_File)
  WHERE TBLU.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetModuleInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetModuleInfo`(IN INT_Check INTEGER)
BEGIN
  SELECT  INT_Module,
      VCH_Name,
            VCH_Link,
            VCH_Icon
  FROM  CAT_Module
    WHERE INT_Module = INT_Check;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetModules` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetModules`()
BEGIN
  SELECT  INT_Module,
      VCH_Name,
            VCH_Link,
            VCH_Icon
  FROM  CAT_Module
    WHERE TYI_Active  = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetPositionInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetPositionInfo`(IN position INTEGER)
BEGIN
  SELECT  VCH_Name
  FROM  TBL_Position
  WHERE INT_Position  = position
  AND   TYI_Active  = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetPositionSchemas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetPositionSchemas`(IN position INTEGER)
BEGIN
  SELECT  TBLS.INT_Schema
  FROM  TBL_Permission TBLP
  LEFT JOIN TBL_Schema   TBLS ON(TBLP.INT_Schema   = TBLS.INT_Schema)
  WHERE TBLP.INT_Position = position
  AND   TBLP.TYI_Active   = 1
  AND   TBLS.TYI_Active   = 1
  ORDER BY  INT_Schema;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetPositionUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetPositionUsers`(IN position INTEGER)
BEGIN
  SELECT  TBLU.INT_User,
      TBLU.VCH_Name,
            TBLU.VCH_Lastname,
      ( SELECT  SUM(1)
        FROM  TBL_UserEstablishment TBLE
                LEFT JOIN CAT_Establishment  TBLS ON(TBLE.INT_Establishment  = TBLS.INT_Establishment)
        WHERE TBLE.INT_User = TBLU.INT_User
        AND   TBLE.TYI_Active = 1
        AND   TBLS.TYI_Active = 1
      ) AS INT_Establishments
  FROM  TBL_User TBLU
  WHERE TBLU.INT_Position = position
  AND   TBLU.TYI_Active = 1
  ORDER BY  VCH_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetUserEstablishments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetUserEstablishments`(IN user INTEGER)
BEGIN
  SELECT  CATE.VCH_Name,
            CATE.INT_Establishment
  FROM  TBL_UserEstablishment TBLE
  LEFT JOIN CAT_Establishment  CATE ON(TBLE.INT_Establishment  = CATE.INT_Establishment)
  WHERE TBLE.INT_User = user
    AND   TBLE.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetUserInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetUserInfo`(IN userId INTEGER)
BEGIN
  SELECT  TBLU.VCH_Name,
            TBLU.VCH_Lastname,
            TBLU.VCH_Email,
      TBLP.INT_Position,
      TBLP.VCH_Name AS VCH_Position,
            TBLU.VCH_Telephone,
      TBLU.VCH_Cellphone
  FROM  TBL_User TBLU
  LEFT JOIN TBL_Position TBLP ON(TBLU.INT_Position = TBLP.INT_Position)
  WHERE TBLU.INT_User = userId
    AND   TBLU.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetUserModules` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetUserModules`(IN user INTEGER)
BEGIN
  SELECT  CATM.INT_Module,
      CATM.VCH_Name,
      CATM.VCH_Link,
      CATM.VCH_Icon,
            CATM.INT_Order
  FROM  TBL_User TBLU
  LEFT JOIN TBL_Permission TBLP ON(TBLU.INT_Position = TBLP.INT_Position)
  LEFT JOIN TBL_Schema   TBLS ON(TBLP.INT_Schema = TBLS.INT_Schema)
  LEFT JOIN CAT_Module   CATM ON(TBLS.INT_Module = CATM.INT_Module)
  WHERE TBLU.INT_User = user
  AND   TBLU.TYI_Active = 1
  AND   TBLP.TYI_Active = 1
  AND   TBLS.TYI_Active = 1
  AND   CATM.TYI_Active = 1
  GROUP BY  CATM.INT_Module;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetUserSchemas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_DBT`@`localhost` PROCEDURE `PRO_GetUserSchemas`(IN user INTEGER)
BEGIN
  SELECT  TBLS.INT_Schema
  FROM  TBL_User TBLU
  LEFT JOIN TBL_Permission TBLP ON(TBLU.INT_Position = TBLP.INT_Position)
  LEFT JOIN TBL_Schema   TBLS ON(TBLP.INT_Schema   = TBLS.INT_Schema)
  WHERE TBLU.INT_User = user
  AND   TBLP.TYI_Active = 1
  AND   TBLS.TYI_Active = 1
  ORDER BY  INT_Schema;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_GetUsersEstablishments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_GetUsersEstablishments`()
BEGIN
  SELECT  TBLE.INT_User,
      TBLS.INT_Establishment,
      TBLS.VCH_Name,
      TBLS.FLT_Additional,
      TBLS.VCH_Identifier,
            TBLS.VCH_Location
  FROM  TBL_UserEstablishment TBLE 
  LEFT JOIN TBL_Establishment  TBLS ON(TBLS.INT_Establishment  = TBLE.INT_Establishment)
  WHERE TBLS.TYI_Active = 1
    AND   TBLE.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_RemovePositions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_RemovePositions`(IN positions TEXT)
BEGIN
  UPDATE  TBL_Position
    SET DTT_Change  = NOW(),
      TYI_Active  = 0
  WHERE FIND_IN_SET(INT_Position, positions);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_RemoveUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BDT`@`localhost` PROCEDURE `PRO_RemoveUsers`(IN users TEXT)
BEGIN
  UPDATE  TBL_User
    SET DTT_Change  = NOW(),
      TYI_Active  = 0
  WHERE FIND_IN_SET(INT_User, users);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_SetEstablishmentUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BDT`@`localhost` PROCEDURE `PRO_SetEstablishmentUsers`(IN establishment INTEGER, IN users TEXT)
BEGIN
  INSERT INTO TBL_UserEstablishment(INT_User, INT_Establishment, DTT_Create, DTT_Change, TYI_Active)
    SELECT  INT_User,
        establishment,
        NOW(),
        NOW(),
        1
    FROM  TBL_User
    WHERE FIND_IN_SET(INT_User, users)
  ON DUPLICATE KEY UPDATE
    DTT_Change = NOW(),
    TYI_Active = 1;
  UPDATE  TBL_UserEstablishment
  SET   DTT_Change  = NOW(),
      TYI_Active  = 0
  WHERE INT_Establishment = establishment
  AND NOT FIND_IN_SET(INT_User, users);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_SetPositionPermissions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_SetPositionPermissions`(IN position INTEGER, IN pSchemas TEXT)
BEGIN
  INSERT INTO TBL_Permission(INT_Position, INT_Schema, DTT_Create, DTT_Change, TYI_Active)
    SELECT  position,
        INT_Schema,
        NOW(),
        NOW(),
        1
    FROM  TBL_Schema
    WHERE FIND_IN_SET(INT_Schema, pSchemas)
  ON DUPLICATE KEY UPDATE
    DTT_Change = NOW(),
    TYI_Active = 1;
  UPDATE  TBL_Permission
  SET   TYI_Active = 0
  WHERE INT_Position  = position
  AND NOT FIND_IN_SET(INT_Schema, pSchemas);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_SetUserEstablishments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_SetUserEstablishments`(
  IN userId INTEGER,
    IN establishments TEXT)
BEGIN
  INSERT INTO TBL_UserEstablishment(INT_User, INT_Establishment, DTT_Create, DTT_Change, TYI_Active)
    SELECT  userId,
        CATE.INT_Establishment,
        NOW(),
        NOW(),
        1
    FROM  CAT_Establishment CATE
    WHERE FIND_IN_SET(INT_Establishment, establishments)
  ON DUPLICATE KEY UPDATE
    DTT_Change = NOW(),
    TYI_Active = 1;

  UPDATE  TBL_UserEstablishment
  SET   DTT_Change  = NOW(),
      TYI_Active  = 0
  WHERE INT_User  = userId
  AND   TYI_Active  <> 0
    AND NOT FIND_IN_SET(INT_Establishment, establishments);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_SetUserPermissions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_SetUserPermissions`(IN user INTEGER, IN userSchemas TEXT)
BEGIN
  INSERT INTO TBL_Permission(INT_User, INT_Schema, DTT_Create, DTT_Change, TYI_Active)
    SELECT  user,
        INT_Schema,
        NOW(),
        NOW(),
        1
    FROM  TBL_Schema
    WHERE FIND_IN_SET(INT_Schema, userSchemas)
  ON DUPLICATE KEY UPDATE
    DTT_Change = NOW(),
    TYI_Active = 1;
  UPDATE  TBL_Permission
  SET   TYI_Active = 0
  WHERE INT_User = user
  AND NOT FIND_IN_SET(INT_Schema, userSchemas);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_ValidateEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_ValidateEmail`(IN email TEXT)
BEGIN
  SELECT  TBLU.INT_User,
      TBLU.VCH_Name,
      TBLU.VCH_Lastname
  FROM  TBL_User TBLU
  WHERE TBLU.VCH_Email  = email
  AND   TBLU.TYI_Active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PRO_ValidateLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`USR_BTD`@`localhost` PROCEDURE `PRO_ValidateLogin`(IN login TEXT)
BEGIN
  SELECT  INT_User
  FROM  TBL_User
  WHERE VCH_Login = login;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-09  9:02:40
