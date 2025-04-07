CREATE DATABASE  IF NOT EXISTS `insuranceservice` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `insuranceservice`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: insuranceservice
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim` (
  `id` bigint NOT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
INSERT INTO `claim` VALUES (11,'PIDu8olg','1'),(12,'PIDu8olg','1'),(126,'PID69lio','0');
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (127);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hospitalname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'chennai','doctor@gmail.com','kayal','$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS','98435676534','sri'),(2,'df','rajiujjni@gmail.com','r','$2a$12$5ZA3qFu99gMAXDxfmPv8nuoLAxNAYqH.8o6ncgX0.K/ZoS7iCbvKi','123','red'),(5,'fdgf','mas@gmail.com','xyz','$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS','8902345423','msu'),(6,'qwerty','test@gmail.com','test','$2a$12$JHqn8YIc7Qm4yuWrb8Ctt.9r38K0hvJuhvmOOMxxtfauqvj8LpSoi','1234567890','test'),(15,'12345','gh@gmail.com','GH','$2a$12$ulSaTZJTjL1YoavKV1I72ulexNan2M/dxitRqH32YM5e97o.A4tr.','9879874510','gh');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insuranceadmin`
--

DROP TABLE IF EXISTS `insuranceadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insuranceadmin` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceadmin`
--

LOCK TABLES `insuranceadmin` WRITE;
/*!40000 ALTER TABLE `insuranceadmin` DISABLE KEYS */;
INSERT INTO `insuranceadmin` VALUES (4,'gfh','asu@gmail.com',NULL,'$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS','8976545678'),(13,'chennai','admin@gmail.com',NULL,'$2a$12$JHqn8YIc7Qm4yuWrb8Ctt.CSOoD8ge1mW0oQkVXvneuTyWqWh//1y','9874561235'),(14,'chennai','admin1@gmail.com',NULL,'$2a$12$VxYjf/KAYzfPf.mzdcS1BO4oeuVnSUK.gcBmkxHrFxrrg8DrM.PZW','9879879875');
/*!40000 ALTER TABLE `insuranceadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mydata`
--

DROP TABLE IF EXISTS `mydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mydata` (
  `id` bigint NOT NULL,
  `pat_id` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mydata`
--

LOCK TABLES `mydata` WRITE;
/*!40000 ALTER TABLE `mydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `mydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policydetail`
--

DROP TABLE IF EXISTS `policydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policydetail` (
  `id` varchar(255) NOT NULL,
  `chronic_cond_cancer` int NOT NULL,
  `chronic_cond_depression` int NOT NULL,
  `chronic_cond_diabetes` int NOT NULL,
  `chronic_cond_ischemic_heart` int NOT NULL,
  `chronic_cond_kidney_disease` int NOT NULL,
  `chronic_cond_obstr_pulmonary` int NOT NULL,
  `chronic_cond_osteoporasis` int NOT NULL,
  `chronic_cond_rheumatoidarthritis` int NOT NULL,
  `chronic_cond_stroke` int NOT NULL,
  `gender` int NOT NULL,
  `no_of_months_partbcov` int NOT NULL,
  `potential_fraud` int NOT NULL,
  `race` int NOT NULL,
  `renal_disease_indicator` int NOT NULL,
  `state` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policydetail`
--

LOCK TABLES `policydetail` WRITE;
/*!40000 ALTER TABLE `policydetail` DISABLE KEYS */;
INSERT INTO `policydetail` VALUES ('INSIDglln',6,6,2,3,4,6,8,5,4,1,5,4,3,4,6,'xyz@gmail.com','xyz','9876543210','50000'),('INSIDna7s',3,7,98,7,5,6,6,1,3,0,4,4,6,45,5,'f@gmail.com','ff','6768687667','50000'),('INSIDnabik',6,5,4,9,8,5,0,7,7,0,7,6,1,3,6,'a@gmail.com','a','9098767809','100000'),('INSIDncat',1,9,5,5,2,3,2,3,3,1,3,4,4,3,6,'kumar@gmail.com','kumar','9879875230','25000');
/*!40000 ALTER TABLE `policydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKrv2tvm01qajpto59ttd66tk20` (`user_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FKrv2tvm01qajpto59ttd66tk20` FOREIGN KEY (`user_id`) REFERENCES `hospital` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 15:45:06
