-- MySQL dump 10.13  Distrib 5.5.20, for Win32 (x86)
--
-- Host: localhost    Database: livros
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autores` (
  `aut_codigo` int(11) NOT NULL AUTO_INCREMENT,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editoras` (
  `edt_codigo` int(11) NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `engenheiro`
--

DROP TABLE IF EXISTS `engenheiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engenheiro` (
  `eng_codigo` int(11) NOT NULL,
  `eng_nome` varchar(20) DEFAULT NULL,
  `eng_apelido` varchar(10) DEFAULT NULL,
  `eng_telefone` varchar(10) DEFAULT NULL,
  `eng_crea` varchar(10) DEFAULT NULL,
  `eng_datacrea` date DEFAULT NULL,
  PRIMARY KEY (`eng_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engenheiro`
--

LOCK TABLES `engenheiro` WRITE;
/*!40000 ALTER TABLE `engenheiro` DISABLE KEYS */;
INSERT INTO `engenheiro` VALUES (1,'Carlos Silva','Carlos','1234567890','CREA123','2015-06-15'),(2,'Maria Oliveira','Maria','0987654321','CREA456','2017-03-22'),(3,'Jo├úo Pereira','Jo├úo','1122334455','CREA789','2019-11-10'),(4,'Ana Costa','Ana','2233445566','CREA012','2016-02-18'),(5,'Ricardo Gomes','Ricardo','3344556677','CREA345','2018-07-30'),(6,'Fernanda Lima','Fernanda','4455667788','CREA678','2020-09-05'),(7,'Lucas Martins','Lucas','5566778899','CREA910','2021-01-11'),(8,'Juliana Souza','Ju','6677889900','CREA112','2017-08-24'),(9,'Bruno Oliveira','Bruno','7788990011','CREA223','2020-02-19'),(10,'Roberta Almeida','Berta','8899001122','CREA334','2019-06-05'),(11,'Felipe Ferreira','Felipe','9900112233','CREA445','2018-12-09'),(12,'Patr├¡cia Rocha','Patr├¡cia','1001223344','CREA556','2017-11-23');
/*!40000 ALTER TABLE `engenheiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livros` (
  `liv_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `liv_titulo` varchar(50) DEFAULT NULL,
  `liv_edicao` varchar(10) DEFAULT NULL,
  `liv_isbn` varchar(20) DEFAULT NULL,
  `liv_ano` decimal(10,0) DEFAULT NULL,
  `aut_codigo` int(11) NOT NULL,
  `edt_codigo` int(11) NOT NULL,
  `liv_ativoinativo` char(1) DEFAULT NULL,
  PRIMARY KEY (`liv_codigo`),
  KEY `fk_livros_autores_idx` (`aut_codigo`),
  KEY `fk_livros_editoras_idx` (`edt_codigo`),
  CONSTRAINT `fk_livros_autores` FOREIGN KEY (`aut_codigo`) REFERENCES `autores` (`aut_codigo`),
  CONSTRAINT `fk_livros_editoras` FOREIGN KEY (`edt_codigo`) REFERENCES `editoras` (`edt_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Dominando o Delphi 7 - A Biblia','1 Edicao','853-46-1408-3',2001,3,1,'A'),(2,'Arquitetura e Organizacao de Computadores ','8 Edicao','978-85-7605-564-8',2010,2,1,'A'),(3,'Senhor dos ├üneis','1 Edicao','001-9969-658-4',2014,1,2,'A'),(4,'Processadores','11 Edicao','84-99245-03-05',1992,4,1,'A'),(5,'Guia Manga - Microprocessadores','1 Edicao','987-321',2016,2,3,'A'),(6,'O Amigo','23 Edicao','103-8-3762-18',2011,1,3,'I'),(7,'undefined','undefined','987-32-1008',2016,2,3,'A'),(8,'Eletronica Digital','3a Ed','54553334',2008,3,2,'A');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra`
--

DROP TABLE IF EXISTS `obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obra` (
  `obr_codigo` int(11) NOT NULL,
  `obr_cidade` varchar(20) DEFAULT NULL,
  `obr_tipoobra` varchar(20) DEFAULT NULL,
  `obr_valor` decimal(12,2) DEFAULT NULL,
  `obr_dtinicio` date DEFAULT NULL,
  `eng_codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`obr_codigo`),
  KEY `eng_codigo` (`eng_codigo`),
  CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`eng_codigo`) REFERENCES `engenheiro` (`eng_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra`
--

LOCK TABLES `obra` WRITE;
/*!40000 ALTER TABLE `obra` DISABLE KEYS */;
INSERT INTO `obra` VALUES (1,'S├úo Paulo','Residencial',2500000.00,'2024-01-10',1),(2,'Rio de Janeiro','Comercial',5000000.00,'2024-03-15',2),(3,'Belo Horizonte','Industrial',7500000.00,'2024-05-20',3),(4,'Curitiba','Residencial',3000000.00,'2024-06-05',4),(5,'Porto Alegre','Comercial',6000000.00,'2024-07-25',5),(6,'Salvador','Industrial',4000000.00,'2024-08-12',6),(7,'Fortaleza','Residencial',3500000.00,'2024-09-30',7),(8,'Recife','Comercial',5500000.00,'2024-10-15',8),(9,'Manaus','Industrial',4200000.00,'2024-11-10',9),(10,'Goi├ónia','Residencial',4500000.00,'2024-12-01',10),(11,'Vit├│ria','Comercial',4700000.00,'2024-01-25',11),(12,'Macei├│','Industrial',4800000.00,'2024-02-18',12);
/*!40000 ALTER TABLE `obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usu_codigo` int(11) NOT NULL AUTO_INCREMENT,
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

-- Dump completed on 2024-11-21 19:44:03
