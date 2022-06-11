USE final_backup;


-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: final_backup
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
  `Especialidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
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
  `paciente` int DEFAULT NULL,
  `Obra_soc` int DEFAULT NULL,
  `Legajo_pf` int DEFAULT NULL,
  `Sucursal` int DEFAULT NULL,
  `servicio_factura` int DEFAULT NULL,
  PRIMARY KEY (`id_facturas`),
  KEY `fk_servicio_factura` (`servicio_factura`),
  KEY `fk_sucursal_factura` (`Sucursal`),
  KEY `fk_legajo_pf` (`Legajo_pf`),
  KEY `OOSS_px` (`Obra_soc`),
  KEY `fk_paciente` (`paciente`),
  CONSTRAINT `fk_legajo_pf` FOREIGN KEY (`Legajo_pf`) REFERENCES `profesionales` (`Legajo`),
  CONSTRAINT `fk_paciente` FOREIGN KEY (`paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `fk_servicio_factura` FOREIGN KEY (`servicio_factura`) REFERENCES `servicios` (`Cod_Servicio`),
  CONSTRAINT `fk_sucursal_factura` FOREIGN KEY (`Sucursal`) REFERENCES `sucursales` (`id_sucursal`),
  CONSTRAINT `OOSS_px` FOREIGN KEY (`Obra_soc`) REFERENCES `ooss` (`id_OOSS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
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
  `Proveedor` int DEFAULT NULL,
  `Cod_servicio` int DEFAULT NULL,
  PRIMARY KEY (`id_insumos`),
  KEY `fk_servicios` (`Cod_servicio`),
  KEY `fk_Proveedores` (`Proveedor`),
  CONSTRAINT `fk_Proveedores` FOREIGN KEY (`Proveedor`) REFERENCES `proveedores` (`id_proveed`),
  CONSTRAINT `fk_servicios` FOREIGN KEY (`Cod_servicio`) REFERENCES `servicios` (`Cod_Servicio`),
  CONSTRAINT `proveedor_por_producto` FOREIGN KEY (`Proveedor`) REFERENCES `proveedores` (`id_proveed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos`
--

LOCK TABLES `insumos` WRITE;
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40000 ALTER TABLE `ooss` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `fk_OOSS` (`ObraSocial`),
  KEY `fk_localidad` (`Localidad`),
  CONSTRAINT `fk_localidad` FOREIGN KEY (`Localidad`) REFERENCES `localidades` (`id_localidad`),
  CONSTRAINT `fk_OOSS` FOREIGN KEY (`ObraSocial`) REFERENCES `ooss` (`id_OOSS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40000 ALTER TABLE `profesionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveed` int NOT NULL,
  `Razon_Social` varchar(50) DEFAULT NULL,
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
  `Nombre_Servicio` varchar(250) DEFAULT NULL,
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
  `usuario` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
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
-- Dumping events for database 'final_backup'
--

--
-- Dumping routines for database 'final_backup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-11 18:24:19
