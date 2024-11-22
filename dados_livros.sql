-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: livros
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `aut_codigo` int NOT NULL AUTO_INCREMENT,
  `aut_ativoinativo` char(1) DEFAULT NULL,
  `aut_nome` varchar(40) DEFAULT NULL,
  `aut_apelido` varchar(10) DEFAULT NULL,
  `aut_sexo` char(1) DEFAULT NULL,
  `aut_telefone` varchar(15) DEFAULT NULL,
  `aut_email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`aut_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'I','Fernando Chinaglia','Fernando','M','11-5205-4907',''),(2,'A','Aguinaldo Aragon Fernandes','Aguinaldo','M','21-2568-1507',''),(3,'A','Vladimir Ferraz de Abreu','Vladimir','M','11-2148-1437',''),(4,'A','Willian Stallings','Stallings','M','','email@gmail.com'),(5,'A','Costinha','Costinha','M','1191551088','Costinha@gmail.com'),(6,'A','Magali','Ma','F','16','Ma@gmail.com');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoras`
--

DROP TABLE IF EXISTS `editoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoras` (
  `edt_codigo` int NOT NULL AUTO_INCREMENT,
  `edt_ativoinativo` char(1) DEFAULT NULL,
  `edt_nome` varchar(60) DEFAULT NULL,
  `edt_cidade` varchar(30) DEFAULT NULL,
  `edt_cep` char(9) DEFAULT NULL,
  `edt_estado` char(2) DEFAULT NULL,
  `edt_email` varchar(40) DEFAULT NULL,
  `edt_telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`edt_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES (1,'A','BRASPORT Livros e Multimidia Ltda','Rio de Janeiro','20270-280','RJ','editorial@brasport.com.br','21-2568-1415'),(2,'A','Pearson Education do Brasil','Sao Paulo','02712-100','SP','vendas@pearson.com','11-2178-8688'),(3,'A','Editoria Makron Books','Sao Paulo','05083-130','SP','editorial@mbooks.com.br','11-3641-5314'),(4,'I','Editora Ano Zero Ltda','Rio de Janeiro','22210-010','RJ','editorial@editoraanozero.com.br','11-205-4907');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engenheiros`
--

