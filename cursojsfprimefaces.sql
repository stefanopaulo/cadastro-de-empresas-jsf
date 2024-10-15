mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 9.0.1, for Linux (x86_64)
--
-- Host: localhost    Database: cursojsfprimefaces
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(18) NOT NULL,
  `data_fundacao` date DEFAULT NULL,
  `nome_fantasia` varchar(80) NOT NULL,
  `razao_social` varchar(80) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `ramo_atividade_id` bigint NOT NULL,
  `faturamento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh5weqxej2lrvc8m13jrfcuujf` (`ramo_atividade_id`),
  CONSTRAINT `FKh5weqxej2lrvc8m13jrfcuujf` FOREIGN KEY (`ramo_atividade_id`) REFERENCES `ramo_atividade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'70.311.193/0001-87','2009-03-02','Mercado do João','João Mercado e Distribuidor de Alimentos Ltda','LTDA',1,NULL),(2,'52.822.994/0001-25','1997-12-10','Fale Mais','Fale Mais Telecom S.A.','SA',2,NULL),(3,'41.952.519/0001-57','2014-10-15','Maria de Souza da Silva','Maria de Souza da Silva','MEI',3,NULL),(4,'16.134.777/0001-89','2009-03-02','Gomes Inovação','José Fernando Gomes EIRELI ME','EIRELI',4,NULL);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ramo_atividade`
--

DROP TABLE IF EXISTS `ramo_atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ramo_atividade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ramo_atividade`
--

LOCK TABLES `ramo_atividade` WRITE;
/*!40000 ALTER TABLE `ramo_atividade` DISABLE KEYS */;
INSERT INTO `ramo_atividade` VALUES (1,'Distribuição de alimentos'),(2,'Telecomunicações'),(3,'Vestuário'),(4,'Lavanderia'),(5,'Gráfica'),(6,'Mecânica'),(7,'Turismo'),(8,'Saúde'),(9,'Educação'),(10,'Lazer');
/*!40000 ALTER TABLE `ramo_atividade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 20:57:02
