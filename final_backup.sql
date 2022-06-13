CREATE DATABASE  IF NOT EXISTS `backup_final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `backup_final`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: centro_odontologico
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id_especialidad` int NOT NULL,
  `especialidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'Cirugía oral y maxilofacial'),(2,'Odontopediatria'),(3,'Ortodoncia'),(4,'Endodoncia'),(5,'Blanqueamiento'),(6,'General'),(7,'Patología maxilofacial y oral'),(8,'Prostodoncia y odontología protésica'),(9,'Periodoncia'),(10,'Protesis'),(11,'Implantes');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_facturas` int NOT NULL,
  `Paciente` int DEFAULT NULL,
  `Obra_Soc` int DEFAULT NULL,
  `Legajo_PF` int DEFAULT NULL,
  `Sucursal` int DEFAULT NULL,
  `Servicio_factura` int DEFAULT NULL,
  PRIMARY KEY (`id_facturas`),
  KEY `fk_paciente` (`Paciente`),
  KEY `OOSS_px` (`Obra_Soc`),
  KEY `fk_legajo_pf` (`Legajo_PF`),
  KEY `fk_sucursal_factura` (`Sucursal`),
  KEY `fk_servicio_factura` (`Servicio_factura`),
  CONSTRAINT `fk_legajo_pf` FOREIGN KEY (`Legajo_PF`) REFERENCES `profesionales` (`Legajo`),
  CONSTRAINT `fk_paciente` FOREIGN KEY (`Paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `fk_servicio_factura` FOREIGN KEY (`Servicio_factura`) REFERENCES `servicios` (`Cod_Servicio`),
  CONSTRAINT `fk_sucursal_factura` FOREIGN KEY (`Sucursal`) REFERENCES `sucursales` (`id_sucursal`),
  CONSTRAINT `OOSS_px` FOREIGN KEY (`Obra_Soc`) REFERENCES `ooss` (`id_OOSS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,84,7,8,3,85),(2,88,10,6,2,3),(3,96,5,13,1,49),(4,71,7,2,3,93),(5,61,10,13,3,4),(6,21,3,15,3,85),(7,50,8,13,2,97),(8,98,9,9,2,49),(9,86,5,4,1,84),(10,11,5,5,2,10),(11,68,3,10,3,47),(12,74,9,15,2,20),(13,91,2,6,3,67),(14,96,7,11,2,92),(15,29,9,13,2,31),(16,19,4,5,1,73),(17,10,8,13,3,12),(18,79,3,3,1,65),(19,94,4,10,3,7),(20,53,3,6,1,55),(21,58,4,8,1,77),(22,33,8,9,3,99),(23,42,10,3,2,31),(24,100,7,5,1,54),(25,95,8,4,3,30),(26,26,3,10,1,36),(27,95,9,9,2,24),(28,91,5,6,2,19),(29,71,5,3,3,100),(30,50,8,11,1,76),(31,53,8,13,3,94),(32,90,8,9,1,11),(33,37,6,10,1,100),(34,64,2,1,2,31),(35,8,5,8,3,87),(36,14,8,12,3,99),(37,84,8,12,1,4),(38,94,2,14,3,49),(39,73,1,1,2,4),(40,55,1,5,2,48),(41,87,7,8,2,27),(42,96,6,8,1,99),(43,19,4,11,2,98),(44,62,3,11,1,10),(45,3,4,3,1,33),(46,48,4,8,1,60),(47,43,8,11,1,9),(48,82,2,1,2,9),(49,48,1,9,2,99),(50,89,3,10,1,26),(51,49,2,15,3,21),(52,36,9,8,3,46),(53,8,9,9,3,59),(54,88,1,2,3,75),(55,53,7,3,3,9),(56,63,5,13,1,53),(57,84,3,8,2,92),(58,33,6,1,2,97),(59,66,10,3,1,90),(60,53,2,15,2,24),(61,40,5,6,3,31),(62,94,6,15,1,65),(63,85,7,5,2,14),(64,50,5,5,2,39),(65,78,4,2,1,37),(66,51,7,11,1,16),(67,59,1,5,3,20),(68,52,6,14,1,50),(69,45,6,3,3,92),(70,25,1,1,1,17),(71,53,5,13,1,11),(72,11,1,2,2,63),(73,28,3,9,2,50),(74,56,2,12,2,90),(75,68,3,13,3,91),(76,27,1,1,2,28),(77,59,5,3,1,57),(78,66,5,7,3,77),(79,86,8,13,1,25),(80,57,10,11,3,93),(81,36,2,10,2,34),(82,91,5,14,2,3),(83,95,4,14,3,72),(84,6,3,10,3,71),(85,21,8,14,2,43),(86,86,4,14,1,6),(87,32,9,13,1,35),(88,7,9,1,3,33),(89,65,10,4,3,88),(90,14,2,8,1,16),(91,86,1,6,1,98),(92,69,4,2,1,13),(93,77,10,7,2,94),(94,45,8,5,1,81),(95,100,8,10,3,83),(96,60,6,12,1,80),(97,47,3,15,3,88),(98,4,2,7,3,30),(99,39,1,4,1,54),(100,10,2,15,2,45),(101,73,7,9,2,15),(102,43,8,3,1,39),(103,84,6,8,1,13),(104,99,7,5,2,33),(105,34,2,13,1,29),(106,21,5,2,3,79),(107,98,8,10,1,77),(108,98,5,5,2,13),(109,67,3,3,1,80),(110,98,7,6,1,33),(111,58,6,9,2,71),(112,5,2,15,3,31),(113,76,9,4,1,91),(114,99,7,15,1,91),(115,92,9,2,2,12),(116,44,4,13,1,98),(117,92,2,3,3,47),(118,95,2,13,2,79),(119,79,8,7,1,56),(120,22,4,12,2,13),(121,90,2,1,2,58),(122,10,8,5,3,35),(123,97,6,15,1,98),(124,37,9,4,3,16),(125,42,9,3,3,1),(126,54,4,11,1,96),(127,38,2,3,1,83),(128,88,9,6,1,28),(129,84,8,4,3,22),(130,10,5,14,2,80),(131,51,4,9,2,16),(132,41,4,8,2,28),(133,66,3,9,2,20),(134,38,5,12,1,80),(135,98,2,13,1,57),(136,16,3,10,3,18),(137,15,1,5,3,22),(138,14,6,5,2,55),(139,25,6,12,1,59),(140,48,4,15,1,34),(141,64,1,15,1,83),(142,53,10,7,3,97),(143,38,3,8,1,58),(144,19,8,8,3,56),(145,57,10,9,1,59),(146,27,5,2,3,71),(147,62,9,7,3,97),(148,24,8,8,3,92),(149,49,7,5,2,29),(150,56,2,12,2,99),(151,51,2,8,3,33),(152,36,5,6,1,40),(153,38,6,12,1,77),(154,38,5,10,2,5),(155,100,1,8,2,91),(156,34,4,4,3,54),(157,26,9,8,1,39),(158,26,9,1,1,62),(159,39,1,9,2,70),(160,70,7,15,2,43),(161,16,7,11,1,40),(162,40,1,15,3,53),(163,69,4,12,2,86),(164,83,3,8,1,25),(165,81,5,2,1,24),(166,50,3,9,3,35),(167,18,1,14,2,28),(168,11,9,1,1,43),(169,83,5,1,1,57),(170,31,8,1,2,50),(171,96,1,3,1,64),(172,27,6,3,3,12),(173,12,1,5,3,49),(174,70,9,7,1,1),(175,39,10,9,3,98),(176,89,1,3,3,37),(177,45,5,15,1,71),(178,35,5,4,3,99),(179,68,2,5,1,95),(180,35,4,15,2,80),(181,18,5,8,3,70),(182,75,10,1,2,95),(183,73,4,14,1,47),(184,83,9,15,3,32),(185,99,8,3,2,72),(186,13,9,8,3,92),(187,22,10,5,3,98),(188,74,6,13,1,29),(189,24,1,3,2,24),(190,52,9,7,1,57),(191,88,6,12,3,90),(192,39,3,9,3,11),(193,53,7,12,1,58),(194,47,5,11,3,81),(195,61,2,5,2,53),(196,22,3,5,3,26),(197,51,5,13,2,21),(198,92,10,13,3,26),(199,48,2,9,3,89),(200,94,2,7,2,34),(201,7,8,4,2,79),(202,95,1,10,1,97),(203,89,2,1,3,33),(204,3,9,2,2,21),(205,81,8,1,2,45),(206,22,9,5,3,70),(207,18,2,3,1,49),(208,100,2,2,2,74),(209,77,7,7,2,11),(210,54,3,3,3,66),(211,65,9,11,2,31),(212,89,6,11,1,62),(213,90,3,2,2,32),(214,52,10,8,2,80),(215,42,3,1,2,44),(216,68,10,8,2,6),(217,47,6,5,1,37),(218,79,8,6,2,2),(219,68,2,6,2,44),(220,75,8,9,1,45),(221,69,4,15,2,73),(222,59,1,9,3,93),(223,44,3,6,2,36),(224,81,1,10,2,78),(225,64,2,6,2,75),(226,97,3,11,2,39),(227,1,2,7,2,6),(228,74,3,10,3,98),(229,94,2,14,1,72),(230,51,10,6,2,1),(231,9,1,14,1,33),(232,14,6,7,1,23),(233,62,10,8,1,31),(234,62,5,14,2,82),(235,99,2,8,2,59),(236,18,9,15,1,1),(237,78,10,9,1,51),(238,65,1,6,1,15),(239,4,2,5,1,73),(240,61,4,9,3,42),(241,100,4,11,2,68),(242,26,2,4,2,60),(243,93,2,4,3,89),(244,44,9,11,2,45),(245,89,2,8,2,40),(246,60,7,12,3,3),(247,85,3,14,3,20),(248,71,3,7,3,21),(249,45,1,4,3,85),(250,63,10,9,3,61),(251,63,8,2,2,66),(252,10,4,7,1,25),(253,11,9,11,1,71),(254,87,4,9,1,94),(255,69,10,9,2,48),(256,74,3,11,3,90),(257,46,8,8,2,37),(258,73,5,4,2,32),(259,46,5,11,3,75),(260,28,1,1,2,71),(261,43,4,13,3,45),(262,11,4,1,1,56),(263,73,5,12,2,98),(264,97,6,12,2,96),(265,97,9,3,1,33),(266,23,5,15,1,94),(267,54,9,3,2,82),(268,89,3,10,2,53),(269,67,2,14,2,95),(270,42,2,7,3,95),(271,71,10,8,1,32),(272,86,2,12,3,16),(273,46,5,14,1,34),(274,19,7,11,3,52),(275,55,5,10,3,62),(276,46,8,14,1,78),(277,94,3,4,2,69),(278,87,3,15,2,17),(279,62,6,6,3,31),(280,51,1,4,1,34),(281,74,7,14,3,46),(282,64,9,12,2,29),(283,27,1,7,1,71),(284,29,9,1,1,50),(285,57,1,9,3,33),(286,25,3,1,2,47),(287,19,1,7,2,4),(288,43,6,12,3,86),(289,18,10,1,1,69),(290,21,5,8,1,14),(291,5,3,10,2,73),(292,32,6,12,2,24),(293,78,8,1,1,62),(294,75,10,1,3,10),(295,26,10,9,2,13),(296,100,6,2,1,7),(297,70,5,14,1,96),(298,99,9,6,3,71),(299,92,10,7,2,50),(300,68,7,3,3,86),(301,16,4,5,2,7),(302,55,9,10,3,10),(303,98,6,14,1,49),(304,56,3,3,3,24),(305,40,4,8,3,14),(306,62,2,9,1,50),(307,93,7,11,2,61),(308,37,5,14,2,83),(309,47,3,3,3,75),(310,14,10,10,1,51),(311,46,5,9,3,92),(312,5,2,6,1,26),(313,56,6,2,3,95),(314,82,10,4,1,31),(315,46,1,2,3,3),(316,80,9,9,1,92),(317,98,9,9,3,39),(318,6,5,13,1,87),(319,51,6,13,1,74),(320,65,2,7,3,20),(321,96,9,9,2,76),(322,69,2,3,3,36),(323,8,9,4,3,47),(324,75,4,4,3,79),(325,3,8,3,3,32),(326,43,3,14,3,21),(327,44,9,6,1,40),(328,14,10,13,3,9),(329,37,3,5,3,37),(330,93,8,11,3,86),(331,36,5,5,2,87),(332,73,10,1,3,25),(333,18,8,13,2,92),(334,33,8,5,2,95),(335,67,1,11,1,27),(336,89,5,12,2,7),(337,86,4,1,2,67),(338,14,4,11,2,1),(339,92,7,15,1,18),(340,57,10,6,3,81),(341,7,10,7,2,93),(342,92,8,7,1,48),(343,57,8,12,2,82),(344,13,9,2,2,3),(345,38,9,5,3,15),(346,75,7,12,1,26),(347,92,7,14,1,8),(348,7,10,15,2,64),(349,25,10,6,1,29),(350,36,4,1,1,68),(351,91,2,2,3,46),(352,46,4,15,1,73),(353,55,1,7,2,88),(354,71,2,6,3,74),(355,45,3,11,3,35),(356,37,2,5,3,57),(357,90,8,5,2,88),(358,29,7,13,2,47),(359,78,9,7,1,95),(360,16,1,5,2,62),(361,68,9,7,3,54),(362,88,1,4,1,66),(363,52,6,5,2,67),(364,42,4,13,2,12),(365,45,9,6,1,58),(366,42,4,3,2,50),(367,5,10,6,3,48),(368,62,10,8,1,15),(369,3,8,4,3,71),(370,28,3,11,1,26),(371,94,8,5,1,34),(372,39,8,10,3,85),(373,4,2,13,3,40),(374,92,2,1,1,68),(375,90,1,4,3,34),(376,31,2,7,3,1),(377,20,8,3,2,29),(378,87,8,10,2,85),(379,28,8,4,3,71),(380,47,6,8,1,78),(381,60,1,13,1,1),(382,84,6,10,1,50),(383,79,3,8,2,82),(384,98,10,6,1,45),(385,56,4,4,3,42),(386,27,2,10,3,35),(387,38,1,2,3,94),(388,29,9,13,1,29),(389,93,8,9,3,40),(390,87,3,11,2,62),(391,42,2,12,3,21),(392,17,5,5,3,8),(393,25,10,8,1,80),(394,4,1,10,1,53),(395,68,3,4,1,80),(396,28,8,14,2,86),(397,75,4,10,1,97),(398,15,4,12,2,41),(399,27,9,10,1,82),(400,4,7,14,2,16),(401,42,10,8,3,58),(402,20,3,6,2,20),(403,62,9,9,3,92),(404,92,2,12,1,61),(405,14,3,15,1,56),(406,58,3,12,2,18),(407,25,4,6,1,46),(408,78,10,11,3,21),(409,82,8,9,2,60),(410,28,8,12,3,19),(411,56,7,11,2,10),(412,85,4,1,2,6),(413,92,5,9,1,90),(414,88,1,7,1,80),(415,82,4,10,1,44),(416,1,2,8,1,25),(417,91,10,14,3,89),(418,47,9,3,3,67),(419,62,10,1,2,25),(420,15,5,6,1,37),(421,37,7,12,1,74),(422,2,1,7,3,91),(423,57,3,10,1,8),(424,100,4,11,1,92),(425,30,7,12,1,43),(426,84,2,12,2,70),(427,23,7,11,2,28),(428,92,4,7,3,27),(429,66,4,5,1,94),(430,11,2,14,2,31),(431,57,1,8,2,73),(432,49,3,8,1,28),(433,70,6,5,1,52),(434,99,8,8,2,32),(435,23,10,2,3,6),(436,26,4,3,2,80),(437,28,9,6,1,44),(438,20,1,3,3,26),(439,11,2,13,3,79),(440,56,8,14,2,56),(441,51,7,13,3,28),(442,87,8,10,3,38),(443,100,10,7,3,14),(444,74,8,1,2,67),(445,97,5,4,2,10),(446,45,5,8,2,74),(447,60,8,2,2,26),(448,74,3,9,3,47),(449,75,10,13,2,60),(450,93,10,13,3,63),(451,48,7,10,2,77),(452,37,5,6,2,15),(453,36,5,8,3,26),(454,59,5,7,2,51),(455,22,5,9,2,24),(456,39,4,10,1,4),(457,6,3,15,2,25),(458,51,6,13,3,84),(459,3,8,15,1,43),(460,39,4,13,3,42),(461,57,7,6,1,74),(462,53,3,15,1,59),(463,51,8,5,1,55),(464,31,1,1,2,41),(465,90,9,9,1,88),(466,41,7,10,3,48),(467,72,3,7,1,40),(468,31,8,2,1,30),(469,82,9,1,2,45),(470,30,2,2,2,49),(471,99,5,6,3,12),(472,36,6,6,2,77),(473,21,6,3,1,60),(474,85,5,12,2,67),(475,28,6,4,3,59),(476,54,2,9,2,72),(477,32,4,7,1,66),(478,22,5,11,1,77),(479,95,10,9,3,71),(480,36,5,7,1,61),(481,67,1,15,3,94),(482,73,7,7,3,70),(483,48,3,4,3,76),(484,71,9,12,3,99),(485,15,4,13,3,96),(486,17,6,2,1,95),(487,78,1,6,2,96),(488,45,6,8,2,4),(489,98,6,6,2,26),(490,71,1,7,3,90),(491,83,10,13,3,74),(492,35,1,7,1,98),(493,75,10,6,2,84),(494,31,10,6,2,60),(495,62,4,14,3,22),(496,5,8,9,3,2),(497,21,8,4,2,27),(498,25,1,12,1,93),(499,99,7,10,3,77),(500,55,4,1,3,27),(501,11,6,9,1,73),(502,28,7,7,2,4),(503,19,8,10,2,16),(504,39,2,3,1,45),(505,81,7,13,2,49),(506,21,1,7,3,50),(507,100,3,12,2,74),(508,4,3,3,2,33),(509,11,8,6,1,55),(510,93,9,10,1,78),(511,96,7,13,3,21),(512,49,7,8,3,80),(513,95,2,3,1,67),(514,45,6,10,1,58),(515,47,3,5,1,54),(516,40,7,4,1,15),(517,14,7,6,1,13),(518,19,10,10,2,55),(519,36,6,3,3,17),(520,70,4,9,2,3),(521,62,1,2,3,16),(522,10,2,14,1,3),(523,39,9,8,2,38),(524,55,2,15,3,34),(525,33,1,1,1,25),(526,22,2,1,2,10),(527,65,10,15,3,92),(528,92,6,8,2,7),(529,4,10,14,2,83),(530,20,7,15,2,63),(531,25,8,14,2,98),(532,99,3,15,3,66),(533,87,7,10,3,14),(534,86,9,14,3,47),(535,25,3,13,2,18),(536,95,7,14,3,36),(537,22,4,9,3,1),(538,96,7,6,2,2),(539,60,4,1,3,11),(540,73,5,13,3,22),(541,51,8,14,2,36),(542,20,9,9,3,30),(543,72,1,10,3,10),(544,70,8,13,2,37),(545,4,2,13,2,44),(546,43,8,15,3,4),(547,18,3,14,3,60),(548,59,1,12,3,41),(549,28,3,9,2,80),(550,6,2,4,1,62),(551,96,3,11,2,51),(552,62,10,12,3,66),(553,61,4,9,1,54),(554,86,10,2,3,99),(555,16,5,2,3,23),(556,41,1,2,3,98),(557,98,1,7,1,83),(558,75,4,7,2,55),(559,83,10,8,1,43),(560,85,4,13,1,42),(561,26,1,11,1,35),(562,78,4,6,1,20),(563,63,4,4,1,19),(564,67,5,14,2,61),(565,33,5,5,2,41),(566,64,5,14,1,97),(567,94,6,9,3,61),(568,90,5,12,3,13),(569,34,8,6,1,47),(570,20,3,5,3,93),(571,31,7,6,3,19),(572,95,2,8,1,93),(573,52,1,10,1,34),(574,25,3,4,1,92),(575,24,10,4,2,71),(576,61,1,13,1,66),(577,81,9,1,1,61),(578,75,10,6,3,10),(579,53,4,11,3,25),(580,59,1,6,3,56),(581,95,8,6,1,13),(582,37,2,2,3,97),(583,62,10,2,1,47),(584,13,4,3,3,34),(585,70,5,2,1,78),(586,96,10,11,3,49),(587,14,2,15,2,64),(588,39,2,6,2,80),(589,38,1,10,3,67),(590,98,3,10,3,90),(591,75,7,14,1,58),(592,31,6,9,1,93),(593,55,5,5,3,79),(594,68,9,6,1,18),(595,73,4,10,2,9),(596,21,1,2,3,12),(597,45,6,8,3,2),(598,89,1,15,2,34),(599,34,2,14,3,84),(600,67,5,10,3,65),(601,66,2,7,3,14),(602,16,7,14,2,70),(603,32,7,9,1,12),(604,21,10,12,3,9),(605,55,7,3,2,70),(606,91,1,4,1,62),(607,57,4,12,1,3),(608,16,4,6,3,19),(609,91,1,12,1,31),(610,45,8,8,2,34),(611,6,1,5,1,85),(612,44,6,11,1,83),(613,1,10,10,3,85),(614,96,3,9,2,35),(615,51,10,14,2,44),(616,37,6,4,3,14),(617,27,9,6,3,48),(618,75,7,14,3,55),(619,69,8,1,1,13),(620,27,1,6,1,45),(621,12,1,11,2,65),(622,85,10,1,1,24),(623,13,1,7,1,2),(624,82,10,9,1,35),(625,3,3,11,3,95),(626,24,4,15,1,41),(627,25,1,3,2,58),(628,56,10,11,2,20),(629,15,9,12,3,31),(630,83,3,12,2,78),(631,12,5,4,2,91),(632,72,2,5,3,30),(633,77,2,12,3,53),(634,75,8,14,2,30),(635,41,5,13,3,51),(636,4,10,15,1,90),(637,3,4,2,3,69),(638,36,8,5,1,52),(639,74,10,5,2,81),(640,31,5,2,2,10),(641,29,8,9,1,65),(642,44,6,1,2,50),(643,48,3,10,2,60),(644,11,7,10,3,58),(645,44,6,8,3,9),(646,99,7,10,2,76),(647,73,2,5,1,40),(648,10,9,3,1,30),(649,43,6,11,1,66),(650,53,4,5,1,99),(651,67,10,2,3,32),(652,39,3,12,3,64),(653,66,10,14,1,44),(654,12,4,6,2,80),(655,70,7,2,3,71),(656,68,10,3,2,87),(657,72,8,11,3,61),(658,84,3,7,2,31),(659,49,6,11,1,23),(660,51,7,2,2,41),(661,97,10,10,1,24),(662,11,7,6,3,99),(663,65,5,2,1,32),(664,2,2,10,1,64),(665,35,9,11,1,81),(666,2,2,14,2,97),(667,72,9,6,1,56),(668,53,10,15,2,60),(669,11,3,12,1,8),(670,64,10,15,3,29),(671,80,10,9,3,39),(672,23,7,9,3,48),(673,12,9,3,1,27),(674,66,2,3,2,98),(675,82,6,7,2,36),(676,70,1,9,2,92),(677,71,5,12,2,3),(678,58,6,15,1,12),(679,55,1,8,2,12),(680,11,1,11,1,5),(681,51,6,1,3,25),(682,8,2,6,3,38),(683,90,8,4,2,66),(684,87,8,6,2,46),(685,96,7,8,2,57),(686,48,7,9,2,72),(687,58,7,9,2,46),(688,55,5,7,1,61),(689,73,6,8,1,64),(690,70,4,14,3,37),(691,7,4,1,1,48),(692,86,1,8,2,72),(693,63,4,5,2,38),(694,53,9,3,1,43),(695,16,8,15,3,93),(696,9,10,8,2,16),(697,85,1,6,1,36),(698,3,8,12,2,93),(699,93,3,10,3,67),(700,43,10,2,3,80);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos`
--

DROP TABLE IF EXISTS `insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumos` (
  `id_insumos` int NOT NULL,
  `Nombre_Insumo` varchar(50) DEFAULT NULL,
  `Costo` decimal(8,2) DEFAULT NULL,
  `Cod_Servicio` int DEFAULT NULL,
  `Proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_insumos`),
  KEY `fk_Proveedores` (`Proveedor`),
  KEY `fk_servicios` (`Cod_Servicio`),
  CONSTRAINT `fk_servicios` FOREIGN KEY (`Cod_Servicio`) REFERENCES `servicios` (`Cod_Servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos`
--

LOCK TABLES `insumos` WRITE;
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
INSERT INTO `insumos` VALUES (1,'Diovan',87691.70,25,6),(2,'GenRx Skin Barrier',59746.93,82,2),(3,'Energize RxS',8821.08,36,2),(4,'METFORMIN HYDROCHLORIDE',85774.85,68,2),(5,'Mucinex',56832.25,7,2),(6,'Fentanyl Citrate',93767.20,23,1),(7,'Childrens QPAP',15997.12,52,6),(8,'Oxygen',14402.17,9,3),(9,'AMITRIPTYLINE HYDROCHLORIDE',88716.39,13,2),(10,'Lansoprazole',79845.30,58,6),(11,'Levothyroxine Sodium',40612.95,71,4),(12,'Childrens Robitussin Cough and Cold CF',83757.68,17,5),(13,'Naproxen',64474.50,57,7),(14,'Badger SPF 30 Kids Sunscreen',19412.63,65,6),(15,'Famciclovir',8879.57,86,6),(16,'Bilboa Kids Sunscreen SPF 50 Plus',16144.37,96,7),(17,'Metronidazole',76868.03,24,5),(18,'benzonatate',45331.31,35,1),(19,'Neuro - Care',1672.14,76,3),(20,'SELZENTRY',87693.52,12,3),(21,'Famotidine',82646.17,62,1),(22,'CYCLOPHOSPHAMIDE',47230.52,6,3),(23,'Vesica urinaria 8 Special Order',58470.48,48,7),(24,'Z-COF 1',83108.45,45,1),(25,'Lisinopril',27088.08,6,3),(26,'CYPROHEPTADINE HYDROCHLORIDE',49515.15,56,2),(27,'06 Balancing Foundation',7153.42,79,3),(28,'NICOTINE',98416.85,99,3),(29,'Hemorrhoids',69572.43,92,3),(30,'ALLIUM CEPA',37678.31,52,5),(31,'Daytime Nighttime',72939.79,88,6),(32,'Enviro',86116.29,21,3),(33,'Levothyroxine Sodium',87551.34,46,3),(34,'Glimepiride',70701.35,29,1),(35,'Oil-Free Foaming Acne Wash',65905.98,83,5),(36,'Fosinopril Sodium',81464.09,12,1),(37,'extra strength',16307.35,21,5),(38,'White Oak',91634.66,2,7),(39,'CareOne Miconazole 3',3654.27,36,7),(40,'Nitroglycerin',95584.10,44,4),(42,'EJECTDELAY',27184.62,73,1),(43,'Divalproex Sodium',12218.11,27,6),(44,'Montelukast',92359.97,80,3),(45,'Bromfenac',56117.36,93,5),(46,'Metformin Hydrochloride',34414.97,98,2),(47,'Walgreens Aloe Vera',59215.90,99,5),(48,'Rimantadine Hydrochloride',38214.00,25,5),(49,'Olay Total Effects CC Tone Correcting',12863.20,17,5),(50,'OPANA',99112.30,4,4),(51,'stomach relief',73025.09,58,4),(52,'Flanax Antacid',75561.70,3,1),(53,'Ketorolac Tromethamine',4279.23,87,7),(54,'Haldol',88758.74,85,2),(55,'benztropine mesylate',90396.68,51,6),(56,'DILAUDID',94484.19,19,6),(57,'Rite Aid Kids Sunscreen',12.33,47,5),(58,'Losartan potassium and Hydrochlorothiazide',60129.06,49,7),(59,'Lyrica',55122.67,44,5),(60,'Acetaminophen - APAP Arthritis',95995.17,67,5),(61,'Dynashield',95968.41,10,5),(62,'Berry Scented Hand Sanitizer',78747.56,33,1),(63,'Lorazepam',62576.35,25,1),(64,'Neutrogena Healthy Skin Makeup',96954.63,10,2),(65,'Prazosin Hydrochloride',14827.78,17,2),(66,'Detox',42796.32,74,4),(67,'PHENADOZ',63096.91,64,3),(68,'Wild Strawberry Anti-Bacterial Hand Sanitizer',74661.47,53,4),(69,'Tryptophan',80728.63,28,2),(70,'bisoprolol fumarate and hydrochlorothiazide',31586.46,78,3),(71,'medroxyprogesterone acetate',30912.20,36,5),(72,'Secura Personal Cleanser',71329.96,6,6),(73,'Triamterene and Hydrochlorothiazide',29735.94,79,7),(74,'ZENPEP',2268.84,94,1),(75,'Forest Sap Patch',3779.17,35,4),(76,'Diltiazem Hydrochloride',58514.91,17,4),(77,'Alcohol Prep Pad',55786.32,27,3),(78,'Antibacterial Wet Wipes',23334.97,40,1),(79,'FeverALL Junior',27780.23,40,4),(80,'Muro 128',51625.64,50,6),(81,'Ondansetron',99082.04,64,1),(82,'ZENPEP',37053.07,59,3),(83,'Vinorelbine',65319.27,81,2),(84,'Rescriptor',71479.26,33,1),(85,'Terconazole',601.35,18,5),(86,'Quetiapine Fumarate',97859.84,44,3),(87,'Walgreens SunscreenSPF 70',92064.76,2,7),(88,'Loratadine and Pseudoephedrine Sulfate',38787.73,88,4),(89,'FONDAPARINUX SODIUM',34409.91,76,4),(90,'SOLU-MEDROL',55695.60,43,6),(91,'Ampicillin',17925.79,36,6),(92,'Cyclobenzaprine Hydrochloride',67482.88,39,5),(93,'TopCare',49921.89,56,5),(94,'Citalopram',81784.41,10,6),(95,'Metronidazole',92470.25,84,6),(96,'AVANDIA',5019.39,76,7),(97,'Diclofenac sodium and Misoprostol',51235.07,46,1),(98,'PEGINTRON',22207.02,100,3),(99,'ACNE FREE',39628.13,7,5),(100,'ESIKA',14674.91,90,4),(101,'Liver',37167.74,37,3),(102,'V-Natal',93213.26,73,5),(103,'Preferred Plus Hemorrhoid',32545.06,69,4),(104,'Cefdinir',34305.92,84,4),(105,'Rimmel London',12956.38,31,3),(106,'Promethazine HCl',90427.44,69,2),(107,'Hydroxyzine Pamoate',3657.10,15,6),(108,'HOUSE DUST',80712.84,40,5),(109,'Darkleaves Mugwort',95645.84,75,5),(110,'Warfarin Sodium',56234.72,58,5),(111,'ANTIBACTERIAL FOAMING',31575.46,11,4),(112,'Cymbalta',35208.42,75,7),(113,'Ondansetron Hydrochloride',17088.70,58,6),(116,'Nitroglycerin In Dextrose',18428.86,81,3),(117,'VeraSeptine Multipurpose Moisture Barrier',61980.67,69,1),(118,'DIOR SNOW PROTECTION UV',81192.16,35,1),(119,'Depo-Medrol',96892.52,92,3),(120,'Pacnex',51148.07,29,4),(121,'Risperidone',12505.96,97,2),(122,'Select Health Allergy Relief',85602.28,3,6),(123,'Good Neighbor Pharmacy Antacid',31381.35,49,6),(124,'Coxsackie',61741.82,83,7),(125,'Haloperidol',62899.39,25,2),(126,'mirtazapine',91281.51,16,6),(127,'Lorazepam',39813.78,75,2),(128,'Levothyroxine Sodium',89653.66,53,6),(129,'ASACOL',30149.25,44,5),(130,'SaniSuds E-2 Foam Sanitizing Hand',42600.02,61,5),(131,'Flu-less',21269.14,34,4),(132,'SUMATRIPTAN',47025.61,15,1),(133,'Clean and Clear Essentials Deep Cleaning',31287.04,85,1),(134,'Naproxen',93970.75,30,2),(135,'misoprostol',76304.80,84,4),(136,'REBETOL',92287.20,56,1),(137,'Aspirin',17716.79,75,3),(138,'Candy Apple Anti Bacterial Hand Sanitizer',38983.26,12,4),(139,'CARYA ILLINOINENSIS POLLEN',90033.01,6,1),(140,'Midazolam',46122.64,11,7),(141,'LBEL COULEUR LUXE AMPLIFIER XP',64509.16,7,4),(142,'Metoprolol succinate',15708.01,68,7),(143,'Miconazole 3',98239.60,62,7),(144,'Anticoagulant Citrate Dextrose A',99615.81,93,2),(146,'Hydrocodone Bitartrate and Acetaminophen',52050.95,99,1),(147,'Cumin',62080.06,51,4),(148,'Bupivacaine HCl',85176.84,64,6),(149,'Atorvastatin Calcium',40767.31,94,2),(150,'Stavudine',62157.19,88,2),(151,'SkinTx Sunscreen',58324.81,60,5),(152,'ORIGINAL POWER LIFTING AMPOULE',49474.48,7,7),(153,'Metronidazole',18694.19,93,5),(154,'Amoxicillin',21551.74,56,2),(156,'BENZOYL PEROXIDE',40696.14,60,4),(157,'Olay Professional ProX',88102.37,38,1),(158,'pain relief',99269.98,29,5),(159,'Fluconazole',22464.47,16,2),(160,'Moisture Renew',76056.51,7,5),(161,'Citalopram Hydrobromide',94709.95,20,2),(162,'dg health cold and flu relief',12445.80,75,6),(163,'Ocean Potion Quick Dry 50 Sunscreen',67682.00,85,3),(164,'Lovastatin',56314.19,70,4),(165,'Severe Daytime',49929.70,7,2),(166,'Losartan Potassium',65603.35,6,5),(167,'Amikacin Sulfate',73818.36,19,7),(168,'ShopRite Adult Tussin',38914.48,35,1),(169,'Ketoconazole',83551.16,9,3),(170,'PENTOXIFYLLINE',22819.03,5,1),(171,'Rifampin',71694.78,17,3),(172,'Cacao Bean',80951.39,51,1),(173,'DT Fluoride',61938.42,60,7),(174,'Gas Relief',17225.33,6,1),(175,'ADVANCED CELL BOOSTING EX EYE',80658.35,88,6),(176,'Propranolol Hydrochloride',40961.71,6,3),(177,'SHISEIDO SHEER AND PERFECT FOUNDATION',58787.92,81,3),(178,'RENOKIN HAIR REVITALIZING',39491.64,32,7),(179,'Tretinoin',32730.81,30,2),(180,'Cleocin Phosphate',84045.80,66,6),(181,'FREEZIN COLD TOAST',12002.83,56,1),(182,'citroma',12020.65,63,6),(183,'Captopril',58951.83,3,6),(184,'NAPRELAN',80923.26,23,4),(185,'Up and up stool softener',86686.76,9,2),(186,'Leader Infants Gas Relief',19324.17,58,3),(187,'Match Perfection SPF 18',76609.15,75,6),(188,'Ziprasidone Hydrochloride',80068.13,79,7),(189,'Aspergillus Mixture',57113.63,42,5),(190,'Clindamycin Phosphate',5633.35,96,4),(191,'Cervidil',86972.74,77,4),(192,'Sulindac',75882.33,34,5),(193,'Aspirin',52045.50,55,7),(194,'Didanosine',75963.81,76,1),(195,'Dr.eslee Triple Action BB',90407.52,78,7),(196,'CORFEN',87414.88,23,4),(197,'Potassium Chloride',3926.34,62,7),(198,'SUPRAX',29916.61,44,2),(199,'Day Night Cold and Flu',68764.63,57,5),(200,'Clarithromycin',68932.97,55,2),(201,'Roll On Anti-Perspirant (Alcohol Free)',49019.13,78,7),(202,'FEDORA Oriental Spa Ampoule',37602.19,73,2),(203,'NARS',6055.08,74,3),(204,'Tacrolimus',22326.09,52,2),(205,'Tilia Fe',68159.87,82,3),(206,'ACTONEL',2300.02,70,7),(207,'Amoxicillin',13003.94,11,4),(208,'acid reducer',54849.31,4,4),(209,'Omeprazole',12881.91,89,1),(210,'Polibar ACB',63709.98,18,7),(211,'Goose Feathers',4074.70,35,2),(212,'NABUMETONE',5189.91,80,2),(213,'Ciprofloxacin',29379.38,5,3),(214,'Antispetic',55015.14,67,7),(215,'Antibacterial Hand Towelettes',92400.01,4,6),(216,'Tramadol Hydrchloride',60614.76,22,2),(217,'BioRelief Ice Pain Relieving',88410.19,60,7),(218,'Dextrose and Sodium Chloride',36545.50,70,2),(219,'AIR',39512.27,31,1),(220,'atropine sulfate',20518.58,55,4),(221,'Remedy Skin Protectant',34339.11,22,6),(222,'BronchialCare Soins Des Bronches',55369.62,90,5),(223,'Covera-HS',22246.99,30,5),(224,'Therapeutic T Plus',36501.52,40,3),(225,'DOCEFREZ',74030.35,30,1),(226,'SyResp',59745.19,15,2),(227,'Roll On Anti Perspirant',44124.92,25,4),(228,'Acebutolol Hydrochloride',47073.01,31,3),(229,'TRIBIOTIC',99142.06,25,5),(230,'BEBULIN',8598.88,13,1),(231,'Topamax',17957.39,93,5),(232,'MEDROX',7290.07,88,6),(233,'GenRx Ultra Therapeutic Skin Repairing',93044.97,47,2),(234,'Cramps Spasms',86193.71,36,5),(235,'ropinirole hydrochloride',4667.17,85,4),(236,'Levofloxacin',53510.87,14,3),(237,'FLOVENT',62713.38,34,3),(238,'Hydromorphone Hydrochloride',78968.82,30,1),(239,'Hydrochlorothiazide',236.82,17,6),(240,'Delsym',53637.61,71,3),(241,'Clonazepam',50608.51,37,2),(242,'Lanacane',27310.40,65,6),(243,'IOPE AIR CUSHION XP',30554.80,100,6),(244,'NEXIUM',14630.51,36,7),(245,'Anti-Bacterial Hand',7257.23,45,7),(246,'risperidone',51959.97,30,3),(247,'SUN SHADES',70083.91,99,3),(248,'daytime',50111.01,87,7),(249,'Perrigo Hydroquinone',37944.23,70,4),(250,'Xylocaine',84956.71,65,3);
/*!40000 ALTER TABLE `insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `id_localidad` int NOT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'Capital'),(2,'Yerba Buena'),(3,'Banda del Rio Sali');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `medicos_ninos`
--

