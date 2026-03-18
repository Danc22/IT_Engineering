-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: islandmoversbd
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Current Database: `islandmoversbd`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `islandmoversbd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `islandmoversbd`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(8) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_rides`
--

DROP TABLE IF EXISTS `pending_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_rides` (
  `Pending_ride_id` int NOT NULL AUTO_INCREMENT,
  `Ride_id` int DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `Ride_Cost` decimal(5,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Discount_applicable` varchar(50) DEFAULT 'No',
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Pending_ride_id`),
  KEY `FK_idride` (`Ride_id`),
  CONSTRAINT `FK_idride` FOREIGN KEY (`Ride_id`) REFERENCES `ride_info` (`Ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_rides`
--

LOCK TABLES `pending_rides` WRITE;
/*!40000 ALTER TABLE `pending_rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_info`
--

DROP TABLE IF EXISTS `ride_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_info` (
  `Ride_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `Vehicle_id` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Ride_id`),
  KEY `FK_idcustomer` (`cust_id`),
  CONSTRAINT `FK_idcustomer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_info`
--

LOCK TABLES `ride_info` WRITE;
/*!40000 ALTER TABLE `ride_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ride_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_info` (
  `Vehicle_id` int NOT NULL AUTO_INCREMENT,
  `Vechicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES (1,'Honda CR-V'),(2,'Nissan Sentra'),(3,'Suzuki Swift Sport');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `islandmoverssv`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `islandmoverssv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `islandmoverssv`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(8) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_rides`
--

DROP TABLE IF EXISTS `pending_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_rides` (
  `Pending_ride_id` int NOT NULL AUTO_INCREMENT,
  `Ride_id` int DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `Ride_Cost` decimal(5,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Discount_applicable` varchar(50) DEFAULT 'No',
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Pending_ride_id`),
  KEY `FK_idride` (`Ride_id`),
  CONSTRAINT `FK_idride` FOREIGN KEY (`Ride_id`) REFERENCES `ride_info` (`Ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_rides`
--

LOCK TABLES `pending_rides` WRITE;
/*!40000 ALTER TABLE `pending_rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_info`
--

DROP TABLE IF EXISTS `ride_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_info` (
  `Ride_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `Vehicle_id` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Ride_id`),
  KEY `FK_idcustomer` (`cust_id`),
  CONSTRAINT `FK_idcustomer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_info`
--

LOCK TABLES `ride_info` WRITE;
/*!40000 ALTER TABLE `ride_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ride_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_info` (
  `Vehicle_id` int NOT NULL AUTO_INCREMENT,
  `Vechicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES (1,'Honda CR-V'),(2,'Nissan Sentra'),(3,'Suzuki Swift Sport');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `islandmoversda`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `islandmoversda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `islandmoversda`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(8) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_rides`
--

DROP TABLE IF EXISTS `pending_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_rides` (
  `Pending_ride_id` int NOT NULL AUTO_INCREMENT,
  `Ride_id` int DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `Ride_Cost` decimal(5,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Discount_applicable` varchar(50) DEFAULT 'No',
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Pending_ride_id`),
  KEY `FK_idride` (`Ride_id`),
  CONSTRAINT `FK_idride` FOREIGN KEY (`Ride_id`) REFERENCES `ride_info` (`Ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_rides`
--

LOCK TABLES `pending_rides` WRITE;
/*!40000 ALTER TABLE `pending_rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_info`
--

DROP TABLE IF EXISTS `ride_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_info` (
  `Ride_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `Vehicle_id` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Ride_id`),
  KEY `FK_idcustomer` (`cust_id`),
  CONSTRAINT `FK_idcustomer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_info`
--

LOCK TABLES `ride_info` WRITE;
/*!40000 ALTER TABLE `ride_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ride_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_info` (
  `Vehicle_id` int NOT NULL AUTO_INCREMENT,
  `Vechicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES (1,'Honda CR-V'),(2,'Nissan Sentra'),(3,'Suzuki Swift Sport');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `islandmoversdu`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `islandmoversdu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `islandmoversdu`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(8) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_rides`
--

DROP TABLE IF EXISTS `pending_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_rides` (
  `Pending_ride_id` int NOT NULL AUTO_INCREMENT,
  `Ride_id` int DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `Ride_Cost` decimal(5,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Pending_ride_id`),
  KEY `FK_idride` (`Ride_id`),
  CONSTRAINT `FK_idride` FOREIGN KEY (`Ride_id`) REFERENCES `ride_info` (`Ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_rides`
--

LOCK TABLES `pending_rides` WRITE;
/*!40000 ALTER TABLE `pending_rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_info`
--

DROP TABLE IF EXISTS `ride_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_info` (
  `Ride_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `Vehicle_id` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Ride_id`),
  KEY `FK_idcustomer` (`cust_id`),
  CONSTRAINT `FK_idcustomer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_info`
--

LOCK TABLES `ride_info` WRITE;
/*!40000 ALTER TABLE `ride_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ride_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_info` (
  `Vehicle_id` int NOT NULL AUTO_INCREMENT,
  `Vechicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES (1,'Honda CR-V'),(2,'Nissan Sentra'),(3,'Suzuki Swift Sport');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `islandmoversfl`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `islandmoversfl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `islandmoversfl`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(8) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_rides`
--

DROP TABLE IF EXISTS `pending_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_rides` (
  `Pending_ride_id` int NOT NULL AUTO_INCREMENT,
  `Ride_id` int DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `Ride_Cost` decimal(5,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Pending_ride_id`),
  KEY `FK_idride` (`Ride_id`),
  CONSTRAINT `FK_idride` FOREIGN KEY (`Ride_id`) REFERENCES `ride_info` (`Ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_rides`
--

LOCK TABLES `pending_rides` WRITE;
/*!40000 ALTER TABLE `pending_rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_info`
--

DROP TABLE IF EXISTS `ride_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_info` (
  `Ride_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `Vehicle_id` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Ride_id`),
  KEY `FK_idcustomer` (`cust_id`),
  CONSTRAINT `FK_idcustomer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_info`
--

LOCK TABLES `ride_info` WRITE;
/*!40000 ALTER TABLE `ride_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ride_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_info` (
  `Vehicle_id` int NOT NULL AUTO_INCREMENT,
  `Vechicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES (1,'Honda CR-V'),(2,'Nissan Sentra'),(3,'Suzuki Swift Sport');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `islandmoverslb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `islandmoverslb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `islandmoverslb`;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(8) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_rides`
--

DROP TABLE IF EXISTS `pending_rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_rides` (
  `Pending_ride_id` int NOT NULL AUTO_INCREMENT,
  `Ride_id` int DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `Ride_Cost` decimal(5,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Pending_ride_id`),
  KEY `FK_idride` (`Ride_id`),
  CONSTRAINT `FK_idride` FOREIGN KEY (`Ride_id`) REFERENCES `ride_info` (`Ride_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_rides`
--

LOCK TABLES `pending_rides` WRITE;
/*!40000 ALTER TABLE `pending_rides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_info`
--

DROP TABLE IF EXISTS `ride_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_info` (
  `Ride_id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `Vehicle_id` int DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `Pickup_Location` varchar(255) DEFAULT NULL,
  `Dropoff_Location` varchar(255) DEFAULT NULL,
  `pickupDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Ride_id`),
  KEY `FK_idcustomer` (`cust_id`),
  CONSTRAINT `FK_idcustomer` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_info`
--

LOCK TABLES `ride_info` WRITE;
/*!40000 ALTER TABLE `ride_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ride_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_info`
--

DROP TABLE IF EXISTS `vehicle_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_info` (
  `Vehicle_id` int NOT NULL AUTO_INCREMENT,
  `Vechicle_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_info`
--

LOCK TABLES `vehicle_info` WRITE;
/*!40000 ALTER TABLE `vehicle_info` DISABLE KEYS */;
INSERT INTO `vehicle_info` VALUES (1,'Honda CR-V'),(2,'Nissan Sentra'),(3,'Suzuki Swift Sport');
/*!40000 ALTER TABLE `vehicle_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 20:50:49
