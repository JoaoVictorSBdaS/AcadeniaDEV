CREATE DATABASE  IF NOT EXISTS `academiadev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `academiadev`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: academiadev
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `data_matricula` date NOT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Ana Silva','123.456.789-00','ana.silva@email.com','senha123','2000-01-01','Rua A, 123','12345-6789','2024-01-10','F'),(2,'João Souza','987.654.321-00','joao.souza@email.com','senha123','1998-02-15','Rua B, 456','98765-4321','2024-01-11','M'),(3,'Maria Oliveira','111.222.333-44','maria.oliveira@email.com','senha123','2002-03-20','Rua C, 789','55555-5555','2024-01-12','F'),(4,'Carlos Pereira','444.555.666-77','carlos.pereira@email.com','senha123','1995-04-25','Rua D, 101','66666-6666','2024-01-13','M'),(5,'Julia Santos','222.333.444-88','julia.santos@email.com','senha123','2001-05-30','Rua E, 202','77777-7777','2024-01-14','F'),(6,'Lucas Lima','333.444.555-99','lucas.lima@email.com','senha123','1999-06-05','Rua F, 303','88888-8888','2024-01-15','M'),(7,'Fernanda Costa','666.777.888-11','fernanda.costa@email.com','senha123','2003-07-10','Rua G, 404','99999-9999','2024-01-16','F'),(8,'Rafael Martins','555.666.777-22','rafael.martins@email.com','senha123','1997-08-15','Rua H, 505','10101-0101','2024-01-17','M'),(9,'Camila Almeida','888.999.000-33','camila.almeida@email.com','senha123','2000-09-20','Rua I, 606','20202-0202','2024-01-18','F'),(10,'André Barbosa','777.888.999-44','andre.barbosa@email.com','senha123','1998-10-25','Rua J, 707','30303-0303','2024-01-19','M'),(11,'Tatiane Rocha','999.000.111-55','tatiane.rocha@email.com','senha123','2002-11-30','Rua K, 808','40404-0404','2024-01-20','F'),(12,'Felipe Dias','000.111.222-66','felipe.dias@email.com','senha123','1996-12-05','Rua L, 909','50505-0505','2024-01-21','M'),(13,'Beatriz Martins','121.314.151-71','beatriz.martins@email.com','senha123','2001-01-01','Rua M, 1010','60606-0606','2024-01-22','F'),(14,'Gustavo Silva','414.515.616-81','gustavo.silva@email.com','senha123','1994-02-02','Rua N, 1111','70707-0707','2024-01-23','M'),(15,'Natália Costa','616.717.818-91','natalia.costa@email.com','senha123','1993-03-03','Rua O, 1212','80808-0808','2024-01-24','F'),(16,'Matheus Fernandes','919.202.303-10','matheus.fernandes@email.com','senha123','2000-04-04','Rua P, 1313','90909-0909','2024-01-25','M'),(17,'Isabella Santos','212.323.434-20','isabella.santos@email.com','senha123','1997-05-05','Rua Q, 1414','10101-0101','2024-01-26','F'),(18,'Leonardo Ferreira','111.111.111-11','leonardo.ferreira@email.com','senha123','1995-06-06','Rua R, 1515','20202-0202','2024-01-27','M');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aulas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_instrutor_id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_fim` time NOT NULL,
  `data_aula` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_instrutor_id` (`fk_instrutor_id`),
  CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`fk_instrutor_id`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` VALUES (1,1,'Aula de Yoga','08:00:00','09:00:00','2024-09-01'),(2,2,'Aula de Musculação','09:00:00','10:00:00','2024-09-02'),(3,3,'Aula de Zumba','10:00:00','11:00:00','2024-09-03'),(4,4,'Aula de Pilates','11:00:00','12:00:00','2024-09-04'),(5,5,'Aula de Funcional','14:00:00','15:00:00','2024-09-05'),(6,6,'Aula de Boxe','15:00:00','16:00:00','2024-09-06'),(7,7,'Aula de Ciclismo','16:00:00','17:00:00','2024-09-07'),(8,8,'Aula de Natação','17:00:00','18:00:00','2024-09-08'),(9,9,'Aula de HIIT','18:00:00','19:00:00','2024-09-09'),(10,10,'Aula de Dança','19:00:00','20:00:00','2024-09-10'),(11,11,'Aula de CrossFit','08:00:00','09:00:00','2024-09-11'),(12,12,'Aula de Aeróbica','09:00:00','10:00:00','2024-09-12'),(13,13,'Aula de Muay Thai','10:00:00','11:00:00','2024-09-13'),(14,14,'Aula de Meditação','11:00:00','12:00:00','2024-09-14'),(15,15,'Aula de Circuito','14:00:00','15:00:00','2024-09-15'),(16,16,'Aula de Kettlebell','15:00:00','16:00:00','2024-09-16'),(17,17,'Aula de Step','16:00:00','17:00:00','2024-09-17'),(18,18,'Aula de Artes Marciais','17:00:00','18:00:00','2024-09-18'),(19,19,'Aula de Alongamento','18:00:00','19:00:00','2024-09-19'),(20,20,'Aula de Capoeira','19:00:00','20:00:00','2024-09-20');
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `CPF` varchar(14) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `horario_trabalho` time NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'João Silva','11-91234-5678','joao.silva@email.com','senha123','123.456.789-00',2500.00,'08:00:00','Rua A, 100','M'),(2,'Maria Santos','11-99876-5432','maria.santos@email.com','senha123','987.654.321-00',3000.00,'09:00:00','Rua B, 200','F'),(3,'Carlos Oliveira','11-93456-7890','carlos.oliveira@email.com','senha123','111.222.333-44',2800.00,'08:30:00','Rua C, 300','M'),(4,'Ana Costa','11-91234-6789','ana.costa@email.com','senha123','444.555.666-77',3200.00,'07:00:00','Rua D, 400','F'),(5,'Lucas Lima','11-99876-5432','lucas.lima@email.com','senha123','222.333.444-88',2700.00,'10:00:00','Rua E, 500','M'),(6,'Tatiane Rocha','11-94567-8901','tatiane.rocha@email.com','senha123','555.666.777-99',3100.00,'08:15:00','Rua F, 600','F'),(7,'Felipe Dias','11-95678-9012','felipe.dias@email.com','senha123','666.777.888-11',2900.00,'09:30:00','Rua G, 700','M'),(8,'Beatriz Martins','11-93456-7891','beatriz.martins@email.com','senha123','777.888.999-22',3000.00,'08:45:00','Rua H, 800','F'),(9,'Gustavo Santos','11-91234-5679','gustavo.santos@email.com','senha123','888.999.000-33',2600.00,'07:30:00','Rua I, 900','M'),(10,'Fernanda Costa','11-92345-6789','fernanda.costa@email.com','senha123','999.000.111-44',3200.00,'09:00:00','Rua J, 1000','F'),(11,'André Ferreira','11-91234-6780','andre.ferreira@email.com','senha123','111.222.333-55',2500.00,'08:00:00','Rua K, 1100','M'),(12,'Isabela Almeida','11-99876-5433','isabela.almeida@email.com','senha123','444.555.666-66',3000.00,'09:15:00','Rua L, 1200','F'),(13,'Matheus Pereira','11-93456-7892','matheus.pereira@email.com','senha123','222.333.444-99',2800.00,'08:30:00','Rua M, 1300','M'),(14,'Camila Rocha','11-91234-5670','camila.rocha@email.com','senha123','555.666.777-88',3200.00,'10:00:00','Rua N, 1400','F'),(15,'Leonardo Dias','11-95678-9013','leonardo.dias@email.com','senha123','666.777.888-99',2900.00,'08:00:00','Rua O, 1500','M'),(16,'Juliana Santos','11-94567-8902','juliana.santos@email.com','senha123','777.888.999-00',3000.00,'09:00:00','Rua P, 1600','F'),(17,'Rafael Almeida','11-91234-5671','rafael.almeida@email.com','senha123','888.999.000-11',2600.00,'07:30:00','Rua Q, 1700','M'),(18,'Natália Costa','11-99876-5434','natalia.costa@email.com','senha123','999.000.111-22',3200.00,'09:00:00','Rua R, 1800','F'),(19,'Diego Ferreira','11-93456-7893','diego.ferreira@email.com','senha123','111.222.333-66',2500.00,'08:00:00','Rua S, 1900','M'),(20,'Priscila Martins','11-91234-5672','priscila.martins@email.com','senha123','444.555.666-22',3000.00,'09:15:00','Rua T, 2000','F');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos_alunos`
--

DROP TABLE IF EXISTS `pagamentos_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos_alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_aluno_id` int NOT NULL,
  `fk_plano_id` int NOT NULL,
  `data_pagamento` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aluno_id` (`fk_aluno_id`),
  KEY `fk_plano_id` (`fk_plano_id`),
  CONSTRAINT `pagamentos_alunos_ibfk_1` FOREIGN KEY (`fk_aluno_id`) REFERENCES `alunos` (`id`),
  CONSTRAINT `pagamentos_alunos_ibfk_2` FOREIGN KEY (`fk_plano_id`) REFERENCES `planos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos_alunos`
