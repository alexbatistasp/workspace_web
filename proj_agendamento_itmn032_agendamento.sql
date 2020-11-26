-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: proj_agendamento
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `itmn032_agendamento`
--

DROP TABLE IF EXISTS `itmn032_agendamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itmn032_agendamento` (
  `num_seq` int NOT NULL AUTO_INCREMENT,
  `nome_cli` varchar(100) DEFAULT NULL,
  `email_cli` varchar(100) DEFAULT NULL,
  `celular_cli` varchar(20) DEFAULT NULL,
  `data_agendamento` date DEFAULT NULL,
  `hora_agendamento` time DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `id_agencia` int NOT NULL,
  PRIMARY KEY (`num_seq`),
  KEY `fk_agencia` (`id_agencia`),
  CONSTRAINT `fk_agencia` FOREIGN KEY (`id_agencia`) REFERENCES `itmn032_agencia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itmn032_agendamento`
--

LOCK TABLES `itmn032_agendamento` WRITE;
/*!40000 ALTER TABLE `itmn032_agendamento` DISABLE KEYS */;
INSERT INTO `itmn032_agendamento` VALUES (2,'Isidro','isidro@isidro.com','987654321','2020-11-30','10:00:00','Isidro é velho e tem mau humor. Sirvam cafe.',1),(3,'Alex Sandro','alex@isidro.com','987654322','2020-11-30','10:30:00','Isidro é velho e tem mau humor. Sirvam cafe.',1),(4,'Carol ','carol@alex.com','1166660000','2020-11-27','11:00:00','testee',4);
/*!40000 ALTER TABLE `itmn032_agendamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 15:39:06
