-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sfa
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `approval_tbl`
--

DROP TABLE IF EXISTS `approval_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approval_tbl` (
  `APRNUM` int NOT NULL,
  `APRFORM` char(1) NOT NULL,
  `APRCATEGORY` char(1) NOT NULL,
  `APRSINGGUBUN` char(1) NOT NULL,
  `APRTITLE` varchar(20) NOT NULL,
  `CONTENTS` text,
  `APRDATE` date NOT NULL,
  `ATTDATNUM` varchar(30) DEFAULT NULL,
  `ATTDATEXFILE` varchar(10) DEFAULT NULL,
  `EMPID` int NOT NULL,
  `DEPTNM` varchar(5) DEFAULT NULL,
  `GRADE` char(8) NOT NULL,
  `EMPNM` varchar(14) NOT NULL,
  `REASON` varchar(20) DEFAULT NULL,
  `REASONCHK` char(1) DEFAULT NULL,
  `STADATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `FILEREGDATE` date DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`APRNUM`),
  KEY `EMPID` (`EMPID`),
  KEY `ATTDATNUM` (`ATTDATNUM`),
  CONSTRAINT `approval_tbl_ibfk_1` FOREIGN KEY (`EMPID`) REFERENCES `emp_tbl` (`EMPID`),
  CONSTRAINT `approval_tbl_ibfk_2` FOREIGN KEY (`ATTDATNUM`) REFERENCES `attach_tbl` (`ATTDATNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_tbl`
--

LOCK TABLES `approval_tbl` WRITE;
/*!40000 ALTER TABLE `approval_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attach_tbl`
--

DROP TABLE IF EXISTS `attach_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attach_tbl` (
  `ATTDATNUM` varchar(30) NOT NULL,
  `ATTNM` varchar(100) DEFAULT NULL,
  `ATTSIZE` varchar(30) DEFAULT NULL,
  `ATTORINM` varchar(300) DEFAULT NULL,
  `ATTDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ATTDATNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attach_tbl`
--

LOCK TABLES `attach_tbl` WRITE;
/*!40000 ALTER TABLE `attach_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `attach_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_tbl`
--

DROP TABLE IF EXISTS `company_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_tbl` (
  `comcd` varchar(10) NOT NULL,
  `comnm` varchar(50) NOT NULL,
  `reprenm` varchar(10) NOT NULL,
  `type` varchar(2) NOT NULL,
  `dttype` varchar(2) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `fax` varchar(13) DEFAULT NULL,
  `homepg` varchar(50) DEFAULT NULL,
  `customer` varchar(10) DEFAULT NULL,
  `custtel` varchar(13) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`comcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_tbl`
--

LOCK TABLES `company_tbl` WRITE;
/*!40000 ALTER TABLE `company_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl_tbl`
--

DROP TABLE IF EXISTS `dl_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dl_tbl` (
  `DLNUM` int NOT NULL,
  `EMPID` int NOT NULL,
  `DLGUBUN` char(1) NOT NULL,
  `DLDATE` date NOT NULL,
  `ONTIME` time DEFAULT NULL,
  `OFFTIME` time DEFAULT NULL,
  `EXTIME` time DEFAULT (_euckr'00:00'),
  `TOTTIME` time DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `REMARK` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`DLNUM`),
  KEY `EMPID` (`EMPID`),
  CONSTRAINT `dl_tbl_ibfk_1` FOREIGN KEY (`EMPID`) REFERENCES `emp_tbl` (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl_tbl`
--

LOCK TABLES `dl_tbl` WRITE;
/*!40000 ALTER TABLE `dl_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `dl_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_tbl`
--

DROP TABLE IF EXISTS `emp_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_tbl` (
  `EMPID` int NOT NULL,
  `DEPTID` int NOT NULL,
  `DEPTNM` varchar(5) DEFAULT NULL,
  `GRADE` char(8) NOT NULL,
  `EMPAUTH` char(1) NOT NULL,
  `EMPNM` varchar(14) NOT NULL,
  `EMPPWD` varchar(14) NOT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `BIRTH` char(10) NOT NULL,
  `BIRTHTYPE` char(1) NOT NULL,
  `REGNUM` varchar(14) NOT NULL,
  `EMPADDR` varchar(50) NOT NULL,
  `EMPHP` varchar(12) NOT NULL,
  `EMPCP` varchar(12) NOT NULL,
  `EMAIL` varchar(25) DEFAULT (_euckr''),
  `ACCOUNTNUM` varchar(20) DEFAULT NULL,
  `HOPE` varchar(10) DEFAULT NULL,
  `LICENCE` varchar(20) DEFAULT NULL,
  `HOBBY` varchar(20) DEFAULT NULL,
  `FORTE` varchar(20) DEFAULT NULL,
  `CHAGUBUN` char(1) DEFAULT NULL,
  `MILIGUBUN` char(1) DEFAULT NULL,
  `IMPEDIMENT` char(1) DEFAULT NULL,
  `PATRIOTISM` char(1) DEFAULT NULL,
  `RELIGION` char(1) DEFAULT NULL,
  `MARRYGUBUN` char(1) DEFAULT NULL,
  `LINGUISTIC` varchar(20) DEFAULT NULL,
  `REWARD` varchar(20) DEFAULT NULL,
  `JOINDATE` char(10) DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_tbl`
--

LOCK TABLES `emp_tbl` WRITE;
/*!40000 ALTER TABLE `emp_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hu_tbl`
--

DROP TABLE IF EXISTS `hu_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hu_tbl` (
  `HUNUM` int NOT NULL,
  `HUGUBUN` char(1) NOT NULL DEFAULT (_euckr'A'),
  `PAYGUBUN` char(1) NOT NULL DEFAULT (_euckr'A'),
  `PAYNM` varchar(10) NOT NULL,
  `EMPID` int NOT NULL,
  `HUSTDATE` date NOT NULL,
  `HUENDDATE` date NOT NULL,
  `PAYYA` int DEFAULT NULL,
  `PAYHU` int DEFAULT NULL,
  `PAYYEON` int DEFAULT NULL,
  `PAYGI` int DEFAULT NULL,
  `PAYDATE` date DEFAULT NULL,
  `TOTPAY` int DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`HUNUM`),
  KEY `EMPID` (`EMPID`),
  CONSTRAINT `hu_tbl_ibfk_1` FOREIGN KEY (`EMPID`) REFERENCES `emp_tbl` (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hu_tbl`
--

LOCK TABLES `hu_tbl` WRITE;
/*!40000 ALTER TABLE `hu_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `hu_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_tbl`
--

DROP TABLE IF EXISTS `item_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_tbl` (
  `itemcd` varchar(10) NOT NULL,
  `itemnm` varchar(50) NOT NULL,
  `itemdiv` varchar(2) NOT NULL,
  `itemgrp` varchar(2) NOT NULL,
  `price` int DEFAULT '0',
  `std` varchar(50) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`itemcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_tbl`
--

LOCK TABLES `item_tbl` WRITE;
/*!40000 ALTER TABLE `item_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_auth_tbl`
--

DROP TABLE IF EXISTS `notice_auth_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_auth_tbl` (
  `grpnum` varchar(10) NOT NULL,
  `grpnm` varchar(30) NOT NULL,
  `grpman` char(10) NOT NULL,
  `readauth` int DEFAULT '0',
  `writeauth` int DEFAULT '0',
  `commauth` int DEFAULT '0',
  `downauth` int DEFAULT '0',
  PRIMARY KEY (`grpnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_auth_tbl`
--

LOCK TABLES `notice_auth_tbl` WRITE;
/*!40000 ALTER TABLE `notice_auth_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_auth_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_tbl`
--

DROP TABLE IF EXISTS `notice_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_tbl` (
  `datnum` varchar(10) NOT NULL,
  `category` char(2) NOT NULL,
  `datgrp` char(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sctchk` char(1) NOT NULL,
  `contents` text,
  `person` varchar(10) NOT NULL,
  `attdatnum` varchar(30) DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`datnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_tbl`
--

LOCK TABLES `notice_tbl` WRITE;
/*!40000 ALTER TABLE `notice_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tbl`
--

DROP TABLE IF EXISTS `order_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tbl` (
  `ordnum` varchar(11) NOT NULL,
  `orddt` varchar(10) NOT NULL,
  `dlvdt` varchar(10) NOT NULL,
  `itemcd` varchar(10) NOT NULL,
  `comcd` int NOT NULL,
  `projectnm` varchar(30) DEFAULT NULL,
  `ordperson` varchar(10) DEFAULT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`ordnum`),
  KEY `itemcd` (`itemcd`),
  CONSTRAINT `order_tbl_ibfk_1` FOREIGN KEY (`itemcd`) REFERENCES `item_tbl` (`itemcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tbl`
--

LOCK TABLES `order_tbl` WRITE;
/*!40000 ALTER TABLE `order_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_tbl`
--

DROP TABLE IF EXISTS `sale_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_tbl` (
  `salenum` varchar(10) NOT NULL,
  `saledt` varchar(10) NOT NULL,
  `ordnum` varchar(10) NOT NULL,
  `itemcd` varchar(10) NOT NULL,
  `comcd` int NOT NULL,
  `projectnm` varchar(30) DEFAULT NULL,
  `ordperson` varchar(10) DEFAULT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`salenum`),
  KEY `ordnum` (`ordnum`),
  CONSTRAINT `sale_tbl_ibfk_1` FOREIGN KEY (`ordnum`) REFERENCES `order_tbl` (`ordnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_tbl`
--

LOCK TABLES `sale_tbl` WRITE;
/*!40000 ALTER TABLE `sale_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_tbl`
--

DROP TABLE IF EXISTS `stock_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_tbl` (
  `stkcd` varchar(12) NOT NULL,
  `itemcd` varchar(50) NOT NULL,
  `indt` char(10) DEFAULT NULL,
  `outdt` char(10) DEFAULT NULL,
  `stktype` char(2) NOT NULL,
  `inqty` int DEFAULT '0',
  `outqty` int DEFAULT '0',
  `janqty` int DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`stkcd`),
  KEY `itemcd` (`itemcd`),
  CONSTRAINT `stock_tbl_ibfk_1` FOREIGN KEY (`itemcd`) REFERENCES `item_tbl` (`itemcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_tbl`
--

LOCK TABLES `stock_tbl` WRITE;
/*!40000 ALTER TABLE `stock_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_tbl`
--

DROP TABLE IF EXISTS `todo_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_tbl` (
  `todonum` varchar(10) NOT NULL,
  `todo` varchar(100) DEFAULT NULL,
  `empid` int NOT NULL,
  `todoyn` varchar(1) DEFAULT NULL,
  `STRDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `insert_person` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`todonum`),
  KEY `empid` (`empid`),
  CONSTRAINT `todo_tbl_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `emp_tbl` (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_tbl`
--

LOCK TABLES `todo_tbl` WRITE;
/*!40000 ALTER TABLE `todo_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `todo_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-28  9:55:33
