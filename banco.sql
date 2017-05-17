CREATE DATABASE  IF NOT EXISTS `desktravel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `desktravel`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: desktravel
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `estado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estado_id` (`estado_id`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'fortaleza',1),(2,'caucaia',1),(3,'teresina',2),(5,'itapipoca',1);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custo`
--

DROP TABLE IF EXISTS `custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combustivel` double DEFAULT NULL,
  `alimentacao` double DEFAULT NULL,
  `hospedagem` double DEFAULT NULL,
  `outrosGastos` double DEFAULT NULL,
  `descricaoOutroCusto` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custo`
--

LOCK TABLES `custo` WRITE;
/*!40000 ALTER TABLE `custo` DISABLE KEYS */;
INSERT INTO `custo` VALUES (1,2,NULL,NULL,NULL,NULL),(2,1,2,3,NULL,NULL),(3,322,32,121,NULL,NULL),(4,2121,32,3232,NULL,NULL),(5,20,20,20,NULL,NULL),(6,32,12,3232,NULL,NULL),(7,12,32,32,NULL,NULL),(8,32,12,43,NULL,NULL),(9,777,7.7,79,NULL,NULL),(10,32,12,32,NULL,NULL),(11,1,3,4,NULL,NULL),(12,8,8,8,NULL,NULL),(13,6,6,6,NULL,NULL),(14,7,8,9,NULL,NULL),(15,32111212121,32,3232,NULL,NULL),(16,32,32,3232,NULL,NULL),(17,32,32,3232,NULL,NULL),(18,32,32,6,NULL,NULL),(19,32,31,31,NULL,NULL),(20,31,31,31,NULL,NULL),(21,31,31,31,NULL,NULL),(22,31,31,31,NULL,NULL),(23,31,31,31,NULL,NULL),(24,31,313,31,NULL,NULL),(25,31,313,31,NULL,NULL),(26,31,31,31,NULL,NULL),(27,31,31,31,NULL,NULL),(28,31,31,31,NULL,NULL),(29,31,31,31,NULL,NULL),(30,31,31,31,NULL,NULL),(31,12,12,12,NULL,NULL),(32,12,12,12,NULL,NULL),(33,12,12,12,NULL,NULL),(34,11.11,20,35,NULL,'loks'),(35,200,30,25,NULL,'ewewewe'),(36,31.31,31.11,1.11,NULL,'fff'),(37,3.33,33.33,11.11,NULL,'xxxx'),(38,123.13,312.31,3.12,NULL,'fdg fgf'),(39,323.21,11.11,11.11,NULL,'fdfd'),(40,3.33,1.11,2.22,NULL,'ewew'),(41,1.11,1.11,1.11,NULL,''),(42,333.33,200,150,NULL,''),(43,333.33,200,150,NULL,''),(44,33.33,33.33,22.22,NULL,''),(45,33.33,22.22,11.11,NULL,''),(46,23.33,33.33,3.33,NULL,''),(47,33.33,33.33,22.22,NULL,''),(48,32.33,33.33,3.33,NULL,''),(49,33.33,3.33,3.33,NULL,''),(50,212.12,22.22,11.11,NULL,''),(51,322.21,212.11,231.23,NULL,''),(52,313.21,122.22,212.12,NULL,''),(53,333.33,33.33,33.33,NULL,'dd'),(54,333.33,333.33,212.12,NULL,''),(55,333.33,240,39.45,NULL,'lups'),(56,333.33,33.33,333.33,NULL,''),(57,33.33,11.11,22.22,NULL,'wew'),(58,33.33,3.33,33.33,NULL,''),(59,33.33,3.33,22.22,NULL,''),(60,33.33,33.33,3.33,NULL,''),(61,33.33,0.33,33.33,NULL,''),(62,33.33,3.33,3.33,NULL,''),(63,12.32,3.33,313.13,NULL,''),(64,3.33,3.33,3.33,NULL,''),(65,3.33,1.11,1.11,NULL,''),(66,33.33,3.33,3.33,NULL,''),(67,3.33,33.33,3.33,NULL,'333'),(68,33.33,3.33,3.33,NULL,'dqewq'),(69,3.33,3.33,3.33,NULL,'ffff'),(70,33.33,3.33,33.33,NULL,'fff'),(71,33.33,3.33,3.33,NULL,'fff'),(72,3.33,3.33,3.33,NULL,'ff'),(73,33.33,33.33,3.33,NULL,'f'),(74,3.33,3.33,0.33,NULL,'f'),(75,3.33,3.33,3.33,NULL,'f'),(76,3.33,3.33,3.33,NULL,'ff'),(77,33.33,3.33,0.33,NULL,'33'),(78,3.33,3.33,333.33,NULL,'333'),(79,3.33,3.33,3.33,NULL,'ff'),(80,33.33,3.33,3.33,NULL,'ff'),(81,33.33,33.33,33.33,NULL,'33'),(82,33.33,33.33,3.33,NULL,'ddd'),(83,33.33,3.33,33.33,NULL,'333'),(84,33.33,33.33,3.33,NULL,'ddd'),(85,33.33,3.33,3.33,NULL,'dd'),(86,33.33,3.33,1.11,NULL,'ff'),(87,33.33,1.11,505,NULL,'ventilador'),(88,331.11,24.44,431.41,NULL,'ddd'),(89,3.33,33.33,333.33,NULL,''),(90,412.41,441.41,33.33,NULL,''),(91,3.33,3.33,0.33,NULL,'333'),(92,33.33,33.33,2.22,NULL,'ddd'),(93,33.33,33.33,33.33,NULL,'ddd'),(94,33.33,3.33,33.33,NULL,'ddd'),(95,333.33,333.33,333.33,NULL,'dddd'),(96,333.33,333.33,333.33,NULL,'sabao'),(97,33.33,33.33,3.33,22.22,'dd'),(98,950,950,0,950,'arroz'),(99,200,200,200,200,'feijao'),(100,400,400,400,400,'feijao'),(101,333.33,3.33,33.33,33.33,'dd'),(102,24,352.4,3.5,3.5,'dd'),(103,120,120,120,1.55,'bombom'),(104,320,23,430,98,'bombom'),(105,33.33,13.21,313.13,0,''),(106,33.33,55,10,0,''),(107,3.33,3.33,3.33,3.33,'ddd'),(108,333.33,3.33,3.33,123,'ddd'),(109,11.11,1.11,11.11,22.22,'333'),(110,344.4,200,150,125,'pneus'),(111,344.4,333.33,150,33.33,'pneus');
/*!40000 ALTER TABLE `custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade_id` int(11) NOT NULL,
  `rua` varchar(128) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,1,'6',1),(2,1,'sao',21),(3,1,'sao',12),(4,1,'sao',12),(5,3,'lucas',98),(6,5,'we',33),(7,2,'qw',11),(8,3,'8',8),(9,1,'6',6),(10,2,'onze',12),(11,1,'deucerttto',12121),(12,2,'3232',1),(13,2,'3232',1),(14,2,'3',1),(15,1,'31',31),(16,1,'31',31),(17,1,'31',311),(18,3,'31',31),(19,2,'31',31),(20,1,'31',31),(21,1,'31',31),(22,1,'31',31),(23,1,'31',31),(24,1,'31',31),(25,1,'31',31),(26,1,'31',31),(27,1,'12',12),(28,1,'12',12),(29,1,'12',12),(30,1,'lucas',4),(31,1,'lucas',3),(32,1,'lucas',12),(33,1,'trtrrt',12321),(34,1,'231fdw',1),(35,1,'gfgfgf',11),(36,1,'3erwewew',121),(37,1,'eqrqrq',1),(38,3,'vasconde',12),(39,3,'vasconde',12),(40,3,'lucas',12),(41,3,'lucas',1),(42,3,'31',231),(43,3,'lucas',1),(44,1,'fffffffffffffffff',1),(45,1,'fqwerqq',12),(46,1,'qwqwqwq',1),(47,2,'fqweqewq',1),(48,3,'eoq',24),(49,1,'3333',312121),(50,1,'fqerqrwrq',12),(51,1,'eoqKappa',121),(52,1,'qerqrq',22),(53,1,'tyo',1),(54,1,'qewqewq',13),(55,1,'ewewwe',12),(56,2,'ewewew',1),(57,1,'323232',12121),(58,2,'3232ewew',12),(59,2,'ewewew',11),(60,1,'3232',13),(61,2,'ffff',333),(62,2,'ffff',33),(63,1,'fff',333),(64,1,'fff',3),(65,1,'fff',333),(66,1,'ffff',3333),(67,2,'fff',333),(68,1,'fff',3),(69,1,'333',333),(70,1,'333',33),(71,1,'333',333),(72,1,'333',333),(73,1,'f',333),(74,2,'ffff',333),(75,2,'ff',33),(76,1,'fff',33),(77,2,'ffff',33),(78,1,'fff',3),(79,2,'fff',33),(80,1,'ffff',33),(81,1,'uru',3),(82,2,'ffff',33),(83,2,'maria ',324),(84,1,'gdgada',333),(85,5,'ggggg',3),(86,1,'g',333),(87,1,'3',333),(88,2,'rreqrq@',33),(89,1,'eee',3333),(90,2,'rrr',333),(91,2,'rewqrqfa',333),(92,1,'rerererer',3),(93,1,'rrrrr',3),(94,1,'fogo',3),(95,1,'rqewrqrq',33),(96,2,'rr',333),(97,2,'rweer',333),(98,2,'sao judas',32);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'ceara'),(2,'piaui');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho`
