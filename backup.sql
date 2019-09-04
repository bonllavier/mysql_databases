-- MySQL dump 10.13  Distrib 5.7.8-rc, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	5.7.8-rc

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
-- Current Database: `hbnb_dev_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_dev_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbnb_dev_db`;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES ('60897911-3917-4e3e-a4b8-33f473eac439','2019-08-16 03:34:38','2019-08-16 03:34:38','Cable'),('a2a081bc-b64d-4d2d-8ec3-c1adc6f60b63','2019-08-16 03:34:38','2019-08-16 03:34:38','Oven'),('de15d058-c7e8-4842-9f5b-4556e9979339','2019-08-16 03:34:38','2019-08-16 03:34:38','Wifi');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('0d2120f5-ce2b-4105-8d41-8b7b37b617e0','2019-08-16 02:12:48','2019-08-16 02:12:48','San Francisco','cc40414f-68a5-4032-951c-2f42cc0e6a6b'),('1b4c641d-8bda-4f4c-b934-ecd135e44156','2019-08-16 02:33:21','2019-08-16 02:33:21','San Francisco','ad87a2e9-6c01-41ac-b572-ceb61e40fee0'),('1bce4ea5-2e06-4f79-af73-613b21e19465','2019-08-16 02:11:56','2019-08-16 02:11:56','San Francisco','049b1cc8-655f-4709-9e25-b1c352bd8ff3'),('20f4262b-f79e-4f9c-a5da-c03c4fce61ec','2019-08-16 02:15:48','2019-08-16 02:15:48','San Francisco','ae2b990a-ec7d-4944-9704-021d86359d3e'),('41b1d145-6813-4357-a1c9-e6f168e46099','2019-08-16 03:21:28','2019-08-16 03:21:28','San Francisco','e976f0e9-9472-4132-bb1b-2f42b54c2477'),('69ace329-83e0-43eb-94a1-5be5ee62c471','2019-08-16 02:15:00','2019-08-16 02:15:00','San Francisco','cf252a20-97a6-4921-9a2e-26de9ae755ec'),('6bde63ac-b033-4b73-93c3-e75a43bffcf4','2019-08-16 03:26:58','2019-08-16 03:26:58','San Francisco','750b0ce1-2f3b-49d8-ad27-2727125de22c'),('80f2c74b-c841-4fbd-9361-95c9cbc29113','2019-08-16 02:13:56','2019-08-16 02:13:56','San Francisco','f1f16332-7f74-4f59-a4cd-4da89cb5f5f6'),('8b7f2551-c608-4bfd-b611-901ed7cc7669','2019-08-16 02:22:18','2019-08-16 02:22:18','San Francisco','049b1cc8-655f-4709-9e25-b1c352bd8ff3'),('c309b6e9-8f4e-49ca-9397-1c72150f61dd','2019-08-16 02:23:47','2019-08-16 02:23:47','San Jose','049b1cc8-655f-4709-9e25-b1c352bd8ff3'),('c89428bd-9428-452c-97ea-b71eb6d8440d','2019-08-16 03:26:01','2019-08-16 03:26:01','San Francisco','fafa87c5-61f2-4f40-aada-53a76f5a7d50'),('cbbe0469-1b53-49ec-9bdf-f48640b42948','2019-08-16 03:00:17','2019-08-16 03:00:17','San Francisco','1b0d10b7-a35b-4d71-acc8-ef93164324da'),('dec4c70a-88e6-46e0-917e-04ac8e8182ca','2019-08-16 03:34:38','2019-08-16 03:34:38','San Francisco','08b58388-d082-4943-83f6-8989caf4086a'),('e903b1cb-094a-4a3f-b526-36cc74c3751c','2019-08-16 02:09:54','2019-08-16 02:09:54','San Francisco','10ea4f69-b08b-453c-85cb-87b1ef502595');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int(11) NOT NULL,
  `number_bathrooms` int(11) NOT NULL,
  `max_guest` int(11) NOT NULL,
  `price_by_night` int(11) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('05aa082e-a1f7-4204-b87b-fe5e2ce2f7df','2019-08-16 03:26:58','2019-08-16 03:26:58','6bde63ac-b033-4b73-93c3-e75a43bffcf4','e0f0936f-76d9-46a0-a6ef-dc28f8fad748','House 1',NULL,0,0,0,0,NULL,NULL),('0c90009f-f236-4346-adfe-b9cf7fccd402','2019-08-16 03:26:01','2019-08-16 03:26:01','c89428bd-9428-452c-97ea-b71eb6d8440d','d58eb0ed-d188-47ba-a23d-49fff1e4735a','House 2',NULL,0,0,0,0,NULL,NULL),('14739e27-534b-4e40-a470-37415d6b9d75','2019-08-16 03:21:29','2019-08-16 03:21:29','41b1d145-6813-4357-a1c9-e6f168e46099','584d20ec-925e-41f6-9271-c29351e8e9b0','House 1',NULL,0,0,0,0,NULL,NULL),('2b1e40a0-1296-4ec1-9f2d-76a1b5a73b63','2019-08-16 03:26:01','2019-08-16 03:26:01','c89428bd-9428-452c-97ea-b71eb6d8440d','d58eb0ed-d188-47ba-a23d-49fff1e4735a','House 1',NULL,0,0,0,0,NULL,NULL),('3f358330-f8b1-4cd7-83df-6673215b3acd','2019-08-16 02:15:00','2019-08-16 02:15:00','69ace329-83e0-43eb-94a1-5be5ee62c471','e97170e3-1d5e-46ce-864e-385fcb25373b','House 2',NULL,0,0,0,0,NULL,NULL),('4012ed5f-8a99-45cf-ad65-060f1d91777b','2019-08-16 02:33:21','2019-08-16 02:33:21','1b4c641d-8bda-4f4c-b934-ecd135e44156','e50a6e1a-22c5-4dfb-aeca-dceed6f442c8','House 1',NULL,0,0,0,0,NULL,NULL),('4730f129-4e79-4d37-9faf-5ffb635e5d85','2019-08-16 03:21:29','2019-08-16 03:21:29','41b1d145-6813-4357-a1c9-e6f168e46099','584d20ec-925e-41f6-9271-c29351e8e9b0','House 2',NULL,0,0,0,0,NULL,NULL),('4f4f63c4-3dbf-4a2b-8593-3ba7b5f20121','2019-08-16 02:33:21','2019-08-16 02:33:21','1b4c641d-8bda-4f4c-b934-ecd135e44156','e50a6e1a-22c5-4dfb-aeca-dceed6f442c8','House 2',NULL,0,0,0,0,NULL,NULL),('563d35d4-4b09-4eed-9bdd-66d094c5b86f','2019-08-16 02:15:48','2019-08-16 02:15:48','20f4262b-f79e-4f9c-a5da-c03c4fce61ec','9625d75a-876e-4952-b9b7-d0bc8b128277','House 1',NULL,0,0,0,0,NULL,NULL),('7095aa99-9381-4a89-841e-2dd34a9fa37f','2019-08-16 03:00:17','2019-08-16 03:00:17','cbbe0469-1b53-49ec-9bdf-f48640b42948','e73cfd25-64b5-4283-8074-570263345e1b','House 2',NULL,0,0,0,0,NULL,NULL),('8d668f0b-46a1-45f0-8902-205907d6cee7','2019-08-16 03:34:38','2019-08-16 03:34:38','dec4c70a-88e6-46e0-917e-04ac8e8182ca','d80f8cb2-737f-4dc6-a5b0-526fc030ee73','House 1',NULL,0,0,0,0,NULL,NULL),('98374a1f-c8b9-4544-8289-1d013db34037','2019-08-16 03:00:17','2019-08-16 03:00:17','cbbe0469-1b53-49ec-9bdf-f48640b42948','e73cfd25-64b5-4283-8074-570263345e1b','House 1',NULL,0,0,0,0,NULL,NULL),('a49db6e9-716d-4c37-82d2-c0d796a3c185','2019-08-16 02:09:54','2019-08-16 02:09:54','e903b1cb-094a-4a3f-b526-36cc74c3751c','4dc87995-03b9-4c13-93f6-4d8d18001486','House 1',NULL,0,0,0,0,NULL,NULL),('a7895499-8f51-4525-bf14-6fbe3bc1e2f3','2019-08-16 02:15:00','2019-08-16 02:15:00','69ace329-83e0-43eb-94a1-5be5ee62c471','e97170e3-1d5e-46ce-864e-385fcb25373b','House 1',NULL,0,0,0,0,NULL,NULL),('a938f8b0-00b2-4353-b472-28d1d702c511','2019-08-16 02:11:56','2019-08-16 02:11:56','1bce4ea5-2e06-4f79-af73-613b21e19465','4bd341f0-9582-459a-b07a-9b3b25ef47d2','House 2',NULL,0,0,0,0,NULL,NULL),('b31c69f2-d099-416b-bfd7-5b427cc0a9e3','2019-08-16 02:15:48','2019-08-16 02:15:48','20f4262b-f79e-4f9c-a5da-c03c4fce61ec','9625d75a-876e-4952-b9b7-d0bc8b128277','House 2',NULL,0,0,0,0,NULL,NULL),('c27141dc-fbfd-4310-aa7d-57f074bdc0e6','2019-08-16 02:13:56','2019-08-16 02:13:56','80f2c74b-c841-4fbd-9361-95c9cbc29113','5327ebfa-0095-4de5-90ce-e6d5f6a074a4','House 2',NULL,0,0,0,0,NULL,NULL),('c4be8924-202a-4fd6-8f41-4c1f9ac936e6','2019-08-16 02:11:56','2019-08-16 02:11:56','1bce4ea5-2e06-4f79-af73-613b21e19465','4bd341f0-9582-459a-b07a-9b3b25ef47d2','House 1',NULL,0,0,0,0,NULL,NULL),('c9bdecc8-80f5-45e9-be20-4d8a4a5ab62f','2019-08-16 02:12:48','2019-08-16 02:12:48','0d2120f5-ce2b-4105-8d41-8b7b37b617e0','fd5bf5b5-bca1-4d6c-af27-c751d7574b00','House 1',NULL,0,0,0,0,NULL,NULL),('ca55f863-5478-4569-b309-6bbc3c2bc649','2019-08-16 03:34:38','2019-08-16 03:34:38','dec4c70a-88e6-46e0-917e-04ac8e8182ca','d80f8cb2-737f-4dc6-a5b0-526fc030ee73','House 2',NULL,0,0,0,0,NULL,NULL),('cdbbfa37-de61-4f71-8325-a8b86bc18c3f','2019-08-16 02:31:32','2019-08-16 02:31:32','0d2120f5-ce2b-4105-8d41-8b7b37b617e0','4bd341f0-9582-459a-b07a-9b3b25ef47d2','Lovely place',NULL,3,1,6,120,37.774,-122.431),('e59a3217-78ca-44df-832a-71f915e9479e','2019-08-16 03:26:58','2019-08-16 03:26:58','6bde63ac-b033-4b73-93c3-e75a43bffcf4','e0f0936f-76d9-46a0-a6ef-dc28f8fad748','House 2',NULL,0,0,0,0,NULL,NULL),('e8de4543-1593-4fbb-a875-65d687b3c7e3','2019-08-16 02:12:48','2019-08-16 02:12:48','0d2120f5-ce2b-4105-8d41-8b7b37b617e0','fd5bf5b5-bca1-4d6c-af27-c751d7574b00','House 2',NULL,0,0,0,0,NULL,NULL),('ebb2829b-8bc3-451d-8753-768c73c1b343','2019-08-16 02:09:54','2019-08-16 02:09:54','e903b1cb-094a-4a3f-b526-36cc74c3751c','4dc87995-03b9-4c13-93f6-4d8d18001486','House 2',NULL,0,0,0,0,NULL,NULL),('ece1c216-d332-484f-9b8a-6663a9515295','2019-08-16 02:13:56','2019-08-16 02:13:56','80f2c74b-c841-4fbd-9361-95c9cbc29113','5327ebfa-0095-4de5-90ce-e6d5f6a074a4','House 1',NULL,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `text` varchar(1024) NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('049b1cc8-655f-4709-9e25-b1c352bd8ff3','2019-08-16 02:11:56','2019-08-16 02:11:56','California'),('08b58388-d082-4943-83f6-8989caf4086a','2019-08-16 03:34:38','2019-08-16 03:34:38','California'),('10ea4f69-b08b-453c-85cb-87b1ef502595','2019-08-16 02:09:54','2019-08-16 02:09:54','California'),('1b0d10b7-a35b-4d71-acc8-ef93164324da','2019-08-16 03:00:17','2019-08-16 03:00:17','California'),('5d73dd87-e1af-44eb-9ffc-cff30901d2cb','2019-08-16 02:20:37','2019-08-16 02:20:37','California'),('750b0ce1-2f3b-49d8-ad27-2727125de22c','2019-08-16 03:26:58','2019-08-16 03:26:58','California'),('ad87a2e9-6c01-41ac-b572-ceb61e40fee0','2019-08-16 02:33:21','2019-08-16 02:33:21','California'),('ae2b990a-ec7d-4944-9704-021d86359d3e','2019-08-16 02:15:48','2019-08-16 02:15:48','California'),('cc40414f-68a5-4032-951c-2f42cc0e6a6b','2019-08-16 02:12:48','2019-08-16 02:12:48','California'),('cf252a20-97a6-4921-9a2e-26de9ae755ec','2019-08-16 02:15:00','2019-08-16 02:15:00','California'),('e976f0e9-9472-4132-bb1b-2f42b54c2477','2019-08-16 03:21:28','2019-08-16 03:21:28','California'),('f1f16332-7f74-4f59-a4cd-4da89cb5f5f6','2019-08-16 02:13:56','2019-08-16 02:13:56','California'),('fafa87c5-61f2-4f40-aada-53a76f5a7d50','2019-08-16 03:26:01','2019-08-16 03:26:01','California');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('4bd341f0-9582-459a-b07a-9b3b25ef47d2','2019-08-16 02:11:56','2019-08-16 02:11:56','john@snow.com','johnpwd',NULL,NULL),('4dc87995-03b9-4c13-93f6-4d8d18001486','2019-08-16 02:09:54','2019-08-16 02:09:54','john@snow.com','johnpwd',NULL,NULL),('5327ebfa-0095-4de5-90ce-e6d5f6a074a4','2019-08-16 02:13:56','2019-08-16 02:13:56','john@snow.com','johnpwd',NULL,NULL),('584d20ec-925e-41f6-9271-c29351e8e9b0','2019-08-16 03:21:29','2019-08-16 03:21:29','john@snow.com','johnpwd',NULL,NULL),('8b8d4ad3-202d-44e2-a938-b8442e4a01d9','2019-08-16 02:25:07','2019-08-16 02:25:07','gui@hbtn.io','guipwd','Guillaume','Snow'),('9625d75a-876e-4952-b9b7-d0bc8b128277','2019-08-16 02:15:48','2019-08-16 02:15:48','john@snow.com','johnpwd',NULL,NULL),('d58eb0ed-d188-47ba-a23d-49fff1e4735a','2019-08-16 03:26:01','2019-08-16 03:26:01','john@snow.com','johnpwd',NULL,NULL),('d80f8cb2-737f-4dc6-a5b0-526fc030ee73','2019-08-16 03:34:38','2019-08-16 03:34:38','john@snow.com','johnpwd',NULL,NULL),('e0f0936f-76d9-46a0-a6ef-dc28f8fad748','2019-08-16 03:26:58','2019-08-16 03:26:58','john@snow.com','johnpwd',NULL,NULL),('e50a6e1a-22c5-4dfb-aeca-dceed6f442c8','2019-08-16 02:33:21','2019-08-16 02:33:21','john@snow.com','johnpwd',NULL,NULL),('e73cfd25-64b5-4283-8074-570263345e1b','2019-08-16 03:00:17','2019-08-16 03:00:17','john@snow.com','johnpwd',NULL,NULL),('e97170e3-1d5e-46ce-864e-385fcb25373b','2019-08-16 02:15:00','2019-08-16 02:15:00','john@snow.com','johnpwd',NULL,NULL),('f8971bcc-e8ad-4d8a-ba0f-3ef354af964b','2019-08-16 02:32:35','2019-08-16 02:32:35','bob@hbtn.io','bobpwd','Bob','Dylan'),('fd5bf5b5-bca1-4d6c-af27-c751d7574b00','2019-08-16 02:12:48','2019-08-16 02:12:48','john@snow.com','johnpwd',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbnb_test_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbnb_test_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbnb_test_db`;

--
-- Current Database: `hbtn_0e_0_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_0_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_0_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_14_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_14_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_14_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_4_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_4_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_4_usa`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'San Francisco'),(2,1,'San Jose'),(3,1,'Los Angeles'),(4,1,'Fremont'),(5,1,'Livermore'),(6,2,'Page'),(7,2,'Phoenix'),(8,3,'Dallas'),(9,3,'Houston'),(10,3,'Austin'),(11,4,'New York'),(12,5,'Las Vegas'),(13,5,'Reno'),(14,5,'Henderson'),(15,5,'Carson City');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California'),(2,'Arizona'),(3,'Texas'),(4,'New York'),(5,'Nevada');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `hbtn_0e_6_usa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hbtn_0e_6_usa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hbtn_0e_6_usa`;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (2,'New Mexico'),(4,'New York');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-04 15:46:01