--

LOCK TABLES `pagamentos_alunos` WRITE;
/*!40000 ALTER TABLE `pagamentos_alunos` DISABLE KEYS */;
INSERT INTO `pagamentos_alunos` VALUES (161,1,1,'2024-01-01'),(162,2,1,'2024-01-02'),(163,3,2,'2024-01-03'),(164,4,2,'2024-01-04'),(165,5,3,'2024-01-05'),(166,1,3,'2024-01-06'),(167,2,4,'2024-01-07'),(168,3,4,'2024-01-08'),(169,4,5,'2024-01-09'),(170,5,5,'2024-01-10');
/*!40000 ALTER TABLE `pagamentos_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos_funcionarios`
--

DROP TABLE IF EXISTS `pagamentos_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos_funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_funcionarios_id` int NOT NULL,
  `data_pagamento` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcionarios_id` (`fk_funcionarios_id`),
  CONSTRAINT `pagamentos_funcionarios_ibfk_1` FOREIGN KEY (`fk_funcionarios_id`) REFERENCES `funcionarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos_funcionarios`
--

LOCK TABLES `pagamentos_funcionarios` WRITE;
/*!40000 ALTER TABLE `pagamentos_funcionarios` DISABLE KEYS */;
INSERT INTO `pagamentos_funcionarios` VALUES (1,1,'2024-01-01'),(2,2,'2024-01-02'),(3,3,'2024-01-03'),(4,4,'2024-01-04'),(5,5,'2024-01-05'),(6,1,'2024-01-06'),(7,2,'2024-01-07'),(8,3,'2024-01-08'),(9,4,'2024-01-09'),(10,5,'2024-01-10');
/*!40000 ALTER TABLE `pagamentos_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planos`
--

DROP TABLE IF EXISTS `planos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_aluno_id` int NOT NULL,
  `nome_plano` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `duracao_meses` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aluno_id` (`fk_aluno_id`),
  CONSTRAINT `planos_ibfk_1` FOREIGN KEY (`fk_aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planos`
--

LOCK TABLES `planos` WRITE;
/*!40000 ALTER TABLE `planos` DISABLE KEYS */;
INSERT INTO `planos` VALUES (1,1,'Plano 1',99.99,12),(2,2,'Plano 2',149.99,6),(3,3,'Plano 3',199.99,12),(4,4,'Plano 4',249.99,18),(5,5,'Plano 5',299.99,12),(6,6,'Plano 6',349.99,24),(7,7,'Plano 7',399.99,3),(8,8,'Plano 8',449.99,12),(9,9,'Plano 9',499.99,6),(10,10,'Plano 10',549.99,12),(11,1,'Plano 11',599.99,18),(12,2,'Plano 12',649.99,2),(13,3,'Plano 13',699.99,3),(14,4,'Plano 14',749.99,12),(15,5,'Plano 15',799.99,6),(16,6,'Plano 16',849.99,12),(17,7,'Plano 17',899.99,18),(18,8,'Plano 18',949.99,4),(19,9,'Plano 19',999.99,3),(20,10,'Plano 20',1049.99,12);
/*!40000 ALTER TABLE `planos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_aluno_id` int DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `data_fab` date DEFAULT NULL,
  `data_val` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aluno_id` (`fk_aluno_id`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`fk_aluno_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'Produto 1',10.00,'2024-01-01','2025-01-01'),(2,1,'Produto 2',15.50,'2024-01-02','2025-01-02'),(3,2,'Produto 3',20.00,'2024-01-03','2025-01-03'),(4,2,'Produto 4',25.75,'2024-01-04','2025-01-04'),(5,3,'Produto 5',30.00,'2024-01-05','2025-01-05'),(6,3,'Produto 6',35.00,'2024-01-06','2025-01-06'),(7,4,'Produto 7',40.25,'2024-01-07','2025-01-07'),(8,4,'Produto 8',45.50,'2024-01-08','2025-01-08'),(9,5,'Produto 9',50.00,'2024-01-09','2025-01-09'),(10,5,'Produto 10',55.75,'2024-01-10','2025-01-10'),(11,6,'Produto 11',60.00,'2024-01-11','2025-01-11'),(12,6,'Produto 12',65.00,'2024-01-12','2025-01-12'),(13,7,'Produto 13',70.50,'2024-01-13','2025-01-13'),(14,7,'Produto 14',75.00,'2024-01-14','2025-01-14'),(15,8,'Produto 15',80.00,'2024-01-15','2025-01-15'),(16,8,'Produto 16',85.50,'2024-01-16','2025-01-16'),(17,9,'Produto 17',90.00,'2024-01-17','2025-01-17'),(18,9,'Produto 18',95.00,'2024-01-18','2025-01-18'),(19,10,'Produto 19',100.00,'2024-01-19','2025-01-19'),(20,10,'Produto 20',105.25,'2024-01-20','2025-01-20');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 13:42:40
