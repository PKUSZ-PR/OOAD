-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: whiteblog
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `admin`
--


DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2000,'admin','123'),(2001,'fff','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attention`
--

DROP TABLE IF EXISTS `attention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attention` (
  `attentionId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `passivesideId` int(11) DEFAULT NULL,
  PRIMARY KEY (`attentionId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attention`
--

LOCK TABLES `attention` WRITE;
/*!40000 ALTER TABLE `attention` DISABLE KEYS */;
INSERT INTO `attention` VALUES (1,123,1);
/*!40000 ALTER TABLE `attention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `blogId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `content` varchar(230) DEFAULT NULL,
  `username` varchar(230) DEFAULT NULL,
  `filterwords` int(11) DEFAULT NULL,
  `likenumber` int(11) DEFAULT NULL,
  `viewnumber` int(11) DEFAULT NULL,
  `commentnumber` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`blogId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,111,2,'12','2017-11-26 15:10:54',', 12','ed',NULL,NULL,NULL,NULL,NULL),(3,1001,15,'LalaLand','2017-11-26 21:15:08',', happy end, , happy end','lala',1,NULL,NULL,NULL,NULL),(4,1001,14,'Merge','2017-11-26 21:42:28',', Merge branch \'master\' to \'dev','lala',1,NULL,NULL,NULL,NULL),(6,1001,9,'filter','2017-11-26 22:23:36',', 江青','lala',3,NULL,NULL,NULL,NULL),(7,1001,13,'Test','2017-11-28 17:09:28','Test Write Blog','lala',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogtype`
--

DROP TABLE IF EXISTS `blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogtype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(45) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `supertypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogtype`
--

LOCK TABLES `blogtype` WRITE;
/*!40000 ALTER TABLE `blogtype` DISABLE KEYS */;
INSERT INTO `blogtype` VALUES (1,'h',111,NULL),(2,'12',111,NULL),(3,'123',1001,NULL),(4,'New',1001,NULL),(5,'movie',1001,NULL),(6,'Wonderfule',1001,NULL),(7,'New',1001,NULL),(8,'h',111,NULL),(9,'New',1001,NULL),(10,'NewType',1001,NULL),(11,'New',1001,NULL),(12,'Wonderfule',1001,NULL),(13,'Aloha',1001,NULL),(14,'Wonderfule',1001,NULL),(15,'New',1001,NULL);
/*!40000 ALTER TABLE `blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `cityname` varchar(33) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `collectionId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  PRIMARY KEY (`collectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `blogId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `time` varchar(34) DEFAULT NULL,
  `username` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1000,123,123,'Hello','2017-11-27','ed'),(1001,1,1001,'good',NULL,'lala'),(1002,2,1001,'good choice',NULL,'lala'),(1003,2,1001,'hello',NULL,'lala');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countryId` int(11) NOT NULL,
  `countryname` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hobby` (
  `hobbyId` int(11) NOT NULL AUTO_INCREMENT,
  `supertypeId` varchar(36) DEFAULT NULL,
  `userId` varchar(37) DEFAULT NULL,
  PRIMARY KEY (`hobbyId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobby`
--

LOCK TABLES `hobby` WRITE;
/*!40000 ALTER TABLE `hobby` DISABLE KEYS */;
INSERT INTO `hobby` VALUES (1,'1','1000');
/*!40000 ALTER TABLE `hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inform`
--

DROP TABLE IF EXISTS `inform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inform`
--

LOCK TABLES `inform` WRITE;
/*!40000 ALTER TABLE `inform` DISABLE KEYS */;
/*!40000 ALTER TABLE `inform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `jobId` int(11) NOT NULL,
  `jobname` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`jobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likeit`
--

DROP TABLE IF EXISTS `likeit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likeit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likeit`
--

LOCK TABLES `likeit` WRITE;
/*!40000 ALTER TABLE `likeit` DISABLE KEYS */;
/*!40000 ALTER TABLE `likeit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `mailId` int(11) NOT NULL AUTO_INCREMENT,
  `fromuserId` int(11) DEFAULT NULL,
  `touserId` int(11) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `time` varchar(34) DEFAULT NULL,
  `fromusername` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`mailId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (1,111,111,'good essay','2017-11-26 18:53:07',NULL),(2,1001,1001,'Hello ','2017-11-26 19:54:12','lala'),(3,1001,1001,'Thank you ','2017-11-26 20:30:36','lala');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `isread` varchar(34) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,111,'0','您有一封新的私信',NULL),(2,111,'0','您的文章有了新的评论',NULL),(3,1001,'1','您有一封新的私信',NULL),(4,1001,'1','您的文章有了新的评论',NULL),(5,1001,'1','您的文章有了新的评论',NULL),(6,1001,'1','您有一封新的私信',NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `provinceId` int(11) NOT NULL,
  `provinceName` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`provinceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supertype`
--

DROP TABLE IF EXISTS `supertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supertype` (
  `supertypeId` int(11) NOT NULL AUTO_INCREMENT,
  `supertypeName` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`supertypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supertype`
--

LOCK TABLES `supertype` WRITE;
/*!40000 ALTER TABLE `supertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `supertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `identity` varchar(45) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `jobId` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1000,'ed','123',NULL,NULL,NULL,NULL,NULL),(1001,'lala','123','user',NULL,NULL,NULL,NULL),(1002,'admin','123','admin',NULL,NULL,NULL,NULL),(1003,'tube','123','user',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-28 19:01:17
