CREATE DATABASE  IF NOT EXISTS `healthservice` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `healthservice`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: healthservice
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (21,'chennai','a@gmail.com','a','$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS','9804325676'),(181,'chennai','admin@gmail.com','admin','$2a$12$y/ZY1MEIQUpavbFNXnfc6OlWhNlcfnSyBB4aIVR8P52TGRdz9bWjO','9879874510'),(182,'chennai','hh@gmail.com','HH','$2a$12$MN3Neby5.f35XVq54lD5x.CNcdLzMliANfFAZdWYz9F87FjZYoEwK','9874561230');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (54,'2023-09-20T12:00','dfs','dffgdg56','7897654567','Cardiologist',NULL),(74,'2023-09-24T11:00','g','piu878','8903245678','Internal medicine','Opened'),(75,'2023-09-23T10:00','rr','poi897','9087123456','Endocrinologist','Opened'),(183,'2024-02-20T11:05','patient1','PIDfabmo','9876543212','Cardiologist',NULL);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkup`
--

DROP TABLE IF EXISTS `checkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkup` (
  `id` bigint NOT NULL,
  `age` int NOT NULL,
  `ca` int NOT NULL,
  `chol` int NOT NULL,
  `cp` varchar(255) DEFAULT NULL,
  `exang` varchar(255) DEFAULT NULL,
  `fbs` varchar(255) DEFAULT NULL,
  `oldpeak` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) NOT NULL,
  `patientname` varchar(30) NOT NULL,
  `restecg` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `slope` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  `thal` varchar(255) DEFAULT NULL,
  `thalach` int NOT NULL,
  `trestbps` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkup`
--