--

DROP TABLE IF EXISTS `trabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho`
--

LOCK TABLES `trabalho` WRITE;
/*!40000 ALTER TABLE `trabalho` DISABLE KEYS */;
INSERT INTO `trabalho` VALUES (1,'limpar','limpar a empresa');
/*!40000 ALTER TABLE `trabalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalhos`
--

DROP TABLE IF EXISTS `trabalhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idT` int(11) NOT NULL,
  `status` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idT` (`idT`),
  CONSTRAINT `trabalhos_ibfk_1` FOREIGN KEY (`idT`) REFERENCES `trabalho` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalhos`
--

LOCK TABLES `trabalhos` WRITE;
/*!40000 ALTER TABLE `trabalhos` DISABLE KEYS */;
INSERT INTO `trabalhos` VALUES (1,1,'aberto'),(2,1,'aberto'),(3,1,'aberto'),(4,1,'aberto'),(5,1,'aberto'),(6,1,'aberto'),(7,1,'aberto'),(8,1,'aberto'),(9,1,'aberto'),(10,1,'aberto'),(11,1,'aberto'),(12,1,'aberto'),(13,1,'aberto'),(14,1,'aberto'),(15,1,'aberto'),(16,1,'aberto'),(17,1,'concluiu'),(18,1,'aberto'),(19,1,'Em progresso'),(20,1,'aberto'),(21,1,'aberto'),(22,1,'aberto'),(23,1,'aberto'),(24,1,'aberto'),(25,1,'aberto'),(26,1,'aberto'),(27,1,'aberto'),(28,1,'aberto'),(29,1,'aberto'),(30,1,'aberto'),(31,1,'aberto'),(32,1,'aberto'),(33,1,'aberto'),(34,1,'negado'),(35,1,'Em progresso'),(36,1,'aberto'),(37,1,'aberto'),(38,1,'falhou'),(39,1,'negado'),(40,1,'Em progresso'),(41,1,'concluiu'),(42,1,'concluiu'),(43,1,'concluiu'),(44,1,'concluiu'),(45,1,'aberto'),(46,1,'aberto'),(47,1,'aberto'),(48,1,'aberto'),(49,1,'aberto'),(50,1,'aberto'),(51,1,'aberto'),(52,1,'aberto'),(53,1,'aberto'),(54,1,'aberto'),(55,1,'aberto'),(56,1,'aberto'),(57,1,'aberto'),(58,1,'falhou'),(59,1,'aberto'),(60,1,'aberto'),(61,1,'aberto'),(62,1,'aberto'),(63,1,'concluiu'),(64,1,'falhou'),(65,1,'concluiu'),(66,1,'aberto'),(67,1,'falhou'),(68,1,'aberto'),(69,1,'aberto'),(70,1,'aberto'),(71,1,'aberto'),(72,1,'concluiu'),(73,1,'aberto'),(74,1,'concluiu'),(75,1,'concluiu'),(76,1,'Em progresso'),(77,1,'concluiu'),(78,1,'negado'),(79,1,'Em progresso');
/*!40000 ALTER TABLE `trabalhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(64) NOT NULL,
  `senha` varchar(64) NOT NULL,
  `tipo` int(11) NOT NULL,
  `cod_funcionario` int(11) DEFAULT NULL,
  `id_superior` int(11) DEFAULT NULL,
  `nome` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo` (`tipo`),
  KEY `id_superior` (`id_superior`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `usuario_tipo` (`id`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_superior`) REFERENCES `usuario` (`id`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_superior`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'joao','e1234',1,1,1,'joao','joao@hotmail.com','(98) 9875-1229'),(2,'tryF','123',2,4,1,'tryF','@tryhotmail.com','(95) 4343-3121'),(4,'gestor','1234',2,22,1,'G4','gestor@hotmail.com','(95) 4443-4444'),(6,'lucasF','123',3,42,2,'Lucas','lusca@hotmail.com','(95) 7985-5403'),(8,'funcionario','123',3,44,4,'carlos','funcionario@hotmail.com','(95) 8985-5403'),(9,'funcionario2','123',3,3,4,'carlos2','funcionario2@hotmail.com','(95) 8985-7983'),(11,'GestorRh','123',2,21,1,'G11','gestorRh@hotmail.com','(95) 2326-4379'),(13,'funn','4321',3,32323121,4,'car','funn@hotmail.com','(95) 6025-5445'),(63,'test47','1234',2,63,1,'testAl','test47@hotmail.com','(95) 5512-5403'),(88,'testG','1234',2,12314,1,'testG','testg@hotmail.com','(95) 5514-5403'),(89,'testF','1234',2,4315,1,'testF','testF@hotmail.com','(95) 2698-5403'),(90,'testt','1234',3,5789,1,'test49','testt@hotmail.com','(95) 3789-5403');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_tipo`
--

DROP TABLE IF EXISTS `usuario_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tipo`
--

LOCK TABLES `usuario_tipo` WRITE;
/*!40000 ALTER TABLE `usuario_tipo` DISABLE KEYS */;
INSERT INTO `usuario_tipo` VALUES (1,'adm'),(2,'gestor'),(3,'funcionario');
/*!40000 ALTER TABLE `usuario_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem`
--

DROP TABLE IF EXISTS `viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `custo_id` int(11) NOT NULL,
  `endereco_id` int(11) NOT NULL,
  `aprovacao` tinyint(1) NOT NULL,
  `pendente` tinyint(1) DEFAULT NULL,
  `dataSaida` date DEFAULT NULL,
  `dataVolta` date DEFAULT NULL,
  `custoR_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `custo_id` (`custo_id`),
  KEY `endereco_id` (`endereco_id`),
  KEY `custoR_id` (`custoR_id`),
  CONSTRAINT `viagem_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `viagem_ibfk_2` FOREIGN KEY (`custo_id`) REFERENCES `custo` (`id`),
  CONSTRAINT `viagem_ibfk_3` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`),
  CONSTRAINT `viagem_ibfk_4` FOREIGN KEY (`custoR_id`) REFERENCES `custo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem`
--

LOCK TABLES `viagem` WRITE;
/*!40000 ALTER TABLE `viagem` DISABLE KEYS */;
INSERT INTO `viagem` VALUES (20,1,1,41,37,0,1,'2017-05-06','2017-04-30',NULL),(21,13,12,42,38,0,0,'2017-07-02','2017-06-30',NULL),(42,8,3,63,59,1,1,'2017-05-31','2017-06-03',NULL),(43,13,33,64,60,1,1,'2017-05-31','2017-07-03',NULL),(44,13,3,65,61,1,1,'2017-04-30','2017-05-03',NULL),(45,13,3,66,62,1,1,'2017-05-18','2017-05-21',NULL),(46,13,33,67,63,1,1,'2017-05-02','2017-06-04',NULL),(60,13,33,81,77,1,1,'2017-05-31','2017-07-03',NULL),(65,13,3,86,82,1,1,'2017-05-31','2017-06-03',NULL),(66,13,12,87,83,1,1,'2017-05-18','2017-05-30',NULL),(67,9,3,88,84,1,1,'2017-05-31','2017-06-03',NULL),(69,9,3,90,86,1,1,'2017-05-05','2017-05-08',NULL),(74,13,3,95,91,1,1,'2017-05-20','2017-05-23',NULL),(76,13,3,97,93,1,1,'2017-05-19','2017-05-22',102),(77,13,3,103,94,1,1,'2017-05-05','2017-05-08',104),(78,8,3,105,95,1,0,'2017-05-12','2017-05-15',106),(79,6,13,107,96,1,1,'2017-06-01','2017-06-14',108),(80,13,3,109,97,0,0,'2017-05-16','2017-05-19',NULL),(81,13,3,110,98,1,0,'2017-05-25','2017-05-28',111);
/*!40000 ALTER TABLE `viagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem_trabalhos`
--

DROP TABLE IF EXISTS `viagem_trabalhos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viagem_trabalhos` (
  `id_viagem` int(11) NOT NULL,
  `id_trabalhos` int(11) NOT NULL,
  PRIMARY KEY (`id_viagem`,`id_trabalhos`),
  KEY `id_trabalhos` (`id_trabalhos`),
  CONSTRAINT `viagem_trabalhos_ibfk_1` FOREIGN KEY (`id_viagem`) REFERENCES `viagem` (`id`),
  CONSTRAINT `viagem_trabalhos_ibfk_2` FOREIGN KEY (`id_trabalhos`) REFERENCES `trabalhos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem_trabalhos`
--

LOCK TABLES `viagem_trabalhos` WRITE;
/*!40000 ALTER TABLE `viagem_trabalhos` DISABLE KEYS */;
INSERT INTO `viagem_trabalhos` VALUES (20,18),(21,19),(42,40),(43,41),(44,42),(45,43),(46,44),(60,58),(65,63),(66,64),(67,65),(69,67),(74,72),(76,74),(77,75),(78,76),(79,77),(80,78),(81,79);
/*!40000 ALTER TABLE `viagem_trabalhos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'desktravel'
--

--
-- Dumping routines for database 'desktravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-17 16:53:21