DROP TABLE IF EXISTS `engenheiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engenheiros` (
  `eng_codigo` int NOT NULL,
  `eng_nome` varchar(20) DEFAULT NULL,
  `eng_apelido` varchar(10) DEFAULT NULL,
  `eng_telefone` varchar(15) DEFAULT NULL,
  `eng_crea` varchar(6) DEFAULT NULL,
  `eng_datacrea` date DEFAULT NULL,
  PRIMARY KEY (`eng_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engenheiros`
--

LOCK TABLES `engenheiros` WRITE;
/*!40000 ALTER TABLE `engenheiros` DISABLE KEYS */;
INSERT INTO `engenheiros` VALUES (1,'Carlos Silva','Silva','991234567','1234','2010-05-10'),(2,'Ana Oliveira','Oliveira','998765432','5678','2012-07-15'),(3,'Roberto Souza','Souza','997654321','1111','2014-03-20'),(4,'Fernanda Costa','Costa','996543210','9876','2015-01-30'),(5,'Ricardo Martins','Martins','995432109','2222','2016-04-25'),(6,'Patrícia Lima','Lima','994321098','3333','2017-06-05'),(7,'João Pereira','Pereira','993210987','4444','2018-09-12'),(8,'Larissa Alves','Alves','992109876','5555','2019-10-22'),(9,'Fábio Santos','Santos','991098765','6666','2020-01-18'),(10,'Mariana Rocha','Rocha','990987654','7777','2021-02-25'),(11,'Eduardo Silva','Silva','989876543','8888','2022-03-15'),(12,'Juliana Ferreira','Ferreira','988765432','9999','2023-04-30');
/*!40000 ALTER TABLE `engenheiros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `liv_codigo` int NOT NULL AUTO_INCREMENT,
  `liv_titulo` varchar(50) DEFAULT NULL,
  `liv_edicao` varchar(10) DEFAULT NULL,
  `liv_isbn` varchar(20) DEFAULT NULL,
  `liv_ano` decimal(10,0) DEFAULT NULL,
  `aut_codigo` int NOT NULL,
  `edt_codigo` int NOT NULL,
  `liv_ativoinativo` char(1) DEFAULT NULL,
  PRIMARY KEY (`liv_codigo`),
  KEY `fk_livros_autores_idx` (`aut_codigo`),
  KEY `fk_livros_editoras_idx` (`edt_codigo`),
  CONSTRAINT `fk_livros_autores` FOREIGN KEY (`aut_codigo`) REFERENCES `autores` (`aut_codigo`),
  CONSTRAINT `fk_livros_editoras` FOREIGN KEY (`edt_codigo`) REFERENCES `editoras` (`edt_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Dominando o Delphi 7 - A Biblia','1 Edicao','853-46-1408-3',2001,3,1,'A'),(2,'Arquitetura e Organizacao de Computadores ','8 Edicao','978-85-7605-564-8',2010,2,1,'A'),(3,'Implantando a Governanca de TI','4 Edicao','978-85-7452-658-4',2014,1,2,'A'),(4,'dBase III Plus - Master Informatica','1 Edicao','84-88094-03-05',1992,4,1,'A'),(5,'Guia Manga - Microprocessadores','1 Edicao','987-321',2016,2,3,'A'),(6,'O Amigo','23 Edicao','103-8-3762-18',2011,1,3,'I'),(7,'Manual NodeJS','1 Edicao','987-32-1008',2016,2,3,'A'),(8,'Eletronica Digital','3a Ed','54553334',2008,3,2,'A');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras`
--

DROP TABLE IF EXISTS `obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obras` (
  `obr_codigo` int NOT NULL,
  `obr_cidade` varchar(20) DEFAULT NULL,
  `obr_tipoobra` varchar(10) DEFAULT NULL,
  `obr_valor` decimal(12,2) DEFAULT NULL,
  `obr_dtinicio` date DEFAULT NULL,
  `eng_codigo` int DEFAULT NULL,
  PRIMARY KEY (`obr_codigo`),
  KEY `eng_codigo` (`eng_codigo`),
  CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`eng_codigo`) REFERENCES `engenheiros` (`eng_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'São Paulo','Residencia',1000000.00,'2023-01-10',1),(2,'Rio de Janeiro','Comercial',1500000.00,'2023-03-15',2),(3,'Belo Horizonte','Industria',2000000.00,'2023-05-20',3),(4,'Porto Alegre','Residencia',900000.00,'2023-06-05',4),(5,'Salvador','Comercial',1800000.00,'2023-07-25',5),(6,'Fortaleza','Residencia',750000.00,'2023-08-30',6),(7,'Curitiba','Industria',1200000.00,'2023-09-12',7),(8,'Recife','Comercial',1300000.00,'2023-10-01',8),(9,'Manaus','Residencia',1100000.00,'2023-11-10',9),(10,'Goiânia','Comercial',1600000.00,'2023-12-01',10),(11,'Brasília','Industria',2200000.00,'2024-01-15',11),(12,'Natal','Residencia',950000.00,'2024-02-20',12);
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usu_codigo` int NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(40) DEFAULT NULL,
  `usu_apelido` varchar(15) DEFAULT NULL,
  `usu_password` varchar(20) DEFAULT NULL,
  `usu_usuario` varchar(20) DEFAULT NULL,
  `usu_email` varchar(60) DEFAULT NULL,
  `usu_celular` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`usu_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Antonio','Neto','1234','acneto','acneto.frc@hotmail.com','16999671440'),(2,'Maria Madalena','Maria','123','mariagc','mariamada@hotmail.com','16999671525');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 18:01:30
