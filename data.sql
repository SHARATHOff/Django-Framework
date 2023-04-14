-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: rathamfashion
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add catagory',7,'add_catagory'),(26,'Can change catagory',7,'change_catagory'),(27,'Can delete catagory',7,'delete_catagory'),(28,'Can view catagory',7,'view_catagory'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add category',7,'add_category'),(34,'Can change category',7,'change_category'),(35,'Can delete category',7,'delete_category'),(36,'Can view category',7,'view_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$kVPC1iSqtxitE3plSVZepa$Q1+6ZBJzYK3AOZV09jaG8o86sXTr9VZIJ3U+WAw6S6E=','2023-04-14 11:43:26.368180',1,'ironsharath','SHARATH','BALAN','sharathbalan2006@gmail.com',1,1,'2023-04-11 09:36:02.000000'),(6,'pbkdf2_sha256$390000$iOQF6uhK4hC88Ed1hwVA85$1jiu1JJo+bZLrdu8qCc8oQA0UarYjzZVDURbO9xce1Y=','2023-04-14 11:45:17.000000',1,'anish','Anish','R','anish.duz@gmail.com',1,1,'2023-04-14 11:44:23.000000'),(7,'pbkdf2_sha256$390000$aeEcPB6igAY8G93sNKhOkG$GZMUxPERA+fkAEFWWyQqcWVYvTCATOPrDTQJnhpER0M=','2023-04-14 11:59:45.470266',1,'rudnesh','RUDNESH','M','',1,1,'2023-04-14 11:44:47.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-04-11 10:56:50.828737','1','Hoddies',1,'[{\"added\": {}}]',7,1),(2,'2023-04-11 10:58:32.810816','1','M100 GOA Hoddies',1,'[{\"added\": {}}]',8,1),(3,'2023-04-11 10:58:44.185508','1','M100 GOA Hoddies',2,'[{\"changed\": {\"fields\": [\"Trending\"]}}]',8,1),(4,'2023-04-11 11:50:39.088229','2','Shirts',1,'[{\"added\": {}}]',7,1),(5,'2023-04-11 11:52:47.170267','2','Shirts',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,1),(6,'2023-04-12 05:38:46.833999','3','Volvo carName',1,'[{\"added\": {}}]',7,1),(7,'2023-04-12 05:40:05.026854','3','Volvo carName',3,'',7,1),(8,'2023-04-12 09:55:29.445129','1','Cloths',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(9,'2023-04-12 09:55:57.926275','1','Cloths',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(10,'2023-04-12 09:57:14.447463','2','Electronics',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(11,'2023-04-12 09:57:22.682338','2','Electronics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(12,'2023-04-12 10:01:23.611689','4','Toys',1,'[{\"added\": {}}]',7,1),(13,'2023-04-12 12:07:52.565968','4','Toys',2,'[]',7,1),(14,'2023-04-12 12:07:56.003128','2','Electronics',2,'[]',7,1),(15,'2023-04-12 12:07:58.308011','1','Cloths',2,'[]',7,1),(16,'2023-04-12 12:36:07.032816','1','M100 GOA Hoddies',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(17,'2023-04-12 12:38:43.322007','2','Pendrive',1,'[{\"added\": {}}]',8,1),(18,'2023-04-12 12:38:48.811251','2','Pendrive',2,'[{\"changed\": {\"fields\": [\"Trending\"]}}]',8,1),(19,'2023-04-14 05:11:09.957402','4','Stationary',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(20,'2023-04-14 05:12:07.898826','4','Stationary',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(21,'2023-04-14 05:57:15.105345','3','Lycra half hand stripe T-shirt',1,'[{\"added\": {}}]',8,1),(22,'2023-04-14 06:03:05.679572','4','Sports Selina T-shirt',1,'[{\"added\": {}}]',8,1),(23,'2023-04-14 06:10:07.665793','5','Lycra pant',1,'[{\"added\": {}}]',8,1),(24,'2023-04-14 06:16:00.940188','6','Grindle Polo T Shirts',1,'[{\"added\": {}}]',8,1),(25,'2023-04-14 06:16:22.261803','5','Lycra pant',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(26,'2023-04-14 06:16:32.537753','1','M100 GOA Hoddies',3,'',8,1),(27,'2023-04-14 06:19:06.619243','7','Lycra Polo T Shirts',1,'[{\"added\": {}}]',8,1),(28,'2023-04-14 06:24:41.934555','8','Multi stripe popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(29,'2023-04-14 06:25:08.300341','9','Multi stripe popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(30,'2023-04-14 06:25:26.335607','10','Multi stripe popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(31,'2023-04-14 06:25:47.902017','11','Multi stripe popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(32,'2023-04-14 06:26:13.070149','12','Multi stripe popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(33,'2023-04-14 06:28:00.286729','13','Lycra plain T-shirt Full hand',1,'[{\"added\": {}}]',8,1),(34,'2023-04-14 06:31:18.676803','14','Lycra plain T-shirt Full hand',1,'[{\"added\": {}}]',8,1),(35,'2023-04-14 06:32:01.091413','15','Lycra plain T-shirt Full hand',1,'[{\"added\": {}}]',8,1),(36,'2023-04-14 06:34:55.352710','16','Hoodies',1,'[{\"added\": {}}]',8,1),(37,'2023-04-14 06:35:35.404428','16','Hoodies',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(38,'2023-04-14 06:38:43.795414','17','Polo popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(39,'2023-04-14 06:39:20.713276','18','Polo popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(40,'2023-04-14 06:39:37.991351','19','Polo popcorn T-shirt',1,'[{\"added\": {}}]',8,1),(41,'2023-04-14 06:50:09.863043','20','Lycra Tracks',1,'[{\"added\": {}}]',8,1),(42,'2023-04-14 06:51:32.385139','21','Lycra Shorts',1,'[{\"added\": {}}]',8,1),(43,'2023-04-14 06:53:02.691453','22','Cotton Dhoti',1,'[{\"added\": {}}]',8,1),(44,'2023-04-14 06:53:44.019484','23','Cotton Dhoti',1,'[{\"added\": {}}]',8,1),(45,'2023-04-14 06:54:29.462683','24','Cotton Dhoti',1,'[{\"added\": {}}]',8,1),(46,'2023-04-14 06:55:38.499403','25','Cotton Dhoti',1,'[{\"added\": {}}]',8,1),(47,'2023-04-14 06:56:27.935189','25','Cotton Dhoti',2,'[{\"changed\": {\"fields\": [\"Product image\"]}}]',8,1),(48,'2023-04-14 06:57:54.777944','26','Plain shirt 4 combo',1,'[{\"added\": {}}]',8,1),(49,'2023-04-14 06:58:25.969451','27','Plain shirt 4 combo',1,'[{\"added\": {}}]',8,1),(50,'2023-04-14 06:59:29.555262','28','Plain shirt 4 combo',1,'[{\"added\": {}}]',8,1),(51,'2023-04-14 07:01:13.150303','29','HT Cotton shorts',1,'[{\"added\": {}}]',8,1),(52,'2023-04-14 07:01:36.301297','30','HT Cotton shorts',1,'[{\"added\": {}}]',8,1),(53,'2023-04-14 07:01:58.371823','31','HT Cotton shorts',1,'[{\"added\": {}}]',8,1),(54,'2023-04-14 07:02:05.538656','30','HT Cotton shorts',2,'[{\"changed\": {\"fields\": [\"Selling price\"]}}]',8,1),(55,'2023-04-14 07:02:10.168949','31','HT Cotton shorts',2,'[]',8,1),(56,'2023-04-14 07:02:29.299827','32','HT Cotton shorts',1,'[{\"added\": {}}]',8,1),(57,'2023-04-14 07:02:51.952383','32','HT Cotton shorts',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(58,'2023-04-14 07:02:56.119692','31','HT Cotton shorts',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(59,'2023-04-14 07:03:00.808715','30','HT Cotton shorts',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(60,'2023-04-14 07:03:05.337591','29','HT Cotton shorts',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(61,'2023-04-14 07:03:32.385702','28','Plain shirt 4 combo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(62,'2023-04-14 07:03:40.979277','27','Plain shirt 4 combo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(63,'2023-04-14 07:03:46.834627','26','Plain shirt 4 combo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(64,'2023-04-14 07:20:51.157042','33','Cotton sleeveless',1,'[{\"added\": {}}]',8,1),(65,'2023-04-14 07:21:55.465256','34','Selina printed combo 5 piece  800rs',1,'[{\"added\": {}}]',8,1),(66,'2023-04-14 07:22:51.082018','35','Lycra Track single piece',1,'[{\"added\": {}}]',8,1),(67,'2023-04-14 07:23:39.329766','36','White shirt',1,'[{\"added\": {}}]',8,1),(68,'2023-04-14 07:24:45.500097','37','Matching vesti shirt',1,'[{\"added\": {}}]',8,1),(69,'2023-04-14 07:25:46.084799','38','Paniyan 6 piece Combo',1,'[{\"added\": {}}]',8,1),(70,'2023-04-14 07:26:54.428806','39','Paniyan Single piece',1,'[{\"added\": {}}]',8,1),(71,'2023-04-14 07:27:59.900993','39','Vesti 2:00 meter',2,'[{\"changed\": {\"fields\": [\"Name\", \"Original price\", \"Selling price\", \"Description\"]}}]',8,1),(72,'2023-04-14 07:29:51.828833','40','Cotton pant',1,'[{\"added\": {}}]',8,1),(73,'2023-04-14 07:30:54.749269','41','Jeans',1,'[{\"added\": {}}]',8,1),(74,'2023-04-14 07:31:38.327837','42','US polo T-shirts',1,'[{\"added\": {}}]',8,1),(75,'2023-04-14 07:32:04.963270','2','Pendrive',3,'',8,1),(76,'2023-04-14 07:32:19.622891','2','Electronics',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',7,1),(77,'2023-04-14 07:32:24.371929','2','Electronics',2,'[]',7,1),(78,'2023-04-14 07:33:06.975672','2','Electronics',2,'[]',7,1),(79,'2023-04-14 07:33:23.048896','2','Electronics',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',7,1),(80,'2023-04-14 07:33:37.323903','4','Stationary',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',7,1),(81,'2023-04-14 07:33:47.893883','2','Electronics',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',7,1),(82,'2023-04-14 07:59:08.262280','2','rudneshm',1,'[{\"added\": {}}]',4,1),(83,'2023-04-14 07:59:23.190708','2','rudneshm',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',4,1),(84,'2023-04-14 07:59:41.732117','2','rudneshm',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(85,'2023-04-14 11:22:13.624532','2','rudneshm',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(86,'2023-04-14 11:32:21.619892','3','anish',1,'[{\"added\": {}}]',4,1),(87,'2023-04-14 11:33:16.065884','1','anish',1,'[{\"added\": {}}]',3,1),(88,'2023-04-14 11:33:26.199671','3','anish',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"Groups\", \"User permissions\"]}}]',4,1),(89,'2023-04-14 11:33:33.283663','2','rudneshm',3,'',4,1),(90,'2023-04-14 11:33:53.387343','4','rudneshm',1,'[{\"added\": {}}]',4,1),(91,'2023-04-14 11:34:12.858080','4','rudneshm',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]',4,1),(92,'2023-04-14 11:34:41.660837','3','anish',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(93,'2023-04-14 11:37:27.012424','1','ironsharath',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(94,'2023-04-14 11:37:51.188366','3','anish',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(95,'2023-04-14 11:38:02.068486','3','anish',2,'[]',4,1),(96,'2023-04-14 11:39:33.850036','3','anish',2,'[]',4,1),(97,'2023-04-14 11:40:52.157213','3','anish',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(98,'2023-04-14 11:40:57.632684','3','anish',2,'[]',4,1),(99,'2023-04-14 11:42:21.339480','5','srianish',1,'[{\"added\": {}}]',4,1),(100,'2023-04-14 11:43:35.433107','5','srianish',3,'',4,1),(101,'2023-04-14 11:43:40.436218','4','rudneshm',3,'',4,1),(102,'2023-04-14 11:43:46.857494','3','anish',3,'',4,1),(103,'2023-04-14 11:46:53.249130','7','rudnesh',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(104,'2023-04-14 11:47:07.386968','6','anish',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,6),(105,'2023-04-14 11:47:38.339303','1','anish',3,'',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'shop','category'),(8,'shop','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-11 09:34:12.698315'),(2,'auth','0001_initial','2023-04-11 09:34:12.940938'),(3,'admin','0001_initial','2023-04-11 09:34:13.025191'),(4,'admin','0002_logentry_remove_auto_add','2023-04-11 09:34:13.031928'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-11 09:34:13.040893'),(6,'contenttypes','0002_remove_content_type_name','2023-04-11 09:34:13.084689'),(7,'auth','0002_alter_permission_name_max_length','2023-04-11 09:34:13.116164'),(8,'auth','0003_alter_user_email_max_length','2023-04-11 09:34:13.137158'),(9,'auth','0004_alter_user_username_opts','2023-04-11 09:34:13.145821'),(10,'auth','0005_alter_user_last_login_null','2023-04-11 09:34:13.177642'),(11,'auth','0006_require_contenttypes_0002','2023-04-11 09:34:13.180364'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-11 09:34:13.189312'),(13,'auth','0008_alter_user_username_max_length','2023-04-11 09:34:13.224158'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-11 09:34:13.255592'),(15,'auth','0010_alter_group_name_max_length','2023-04-11 09:34:13.272313'),(16,'auth','0011_update_proxy_permissions','2023-04-11 09:34:13.279593'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-11 09:34:13.318924'),(18,'sessions','0001_initial','2023-04-11 09:34:13.339322'),(19,'shop','0001_initial','2023-04-11 09:35:37.709186'),(20,'shop','0002_rename_catagory_category','2023-04-12 12:05:13.638970');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3y9874z8i4csaoc8mdg9yj8m9w41yg17','.eJxVjDsOwjAQBe_iGln-ZbEp6XMGa9fr4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVFgDj9boTpkesO-I711mRqdV1mkrsiD9rl2Dg_r4f7d1Cwl29tQghnsFqD8kRaaZsHQu0toyVPjjhMk-HAxlhAhz4lTQ7s4BEU-CDeH8cqN0M:1pnHrh:KQCA7z5okKUSXP5JHRKzgEboRMmJ1U-pntvynBKgHdk','2023-04-28 11:45:17.354801'),('4aznnxsckj7rd50ne8rer0b0hft4ke7v','.eJxVjEEOwiAQRe_C2hBogQGX7j0DgZlBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWWpx-t5zwwW0HdE_tNkuc27pMWe6KPGiX15n4eTncv4Oaev3WLoyjGzw7BlBWF62Uo8CFgsekPbBCNBbA-gLZektGYS4ZKIFBGIp4fwDHTzfC:1pnHpu:jURTY7soqIjPYpFZbIDnYcOkT40K3lUw7Clji8OGOtA','2023-04-28 11:43:26.369715'),('vnq43hxa5gf6fsu4039uvklz5tjrqv8k','.eJxVjMsOwiAQRf-FtSEojwGX7vsNZGCmUjWQlHZl_HfbpAvdnnPufYuI61Li2nmOE4mrAHH6ZQnzk-su6IH13mRudZmnJPdEHrbLoRG_bkf7d1Cwl21tGbwCYIvswkhoMwUEANTGbsAqrQKQNwg6gXE5nPXFUcpKe5d4TOLzBd-PN8g:1pnI5h:ppEhUOfL4ov1w_fjYEtXPDPIfYt2Sq7dbAZ5c6jOulI','2023-04-28 11:59:45.473257');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,'Cloths','uploads/20230412152557pexels-terje-sollie-298863.jpg','Premium Quality\r\nBest Quality',0,'2023-04-11 10:56:50.827737'),(2,'Electronics','uploads/20230412152722pexels-karol-d-325153.jpg','Premium Quality Shirt\r\nBest Quality',1,'2023-04-11 11:50:39.087229'),(4,'Stationary','uploads/20230414104207pexels-jess-bailey-designs-1764436.jpg','Good Quality',1,'2023-04-12 10:01:23.610693');
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `vendor` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `quantity` int NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_category_id_14d7eea8_fk_shop_category_id` (`category_id`),
  CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (3,'Lycra half hand stripe T-shirt','Colors Mens Wear','uploads/20230414112715WhatsApp_Image_2023-04-14_at_11.25.39.jpg',20,400,210,'M ,L , XL , size available',0,1,'2023-04-14 05:57:15.104348',1),(4,'Sports Selina T-shirt','Colors Mens Wear','uploads/20230414113305WhatsApp_Image_2023-04-14_at_11.28.31.jpg',20,200,150,'(5 piece combo Rs 600)\r\nM ,L , XL , size available',0,1,'2023-04-14 06:03:05.678572',1),(5,'Lycra pant','Colors Mens Wear','uploads/20230414114622e062776c-9d23-49c5-8f9a-dea122ce9bf3.jpeg',30,500,350,'Lycra pant 4 piece 1200rs\r\nSize 28 to 40 size available',0,1,'2023-04-14 06:10:07.664827',1),(6,'Grindle Polo T Shirts','Colors Mens Wear','uploads/202304141146004f304072-14e5-4f9e-bd84-c807acffef73.jpeg',20,300,230,'(3 piece combo RS 800)',0,1,'2023-04-14 06:16:00.939190',1),(7,'Lycra Polo T Shirts','Colors Mens Wear','uploads/20230414114906bcf02122-ed49-498d-95fa-5744f4010d98.jpeg',20,300,250,'Lycra Polo T Shirts 3 piece 600\r\n\r\nSize M-36 L-38 XL-40',0,1,'2023-04-14 06:19:06.617249',1),(8,'Multi stripe popcorn T-shirt','Colors Mens Wear','uploads/20230414115441WhatsApp_Image_2023-04-14_at_11.52.55_AM.jpeg',10,300,250,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:24:41.933511',1),(9,'Multi stripe popcorn T-shirt','Colors Mens Wear','uploads/20230414115508WhatsApp_Image_2023-04-14_at_11.52.56_AM.jpeg',10,300,250,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:25:08.299373',1),(10,'Multi stripe popcorn T-shirt','Colors Mens Wear','uploads/20230414115526WhatsApp_Image_2023-04-14_at_11.52.57_AM.jpeg',10,300,250,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:25:26.334609',1),(11,'Multi stripe popcorn T-shirt','Colors Mens Wear','uploads/20230414115547WhatsApp_Image_2023-04-14_at_11.52.58_AM.jpeg',10,400,250,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:25:47.900049',1),(12,'Multi stripe popcorn T-shirt','Colors Mens Wear','uploads/20230414115613WhatsApp_Image_2023-04-14_at_11.52.58_AM_1.jpeg',10,400,250,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:26:13.069150',1),(13,'Lycra plain T-shirt Full hand','Colors Mens Wear','uploads/20230414115800WhatsApp_Image_2023-04-14_at_11.53.12_AM.jpeg',10,350,200,'Size M L XL',0,1,'2023-04-14 06:28:00.285733',1),(14,'Lycra plain T-shirt Full hand','Colors Mens Wear','uploads/20230414120118WhatsApp_Image_2023-04-14_at_11.52.46_AM.jpeg',10,400,210,'Size M L XL',0,1,'2023-04-14 06:31:18.675805',1),(15,'Lycra plain T-shirt Full hand','Colors Mens Wear','uploads/20230414120201WhatsApp_Image_2023-04-14_at_11.52.30_AM.jpeg',10,400,250,'Size M L XL',0,1,'2023-04-14 06:32:01.090416',1),(16,'Hoodies','Colors Mens Wear','uploads/20230414120535WhatsApp_Image_2023-04-14_at_12.04.13_PM.jpeg',10,600,350,'Size L-40 XL-42',0,1,'2023-04-14 06:34:55.351712',1),(17,'Polo popcorn T-shirt','Colors Mens Wear','uploads/20230414120843WhatsApp_Image_2023-04-14_at_12.07.19_PM.jpeg',10,600,300,'Polo popcorn T-shirt single piece 300rs\r\nSize M-36 L-38 XL-40',0,1,'2023-04-14 06:38:43.794416',1),(18,'Polo popcorn T-shirt','Colors Mens Wear','uploads/20230414120920WhatsApp_Image_2023-04-14_at_12.07.18_PM.jpeg',10,600,300,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:39:20.712278',1),(19,'Polo popcorn T-shirt','Colors Mens Wear','uploads/20230414120937WhatsApp_Image_2023-04-14_at_12.07.17_PM.jpeg',10,600,300,'Size M-36 L-38 XL-40',0,1,'2023-04-14 06:39:37.990357',1),(20,'Lycra Tracks','Colors Mens Wear','uploads/20230414122009WhatsApp_Image_2023-04-14_at_12.16.01_PM.jpeg',10,400,250,'Free size',0,1,'2023-04-14 06:50:09.861049',1),(21,'Lycra Shorts','Colors Mens Wear','uploads/20230414122132WhatsApp_Image_2023-04-14_at_12.16.01_PM_1.jpeg',10,300,150,'Free size',0,1,'2023-04-14 06:51:32.384142',1),(22,'Cotton Dhoti','Colors Mens Wear','uploads/20230414122302WhatsApp_Image_2023-04-14_at_12.16.00_PM_1.jpeg',10,400,300,'two  piece  500rs',0,1,'2023-04-14 06:53:02.689457',1),(23,'Cotton Dhoti','Colors Mens Wear','uploads/20230414122344WhatsApp_Image_2023-04-14_at_12.16.00_PM.jpeg',10,400,300,'two single piece 500rs',0,1,'2023-04-14 06:53:44.018490',1),(24,'Cotton Dhoti','Colors Mens Wear','uploads/20230414122429WhatsApp_Image_2023-04-14_at_12.15.59_PM_1.jpeg',20,400,300,'Two  piece 500rs',0,1,'2023-04-14 06:54:29.461683',1),(25,'Cotton Dhoti','Colors Mens Wear','uploads/20230414122627WhatsApp_Image_2023-04-14_at_12.15.59_PM.jpeg',10,400,300,'Two  piece 500rs',0,1,'2023-04-14 06:55:38.498405',1),(26,'Plain shirt 4 combo','Colors Mens Wear','uploads/20230414122754WhatsApp_Image_2023-04-14_at_12.15.58_PM.jpeg',10,1500,1200,'Plain shirt 4 combo 1200rs\r\nSIZE M-36 L-38 XL-40',0,1,'2023-04-14 06:57:54.776946',1),(27,'Plain shirt 4 combo','Colors Mens Wear','uploads/20230414122825WhatsApp_Image_2023-04-14_at_12.15.57_PM_2.jpeg',10,1500,1100,'Plain shirt 4 combo 1100rs\r\nSIZE M-36 L-38 XL-40',0,1,'2023-04-14 06:58:25.968454',1),(28,'Plain shirt 4 combo','Colors Mens Wear','uploads/20230414122929WhatsApp_Image_2023-04-14_at_12.15.57_PM_1.jpeg',10,1500,1100,'Plain shirt 4 combo 1200rs\r\nSIZE M-36 L-38 XL-40',0,1,'2023-04-14 06:59:29.554266',1),(29,'HT Cotton shorts','Colors Mens Wear','uploads/20230414123113WhatsApp_Image_2023-04-14_at_12.15.56_PM_1.jpeg',10,400,220,'Pure Cotton shorts\r\nSIZE M-30 L-32 XL-34 XXL-36',0,1,'2023-04-14 07:01:13.149305',1),(30,'HT Cotton shorts','Colors Mens Wear','uploads/20230414123136WhatsApp_Image_2023-04-14_at_12.15.56_PM.jpeg',10,400,220,'Pure Cotton shorts\r\nSIZE M-30 L-32 XL-34 XXL-36',0,1,'2023-04-14 07:01:36.300301',1),(31,'HT Cotton shorts','Colors Mens Wear','uploads/20230414123158WhatsApp_Image_2023-04-14_at_12.15.55_PM_2.jpeg',10,400,220,'Pure Cotton shorts\r\nSIZE M-30 L-32 XL-34 XXL-36',0,1,'2023-04-14 07:01:58.370826',1),(32,'HT Cotton shorts','Colors Mens Wear','uploads/20230414123229WhatsApp_Image_2023-04-14_at_12.15.55_PM_1.jpeg',10,400,220,'Pure Cotton shorts\r\nSIZE M-30 L-32 XL-34 XXL-36',0,1,'2023-04-14 07:02:29.298830',1),(33,'Cotton sleeveless','Colors Mens Wear','uploads/20230414125051WhatsApp_Image_2023-04-14_at_12.46.23_PM.jpeg',10,200,150,'Size M L XL',0,1,'2023-04-14 07:20:51.155044',1),(34,'Selina printed combo 5 piece  800rs','Colors Mens Wear','uploads/20230414125155WhatsApp_Image_2023-04-14_at_12.46.23_PM_1.jpeg',10,300,200,'Size M-36 L-38 XL-40',0,1,'2023-04-14 07:21:55.464258',1),(35,'Lycra Track single piece','Colors Mens Wear','uploads/20230414125251WhatsApp_Image_2023-04-14_at_12.46.21_PM_2.jpeg',20,400,300,'Size M-30 L-40 XL-42',0,1,'2023-04-14 07:22:51.081020',1),(36,'White shirt','Colors Mens Wear','uploads/20230414125339WhatsApp_Image_2023-04-14_at_12.46.21_PM_1.jpeg',20,700,550,'Size 38 To 44',0,1,'2023-04-14 07:23:39.328768',1),(37,'Matching vesti shirt','Colors Mens Wear','uploads/20230414125445WhatsApp_Image_2023-04-14_at_12.46.20_PM_1.jpeg',10,900,750,'Size 36 To 44',0,1,'2023-04-14 07:24:45.499099',1),(38,'Paniyan 6 piece Combo','Colors Mens Wear','uploads/20230414125546WhatsApp_Image_2023-04-14_at_12.46.19_PM_1.jpeg',10,600,350,'Size 80 To 110cm',0,1,'2023-04-14 07:25:46.083801',1),(39,'Vesti 2:00 meter','Colors Mens Wear','uploads/20230414125654WhatsApp_Image_2023-04-14_at_12.46.19_PM.jpeg',10,600,300,'2:00 meter',0,1,'2023-04-14 07:26:54.427810',1),(40,'Cotton pant','Colors Mens Wear','uploads/20230414125951WhatsApp_Image_2023-04-14_at_12.46.18_PM_1.jpeg',20,750,600,'Cotton pant Single piece 600rs\r\nSize 28 To 40',0,1,'2023-04-14 07:29:51.827835',1),(41,'Jeans','Colors Mens Wear','uploads/20230414130054WhatsApp_Image_2023-04-14_at_12.46.18_PM.jpeg',10,800,650,'Jeans Single piece 650Rs\r\nSize 28 To 40',0,1,'2023-04-14 07:30:54.748273',1),(42,'US polo T-shirts','Colors Mens Wear','uploads/20230414130138WhatsApp_Image_2023-04-14_at_12.47.18_PM.jpeg',10,500,300,'Size M-38 L-40 XL-42',0,1,'2023-04-14 07:31:38.326840',1);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 20:48:55
