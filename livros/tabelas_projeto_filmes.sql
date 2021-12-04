-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dados212n
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `elenco`
--

DROP TABLE IF EXISTS `elenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elenco` (
  `ele_codigo` int NOT NULL AUTO_INCREMENT,
  `ele_nome` varchar(50) DEFAULT NULL,
  `ele_sexo` char(1) DEFAULT NULL,
  `ele_nacionalidade` varchar(50) DEFAULT NULL,
  `ele_dtNascimento` varchar(50) DEFAULT NULL,
  `fil_codigo` int DEFAULT NULL,
  PRIMARY KEY (`ele_codigo`),
  KEY `fk_filme` (`fil_codigo`),
  CONSTRAINT `fk_filme` FOREIGN KEY (`fil_codigo`) REFERENCES `filme` (`fil_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elenco`
--

LOCK TABLES `elenco` WRITE;
/*!40000 ALTER TABLE `elenco` DISABLE KEYS */;
INSERT INTO `elenco` VALUES (1,'Christian Bale','M','Reino Unido','30-01-1974',1),(2,'Heath Ledger','M','Estados Unidos','04-04-1979',2),(3,'Tom Hardy','M','Reino Unido','15-09-1977',3),(4,'Shia LaBeouf','M','Estados Unidos','11-06-1986',4),(5,'Megan Fox','F','Estados Unidos','16-05-1986',5),(6,'Rose Huntington-Whiteley','F','Reino Unido','18-04-1987',6),(7,'Mark Wahlberg','M','Estados Unidos','05-06-1971',7),(8,'Isabela Merced ','F','Estados Unidos','10-06-2001',8);
/*!40000 ALTER TABLE `elenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `fil_codigo` int NOT NULL AUTO_INCREMENT,
  `fil_nomeFilme` varchar(50) DEFAULT NULL,
  `fil_produtora` varchar(50) DEFAULT NULL,
  `fil_diretor` varchar(50) DEFAULT NULL,
  `fil_anoFilmagem` int DEFAULT NULL,
  `fil_pais` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fil_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'Batman Begins','Warner Bros','Christopher Nolan',2005,'Estados Unidos'),(2,'Batman - Cavaleiro das Trevas','Warner Bros','Christopher Nolan',2008,'Estados Unidos'),(3,'Batman - Cavaleiro das Trevas Ressurge','Warner Bros','Christopher Nolan',2012,'Estados Unidos'),(4,'Transformers','Paramount Pictures','Michael Bay',2007,'Estados Unidos'),(5,'Tranformers - A Vingança dos Derrotados','Paramount Pictures','Michael Bay',2009,'Estados Unidos'),(6,'Transformers - O Lado Oculto da Lua','Paramount Pictures','Michael Bay',2011,'Estados Unidos'),(7,'Transformers - A Era da Estinção','Paramount Pictures','Michael Bay',2014,'Estados Unidos'),(8,'Transformers - O Último Cavaleiro','Paramount Pictures','Michael Bay',2017,'Estados Unidos');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01  9:58:44
