-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: django_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add product',6,'add_product'),(22,'Can change product',6,'change_product'),(23,'Can delete product',6,'delete_product'),(24,'Can view product',6,'view_product'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add book',8,'add_book'),(30,'Can change book',8,'change_book'),(31,'Can delete book',8,'delete_book'),(32,'Can view book',8,'view_book'),(33,'Can add publisher',9,'add_publisher'),(34,'Can change publisher',9,'change_publisher'),(35,'Can delete publisher',9,'delete_publisher'),(36,'Can view publisher',9,'view_publisher'),(37,'Can add user',10,'add_user'),(38,'Can change user',10,'change_user'),(39,'Can delete user',10,'delete_user'),(40,'Can view user',10,'view_user'),(41,'Can add Token',11,'add_token'),(42,'Can change Token',11,'change_token'),(43,'Can delete Token',11,'delete_token'),(44,'Can view Token',11,'view_token'),(45,'Can add token',12,'add_tokenproxy'),(46,'Can change token',12,'change_tokenproxy'),(47,'Can delete token',12,'delete_tokenproxy'),(48,'Can view token',12,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('16c2f5d6d8631f06421c573d8d8485374bbbac95','2024-01-23 01:23:57.333979',28),('2e64d4a0706e1babb4d687d95424b8ff11533599','2024-01-19 01:53:20.314530',25),('352cb25875c2654a998d7d61b3b38be33ad16295','2024-01-19 01:48:06.902941',24),('b207898c096933f0a65974125e4676cf749b2778','2024-01-22 06:14:13.792795',26),('d27a37ebdaa832aa0eb122664124cb244bd7d4f9','2024-01-22 06:15:31.478973',27),('f1d45ee3d699f251f4c59a89d3f8638b4fddb6e9','2024-01-29 02:54:43.060939',29);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookNo` varchar(10) NOT NULL,
  `bookName` varchar(30) NOT NULL,
  `bookAuthor` varchar(20) NOT NULL,
  `bookPrice` int DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `bookStock` int DEFAULT NULL,
  `pubNo` varchar(10) NOT NULL,
  PRIMARY KEY (`bookNo`),
  KEY `pubNo` (`pubNo`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`pubNo`) REFERENCES `publisher` (`pubNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('1001','DB 연습','홍길동',25000,'2019-11-11',7,'3'),('1002','자바 프로그래밍','이몽룡',25000,'2021-12-12',4,'1'),('1003','인터넷프로그래밍','성춘향',30000,'2019-02-10',10,'2'),('1004','안드로이드 프로그래밍','변학도',23000,'2017-10-10',2,'1'),('1005','안드로이드 앱','강길동',26000,'2020-01-11',5,'2'),('1006','MS SQL SERVER 2014','박지성',35000,'2020-03-25',7,'3'),('1007','HTML & CSS','손흥민',18000,'2023-09-30',3,'1'),('1008','MFC 입문','류현진',20000,'2015-12-12',5,'1'),('1009','안드로이드 게임 제작','나길동',33000,'2018-10-31',5,'2'),('1010','C++객체지향 프로그래밍','추신수',24000,'2019-04-20',2,'3'),('1011','JSP 웹 프로그래밍','김연아',27000,'2020-10-23',8,'1'),('1012','해커들의 해킹 기법','손연재',32000,'2018-07-07',1,'2'),('1013','자료구조','홍길동',19000,'2020-01-20',4,'1'),('1014','파이썬','성춘향',35000,'2023-09-25',5,'2');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_app_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_app_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(10,'auth','user'),(11,'authtoken','token'),(12,'authtoken','tokenproxy'),(8,'book_app','book'),(9,'book_app','publisher'),(4,'contenttypes','contenttype'),(6,'product_app','product'),(5,'sessions','session'),(7,'users_app','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-12 08:34:13.010380'),(2,'contenttypes','0002_remove_content_type_name','2023-10-12 08:34:13.034372'),(3,'auth','0001_initial','2023-10-12 08:34:13.121369'),(4,'auth','0002_alter_permission_name_max_length','2023-10-12 08:34:13.142370'),(5,'auth','0003_alter_user_email_max_length','2023-10-12 08:34:13.147372'),(6,'auth','0004_alter_user_username_opts','2023-10-12 08:34:13.151374'),(7,'auth','0005_alter_user_last_login_null','2023-10-12 08:34:13.156371'),(8,'auth','0006_require_contenttypes_0002','2023-10-12 08:34:13.158371'),(9,'auth','0007_alter_validators_add_error_messages','2023-10-12 08:34:13.161369'),(10,'auth','0008_alter_user_username_max_length','2023-10-12 08:34:13.166371'),(11,'auth','0009_alter_user_last_name_max_length','2023-10-12 08:34:13.171373'),(12,'auth','0010_alter_group_name_max_length','2023-10-12 08:34:13.194371'),(13,'auth','0011_update_proxy_permissions','2023-10-12 08:34:13.198442'),(14,'auth','0012_alter_user_first_name_max_length','2023-10-12 08:34:13.203443'),(15,'users_app','0001_initial','2023-10-12 08:34:13.316616'),(16,'admin','0001_initial','2023-10-12 08:34:13.365441'),(17,'admin','0002_logentry_remove_auto_add','2023-10-12 08:34:13.371442'),(18,'admin','0003_logentry_add_action_flag_choices','2023-10-12 08:34:13.377442'),(19,'product_app','0001_initial','2023-10-12 08:34:13.379442'),(20,'sessions','0001_initial','2023-10-12 08:34:13.394442'),(21,'book_app','0001_initial','2023-10-16 08:32:33.263206'),(22,'authtoken','0001_initial','2024-01-19 01:44:32.707807'),(23,'authtoken','0002_auto_20160226_1747','2024-01-19 01:44:32.725812'),(24,'authtoken','0003_tokenproxy','2024-01-19 01:44:32.727893');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4p423kk6lnb4tiug03v1zekrra84kuyl','e30:1qsG8j:i3dQmBxlB7ASjfb2iIZCX4L3yQAPudEi3IVC3703KFg','2023-10-30 05:27:41.137215'),('glhaxj4fjnio270h1ng1vbidyuzl5x4o','.eJxVjDsOwjAQBe_iGllsnPWHkj5nsHbXBgeQI8VJhbg7spQC2jcz760i7VuJe8trnJO6qMGo0-_IJM9cO0kPqvdFy1K3dWbdFX3Qpqcl5df1cP8OCrXSa7YkCMYBYQqD9-YcjGMWEUIHGBgNESKAjNb6G7gxQ7ZIIbADzurzBQD-N9U:1qsGHH:UgXfHIWad07ZLEIi6ekcJ1gSN4g56sE3kE_GUBRXiPI','2023-10-30 05:36:31.542291'),('sud6cmdw7wdla68mrpfjlsu7qud21g9n','e30:1qsFZS:X9BsazHbLkzIJQOEA5gU212RjduJ53S-INaqh4OruCI','2023-10-30 04:51:14.542049');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `prd_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prd_name` varchar(20) DEFAULT NULL,
  `prd_price` int DEFAULT NULL,
  `prd_maker` varchar(30) DEFAULT NULL,
  `prd_color` varchar(10) DEFAULT NULL,
  `ctg_no` int DEFAULT NULL,
  PRIMARY KEY (`prd_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1001','삼성 냉장고 비스포크',1620000,'삼성전자','새틴 코럴',1),('1002','LG 디오스 와인셀러',1367000,'LG전자','검정',1),('1003','QLED 8K TV',2175000,'삼성전자','블랙',1),('1004','올레드 TV 55',799000,'LG전자','검정',1),('1005','UHD 커브드 65인치',2250000,'삼성전자','은색',1),('1006','유아용 세발 자전거',76000,'삼천리 자전거','빨강',3),('1007','로드 사이클 자전거',150000,'알톤','검정',3),('1008','여성용 클래식 자전거',100000,'알톤','핑크',3),('1009','노트북9 metal',1390000,'도시바','은색',2),('1010','HP 게이밍 노트북',1200000,'HP','흰색',2),('1011','32인치 LED 모니터',299000,'LG전자','검정',2),('1012','광시야각 LED 모니터',195000,'삼성전자','흰색',2),('1013','등산배낭 옵티마',68000,'밀레','자주',4),('1014','35L 등산배낭',49000,'(주)셀파','노랑',4),('1015','원터치 자동 텐트',58000,'이지트래블러','그린',4),('1016','그늘막 텐트',33000,'밀레','그린',4),('1018','세발 자전거',20000,'알톤','핑크',2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `pubNo` varchar(10) NOT NULL,
  `pubName` varchar(20) NOT NULL,
  `pub_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pubNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES ('1','서울 출판사','02-1234-1234'),('2','도서출판 강남','02-3333-3333'),('3','정보출판사','02-1111-1111');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_app_user`
--

DROP TABLE IF EXISTS `users_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_app_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `user_name` varchar(30) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_app_user`
--

LOCK TABLES `users_app_user` WRITE;
/*!40000 ALTER TABLE `users_app_user` DISABLE KEYS */;
INSERT INTO `users_app_user` VALUES (1,'pbkdf2_sha256$600000$ZduBB5SXSMF6jedLG0TUiv$aDhyFd70fUUHjjjSJLdpdEXVEtOzEkyGmXQ84/FHpbQ=','2023-10-16 05:35:29.998682',1,'admin','','','',1,1,'2023-10-12 08:49:56.399741','','',''),(2,'pbkdf2_sha256$600000$ax1Bmb2t8MK1lL3jm8gAja$xWNd29UZBCLKVw0WDSfule2PRT6ckz7E1L+WDt+/pcM=','2023-10-13 02:12:25.396356',0,'abcd','','','abcd@ac.kr',0,1,'2023-10-13 02:12:10.006264','홍길동','010-1111-1111','서울'),(3,'pbkdf2_sha256$600000$KKCevAOGoG1ZVPPLKIiD30$mnivXBKtpqk+vbL33a8ua7B4ZyHm/4grmSjQbCYDL+c=','2023-10-13 02:44:32.997284',0,'sky','','','sky@naver.com',0,1,'2023-10-13 02:44:23.855811','이몽룡','010-2222-2222','제주도'),(4,'pbkdf2_sha256$600000$xbs2t9FdsABCRFFrw5dnPi$SMe8PGlJ6/Ug6GJTFq8GPvFL4y4LI0ko/UByplK79E8=','2023-10-16 01:47:52.377074',0,'dddd','','','ddd@naver.co.',0,1,'2023-10-16 00:28:59.300661','ddd','020-1212-1212','dd'),(20,'pbkdf2_sha256$600000$yQktuCEpNnBgYxwFmaVygd$s+HN81g2RVyiYCTPhvzbbAKxovHOqsDBBWru19DArmA=','2023-10-16 04:47:15.002349',0,'tttt','','','tttt@navwe.com',0,1,'2023-10-16 04:47:14.710950','tt','tt','tt'),(21,'pbkdf2_sha256$600000$XbDxT3jPeXJIRLnxbOOonu$Wh6eloCkG0K3t45elg1DMvQ0nOHPVeJe6vpBepP8/po=',NULL,0,'aaa','','','aaa',0,1,'2023-10-16 04:51:09.488929','aaa','aa','aa'),(22,'pbkdf2_sha256$600000$crTBPdBGRJkiQYSEoS9v2q$6WXqe1RZsASPYYGWQUAogS/0IzKhAyjVXjX6bwcyNgo=','2023-10-16 05:35:58.384959',0,'ppp','','','ppp',0,1,'2023-10-16 05:35:54.260201','ppp','ppp','ppp'),(23,'pbkdf2_sha256$600000$Opaw77CDP6VUxGrmWYZEPR$VJyoUhKBgcGwhK64gwEgnaZANf67xt4v8u1MllpvIDo=','2023-10-16 05:36:31.540283',0,'gggg','','','ggg@naver.com',0,1,'2023-10-16 05:36:31.247218','gg','gg','gg'),(24,'pbkdf2_sha256$720000$L5AXi1a7lApG49o58SAGwU$g9/K/GeoFcvjiubgRQdCbfTu85SyNGj/ZoLp1HzxPv4=',NULL,0,'kim','','','kim@abc.com',0,1,'2024-01-19 01:48:06.562365','','',''),(25,'pbkdf2_sha256$720000$9Q0bN48QL9yzv5RA1T8ODz$4ZYRJUEX5CDdcJjfHjAFL/NewW7L+dg8Qkt5teSvni0=',NULL,0,'park','','','park@abc.com',0,1,'2024-01-19 01:53:19.979602','박길동','010-1234-1234','서울'),(26,'pbkdf2_sha256$720000$gVgUkeuJl889qx2OW6Z8Ic$6pf9OGSr4filzYjJruSeFigqSDV3k5elQgQ2R76GVwc=',NULL,0,'lee','','','lee@abc.com',0,1,'2024-01-22 06:14:13.448328','이몽룡','010-1234-1234','제주'),(27,'pbkdf2_sha256$720000$CzQ48d873z5zi4mAdaSZJ0$9TKIUK0+i3QTJYElhZrtTmR9dZnGjLYK0Rd9/k5byng=',NULL,0,'cho','','','cho@abc.com',0,1,'2024-01-22 06:15:31.103964','조길동','010-1234-1234','서울'),(28,'pbkdf2_sha256$720000$eCuVV56S6UaOQi9fYHdROt$yMEe1QUl+MsrHyroE1seEGCKWrE0v5q29fZUiFvjOsY=',NULL,0,'hong','','','h@abc.com',0,1,'2024-01-23 01:23:56.823945','홍길동','010-1234-1234','서울'),(29,'pbkdf2_sha256$720000$818mZLC4PACoTkdNNgXsFn$X8i2yCDfX00eVJKceSU7INa3x90qtlEzQlPx42DvvtI=',NULL,0,'hhh','','','hkd@abc.com',0,1,'2024-01-29 02:54:42.720018','홍길동','010-1234-1234','서울');
/*!40000 ALTER TABLE `users_app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_app_user_groups`
--

DROP TABLE IF EXISTS `users_app_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_app_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_app_user_groups_user_id_group_id_b9b6bdae_uniq` (`user_id`,`group_id`),
  KEY `users_app_user_groups_group_id_a248c506_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_app_user_groups_group_id_a248c506_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_app_user_groups_user_id_0fb09204_fk_users_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_app_user_groups`
--

LOCK TABLES `users_app_user_groups` WRITE;
/*!40000 ALTER TABLE `users_app_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_app_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_app_user_user_permissions`
--

DROP TABLE IF EXISTS `users_app_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_app_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_app_user_user_perm_user_id_permission_id_46656a4a_uniq` (`user_id`,`permission_id`),
  KEY `users_app_user_user__permission_id_61fe1390_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_app_user_user__permission_id_61fe1390_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_app_user_user__user_id_ed0fe1b8_fk_users_app` FOREIGN KEY (`user_id`) REFERENCES `users_app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_app_user_user_permissions`
--

LOCK TABLES `users_app_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_app_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_app_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-30  8:53:24
