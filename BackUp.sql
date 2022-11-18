-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: evaluacion
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `idCiudad` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreCiudad` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'Aracau'),(2,'Armeria'),(3,'Barranquilla'),(4,'Bogotá'),(5,'Bucaramanga'),(6,'Cali'),(7,'Cartagena'),(8,'Cúcuta'),(9,'Florencia'),(10,'Ibagué'),(11,'Leticia'),(12,'Manizales'),(13,'Medellín'),(14,'Mitú'),(15,'Mocoa'),(16,'Montería'),(17,'Neiva'),(18,'Pasto'),(19,'Pereira'),(20,'Popayán'),(21,'Puerto Carreño'),(22,'Puerto Inírada'),(23,'Quibdó'),(24,'Riohacha'),(25,'San Andrés'),(26,'San José del Guaviare'),(27,'Santa Marta'),(28,'Sincelejo'),(29,'Tunjo'),(30,'Valledupar'),(31,'Villavicencio'),(32,'Yopal');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `numeroDocumento` bigint(20) NOT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `telefono` varchar(60) DEFAULT NULL,
  `idCiudad` bigint(20) DEFAULT NULL,
  `idOcupacion` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`numeroDocumento`),
  KEY `FK3sh7f4c5bemx2lte1yviaht2y` (`idCiudad`),
  KEY `FKqrodqgq3uplx58ocgqhvgwilb` (`idOcupacion`),
  CONSTRAINT `FK3sh7f4c5bemx2lte1yviaht2y` FOREIGN KEY (`idCiudad`) REFERENCES `ciudades` (`idCiudad`),
  CONSTRAINT `FKqrodqgq3uplx58ocgqhvgwilb` FOREIGN KEY (`idOcupacion`) REFERENCES `ocupaciones` (`idOcupacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (0,'hp','sergio@gmail.com',8,'2014-10-17','edgar','2828282222',2,2),(1000954332,'Chisica','sergio@gmail.com',21,'2001-02-07','Sofia','3029291222',2,2),(1000978655,' barragan basto','sergio@gmail.com',24,'1998-06-17','Andrews','3029243434',1,2),(1029282872,'Mi moreno pechocho 2','sergio@gmail.com',24,'1998-06-22','Andres','3029243434',1,2),(1092992929,'Mi moreno pechocho','sergio@gmail.com',26,'1996-07-17','Andres','3029291122',1,2),(1823837373,'Chisica','sergio@gmail.com',21,'2001-06-06','Daniel','3939333888',1,2),(5182367644,'Mi moreno pechocho','sergio@gmail.com',7,'2015-06-17','Daniel','3018282822',2,2);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupaciones`
--

DROP TABLE IF EXISTS `ocupaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocupaciones` (
  `idOcupacion` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreOcupacion` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idOcupacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupaciones`
--

LOCK TABLES `ocupaciones` WRITE;
/*!40000 ALTER TABLE `ocupaciones` DISABLE KEYS */;
INSERT INTO `ocupaciones` VALUES (1,'Empleado'),(2,'Independiente'),(3,'Pensionado');
/*!40000 ALTER TABLE `ocupaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-17 20:50:34