LOCK TABLES `checkup` WRITE;
/*!40000 ALTER TABLE `checkup` DISABLE KEYS */;
INSERT INTO `checkup` VALUES (169,44,0,233,'3','0','1','2.3','PID6a418','venu','0','female','0','fever','1',150,145),(172,45,0,233,'3','0','1','2.3','PIDgdbec','dhee','0','female','0','gd ','1',150,145),(173,43,0,233,'3','0','1','2.3','PIDipdgg','a','0','0','0','fever','1',150,145),(176,34,0,233,'3','0','1','2.3','PIDu8olg','g','0','0','0','fever','1',150,145),(213,55,4,230,'2','1','1','2.3','PID69lio','we','4','1','2','	            fever','3',135,145);
/*!40000 ALTER TABLE `checkup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `shortlisted_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date`
--

LOCK TABLES `date` WRITE;
/*!40000 ALTER TABLE `date` DISABLE KEYS */;
/*!40000 ALTER TABLE `date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discharge`
--

DROP TABLE IF EXISTS `discharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discharge` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discharge`
--

LOCK TABLES `discharge` WRITE;
/*!40000 ALTER TABLE `discharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `discharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` varchar(255) NOT NULL,
  `doctoraddress` varchar(255) NOT NULL,
  `doctorgender` varchar(255) DEFAULT NULL,
  `doctorname` varchar(30) NOT NULL,
  `doctorphone` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `UK_jdtgexk368pq6d2yb3neec59d` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('DOCID4no34','chennai','female','s','8903245678','s@gmail.com','$2a$12$MN3Neby5.f35XVq54lD5x.CNcdLzMliANfFAZdWYz9F87FjZYoEwK','Internal medicine'),('DOCID793i','chennai','male','Doctor','9874567890','doctor1@gmail.com','$2a$12$MN3Neby5.f35XVq54lD5x.CNcdLzMliANfFAZdWYz9F87FjZYoEwK','Cardiologist'),('DOCIDcnsbo','chennai','male','dd','987456124','dd@gmail.com','$2a$12$JZIeQSBNeNZAYlu2a3HNAedQj7TkKGCrMZM/BG123t8Zy8l0NPBSO','Neurology');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `driveraddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `drivercity` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `driveremail` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `drivergender` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `drivername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `drivernumber` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `driverpassword` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `driverpincode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('DVRID43k98','ff','chennai','d@gmail.com','male','d','8790923432','123','987890'),('DVRIDik2bc','vadapalani','chennai','drive@gmail.com','male','drive','8980945478','123','456654'),('DVRIDps09','Ashok Nagar','chennai','ambu@gmail.com','male','Ambu','9874563214','12345','600989');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (214);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory`
--

DROP TABLE IF EXISTS `laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory` (
  `luser_id` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `laboratoryname` varchar(30) NOT NULL,
  `labservice` varchar(255) DEFAULT NULL,
  `laddress` varchar(255) DEFAULT NULL,
  `lcity` varchar(255) DEFAULT NULL,
  `lgender` varchar(255) DEFAULT NULL,
  `lphone` varchar(10) NOT NULL,
  `lpincode` varchar(6) NOT NULL,
  `lusername` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`luser_id`),
  UNIQUE KEY `UK_mydi22u2x690lqgp1vweikk94` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory`
--

LOCK TABLES `laboratory` WRITE;
/*!40000 ALTER TABLE `laboratory` DISABLE KEYS */;
INSERT INTO `laboratory` VALUES ('LABID14ejg','gowtham@gmail.com','LabTech','Clinical Medical Laboratory','Ashok Nagar','chennai','male','9877891230','600033','Gowtham','$2a$12$JZIeQSBNeNZAYlu2a3HNAedQj7TkKGCrMZM/BG123t8Zy8l0NPBSO'),('LABID6ss2g','123@gmail.com','123','microBiology Laboratory','sadsa','asdsa','female','123','21323','123','$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS'),('LABIDfjp3o','t@gmail.com','new','Immunology Laboratory','c nagar','chennai','male','9870437899','234567','qw','$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS'),('LABIDiv32','subbu@gmail.com','LabTech','Clinical Medical Laboratory','Ashok Nagar','chennai','male','7417411230','600033','subbu','$2a$12$EvenJM4uComXv.7JSCvPq.yRQhlgr0ozB6D.21FCUGXE9CAR1LUBu'),('LABIDlm3e','f@gmail.com','d','hematology Laboratory','dgfdgd','fgfhf','female','4567890876','455678','f','$2a$12$MN3Neby5.f35XVq54lD5x.YDUlWcOYjjc70lD6xP9ei.jLl/jRNYS'),('LABIDrgujo','ll@gmail.com','ll','hematology Laboratory','chennai','chennai','male','9874561235','600989','lll','$2a$12$3nDpwjwLq7FIrqGkvpk4werKMYohgynGhLrcpv6DLg8DVnOCfGq66'),('LABIDsi1gk','anu@gmail.com','abcd','Clinical Medical Laboratory','vadachery','chennai','male','9804567687','765676','anu','$2a$12$tmgHDAtnbg7/cLzoaewhdeEILUhnFcarl4qYBj2qc2LIPh3V1mj2a');
/*!40000 ALTER TABLE `laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` varchar(255) NOT NULL,
  `doctorrole` varchar(255) DEFAULT NULL,
  `insurance_id` varchar(255) DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `patient_age` varchar(255) DEFAULT NULL,
  `patient_bloodgroup` varchar(255) DEFAULT NULL,
  `patient_contact` varchar(10) NOT NULL,
  `patient_disease` varchar(255) DEFAULT NULL,
  `patient_email` varchar(40) NOT NULL,
  `patient_gender` varchar(255) DEFAULT NULL,
  `patient_name` varchar(20) NOT NULL,
  `patient_symptoms` varchar(255) DEFAULT NULL,
  `patient_weight` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `UK_3rjgubfrjwmr1johx59i16s2g` (`patient_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('PIDfabmo','Dentist','INSIDglln','chennai','65','B-','9876543212','chest pain','kumar@gmail.com','female','patient1','right hand pain','44','Accepted'),('PIDin5','Dentist',NULL,'fdrgdfg','678','A+','7898797689','Chest Pain','xyz@gmail.com','female','xyz','right hand pain','68796879',NULL);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientamblc`
--

DROP TABLE IF EXISTS `patientamblc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientamblc` (
  `id` bigint NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `driverid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `finalamount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nofservice` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patientid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patientname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `finalamount1` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKab1v6uhtkdcntp9bi8lxtrv1n` (`finalamount1`),
  CONSTRAINT `FKab1v6uhtkdcntp9bi8lxtrv1n` FOREIGN KEY (`finalamount1`) REFERENCES `patientamblc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientamblc`
--

LOCK TABLES `patientamblc` WRITE;
/*!40000 ALTER TABLE `patientamblc` DISABLE KEYS */;
INSERT INTO `patientamblc` VALUES (76,'2023-09-22 14:30:08.097','dri68','1500','3','PID6a418','w',NULL),(154,'2023-12-14 20:27:15.313','t5u877','1500','5','PIDtat9s','babu',NULL),(156,'2023-12-15 15:48:07.94','dri68','1200','4','PIDtat9s','babu',NULL),(157,'2023-12-15 15:48:33.477','dri68','1500','5','PIDtat9s','babu',NULL),(158,'2023-12-15 15:48:54.782','dri68','300','1','PIDtat9s','babu',NULL),(212,'2024-02-21 12:38:20.32','DVRIDps09','3000','2','PID69lio','we',NULL);
/*!40000 ALTER TABLE `patientamblc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientlab`
--

DROP TABLE IF EXISTS `patientlab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientlab` (
  `id` bigint NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `finalamount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `labguideid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patientid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patientname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `testnme` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `finalamount1` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9yj6b8tke7yplgwhd8q702tg2` (`finalamount1`),
  CONSTRAINT `FK9yj6b8tke7yplgwhd8q702tg2` FOREIGN KEY (`finalamount1`) REFERENCES `patientlab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientlab`
--

LOCK TABLES `patientlab` WRITE;
/*!40000 ALTER TABLE `patientlab` DISABLE KEYS */;
INSERT INTO `patientlab` VALUES (16,'2023-09-04 11:58:59.138','546','JUI^&^*&','PID6a418','sri','blood test',NULL),(78,'2023-10-18 10:55:16.543','6567','labt567g','PIDipdgg','abu','ftyy hjj  ',NULL),(151,'2023-12-14 20:16:28.469','564','LABIDsi1gk','PIDtat9s','babu','cd',NULL),(152,'2023-12-14 20:16:49.803','600','LABIDsi1gk','PIDtat9s','babu','xray',NULL),(210,'2024-02-21 10:42:17.729','10000','LABIDrgujo','PID69lio','we','blood test',NULL);
/*!40000 ALTER TABLE `patientlab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientpharm`
--

DROP TABLE IF EXISTS `patientpharm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientpharm` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `finalamount` varchar(255) DEFAULT NULL,
  `medicine` varchar(50) NOT NULL,
  `patientid` varchar(30) NOT NULL,
  `patientname` varchar(30) NOT NULL,
  `technicianid` varchar(30) NOT NULL,
  `finalamount1` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKga7psjae4rgbk09vaunvxaatv` (`finalamount1`),
  CONSTRAINT `FKga7psjae4rgbk09vaunvxaatv` FOREIGN KEY (`finalamount1`) REFERENCES `patientpharm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientpharm`
--

LOCK TABLES `patientpharm` WRITE;
/*!40000 ALTER TABLE `patientpharm` DISABLE KEYS */;
INSERT INTO `patientpharm` VALUES (1,'2023-09-22 17:46:28.276000','67','g','PID6a418','u','c',NULL),(2,'2023-10-18 10:50:13.340000','242','fdfg dreere','PIDipdgg','abu','Tcui5686',NULL),(3,'2023-10-18 10:50:13.340000','45','jj','PID6a4180','ggg','gjyjy',NULL),(4,'2023-12-14 20:12:11.386000','6787','xxxxxxx','PIDtat9s','babu','PHMIDma9e4',NULL),(5,'2023-12-14 20:12:34.270000','435','ffffffffffffff','PIDtat9s','babu','PHMIDma9e4',NULL),(6,'2023-12-14 20:13:11.982000','786','ddddddd','PIDtat9s','babu','PHMIDma9e4',NULL),(7,'2024-02-21 10:45:16.650000','5000','','PID69lio','we','PHMIDmm10g',NULL);
/*!40000 ALTER TABLE `patientpharm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL,
  `ambulance` varchar(255) DEFAULT NULL,
  `laboratory` varchar(255) DEFAULT NULL,
  `patientid` varchar(255) DEFAULT NULL,
  `pharmacy` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (174,'4500.0','1164.0','PIDtat9s','8008.0','paid','13672.0'),(211,'0.0','10000.0','PID69lio','5000.0','paid','15000.0');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `technician_id` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pharmacyname` varchar(40) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `techaddress` varchar(255) DEFAULT NULL,
  `techcity` varchar(255) DEFAULT NULL,
  `techgender` varchar(255) DEFAULT NULL,
  `techniciansname` varchar(40) NOT NULL,
  `techpincode` varchar(6) NOT NULL,
  PRIMARY KEY (`technician_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES ('PHMID6k3hg','e@gmail.com','$2a$12$hecif4r5UG8HIhYBfv1jVOrzgZuUhhc6PmSvgLPEw5kqMDCn6uPqO','e','9587469877','chennai','ity','female','r','678909'),('PHMIDh2jsg','vel@gmail.com','$2a$12$cqV1xQdlJkp9NbEruHHKLefBPKRB4qRpA6TP.z1FJGjAqSG0wwhL6','VelTech','8748742310','Ashok Nagar','chennai','male','Vel','600033'),('PHMIDma9e4','praveen@gmail.com','$2a$12$JHqn8YIc7Qm4yuWrb8Ctt.2o7ZTxN5Dg/MVZcf71t8qJ8pTVvZRC6','bava','8790435678','vadapalani','chennai','male','praveen','564345'),('PHMIDmm10g','p@gmail.com','$2a$12$MN3Neby5.f35XVq54lD5x.CNcdLzMliANfFAZdWYz9F87FjZYoEwK','pp','9876541233','chennai','chennai','male','ppp','600989'),('PHMIDo004s','name@gmail.com','$2a$12$JHqn8YIc7Qm4yuWrb8Ctt.yesMhfLobNU9nUTpArnxDKDzg8BGGky','name','1212121','sadsad','23213','female','name','433434'),('PHMIDpc3es','123@gmail.com','$2a$12$VxYjf/KAYzfPf.mzdcS1BOrpAfPLjldwhAjDdBO2DUX3Y56/HwL3.','123','123','123','123','female','123','123'),('PHMIDr9mvk','l@gmail.com','$2a$12$5ZA3qFu99gMAXDxfmPv8nu5vgv7IgQtRUcA5QVzSPyjiuqavkjVze','k','9087656787','ss','cfdgtrf','female','l','567890'),('PHMIDsf7cg','w@gmail.com','$2a$12$JZIeQSBNeNZAYlu2a3HNAe9vKZ2AYTaCZWcRH0G1IDcEQt7AWuupm','q','1234567890','dfdgtfg','effr','female','w','123456');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
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
-- Table structure for table `uploadfile`
--

DROP TABLE IF EXISTS `uploadfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploadfile` (
  `id` bigint NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `pat_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadfile`
--

LOCK TABLES `uploadfile` WRITE;
/*!40000 ALTER TABLE `uploadfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploadfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKqorhy6fubmrb5oel8n28sidak` (`user_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FKqorhy6fubmrb5oel8n28sidak` FOREIGN KEY (`user_id`) REFERENCES `doctor` (`doctor_id`)
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

-- Dump completed on 2024-02-23 15:46:03