DROP TABLE IF EXISTS `medicos_ninos`;
/*!50001 DROP VIEW IF EXISTS `medicos_ninos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `medicos_ninos` AS SELECT 
 1 AS `Legajo`,
 1 AS `Nombre_PF`,
 1 AS `Apellido_PF`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `obras_sociales_por_paciente`
--

DROP TABLE IF EXISTS `obras_sociales_por_paciente`;
/*!50001 DROP VIEW IF EXISTS `obras_sociales_por_paciente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `obras_sociales_por_paciente` AS SELECT 
 1 AS `nombre_px`,
 1 AS `apellido_px`,
 1 AS `obra_social`,
 1 AS `id_ooss`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ooss`
--

DROP TABLE IF EXISTS `ooss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ooss` (
  `id_OOSS` int NOT NULL,
  `Obra_Social` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_OOSS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ooss`
--

LOCK TABLES `ooss` WRITE;
/*!40000 ALTER TABLE `ooss` DISABLE KEYS */;
INSERT INTO `ooss` VALUES (1,'Boreal'),(2,'Prensa'),(3,'Red de Seguros'),(4,'OSDE'),(5,'Medife'),(6,'Subsidio'),(7,'PAMI'),(8,'Medicus'),(9,'Prevencion Salud'),(10,'Galeno');
/*!40000 ALTER TABLE `ooss` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ooss_BEFORE_DELETE` BEFORE DELETE ON `ooss` FOR EACH ROW BEGIN
INSERT INTO tabla_log_ooss(Id_obra_social_eliminada,OS_Eliminada )
VALUES(id_ooss, obra_social);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ooss_mas_usada`
--

DROP TABLE IF EXISTS `ooss_mas_usada`;
/*!50001 DROP VIEW IF EXISTS `ooss_mas_usada`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ooss_mas_usada` AS SELECT 
 1 AS `obra_social`,
 1 AS `Cuenta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ooss_menos_usada`
--

DROP TABLE IF EXISTS `ooss_menos_usada`;
/*!50001 DROP VIEW IF EXISTS `ooss_menos_usada`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ooss_menos_usada` AS SELECT 
 1 AS `obra_social`,
 1 AS `Cuenta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `Nombre_Px` varchar(50) DEFAULT NULL,
  `Apellido_Px` varchar(50) DEFAULT NULL,
  `Sexo_Px` char(1) DEFAULT NULL,
  `Fecha_Nac_Px` date DEFAULT NULL,
  `Domicilio_Px` varchar(70) DEFAULT NULL,
  `Tel_Contacto` varchar(50) DEFAULT NULL,
  `Email_Px` varchar(50) DEFAULT NULL,
  `Fecha_de_Ig` date DEFAULT NULL,
  `Fecha_de_Eg` date DEFAULT NULL,
  `Pagos_Px` decimal(8,2) DEFAULT NULL,
  `Localidad` int DEFAULT NULL,
  `ObraSocial` int DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `fk_localidad` (`Localidad`),
  KEY `fk_OOSS` (`ObraSocial`),
  CONSTRAINT `fk_localidad` FOREIGN KEY (`Localidad`) REFERENCES `localidades` (`id_localidad`),
  CONSTRAINT `fk_OOSS` FOREIGN KEY (`ObraSocial`) REFERENCES `ooss` (`id_OOSS`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Maggee','Cruttenden','F','2002-10-26','780 Bonner Lane','(920) 7039311','mcruttenden0@stanford.edu','2019-09-03','2021-01-01',48338.48,1,9),(2,'Calley','Portail','F','2017-12-02','83 Lotheville Pass','(939) 2556504','cportail1@ca.gov','2020-09-17','2021-11-04',31738.92,2,6),(3,'Margarette','O\'Deoran','F','2011-02-09','183 Laurel Terrace','(570) 3699884','modeoran2@reference.com','2021-08-05','2019-06-28',30557.57,2,10),(4,'Efrem','Du Hamel','M','1991-02-22','6065 Mallory Parkway','(419) 6612776','eduhamel3@blogspot.com','2022-01-23','2021-11-12',2712.14,1,5),(5,'Quinton','Hames','M','1976-05-10','77 Rieder Trail','(544) 3361108','qhames4@elpais.com','2020-03-09','2021-07-20',8924.22,2,9),(6,'Benedicto','Tosh','M','1962-01-25','621 Continental Street','(281) 2799155','btosh5@omniture.com','2021-05-20','2019-02-08',25828.75,3,4),(7,'Aurelia','Varty','F','1990-12-10','48 Annamark Point','(702) 8532962','avarty6@geocities.jp','2020-04-10','2020-12-29',22195.81,3,2),(8,'Hilarius','Guittet','M','1989-10-24','3 Lakewood Gardens Center','(622) 5908129','hguittet7@bizjournals.com','2022-03-26','2021-07-04',2244.22,1,8),(9,'Leodora','Mowne','F','2005-04-21','9 Melby Parkway','(540) 8261338','lmowne8@illinois.edu','2020-09-23','2019-11-07',12170.62,2,6),(10,'Laurette','Toupe','F','1974-12-09','54 Bluejay Place','(999) 1811936','ltoupe9@fema.gov','2019-10-18','2022-03-02',10333.41,2,9),(11,'Adelice','May','F','1973-09-06','604 Stephen Drive','(387) 7631575','amaya@businessweek.com','2020-02-29','2020-11-03',10978.08,2,4),(12,'Nickolas','Dahlman','M','1949-06-05','91 Farmco Circle','(607) 7262651','ndahlmanb@addtoany.com','2019-01-13','2020-09-20',43993.81,1,7),(13,'Twyla','Carbine','F','1980-07-30','8446 Eastwood Junction','(589) 3397213','tcarbinec@symantec.com','2019-01-27','2020-03-01',12696.22,2,10),(14,'Faustine','Maffione','F','2006-08-06','556 Twin Pines Junction','(410) 7391713','fmaffioned@free.fr','2020-06-14','2022-01-20',6183.15,1,2),(15,'Milo','Dyne','M','2004-02-29','697 Manley Parkway','(565) 3268145','mdynee@vkontakte.ru','2019-07-06','2019-04-15',25064.53,2,4),(16,'Douglass','Wane','M','2000-06-06','581 Stang Lane','(961) 7667953','dwanef@studiopress.com','2021-08-26','2021-02-03',35730.63,3,7),(17,'Cosimo','Ibbett','M','1995-05-01','7 Jay Lane','(210) 4865106','cibbettg@moonfruit.com','2021-11-28','2019-02-04',28519.69,1,3),(18,'Ricki','Staddom','M','2015-11-23','159 Evergreen Way','(845) 7715146','rstaddomh@marriott.com','2019-12-26','2021-10-17',19883.46,1,2),(19,'Lorenzo','MacPhee','M','1962-12-17','7 Merrick Plaza','(445) 6398010','lmacpheei@addtoany.com','2020-07-28','2019-07-06',9646.92,3,3),(20,'Liliane','Joanic','F','2020-01-14','9778 Logan Crossing','(490) 5341038','ljoanicj@ft.com','2021-06-23','2020-01-13',287.75,3,1),(21,'Garrett','Klulicek','M','1967-04-07','91 Superior Parkway','(434) 7292252','gklulicekk@bravesites.com','2020-05-17','2019-04-27',27008.44,2,8),(22,'Lodovico','Byway','M','1971-09-10','323 Haas Park','(374) 6536268','lbywayl@pcworld.com','2020-09-21','2021-09-10',26324.82,2,9),(23,'Brook','Ravenshaw','M','2005-01-04','469 Summer Ridge Road','(906) 4341794','bravenshawm@skype.com','2021-07-11','2020-02-11',45448.54,3,10),(24,'Yettie','Povlsen','F','2012-09-11','15831 Tony Park','(418) 1369341','ypovlsenn@wikimedia.org','2021-05-04','2021-05-31',25154.61,1,3),(25,'Skipp','St. John','M','1982-08-09','975 Ridgeway Pass','(414) 8085355','sstjohno@ezinearticles.com','2020-12-04','2020-06-09',41396.10,2,4),(26,'Brocky','Puddle','M','2003-08-07','74 Jana Road','(794) 5783463','bpuddlep@imgur.com','2020-11-30','2019-10-19',44914.36,2,9),(27,'Georgena','Forst','F','2003-09-28','89156 Graedel Way','(155) 4320793','gforstq@canalblog.com','2019-01-24','2021-03-14',17303.01,2,9),(28,'Ezechiel','Averay','M','2013-05-02','62 Duke Street','(929) 9344349','eaverayr@nasa.gov','2021-07-25','2021-02-04',3796.80,1,1),(29,'Tina','Nisius','F','1990-07-29','6743 5th Alley','(743) 3519946','tnisiuss@sakura.ne.jp','2020-10-20','2020-07-06',45263.34,3,7),(30,'Edeline','Lonie','F','1981-09-10','8487 Michigan Court','(754) 1971697','eloniet@homestead.com','2021-04-18','2021-06-04',40247.50,1,8),(31,'Carmelita','Chaudret','F','1994-09-11','6 Morrow Street','(479) 6392218','cchaudretu@themeforest.net','2022-03-26','2020-12-10',46603.72,2,6),(32,'Morgen','Burnes','M','2021-12-18','4587 Buell Alley','(278) 7467763','mburnesv@is.gd','2019-11-10','2021-04-01',9753.19,3,8),(33,'Lemmy','Bonnin','M','1999-09-06','1 Shelley Terrace','(728) 1108420','lbonninw@deliciousdays.com','2019-10-05','2019-03-05',15973.39,3,2),(34,'Cyrill','Brookson','M','1975-10-10','75 Bluejay Place','(970) 8399305','cbrooksonx@biblegateway.com','2019-08-27','2020-01-08',30920.26,1,5),(35,'Jordan','Bullerwell','M','1980-10-30','03810 Dayton Drive','(356) 4210034','jbullerwelly@marriott.com','2021-12-27','2019-01-15',15994.27,1,3),(36,'Linet','Booley','F','1991-08-08','3446 Huxley Terrace','(202) 1202501','lbooleyz@gmpg.org','2019-11-16','2020-01-30',4049.54,2,8),(37,'Glendon','Reuss','M','1998-07-15','47853 Londonderry Avenue','(953) 3816496','greuss10@ted.com','2021-02-11','2021-03-28',6985.15,3,3),(38,'Sheff','Dunleavy','M','1965-02-09','7488 Buena Vista Pass','(664) 5583575','sdunleavy11@engadget.com','2022-01-24','2021-11-22',41742.86,2,7),(39,'Auguste','Sancraft','F','2011-02-12','56 Meadow Valley Street','(547) 9992094','asancraft12@aboutads.info','2022-01-07','2022-02-15',40584.92,3,10),(40,'Claudine','Kilbane','F','1996-11-06','5398 Eastwood Hill','(647) 2892515','ckilbane13@google.com.hk','2021-12-08','2019-12-15',6655.42,2,10),(41,'Kare','Kaasman','F','1965-06-08','5523 Anderson Center','(651) 6948878','kkaasman14@hp.com','2020-08-12','2019-07-29',31185.45,3,1),(42,'Marcy','Bromige','F','1975-07-01','17 Golf Course Parkway','(135) 1646967','mbromige15@blogs.com','2021-08-25','2019-03-16',2639.90,2,9),(43,'Leontyne','Bolliver','F','1965-07-27','1168 Huxley Lane','(528) 5349159','lbolliver16@bloomberg.com','2019-05-01','2021-09-22',20027.73,2,6),(44,'Bernhard','Spedroni','M','1995-10-30','55090 Stang Drive','(278) 9755838','bspedroni17@ifeng.com','2021-05-21','2020-08-24',33731.32,1,4),(45,'Fenelia','McAlindon','F','2004-01-10','71 Golf View Hill','(741) 7756011','fmcalindon18@yolasite.com','2020-01-31','2021-04-22',40814.09,3,3),(46,'Hernando','Souter','M','1947-07-11','9169 7th Way','(501) 2390991','hsouter19@ca.gov','2021-09-20','2021-09-20',32371.88,2,9),(47,'Maynord','Bardwell','M','2016-03-01','127 Morning Court','(873) 2671956','mbardwell1a@indiegogo.com','2021-07-19','2020-05-09',19048.57,3,10),(48,'Ailee','Fratson','F','1974-04-07','241 Mifflin Circle','(741) 2962778','afratson1b@hubpages.com','2021-04-17','2020-12-31',560.70,3,1),(49,'Phebe','Theml','F','1996-05-03','79216 Vermont Crossing','(289) 2498896','ptheml1c@facebook.com','2022-04-10','2021-09-14',17507.97,2,3),(50,'Guendolen','Petruk','F','2008-12-11','49778 Magdeline Park','(625) 2860412','gpetruk1d@addtoany.com','2021-11-22','2021-12-11',31974.42,1,4),(51,'Urbanus','Thatcham','M','1952-10-31','314 Reinke Point','(712) 1769533','uthatcham1e@eepurl.com','2020-10-05','2019-09-26',32586.99,3,4),(52,'Birch','Yelland','M','1968-06-25','38 Orin Drive','(969) 5202638','byelland1f@surveymonkey.com','2020-04-15','2020-11-11',46735.68,3,5),(53,'Ameline','Linacre','F','2003-03-14','594 Kensington Lane','(863) 9626528','alinacre1g@flickr.com','2021-10-02','2019-03-20',6496.01,3,1),(54,'Coop','Cordelle','M','1967-02-23','48080 New Castle Avenue','(428) 6624271','ccordelle1h@51.la','2020-02-18','2021-10-30',13883.34,1,10),(55,'Sax','Pendrid','M','1945-01-17','458 Summer Ridge Park','(914) 6228813','spendrid1i@xinhuanet.com','2021-04-04','2021-09-19',47328.92,1,4),(56,'Craig','Savory','M','1989-02-12','6899 Gina Parkway','(753) 2178289','csavory1j@ted.com','2020-03-02','2019-07-12',2070.90,1,2),(57,'Fionna','Moseley','F','1988-08-16','538 Mockingbird Drive','(323) 1395208','fmoseley1k@home.pl','2020-05-12','2019-04-12',36774.57,2,4),(58,'Nolie','Inmett','F','1975-05-13','4 Leroy Park','(874) 3227433','ninmett1l@who.int','2021-01-14','2021-08-30',37550.32,3,6),(59,'Allistir','Gerlack','M','1999-05-02','1 Corscot Parkway','(844) 9776506','agerlack1m@ask.com','2019-01-08','2019-08-29',11317.69,1,2),(60,'Douglas','Kalb','M','1971-02-13','5 Stephen Trail','(577) 5758948','dkalb1n@upenn.edu','2019-05-12','2019-01-14',39431.01,2,1),(61,'Rebeka','Bayley','F','1965-03-07','31 Monument Street','(116) 4973372','rbayley1o@chron.com','2021-06-04','2022-03-12',4753.69,1,8),(62,'Daphne','Vlasin','F','1971-08-27','8 Coleman Lane','(824) 3360322','dvlasin1p@google.com.au','2020-08-20','2020-04-18',35704.18,1,3),(63,'Karlis','Struis','M','1985-10-28','7 Knutson Park','(501) 6613026','kstruis1q@issuu.com','2021-08-07','2020-12-03',1614.92,2,5),(64,'Constantine','Penhallurick','M','2012-07-29','68 Westridge Terrace','(373) 3518161','cpenhallurick1r@webmd.com','2019-08-01','2020-08-29',33750.76,2,8),(65,'Caryn','Deathridge','F','1987-11-19','53307 Amoth Alley','(158) 7605999','cdeathridge1s@sourceforge.net','2022-04-15','2021-07-07',40840.67,3,2),(66,'Renado','Kienzle','M','2004-07-24','7 Oakridge Place','(702) 4506776','rkienzle1t@amazon.co.jp','2020-02-24','2022-03-21',4976.56,2,6),(67,'Bevvy','Mattei','F','2003-03-20','19 Scott Parkway','(877) 9793221','bmattei1u@surveymonkey.com','2020-05-28','2021-11-11',19376.16,3,5),(68,'Walsh','Reding','M','1967-10-18','6228 Lighthouse Bay Alley','(433) 8475890','wreding1v@google.de','2019-12-22','2020-04-01',5520.62,2,5),(69,'Georgiana','Trafford','F','1994-05-21','1 Mayer Court','(737) 4298306','gtrafford1w@ebay.co.uk','2019-03-03','2022-01-03',20209.95,2,1),(70,'Sibley','Klaas','F','1982-03-05','590 Barnett Street','(605) 9429119','sklaas1x@state.tx.us','2021-06-29','2021-07-29',7731.59,2,3),(71,'Cello','Dahlberg','M','1996-10-07','0516 North Crossing','(202) 9477935','cdahlberg1y@facebook.com','2020-05-26','2019-04-04',35589.15,2,10),(72,'Odele','Sawbridge','F','1970-02-12','216 Beilfuss Trail','(827) 8081306','osawbridge1z@tumblr.com','2019-09-13','2021-04-20',16733.79,1,2),(73,'Hubey','Routledge','M','1996-04-19','848 Artisan Hill','(199) 6048190','hroutledge20@typepad.com','2021-12-19','2020-04-01',14740.98,2,6),(74,'Lawrence','Avesque','M','1946-08-02','2591 Autumn Leaf Hill','(544) 7155448','lavesque21@state.gov','2022-04-01','2020-07-10',42967.96,2,1),(75,'Ashia','Matyas','F','2011-07-19','20841 Dunning Way','(392) 9263670','amatyas22@slate.com','2021-02-27','2021-10-07',49791.24,1,6),(76,'Issie','Fossick','F','1993-08-13','41233 Dryden Junction','(666) 3011217','ifossick23@squarespace.com','2019-06-06','2021-03-13',46145.36,1,2),(77,'Naomi','Rudwell','F','2010-05-11','34996 Parkside Way','(318) 7134630','nrudwell24@samsung.com','2020-03-06','2019-06-27',7476.38,1,8),(78,'Raoul','Cullabine','M','2018-07-04','85993 Monument Pass','(236) 3044122','rcullabine25@flickr.com','2020-12-14','2019-09-21',3791.98,1,2),(79,'Raddie','Pittwood','M','1947-01-15','1 Granby Drive','(610) 9423075','rpittwood26@fda.gov','2021-03-04','2021-11-08',22324.19,1,6),(80,'Dewain','Caine','M','1996-11-24','1364 Ryan Junction','(765) 1218366','dcaine27@independent.co.uk','2019-05-25','2021-09-22',1060.64,1,7),(81,'Raymond','Rowsell','M','1972-03-13','58 Luster Pass','(394) 8097571','rrowsell28@trellian.com','2019-05-06','2019-08-13',43702.89,3,10),(82,'Nat','Rentalll','M','1973-04-02','1649 Carberry Avenue','(598) 5774618','nrentalll29@cloudflare.com','2021-03-12','2019-07-11',14013.31,2,8),(83,'Shawn','Jeannaud','F','1976-02-04','45026 Lindbergh Lane','(375) 5865475','sjeannaud2a@ed.gov','2020-09-15','2021-05-22',350.84,3,4),(84,'Sybil','Trorey','F','1983-12-26','986 Graceland Point','(644) 1269734','strorey2b@dion.ne.jp','2020-09-08','2019-05-30',34718.28,3,8),(85,'Nady','Lorrie','F','1994-10-09','18 Menomonie Parkway','(318) 4526323','nlorrie2c@constantcontact.com','2019-12-14','2021-07-15',14152.09,1,9),(86,'Lou','Heisler','M','2021-11-27','608 Merchant Court','(406) 4652009','lheisler2d@last.fm','2020-09-22','2020-10-01',41288.78,2,3),(87,'Jolene','Dominguez','F','1975-11-08','7 Dorton Alley','(513) 3687032','jdominguez2e@sohu.com','2022-02-28','2019-10-26',17445.48,1,3),(88,'Emerson','Kemery','M','1980-02-04','7957 Clove Parkway','(663) 6170066','ekemery2f@barnesandnoble.com','2020-08-23','2019-05-14',9783.89,2,9),(89,'King','Fairholm','M','1975-04-10','923 Schiller Point','(473) 7548212','kfairholm2g@is.gd','2020-09-22','2021-04-10',38513.17,2,2),(90,'Wells','Biaggioli','M','1991-09-05','0 Darwin Road','(455) 7547313','wbiaggioli2h@newyorker.com','2020-10-08','2021-04-16',17452.85,3,8),(91,'Katerine','Thring','F','1981-03-26','92 Del Sol Drive','(251) 7588309','kthring2i@fastcompany.com','2020-06-28','2019-10-22',34141.74,1,1),(92,'Issiah','Rizzardini','M','1962-10-26','678 Hintze Alley','(279) 2850995','irizzardini2j@skyrock.com','2019-04-11','2020-10-08',11167.70,1,2),(93,'Alfy','Cobon','M','1976-01-19','91656 Prairieview Circle','(647) 7433743','acobon2k@i2i.jp','2021-06-26','2021-11-08',31398.96,3,3),(94,'Katinka','Wardrop','F','1961-06-12','8506 Heath Pass','(652) 6637090','kwardrop2l@pagesperso-orange.fr','2021-02-12','2021-05-25',29573.85,3,9),(95,'Frederich','Ripper','M','1974-07-12','5 Monica Way','(560) 8378329','fripper2m@hubpages.com','2019-02-12','2020-06-28',28604.89,1,5),(96,'Karlan','Ambrogiotti','M','2020-01-28','4639 Superior Place','(810) 2646790','kambrogiotti2n@stanford.edu','2019-10-19','2019-04-03',35583.94,3,5),(97,'Jecho','Redemile','M','1960-11-25','47903 Truax Junction','(253) 8457302','jredemile2o@narod.ru','2021-08-13','2021-04-05',49560.53,1,2),(98,'Cathrine','Kelleher','F','1954-05-05','52087 Mccormick Alley','(976) 7512474','ckelleher2p@cargocollective.com','2019-05-12','2021-01-11',45438.71,3,9),(99,'Jocelyn','Headly','F','2011-09-12','58 Manley Drive','(828) 1982825','jheadly2q@state.gov','2020-05-31','2020-05-07',40881.30,1,2),(100,'Fawnia','Haws','F','1981-07-16','0 Ridgeway Circle','(181) 4484939','fhaws2r@cmu.edu','2021-10-12','2020-12-29',6296.01,3,2),(101,'michael','jordan','M','1980-10-31','03810 siempreviva','(356) 4210134','michael.jordan@tpsc.com','2021-11-27','2019-02-15',15994.27,1,3);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_pacientes_insert` AFTER INSERT ON `pacientes` FOR EACH ROW BEGIN
	INSERT INTO tabla_log_pacientes_por_profesional (Id_paciente, fecha_de_ig, email_px)
    VALUES(NEW.Id_paciente, NEW.fecha_de_ig, NEW.email_px);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `pacientes_capital`
--

DROP TABLE IF EXISTS `pacientes_capital`;
/*!50001 DROP VIEW IF EXISTS `pacientes_capital`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacientes_capital` AS SELECT 
 1 AS `id_paciente`,
 1 AS `Nombre_Px`,
 1 AS `Apellido_Px`,
 1 AS `Domicilio_Px`,
 1 AS `ObraSocial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pacientes_fuera_de_capital`
--

DROP TABLE IF EXISTS `pacientes_fuera_de_capital`;
/*!50001 DROP VIEW IF EXISTS `pacientes_fuera_de_capital`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacientes_fuera_de_capital` AS SELECT 
 1 AS `id_paciente`,
 1 AS `Nombre_Px`,
 1 AS `Apellido_Px`,
 1 AS `Domicilio_Px`,
 1 AS `ObraSocial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pacientes_nacidos_despues_2000`
--

DROP TABLE IF EXISTS `pacientes_nacidos_despues_2000`;
/*!50001 DROP VIEW IF EXISTS `pacientes_nacidos_despues_2000`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacientes_nacidos_despues_2000` AS SELECT 
 1 AS `id_paciente`,
 1 AS `Nombre_Px`,
 1 AS `Apellido_Px`,
 1 AS `Sexo_Px`,
 1 AS `Fecha_Nac_Px`,
 1 AS `Domicilio_Px`,
 1 AS `Tel_Contacto`,
 1 AS `Email_Px`,
 1 AS `Fecha_de_Ig`,
 1 AS `Fecha_de_Eg`,
 1 AS `Pagos_Px`,
 1 AS `Localidad`,
 1 AS `ObraSocial`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `profesionales`
--

DROP TABLE IF EXISTS `profesionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesionales` (
  `Legajo` int NOT NULL,
  `Nombre_PF` varchar(50) DEFAULT NULL,
  `Apellido_PF` varchar(50) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Domicilio_PF` varchar(70) DEFAULT NULL,
  `Tel_Contacto` varchar(50) DEFAULT NULL,
  `Email_PF` varchar(50) DEFAULT NULL,
  `Localidad_PF` int DEFAULT NULL,
  `Especialidad` int DEFAULT NULL,
  PRIMARY KEY (`Legajo`),
  KEY `fk_especialidad` (`Especialidad`),
  KEY `fk_localidad_pf` (`Localidad_PF`),
  CONSTRAINT `fk_especialidad` FOREIGN KEY (`Especialidad`) REFERENCES `especialidades` (`id_especialidad`),
  CONSTRAINT `fk_localidad_pf` FOREIGN KEY (`Localidad_PF`) REFERENCES `localidades` (`id_localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesionales`
--

LOCK TABLES `profesionales` WRITE;
/*!40000 ALTER TABLE `profesionales` DISABLE KEYS */;
INSERT INTO `profesionales` VALUES (1,'Hansiain','Stolz','1982-01-08','345 Corscot Road','(205) 8597782','hstolz0@auda.org.au',1,1),(2,'Marta','Speek','1979-11-09','69970 Eastlawn Road','(659) 3008259','mspeek1@europa.eu',1,7),(3,'Fleming','Sellors','1971-09-18','27804 Erie Alley','(561) 6872517','fsellors2@slate.com',1,11),(4,'Tull','Semechik','1989-10-21','8994 Norway Maple Junction','(627) 4510561','tsemechik3@elegantthemes.com',1,4),(5,'Bella','Rijkeseis','1987-04-03','93 Pepper Wood Pass','(944) 2500024','brijkeseis4@mozilla.org',3,8),(6,'Harwilll','Skeene','1989-02-08','1842 Del Mar Park','(760) 4548906','hskeene5@imdb.com',3,2),(7,'Justis','Wallworth','1996-03-14','4 Hanover Center','(719) 9903209','jwallworth6@xinhuanet.com',3,7),(8,'Justus','Sherebrooke','1990-07-25','536 Browning Place','(996) 7867412','jsherebrooke7@nationalgeographic.com',2,2),(9,'Papageno','Covet','1957-01-01','9148 Heffernan Avenue','(199) 4649304','pcovet8@ftc.gov',2,2),(10,'Anatol','Hundall','1998-11-13','56 Kensington Hill','(222) 8186346','ahundall9@narod.ru',2,11),(11,'Onida','Wolters','1995-01-13','2 Northport Crossing','(555) 8884761','owoltersa@cloudflare.com',3,4),(12,'Amy','Deetlefs','1950-12-17','620 Golf Alley','(235) 5624895','adeetlefsb@patch.com',3,4),(13,'Jena','Kless','1966-12-17','54 Fuller Way','(465) 9809314','jklessc@lycos.com',1,8),(14,'Karoly','Rumbold','1985-09-03','041 Monica Plaza','(806) 7637365','krumboldd@slate.com',3,8),(15,'Gifford','Bysh','1958-06-29','6 Donald Road','(461) 2206117','gbyshe@mlb.com',1,6),(16,'Izak','Clinning','1963-07-25','2556 Hazelcrest Court','(516) 3929215','iclinning0@disqus.com',2,3),(17,'Carlye','Meadmore','1997-07-02','85 Monument Terrace','(518) 1915279','cmeadmore1@usgs.gov',2,11),(18,'Kettie','Howson','1978-03-25','94820 Grim Court','(284) 8381810','khowson2@1und1.de',1,11),(19,'Avigdor','Tindall','1955-05-05','0 Fremont Parkway','(347) 6795559','atindall3@w3.org',3,1);
/*!40000 ALTER TABLE `profesionales` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `profesionales_BEFORE_DELETE` BEFORE DELETE ON `profesionales` FOR EACH ROW BEGIN
INSERT INTO tabla_log_profesionales(legajo, tel_contacto, email_pf)
VALUES(legajo, tel_contacto, email_pf);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveed` int NOT NULL,
  `razon_social` varchar(50) NOT NULL,
  `Fecha_Alta` date DEFAULT NULL,
  `Fecha_Baja` date DEFAULT NULL,
  `Producto` int DEFAULT NULL,
  PRIMARY KEY (`id_proveed`),
  KEY `fk_producto` (`Producto`),
  CONSTRAINT `fk_producto` FOREIGN KEY (`Producto`) REFERENCES `insumos` (`id_insumos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'John Hancock Pfd Income Fund II','2020-05-19','2019-02-21',NULL),(2,'Public Storage','2021-04-23','2021-12-30',NULL),(3,'Profire Energy, Inc.','2020-12-18','2021-04-21',NULL),(4,'American Capital Senior Floating, Ltd.','2019-01-06','2019-08-08',NULL),(5,'PPG Industries, Inc.','2020-11-12','2019-12-17',NULL),(6,'Open Text Corporation','2020-09-05','2020-12-01',NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `Cod_Servicio` int NOT NULL,
  `Nombre_Servicio` varchar(80) DEFAULT NULL,
  `Costo_Variable` decimal(6,2) DEFAULT NULL,
  `Costo_Fijo` decimal(6,2) DEFAULT NULL,
  `Honorarios` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`Cod_Servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Tolterodine Tartrate',4657.72,7555.86,2732.06),(2,'Old Spice Sweat Defense',4857.27,5911.27,5319.04),(3,'Prevnar',1239.79,3751.33,3978.34),(4,'Nutropin AQ NuSpin 5',197.59,6592.72,8367.14),(5,'Perphenazine',7706.69,5456.38,686.27),(6,'Justice Mixed berry Scent ANTI BAC HAND SANITIZER',2439.60,1432.45,6778.54),(7,'Sodium Sulfacetamide 10 Sulfur 5 Cleanser',6298.38,5509.61,9426.51),(8,'High Potency Heal Grief',8421.95,4152.68,8006.95),(9,'Aquafresh',6064.35,4515.57,4175.15),(10,'MEDICATED-PADS Hemorrhoidal Pads with Witch Hazel',9894.11,9808.68,3529.23),(11,'Rheumatism Diarrhea',478.46,6004.02,7101.71),(12,'Duraclon',8445.59,9236.29,2131.47),(13,'Stool Softener plus Laxative',8424.54,9038.60,9847.68),(14,'Folic Acid',8071.22,7738.62,2329.78),(15,'Aveeno Active Naturals Hydrosport Sunblock',735.77,4565.22,6939.21),(16,'OxyContin',3088.49,6219.99,4629.53),(17,'Orajel Instant Relief for Teething Pain',402.90,1421.86,3602.28),(18,'Non-Prescription Strength Acid Reducer',1456.27,2055.21,895.82),(19,'Mi-Acid Gas Relief',6912.61,6348.62,2500.20),(20,'BIOFREEZE',1472.85,5024.22,6041.92),(21,'Lyrica',5846.80,8470.70,9472.36),(22,'Exchange Select Burn Relief',9371.31,690.05,5422.06),(23,'Nateglinide',1994.41,6380.24,2805.17),(24,'INVEGA',5348.81,6349.87,4506.05),(25,'valacyclovir hydrochloride',377.26,3270.98,271.48),(26,'Body',5539.21,5797.34,9673.96),(27,'AC Out Spot stOp Serum',3429.33,1357.83,3650.08),(28,'Esmolol Hydrochloride',9354.07,7307.51,2662.14),(29,'Bluefish',6187.91,2687.73,811.42),(30,'Fever Reliever',4731.27,694.80,9638.80),(31,'Neutrogena MoistureShine SPF20',2901.94,9366.63,8600.86),(32,'Alendronate Sodium',5560.22,5116.16,1617.14),(33,'Betamethasone Dipropionate',9562.45,2609.14,4259.24),(34,'Pure Cornstarch Baby',2149.00,2530.87,2359.24),(35,'Meloxicam',5349.87,2796.98,2854.04),(36,'Rexall Sterile Artificial Tears Eye Drops',8283.17,6835.78,7598.28),(37,'Prevantics swabstick',2381.99,4047.99,3069.06),(38,'Natural Balance Tears',7731.51,3300.68,2915.31),(39,'bareMinerals READY Touch Up Veil Broad Spectrum SPF 15',6577.89,5802.69,6122.50),(40,'Levetiracetam',6942.07,3884.14,1875.27),(41,'Enteric Coated Aspirin',9111.28,637.84,7273.99),(42,'leader acid reducer',7131.07,6233.71,9728.81),(43,'Standardized Grass Pollen, Ryegrass',5150.02,6046.29,8040.92),(44,'Smart Sense Acid Reducer',8135.98,4032.16,7691.99),(45,'Dyspepsia',4412.22,5507.96,1438.33),(46,'Banana Boat Ultra Defense',2148.34,5407.89,8198.88),(47,'Lunesta',494.21,4069.19,7464.55),(48,'Clotrimazole Antifungal',6709.37,8721.71,2123.82),(49,'Healthy Accents Mucus Relief',4663.28,541.11,6552.67),(50,'PEANUT FOOD',1753.36,7116.16,7049.63),(51,'Cichorium Oxalis',240.18,8028.17,3508.11),(52,'careone pain relief pm',1896.02,9025.16,7172.31),(53,'Diazepam',2662.69,7204.69,7443.98),(54,'Daily Moisturizing',9108.91,538.63,8708.21),(55,'Benicar Hct',7644.80,6348.06,450.82),(56,'Atorvastatin Calcium',2720.28,6231.19,9870.14),(57,'Hydroxychloroquine sulfate',5349.02,6942.25,2646.05),(58,'Lovastatin',9957.13,9004.35,2155.94),(59,'Enalapril Maleate',5898.73,3416.47,4763.92),(60,'Nitrogen',1528.04,580.40,8712.45),(61,'Aspirin Free Cold Head Congestion Day Time',9496.98,7835.35,1386.33),(62,'Canary Grass Pollen',1950.96,9118.01,6448.07),(63,'Good Sense Pain and Fever',5898.75,8997.98,2017.24),(64,'Alprazolam',5346.41,8471.38,4099.36),(65,'Gerbil Epithelium',4713.35,6153.57,2128.09),(66,'Klor-Con',2157.59,4755.03,4672.69),(67,'Flanax Pain Reliever',3037.21,5604.32,8020.71),(68,'Narasoo Healing',7345.29,8311.19,6804.00),(69,'GUNA-FGF',9996.76,7248.05,357.00),(70,'Senna Laxative',8383.23,1408.84,5350.06),(71,'Clorazepate dipotassium',4879.96,8833.18,837.58),(72,'Molds, Rusts and Smuts, Mucor racemosus',2667.44,4299.85,6843.64),(73,'dextroamphetamine sulfate',5395.40,2894.51,5451.92),(74,'Disney PIXAR TOY STORY Antibacterial Hand Wipes',6350.91,7950.83,3459.60),(75,'Neurontin',9924.89,379.33,3568.30),(76,'Aspirin',9058.82,2522.70,8152.59),(77,'Golden Deep Foundation SPF 15',5695.74,3217.10,6400.36),(78,'Fluoxetine Hydrochloride',4884.26,4460.96,8586.25),(79,'Harris Teeter',2114.10,9651.25,9833.77),(80,'Broncotron',2757.09,449.14,5924.45),(81,'REVERDIR PTD Black Diamond Mask',9046.55,9894.92,836.15),(82,'Guinea Pig Epithelia',6836.74,6773.26,157.99),(83,'Estradiol',1808.48,3184.65,9984.75),(84,'Atenolol',7209.18,3777.51,9377.03),(85,'Desoximetasone',3506.49,6037.83,4453.63),(86,'Mirtazapine',8739.27,530.97,6047.84),(87,'Stay Awake',8531.96,5130.23,1958.02),(88,'Levisticum comp. Special Order',3765.53,3642.70,7016.12),(89,'Womens Gentle Laxative',8497.09,500.77,104.89),(90,'GAMMAGARD',2984.84,3491.07,288.20),(91,'Meijer Oil Free SPF 30',6880.88,3361.06,4915.66),(92,'Sweet Vernal Grass, Standardized',5699.47,8956.54,4151.71),(93,'Buxom Show Some Skin Weightless Foundation Broad Spectrum SPF 30',9659.49,6883.47,757.31),(94,'Aveeno Positively Radiant CC',7130.10,3541.86,708.40),(95,'SUN Tinted Solar Defense Organic SPF 30',9904.05,6141.86,9220.57),(96,'Morphine Sulfate',3889.05,3995.36,2882.90),(97,'Clindamycin Hydrochloride',4340.35,8679.91,6488.30),(98,'Dicyclomine Hydrochloride',6111.81,8877.41,1206.94),(99,'Cedar Elm',5974.59,4869.11,880.00),(100,'Standardized Redtop Grass Pollen',1481.52,3404.79,6390.66);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `id_sucursal` int NOT NULL,
  `Sucursal` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'SMT_001'),(2,'YB_001'),(3,'BRS_001');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_log_ooss`
--

DROP TABLE IF EXISTS `tabla_log_ooss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_log_ooss` (
  `Id_obra_social_eliminada` int NOT NULL,
  `OS_Eliminada` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_obra_social_eliminada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_log_ooss`
--

LOCK TABLES `tabla_log_ooss` WRITE;
/*!40000 ALTER TABLE `tabla_log_ooss` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_log_ooss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_log_pacientes_por_profesional`
--

DROP TABLE IF EXISTS `tabla_log_pacientes_por_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_log_pacientes_por_profesional` (
  `ID_paciente` int NOT NULL,
  `Fecha_de_ig` date DEFAULT NULL,
  `Email_px` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_log_pacientes_por_profesional`
--

LOCK TABLES `tabla_log_pacientes_por_profesional` WRITE;
/*!40000 ALTER TABLE `tabla_log_pacientes_por_profesional` DISABLE KEYS */;
INSERT INTO `tabla_log_pacientes_por_profesional` VALUES (101,'2021-11-27','michael.jordan@tpsc.com');
/*!40000 ALTER TABLE `tabla_log_pacientes_por_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_log_profesionales`
--

DROP TABLE IF EXISTS `tabla_log_profesionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_log_profesionales` (
  `Legajo` int NOT NULL,
  `Tel_contacto` varchar(50) DEFAULT NULL,
  `email_pf` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Legajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_log_profesionales`
--

LOCK TABLES `tabla_log_profesionales` WRITE;
/*!40000 ALTER TABLE `tabla_log_profesionales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_log_profesionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'centro_odontologico'
--

--
-- Dumping routines for database 'centro_odontologico'
--
/*!50003 DROP FUNCTION IF EXISTS `cantidad_profesionales_por_cada_especialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad_profesionales_por_cada_especialidad`(id_especialidad INT) RETURNS int
    READS SQL DATA
BEGIN
DECLARE especialidad_function_2 int;
SET especialidad_function_2= (SELECT COUNT(especialidad) FROM profesionales p
							WHERE p.especialidad=id_especialidad
							GROUP BY p.especialidad);
RETURN especialidad_function_2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `costo_total_por_servicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `costo_total_por_servicio`(Cod_Servicio INT) RETURNS decimal(8,2)
    READS SQL DATA
BEGIN
DECLARE Suma_de_insumos DECIMAL (8,2);

SET Suma_de_insumos = (SELECT Sum(Costo) FROM insumos i
					WHERE i.Cod_Servicio = Cod_Servicio);
RETURN Suma_de_insumos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `profesionales_por_especialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `profesionales_por_especialidad`(Id_especialidad INT) RETURNS int
    READS SQL DATA
BEGIN
DECLARE especialidad_function INT;
SET especialidad_function = (SELECT especialidad, COUNT(legajo) FROM profesionales p
					WHERE p.especialidad = especialidad_function
                    GROUP BY p.especialidad);
RETURN especialidad_function;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listar_pacientes_segun_sexo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar_pacientes_segun_sexo`(IN Letra_sexo_px CHAR(1))
BEGIN
-- Listar informacion de los pacientes segun el sexo ingresado como parametro, ordenados por fecha de nacimiento y OOSS.
SELECT * FROM pacientes
WHERE Sexo_px = Letra_sexo_px
ORDER BY fecha_nac_px, ObraSocial ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_nombres_odontologos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nombres_odontologos`()
BEGIN
-- listar nombres de los odontologos que trabajan en el centro
SELECT nombre_pf, apellido_pf 
FROM profesionales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_pacientes_masculinos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pacientes_masculinos`()
BEGIN
SELECT * FROM pacientes
WHERE Sexo_px = 'M';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `medicos_ninos`
--

/*!50001 DROP VIEW IF EXISTS `medicos_ninos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `medicos_ninos` AS select `profesionales`.`Legajo` AS `Legajo`,`profesionales`.`Nombre_PF` AS `Nombre_PF`,`profesionales`.`Apellido_PF` AS `Apellido_PF` from `profesionales` where (`profesionales`.`Especialidad` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `obras_sociales_por_paciente`
--

/*!50001 DROP VIEW IF EXISTS `obras_sociales_por_paciente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `obras_sociales_por_paciente` AS select `p`.`Nombre_Px` AS `nombre_px`,`p`.`Apellido_Px` AS `apellido_px`,`o`.`Obra_Social` AS `obra_social`,`o`.`id_OOSS` AS `id_ooss` from (`pacientes` `p` left join `ooss` `o` on((`p`.`ObraSocial` = `o`.`id_OOSS`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ooss_mas_usada`
--

/*!50001 DROP VIEW IF EXISTS `ooss_mas_usada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ooss_mas_usada` AS select `obras_sociales_por_paciente`.`obra_social` AS `obra_social`,count(`obras_sociales_por_paciente`.`id_ooss`) AS `Cuenta` from `obras_sociales_por_paciente` group by `obras_sociales_por_paciente`.`id_ooss` order by `Cuenta` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ooss_menos_usada`
--

/*!50001 DROP VIEW IF EXISTS `ooss_menos_usada`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ooss_menos_usada` AS select `obras_sociales_por_paciente`.`obra_social` AS `obra_social`,count(`obras_sociales_por_paciente`.`id_ooss`) AS `Cuenta` from `obras_sociales_por_paciente` group by `obras_sociales_por_paciente`.`id_ooss` order by `Cuenta` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pacientes_capital`
--

/*!50001 DROP VIEW IF EXISTS `pacientes_capital`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacientes_capital` AS select `pacientes`.`id_paciente` AS `id_paciente`,`pacientes`.`Nombre_Px` AS `Nombre_Px`,`pacientes`.`Apellido_Px` AS `Apellido_Px`,`pacientes`.`Domicilio_Px` AS `Domicilio_Px`,`pacientes`.`ObraSocial` AS `ObraSocial` from `pacientes` where (`pacientes`.`Localidad` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pacientes_fuera_de_capital`
--

/*!50001 DROP VIEW IF EXISTS `pacientes_fuera_de_capital`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacientes_fuera_de_capital` AS select `pacientes`.`id_paciente` AS `id_paciente`,`pacientes`.`Nombre_Px` AS `Nombre_Px`,`pacientes`.`Apellido_Px` AS `Apellido_Px`,`pacientes`.`Domicilio_Px` AS `Domicilio_Px`,`pacientes`.`ObraSocial` AS `ObraSocial` from `pacientes` where (`pacientes`.`Localidad` <> 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pacientes_nacidos_despues_2000`
--

/*!50001 DROP VIEW IF EXISTS `pacientes_nacidos_despues_2000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacientes_nacidos_despues_2000` AS select `pacientes`.`id_paciente` AS `id_paciente`,`pacientes`.`Nombre_Px` AS `Nombre_Px`,`pacientes`.`Apellido_Px` AS `Apellido_Px`,`pacientes`.`Sexo_Px` AS `Sexo_Px`,`pacientes`.`Fecha_Nac_Px` AS `Fecha_Nac_Px`,`pacientes`.`Domicilio_Px` AS `Domicilio_Px`,`pacientes`.`Tel_Contacto` AS `Tel_Contacto`,`pacientes`.`Email_Px` AS `Email_Px`,`pacientes`.`Fecha_de_Ig` AS `Fecha_de_Ig`,`pacientes`.`Fecha_de_Eg` AS `Fecha_de_Eg`,`pacientes`.`Pagos_Px` AS `Pagos_Px`,`pacientes`.`Localidad` AS `Localidad`,`pacientes`.`ObraSocial` AS `ObraSocial` from `pacientes` where (`pacientes`.`Fecha_Nac_Px` > '2000-01-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13 18:44:51