-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 音乐',7,'add_musician'),(20,'Can change 音乐',7,'change_musician'),(21,'Can delete 音乐',7,'delete_musician');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$opQQhgE7ccb1$ZX1uBHZHETASEMeu484SeGUhune2y4vRNhvfmtj7e2g=','2019-11-04 11:20:09.065219',1,'xin','','','769713504@qq.com',1,1,'2019-10-28 05:23:06.399281');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-10-28 05:41:18.871242','1','<歌手3>',1,'[{\"added\": {}}]',7,1),(2,'2019-10-28 05:49:37.938209','2','<歌手a>',1,'[{\"added\": {}}]',7,1),(3,'2019-10-28 05:50:52.508074','3','<林俊杰&韩红>',1,'[{\"added\": {}}]',7,1),(4,'2019-10-28 05:54:39.330435','4','<dsf>',1,'[{\"added\": {}}]',7,1),(5,'2019-10-28 05:55:07.471421','5','<11>',1,'[{\"added\": {}}]',7,1),(6,'2019-10-28 05:55:31.106736','6','<dsf>',1,'[{\"added\": {}}]',7,1),(7,'2019-10-28 05:55:47.742276','7','<dsf>',1,'[{\"added\": {}}]',7,1),(8,'2019-10-28 10:30:49.379790','8','<wse>',1,'[{\"added\": {}}]',7,1),(9,'2019-10-28 10:31:14.015276','9','<H>',1,'[{\"added\": {}}]',7,1),(10,'2019-10-28 10:31:53.167581','10','<BF>',1,'[{\"added\": {}}]',7,1),(11,'2019-10-28 10:32:05.697723','11','<FRE>',1,'[{\"added\": {}}]',7,1),(12,'2019-10-28 10:32:17.774009','12','<LOI>',1,'[{\"added\": {}}]',7,1),(13,'2019-10-28 10:32:29.178434','13','<HJCV>',1,'[{\"added\": {}}]',7,1),(14,'2019-10-28 10:32:40.754299','14','<XC>',1,'[{\"added\": {}}]',7,1),(15,'2019-10-28 10:32:59.462682','15','<DF>',1,'[{\"added\": {}}]',7,1),(16,'2019-10-28 10:33:11.123889','16','<SZ>',1,'[{\"added\": {}}]',7,1),(17,'2019-10-28 10:33:24.358879','17','<BVMN>',1,'[{\"added\": {}}]',7,1),(18,'2019-10-28 10:33:34.724610','18','<RFEDS>',1,'[{\"added\": {}}]',7,1),(19,'2019-10-28 10:33:45.636402','19','<EDR>',1,'[{\"added\": {}}]',7,1),(20,'2019-10-28 10:34:03.599819','20','<XDXG>',1,'[{\"added\": {}}]',7,1),(21,'2019-10-28 10:34:17.482612','21','<D>',1,'[{\"added\": {}}]',7,1),(22,'2019-10-28 10:35:53.451182','20','<XDXG>',2,'[{\"changed\": {\"fields\": [\"style\"]}}]',7,1),(23,'2019-10-28 10:35:53.502856','17','<BVMN>',2,'[{\"changed\": {\"fields\": [\"style\"]}}]',7,1),(24,'2019-10-28 11:18:26.990871','20','<摇滚1>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(25,'2019-10-28 11:18:27.068337','17','<摇滚2>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(26,'2019-10-28 11:24:31.900248','4','<爵士1>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(27,'2019-10-28 11:24:31.974912','2','<爵士2>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(28,'2019-10-28 11:24:46.289298','7','<民谣1>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(29,'2019-10-28 11:24:46.363830','6','<民谣2>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(30,'2019-10-28 11:27:44.787156','21','<电子1>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(31,'2019-10-28 11:27:44.862056','19','<流行14>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(32,'2019-10-28 11:27:44.911864','18','<流行13>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(33,'2019-10-28 11:27:44.961992','16','<流行12>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(34,'2019-10-28 11:27:45.010735','15','<流行11>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(35,'2019-10-28 11:27:45.110535','14','<流行10>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(36,'2019-10-28 11:27:45.162255','13','<流行9>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(37,'2019-10-28 11:27:45.210846','12','<流行8>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(38,'2019-10-28 11:27:45.261248','11','<流行7>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(39,'2019-10-28 11:27:45.311304','10','<流行6>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(40,'2019-10-28 11:27:45.361304','9','<流行5>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(41,'2019-10-28 11:27:45.410170','8','<流行4>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(42,'2019-10-28 11:27:45.460146','5','<流行3>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(43,'2019-10-28 11:27:45.510161','3','<流行2>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1),(44,'2019-10-28 11:27:45.560135','1','<流行1>',2,'[{\"changed\": {\"fields\": [\"musician\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'musician','musician'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-10-28 05:20:49.246362'),(2,'auth','0001_initial','2019-10-28 05:20:54.766992'),(3,'admin','0001_initial','2019-10-28 05:20:55.968876'),(4,'admin','0002_logentry_remove_auto_add','2019-10-28 05:20:56.060512'),(5,'contenttypes','0002_remove_content_type_name','2019-10-28 05:20:56.756222'),(6,'auth','0002_alter_permission_name_max_length','2019-10-28 05:20:57.245289'),(7,'auth','0003_alter_user_email_max_length','2019-10-28 05:20:57.740510'),(8,'auth','0004_alter_user_username_opts','2019-10-28 05:20:57.779369'),(9,'auth','0005_alter_user_last_login_null','2019-10-28 05:20:58.142352'),(10,'auth','0006_require_contenttypes_0002','2019-10-28 05:20:58.167900'),(11,'auth','0007_alter_validators_add_error_messages','2019-10-28 05:20:58.205716'),(12,'auth','0008_alter_user_username_max_length','2019-10-28 05:20:59.322182'),(13,'musician','0001_initial','2019-10-28 05:20:59.531130'),(14,'sessions','0001_initial','2019-10-28 05:20:59.892529'),(15,'musician','0002_auto_20191028_1325','2019-10-28 05:25:20.042626'),(16,'musician','0003_auto_20191028_1328','2019-10-28 05:28:47.104086'),(17,'musician','0004_auto_20191028_1331','2019-10-28 05:31:04.667404'),(18,'musician','0005_auto_20191028_1338','2019-10-28 05:38:27.682389'),(19,'musician','0006_auto_20191028_1340','2019-10-28 05:40:42.310845');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qctyfztq62ti71uzq2ojygugo8uzoilu','MTc1ZjYxYTg2NGRmMmU0NGVhOWNhYjQzMWEzNGY4Yjg0OWE1YTU3MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmQ2ODA1OWNkNTVkOGY1NGRmMTk4ZWU2Mzc2ZThmYjdhNDE2Yjk2In0=','2019-11-18 11:20:09.174655'),('x7fgl3r81vk97y1vrf6g8pv1ua374dcc','MTc1ZjYxYTg2NGRmMmU0NGVhOWNhYjQzMWEzNGY4Yjg0OWE1YTU3MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZmQ2ODA1OWNkNTVkOGY1NGRmMTk4ZWU2Mzc2ZThmYjdhNDE2Yjk2In0=','2019-11-11 05:23:12.113620');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musician`
--

DROP TABLE IF EXISTS `musician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musician` varchar(10) NOT NULL,
  `music_name` varchar(6) NOT NULL,
  `music` varchar(100) NOT NULL,
  `style` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `like` int(11) NOT NULL,
  `addtime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musician`
--

LOCK TABLES `musician` WRITE;
/*!40000 ALTER TABLE `musician` DISABLE KEYS */;
INSERT INTO `musician` VALUES (1,'流行1','8','static/images/picture15_uwrZM6t.jpg',1,'static/images/picture12_xaKRqez.jpg',3,'2019-10-28 11:27:45.535276'),(2,'爵士2','5','static/images/picture14_3Jq95UI.jpg',5,'static/images/picture11_Ndjbyq3.jpg',1,'2019-10-28 11:24:31.951442'),(3,'流行2','飞云之下','static/images/picture17_BOSRoQs.jpg',1,'static/images/picture12_2Skqfjy.jpg',1,'2019-10-28 11:27:45.485345'),(4,'爵士1','dsf','static/images/picture1_6vW4qjJ.jpg',5,'static/images/picture11_1GOJCM9.jpg',3,'2019-10-28 11:24:31.830480'),(5,'流行3','额','static/images/picture1_4gV6cbh.jpg',1,'static/images/picture11_cACTUSJ.jpg',2,'2019-10-28 11:27:45.435241'),(6,'民谣2','fdfsd','static/images/picture11_8r0jykK.jpg',4,'static/images/picture6_eAcdEvW.jpg',3,'2019-10-28 11:24:46.338922'),(7,'民谣1','fdsf','static/images/picture13_lfDEX78.jpg',4,'static/images/picture12_mVcxO0D.jpg',2,'2019-10-28 11:24:46.235114'),(8,'流行4','SS','static/images/picture13_g0zmOHL.jpg',1,'static/images/picture11_D3fBNxK.jpg',2,'2019-10-28 11:27:45.386591'),(9,'流行5','HT','static/images/picture14_rlxrQVx.jpg',1,'static/images/picture17_JED9dF2.jpg',2,'2019-10-28 11:27:45.336398'),(10,'流行6','FD','static/images/picture14_G42vQMr.jpg',1,'static/images/picture3_OI0iXm4.jpg',2,'2019-10-28 11:27:45.286597'),(11,'流行7','JUY','static/images/picture14_8qnyWbB.jpg',1,'static/images/picture16_wah5FiF.jpg',2,'2019-10-28 11:27:45.236323'),(12,'流行8','OL','static/images/picture12_a8WX5KE.jpg',1,'static/images/picture3_AhKjIjs.jpg',2,'2019-10-28 11:27:45.186491'),(13,'流行9','FD','static/images/picture14_ZlY1O80.jpg',1,'static/images/picture18_2qaClk3.jpg',2,'2019-10-28 11:27:45.137644'),(14,'流行10','XCZ','static/images/picture14_AeSvwPC.jpg',1,'static/images/picture17_LRJOwin.jpg',1,'2019-10-28 11:27:45.060549'),(15,'流行11','DSF','static/images/picture13_udWOonK.jpg',1,'static/images/picture4_uo8d32S.jpg',1,'2019-10-28 11:27:44.985773'),(16,'流行12','EW','static/images/picture14_SkwFY1o.jpg',1,'static/images/picture18_nhvppIq.jpg',2,'2019-10-28 11:27:44.937190'),(17,'摇滚2','XZ','static/images/picture19_iFFUNW8.jpg',2,'static/images/picture2_8gAQCGJ.jpg',1,'2019-10-28 11:18:27.043426'),(18,'流行13','ESZDRG','static/images/picture17_4PXDQ6V.jpg',1,'static/images/picture13_ea5FFbY.jpg',1,'2019-10-28 11:27:44.887364'),(19,'流行14','DX','static/images/picture18_X4HVYqb.jpg',1,'static/images/picture3_5gthPSU.jpg',1,'2019-10-28 11:27:44.837239'),(20,'摇滚1','dsf','static/images/picture14_8Se2LZT.jpg',2,'static/images/picture16_Qe0kiaJ.jpg',1,'2019-10-28 11:18:26.930826'),(21,'电子1','DG','static/images/picture15_y5GpI5m.jpg',3,'static/images/picture12_ZZiSF2F.jpg',2,'2019-10-28 11:27:44.754024');
/*!40000 ALTER TABLE `musician` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 18:37:08
