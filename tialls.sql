-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: master
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BOARDMANAGETABLE`
--

DROP TABLE IF EXISTS `BOARDMANAGETABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOARDMANAGETABLE` (
  `B_IDX` int(11) NOT NULL AUTO_INCREMENT,
  `B_CODE` varchar(20) NOT NULL,
  `B_NAME` varchar(20) NOT NULL,
  `B_REGDATE` date NOT NULL,
  PRIMARY KEY (`B_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOARDMANAGETABLE`
--

LOCK TABLES `BOARDMANAGETABLE` WRITE;
/*!40000 ALTER TABLE `BOARDMANAGETABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BOARDMANAGETABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOARDTABLE`
--

DROP TABLE IF EXISTS `BOARDTABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOARDTABLE` (
  `B_NO` varchar(20) NOT NULL,
  `B_BMIDX` int(11) NOT NULL,
  `B_NAME` varchar(20) NOT NULL,
  `B_PASS` varchar(50) NOT NULL,
  `B_TITLE` varchar(100) NOT NULL,
  `B_CONTENT` text NOT NULL,
  `B_ORGFNAME` varchar(100) NOT NULL,
  `B_REFNAME` varchar(20) NOT NULL,
  `B_FPATH` varchar(100) NOT NULL,
  `B_VIEWS` int(11) NOT NULL,
  `B_INSERTDATE` date NOT NULL,
  `B_UPDATEDATE` date NOT NULL,
  `B_DELETEYN` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`B_NO`),
  KEY `B_BMIDX_fk` (`B_BMIDX`),
  CONSTRAINT `B_BMIDX_fk` FOREIGN KEY (`B_BMIDX`) REFERENCES `BOARDMANAGETABLE` (`B_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOARDTABLE`
--

LOCK TABLES `BOARDTABLE` WRITE;
/*!40000 ALTER TABLE `BOARDTABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `BOARDTABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REPLYBOARDTABLE`
--

DROP TABLE IF EXISTS `REPLYBOARDTABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPLYBOARDTABLE` (
  `B_NO` varchar(20) NOT NULL,
  `B_PBNO` varchar(20) NOT NULL,
  `B_NAME` varchar(20) NOT NULL,
  `B_TITLE` varchar(100) NOT NULL,
  `B_CONTENT` text NOT NULL,
  `B_INSERTDATE` date NOT NULL,
  `B_UPDATEDATE` date NOT NULL,
  `B_DELETEYN` varchar(1) NOT NULL DEFAULT 'N',
  KEY `B_PBNO_fk` (`B_PBNO`),
  CONSTRAINT `B_PBNO_fk` FOREIGN KEY (`B_PBNO`) REFERENCES `BOARDTABLE` (`B_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REPLYBOARDTABLE`
--

LOCK TABLES `REPLYBOARDTABLE` WRITE;
/*!40000 ALTER TABLE `REPLYBOARDTABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `REPLYBOARDTABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEMMENUTABLE`
--

DROP TABLE IF EXISTS `SEMMENUTABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEMMENUTABLE` (
  `S_MNO` varchar(12) DEFAULT NULL,
  `S_SNO` int(11) NOT NULL AUTO_INCREMENT,
  `S_PATH` varchar(100) DEFAULT NULL,
  `S_WAITING` varchar(10) DEFAULT NULL,
  `S_TIME` varchar(20) DEFAULT NULL,
  `S_SEAT` varchar(200) DEFAULT NULL,
  `S_MNAME` varchar(20) DEFAULT NULL,
  `S_MPRICE` varchar(7) DEFAULT NULL,
  `S_ORGFNAME` varchar(100) DEFAULT NULL,
  `S_REFNAME` varchar(100) DEFAULT NULL,
  `S_IMAGEPATH` varchar(100) DEFAULT NULL,
  `S_INSERTTIME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`S_SNO`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEMMENUTABLE`
--

LOCK TABLES `SEMMENUTABLE` WRITE;
/*!40000 ALTER TABLE `SEMMENUTABLE` DISABLE KEYS */;
INSERT INTO `SEMMENUTABLE` VALUES ('M20230824020',100,'/images/',NULL,NULL,NULL,'인앤아웃피자','10000','피자1.jpg','20230825_002737.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824014',101,'/images/',NULL,NULL,NULL,'조점례남문피순대','123','2338389_1670197879744692.jpg','20230825_0028301.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824019',102,'/images/',NULL,NULL,NULL,'BHC','00','치킨1.JPG','20230825_0028845.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',103,'/images/',NULL,NULL,NULL,'맘스터치','00','캡처.JPG','20230825_0029691.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',104,'/images/',NULL,NULL,NULL,'족떡이네','123','download.jpg','20230825_0031843.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824017',105,'/images/',NULL,NULL,NULL,'몽몽뚝배기','00','뭉뭉.JPG','20230825_0031549.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',106,'/images/',NULL,NULL,NULL,'호랑이 반점','00','호랑이 반점.JPG','20230825_0032988.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824012',108,'/images/',NULL,NULL,NULL,'페퍼 하우스','00','페퍼 하우스.JPG','20230825_0034820.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824004',109,'/images/',NULL,NULL,NULL,'원기욱','123123','download.jpg','20230825_0034319.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824011',110,'/images/',NULL,NULL,NULL,'비비고&직화','00','비비고엔직화.JPG','20230825_0035973.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',111,'/images/',NULL,NULL,NULL,'곱쭈','123','images.jpg','20230825_0035456.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824010',112,'/images/',NULL,NULL,NULL,'레스토랑 솔래미','00','솔래미.JPG','20230825_0036101.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824014',113,'/images/',NULL,NULL,NULL,'순대국밥','9000','순대국밥.JPG','20230825_051058.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824009',114,'/images/',NULL,'00:30:00','30','마라공방','00','마라공방.JPG','20230825_0038946.JPG','/home/master/ROOT/resources/img/','15:35:53'),('M20230824008',115,'/images/',NULL,'00:30:00','20','매력막걸리','00','매력막걸이.JPG','20230825_0038576.JPG','/home/master/ROOT/resources/img/','12:21:21'),('M20230824014',116,'/images/',NULL,NULL,NULL,'피순대','19000','피순대.JPG','20230825_0511871.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824014',117,'/images/',NULL,NULL,NULL,'모듬고기','19000','모듬고기.JPG','20230825_0511336.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824007',118,'/images/',NULL,NULL,NULL,'전주미나리쌈겹살','123','캡처.PNG','20230825_0040561.PNG','/home/master/ROOT/resources/img/',NULL),('M20230824007',119,'/images/',NULL,NULL,NULL,'미나리삼겹살(180g)','14000','미나리삼겹살.JPG','20230825_0247313.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824007',120,'/images/',NULL,NULL,NULL,'미나리목살(180g)','14000','미나리목살.JPG','20230825_0247260.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824007',121,'/images/',NULL,NULL,NULL,'미나리비빔밥','6000','미나리비빔밥.JPG','20230825_0254926.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824007',122,'/images/',NULL,NULL,NULL,'된장찌개','5000','된장찌개.JPG','20230825_0256358.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824007',123,'/images/',NULL,NULL,NULL,'냉면','5000','냉면.JPG','20230825_0258659.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824014',124,'/images/',NULL,NULL,NULL,'편육','15000','누름고기.JPG','20230825_0510287.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824014',125,'/images/',NULL,NULL,NULL,'막걸리','4000','막걸리.JPG','20230825_0511891.JPG','/home/master/ROOT/resources/img/',NULL),('M20230826001',126,'/images/',NULL,NULL,NULL,'청라멘','000','청라멘.JPG','20230826_0021394.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',128,'/images/',NULL,NULL,NULL,'부자 정식','22000','부자 정식.JPG','20230826_0708895.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',129,'/images/',NULL,NULL,NULL,'족떡이 정식','19000','족떡이 정식.JPG','20230826_0709829.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',130,'/images/',NULL,NULL,NULL,'눈떡이 정식','19000','눈떡이 정식.JPG','20230826_0711878.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',131,'/images/',NULL,NULL,NULL,'떡구 정식','15000','떡구 정식.JPG','20230826_0713810.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',132,'/images/',NULL,NULL,NULL,'맥주','5000','맥주.JPG','20230826_0715792.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824015',133,'/images/',NULL,NULL,NULL,'소주','5000','소주.JPG','20230826_0716348.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',134,'/images/',NULL,NULL,NULL,'옛날 짜장면','6000','옛날 짜장면.JPG','20230826_072537.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',135,'/images/',NULL,NULL,NULL,'해물 짬뽕','8000','해물짬뽕.JPG','20230826_0726120.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',136,'/images/',NULL,NULL,NULL,'삼선 볶음밥','9000','삼선볶음밥.JPG','20230826_0726787.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',137,'/images/',NULL,NULL,NULL,'찹쌀 탕수육','17000','찹쌀 탕수육.JPG','20230826_0726721.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',138,'/images/',NULL,NULL,NULL,'칭따오','6000','칭따오.JPG','20230826_0727272.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',139,'/images/',NULL,NULL,NULL,'이과도주','4000','이과도주.JPG','20230826_0727694.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824016',140,'/images/',NULL,NULL,NULL,'고량주','6000','고량주.JPG','20230826_0728397.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824017',141,'/images/',NULL,NULL,NULL,'특 얼큰 순두부','7000','특 얼큰 순두부.JPG','20230826_0732613.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824017',142,'/images/',NULL,NULL,NULL,'1962 순두부','6500','1962 순두부.JPG','20230826_0732211.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824017',143,'/images/',NULL,NULL,NULL,'콩비지','5000','콩비지.JPG','20230826_0737521.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824017',144,'/images/',NULL,NULL,NULL,'된장찌개','5000','된장찌개2.JPG','20230826_0741295.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824017',145,'/images/',NULL,NULL,NULL,'제육 직화','14000','제육볶음.JPG','20230826_074148.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',146,'/images/',NULL,NULL,NULL,'싸이버거(단품)','4600','싸이버거 단품.png','20230826_0758716.png','/home/master/ROOT/resources/img/',NULL),('M20230824018',147,'/images/',NULL,NULL,NULL,'싸이버거(세트)','6900','싸이버거 세트.JPG','20230826_075860.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',148,'/images/',NULL,NULL,NULL,'불싸이버거(단품)','4800','불싸이버거 단품.JPG','20230826_075911.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',149,'/images/',NULL,NULL,NULL,'불싸이버거(세트)','7100','불싸이버거 세트.JPG','20230826_0759805.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',150,'/images/',NULL,NULL,NULL,'싸이플렉스버거(단품)','7700','싸이플렉스버거.png','20230826_0800456.png','/home/master/ROOT/resources/img/',NULL),('M20230824018',151,'/images/',NULL,NULL,NULL,'싸이플렉스버거(세트)','10000','싸이플렉스버거 세트.JPG','20230826_0800346.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',152,'/images/',NULL,NULL,NULL,'휠렛버거(단품)','4400','휠렛버거 단품.png','20230826_0801303.png','/home/master/ROOT/resources/img/',NULL),('M20230824018',153,'/images/',NULL,NULL,NULL,'휠렛버거(세트)','6700','휠렛버거 세트.JPG','20230826_080168.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',154,'/images/',NULL,NULL,NULL,'화이트갈릭버거(단품)','4900','화이트갈릭버거 단품.JPG','20230826_0803521.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824018',155,'/images/',NULL,NULL,NULL,'화이트갈릭버거(세트)','7200','화이트갈릭버거 세트.JPG','20230826_0803539.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824019',159,'/images/',NULL,NULL,NULL,'치퐁당 후라이드','20000','치퐁당 후라이드.JPG','20230828_0708479.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824019',160,'/images/',NULL,NULL,NULL,'포테킹 후라이드','20000','포테킹 후라이드.jpg','20230828_0709746.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824019',161,'/images/',NULL,NULL,NULL,'싸이순살','20900','싸이순살.JPG','20230828_0709300.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824019',162,'/images/',NULL,NULL,NULL,'뿌링클','18000','뿌링클.png','20230828_0710802.png','/home/master/ROOT/resources/img/',NULL),('M20230824019',163,'/images/',NULL,NULL,NULL,'맛초킹','18000','맛초킹.png','20230828_0710244.png','/home/master/ROOT/resources/img/',NULL),('M20230824019',164,'/images/',NULL,NULL,NULL,'레드킹','19000','레드킹.jpg','20230828_0710447.jpg','/home/master/ROOT/resources/img/',NULL),('M20230824004',165,'/images/',NULL,NULL,NULL,'숯불양념갈비(250g)','14000','숯불양념갈비.JPG','20230828_0724953.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824004',166,'/images/',NULL,NULL,NULL,'숯불생갈비(250g)','14000','숯불생갈비.JPG','20230828_0724215.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824004',167,'/images/',NULL,NULL,NULL,'쟁반냉면','8000','쟁반냉면.JPG','20230828_0725326.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824004',168,'/images/',NULL,NULL,NULL,'된장국','1000','된장국1.JPG','20230828_0725335.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824004',169,'/images/',NULL,NULL,NULL,'공기밥','1000','공기밥.webp','20230828_0725551.webp','/home/master/ROOT/resources/img/',NULL),('M20230824004',170,'/images/',NULL,NULL,NULL,'소주','4000','소주.JPG','20230828_0726500.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824004',171,'/images/',NULL,NULL,NULL,'맥주','4000','맥주.JPG','20230828_0726573.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',172,'/images/',NULL,NULL,NULL,'쭈꾸미 곱창(300g)','14000','쭈꾸미곱창.JPG','20230828_0736991.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',173,'/images/',NULL,NULL,NULL,'쭈꾸미(300g)','12800','쭈꾸미.JPG','20230828_073738.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',174,'/images/',NULL,NULL,NULL,'곱창(250g)','18800','곱창.JPG','20230828_073712.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',175,'/images/',NULL,NULL,NULL,'대창(250g)','18800','대창.JPG','20230828_0737210.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',176,'/images/',NULL,NULL,NULL,'곱창전골','45000','곱창전골.JPG','20230828_073839.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824005',177,'/images/',NULL,NULL,NULL,'쭈꾸미 비빔밥','9000','쭈꾸미비빔밥.JPG','20230828_0738607.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824008',178,'/images/',NULL,'00:30:00','20','서울 장수 막걸리','3000','막걸리.JPG','20230828_081522.JPG','/home/master/ROOT/resources/img/','12:21:21'),('M20230824008',179,'/images/',NULL,'00:30:00','20','공주 알밤 생 막걸리','4000','공주 알밤 생막걸리.JPG','20230828_0815867.JPG','/home/master/ROOT/resources/img/','12:21:21'),('M20230824008',180,'/images/',NULL,'00:30:00','20','가평 잣 생 막걸리','4000','가평 잣 생 막걸리.JPG','20230828_0816370.JPG','/home/master/ROOT/resources/img/','12:21:21'),('M20230824008',181,'/images/',NULL,'00:30:00','20','생 배다리 막걸리','4000','생 배다리막걸리.png','20230828_081677.png','/home/master/ROOT/resources/img/','12:21:21'),('M20230824008',182,'/images/',NULL,'00:30:00','20','국순당 생 막걸리','4000','국순당 생막걸리.JPG','20230828_0817360.JPG','/home/master/ROOT/resources/img/','12:21:21'),('M20230824008',183,'/images/',NULL,'00:30:00','20','생 옥수수 동동주','4000','생 옥수수 동동주.JPG','20230828_0817943.JPG','/home/master/ROOT/resources/img/','12:21:21'),('M20230824009',184,'/images/',NULL,'00:30:00','30','마라탕(100g)','1800','마라탕.JPG','20230828_0824161.JPG','/home/master/ROOT/resources/img/','15:35:53'),('M20230824009',185,'/images/',NULL,'00:30:00','30','마라샹궈(100g)','3200','마라샹궈.JPG','20230828_0827154.JPG','/home/master/ROOT/resources/img/','15:35:53'),('M20230824009',186,'/images/',NULL,'00:30:00','30','꿔바로우','10000','꿔바로우.JPG','20230828_0824561.JPG','/home/master/ROOT/resources/img/','15:35:53'),('M20230824009',187,'/images/',NULL,'00:30:00','30','향라새우','23000','향라새우.JPG','20230828_0825139.JPG','/home/master/ROOT/resources/img/','15:35:53'),('M20230824009',188,'/images/',NULL,'00:30:00','30','지삼선','13000','지삼선.JPG','20230828_0825738.JPG','/home/master/ROOT/resources/img/','15:35:53'),('M20230824007',190,'/images/',NULL,NULL,NULL,'소주','5000','소주.JPG','20230829_0603777.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824007',191,'/images/',NULL,NULL,NULL,'맥주','5000','맥주.JPG','20230829_0603235.JPG','/home/master/ROOT/resources/img/',NULL),('M20230824009',192,'/images/',NULL,NULL,NULL,'만두','10000','202303271 (1).JPG','20230829_0637703.JPG','/home/master/ROOT/resources/img/',NULL);
/*!40000 ALTER TABLE `SEMMENUTABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEMTABLE`
--

DROP TABLE IF EXISTS `SEMTABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEMTABLE` (
  `S_NO` varchar(12) NOT NULL,
  `S_ID` varchar(20) DEFAULT NULL,
  `S_PASS` varchar(50) DEFAULT NULL,
  `S_POST` varchar(5) DEFAULT NULL,
  `S_ADDR1` varchar(100) DEFAULT NULL,
  `S_ADDR2` varchar(50) DEFAULT NULL,
  `S_GENDER` varchar(1) DEFAULT NULL,
  `S_BIRTH` varchar(10) DEFAULT NULL,
  `S_NAME` varchar(5) DEFAULT NULL,
  `S_EMAIL` varchar(50) DEFAULT NULL,
  `S_STOREPHONE` varchar(13) DEFAULT NULL,
  `S_PHONE` varchar(13) DEFAULT NULL,
  `S_MORGFNMAE` varchar(200) DEFAULT NULL,
  `S_MREFNAME` varchar(200) DEFAULT NULL,
  `S_MFPATH` varchar(200) DEFAULT NULL,
  `S_IMAGE` varchar(200) DEFAULT NULL,
  `S_INSERTDATE` date DEFAULT NULL,
  `S_DELETEDATE` date DEFAULT NULL,
  `S_AUTHORITY` varchar(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`S_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEMTABLE`
--

LOCK TABLES `SEMTABLE` WRITE;
/*!40000 ALTER TABLE `SEMTABLE` DISABLE KEYS */;
INSERT INTO `SEMTABLE` VALUES ('M20230824001','2222','d636db2fa5ce5895863e3e98b1b8d7c7','03415','서울 은평구 갈현로12길 4','123','M','20011004','사업자','123123@naver.com','010-111-1111','010-8796-6031','qqqq.png','20230824_0040649.png','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'N'),('M20230824003','jtr6120','d3af535dcc9fcaab1b6d9284db223986','06112','서울 강남구 논현로123길 4-1','123','M','20010926','김지성','213@123','000-000-0000','010-2357-6120','4.jpg','20230824_0049475.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824004','test8','d636db2fa5ce5895863e3e98b1b8d7c7','01027','서울 강북구 삼양로123가길 3','은행빌라','M','20011002','사업자','123123@naver.com','010-111-1111','010-8796-6038','cat2.jpg','20230824_0214635.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824005','test9','d636db2fa5ce5895863e3e98b1b8d7c7','01066','서울 강북구 한천로123가길 5','123123','M','20011000','사업자','123123@naver.com','010-876-1111','010-8796-6031','cat2.jpg','20230824_021586.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824006','test10','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현동 130-26','123','F','20011002','사업자','123123@naver.com','010-111-1111','010-8796-6031','cat2.jpg','20230824_0215362.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824007','test11','d636db2fa5ce5895863e3e98b1b8d7c7','05315','서울 강동구 양재대로123길 7','강동그랑시아','M','20011002','사업자','123123@naver.com','010-876-1111','010-8796-6031','zzzz.png','20230824_0216987.png','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824008','test12','d636db2fa5ce5895863e3e98b1b8d7c7','05222','서울 강동구 상일로23길 7','123','M','10000000','사업자','123123@naver.com','','010-8796-6031',NULL,NULL,NULL,NULL,'2023-08-24',NULL,'M'),('M20230824009','test13','d636db2fa5ce5895863e3e98b1b8d7c7','01437','서울 도봉구 도봉로123길 8','123','M','20011002','사업자','123','010-111-1111','010-8796-6031','zzzz.png','20230824_0217260.png','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824010','test14','d636db2fa5ce5895863e3e98b1b8d7c7','48060','부산 해운대구 APEC로 17','센텀리더스마크','M','20011002','사업자','123123@naver.com','010-111-1111','010-8796-6031','cat2.jpg','20230824_0217403.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824011','test15','d636db2fa5ce5895863e3e98b1b8d7c7','18584','경기 화성시 우정읍 3.1만세로281번길 29-28','123','M','20011000','사업자','123123@naver.com','010-111-1111','010-8796-6031','qqqq.png','20230824_0219115.png','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824012','test16','d636db2fa5ce5895863e3e98b1b8d7c7','05366','서울 강동구 명일로12길 6','강동그랑시아','M','20011002','사업자','123123@naver.com','010-111-1111','010-8796-1111','qqqq.png','20230824_0220105.png','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824013','user1','d3af535dcc9fcaab1b6d9284db223986','06112','서울 강남구 논현로123길 4-1','123','M','20010925','김태수','123@123','000-000-0000','010-2357-6120','2.JPG','20230824_1632203.JPG','C:\\javaPro\\20.spring\\sem\\src\\main\\webapp\\resources\\img','/images/','2023-08-24',NULL,'U'),('M20230824014','test1','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현로123길 4-1','123','M','20010925','일','213@123','000-000-0000','010-2357-6120','4.jpg','20230824_0812613.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824015','test2','d636db2fa5ce5895863e3e98b1b8d7c7','01027','서울 강북구 삼양로123가길 3','은행빌라','M','20010925','이','123@123','000-000-0000','010-2357-6120','2.JPG','20230824_0814457.JPG','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230824016','test3','d636db2fa5ce5895863e3e98b1b8d7c7','05315','서울 강동구 양재대로123길 7','강동그랑시아','M','20010925','삼','123@123','000-000-0000','010-2357-6120','4.jpg','20230824_1719587.jpg','C:\\javaPro\\20.spring\\sem\\src\\main\\webapp\\resources\\img','/images/','2023-08-24',NULL,'M'),('M20230824017','test4','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현로123길 4-1','123','M','20010925','사','123@123','000-000-0000','010-2357-6120','2.JPG','20230824_1721215.JPG','C:\\javaPro\\20.spring\\sem\\src\\main\\webapp\\resources\\img','/images/','2023-08-24',NULL,'M'),('M20230824018','test5','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현로123길 4-1','123','M','20010925','오','123@123','000-000-0000','010-2357-6120','4.jpg','20230824_1722620.jpg','C:\\javaPro\\20.spring\\sem\\src\\main\\webapp\\resources\\img','/images/','2023-08-24',NULL,'M'),('M20230824019','test6','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현로123길 4-1','123','M','20010925','육','123@123','000-000-0000','010-2357-6120','피자1.jpg','20230824_1723287.jpg','C:\\javaPro\\20.spring\\sem\\src\\main\\webapp\\resources\\img','/images/','2023-08-24',NULL,'M'),('M20230824020','test7','d636db2fa5ce5895863e3e98b1b8d7c7','05315','서울 강동구 양재대로123길 7','강동그랑시아','M','20010925','칠','123@123','000-000-0000','010-2357-6120','피자2.jpg','20230824_0830758.jpg','/home/master/ROOT/resources/img/','/images/','2023-08-24',NULL,'M'),('M20230826001','test20','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현로123길 4-1','123','M','20010925','김지성','123@123','000-000-0000','010-2357-6120','매력막걸이.JPG','20230826_0015677.JPG','/home/master/ROOT/resources/img/','/images/','2023-08-26',NULL,'M'),('R20230817003','1111','d636db2fa5ce5895863e3e98b1b8d7c7','05071','서울 광진구 아차산로 188','청진빌딩','M','20230817','관리자','tkdjqwk1@naver.com','010-111-1111','010-4087-5014','화면 캡처 2023-07-28 162332.png','20230817_0933441.png','C:\\javaPro\\30.project\\sem\\src\\main\\webapp\\resources\\img',NULL,'2023-08-17',NULL,'R'),('U20230824002','3333','d636db2fa5ce5895863e3e98b1b8d7c7','54891','전북 전주시 덕진구 가련산로 5','123123','M','20011004','사용자','123123@naver.com',NULL,'010-8796-6031',NULL,NULL,NULL,NULL,'2023-08-24',NULL,'U'),('U20230824021','test999999','d636db2fa5ce5895863e3e98b1b8d7c7','06112','서울 강남구 논현로123길 4-1','213','M','20010925','김지성','123@123',NULL,'010-2357-6120',NULL,NULL,NULL,NULL,'2023-08-24',NULL,'U');
/*!40000 ALTER TABLE `SEMTABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (28,'이광민','너의 이야기','너의 이야기','2023-07-14 00:00:00',10000000,'127.0.0.1'),(29,'이광민','나나오','나니~','2023-07-14 00:00:00',10000000,'127.0.0.1'),(30,'주일권','1425125','13645745','2023-07-14 00:00:00',10000000,'127.0.0.1'),(32,'주일권','121212','121212','2023-07-17 00:00:00',1000000,'127.0.0.1'),(35,'주일권','','','2023-07-14 00:00:00',10000000,'127.0.0.1'),(36,'주일권','','','2023-07-14 00:00:00',10000000,'127.0.0.1'),(37,'홍길동','1234','1234','2023-07-17 00:00:00',1000000,'127.0.0.1'),(38,'주일권','연습','연습','2023-01-01 00:00:00',1,'172.0.0.2'),(39,'주일권','연습','연습','2023-01-01 00:00:00',1,'172.0.0.2'),(40,'주일권','연습','연습','2023-11-11 00:00:00',1,'172.0.0.2'),(41,'ëª°ë¼','15134532','124124','2023-11-11 00:00:00',1,'100.1.1.1'),(42,'1234','1234','1234','2023-11-11 00:00:00',1,'100.1.1.1');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `bidx` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `hit` int(11) DEFAULT NULL,
  `ip` varchar(100) NOT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `b_fk` (`bidx`),
  CONSTRAINT `b_fk` FOREIGN KEY (`bidx`) REFERENCES `board` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,42,'1234','1234',1,'192.0.0.1','2023-08-04 07:58:22'),(2,42,'1234','1231234',1,'192.0.0.1','2023-08-04 07:58:37'),(3,42,'123123','123123',1,'192.0.0.1','2023-08-04 08:05:40'),(4,42,'1212','23232',1,'192.0.0.1','2023-08-04 08:51:04'),(5,40,'ㅎㅀㅀㄹ','ㅀㅀ',1,'192.0.0.1','2023-08-04 08:51:33'),(6,42,'111','111',1,'192.0.0.1','2023-08-07 00:11:14'),(14,42,'123','123',1,'192.0.0.1','2023-08-07 01:20:21'),(33,42,'123','123',1,'192.0.0.1','2023-08-07 01:20:26'),(54,42,'12312311','12312311',NULL,'1',NULL),(57,42,'123','123',NULL,'1',NULL),(58,42,'123','132',NULL,'1','2023-08-07 01:51:50'),(59,42,'123','123',NULL,'1','2023-08-07 01:52:23'),(60,42,'지','지',1,'1','2023-08-07 01:52:47');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `passsword` varchar(100) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `gisu` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,NULL,NULL,'산대특','2기','박현미','여',NULL,NULL,'2023-07-26 05:58:13'),(2,NULL,NULL,'산대특','2기','김민후','남',NULL,NULL,'2023-07-26 05:59:38'),(3,NULL,NULL,'산대특','2기','서우진','남',NULL,NULL,'2023-07-26 05:59:41'),(4,NULL,NULL,'산대특','2기','송동엽','남',NULL,NULL,'2023-07-26 05:59:44'),(5,NULL,NULL,'산대특','2기','이성찬','남',NULL,NULL,'2023-07-26 05:59:44'),(6,NULL,NULL,'산대특','2기','정승원','남',NULL,NULL,'2023-07-26 05:59:45'),(7,NULL,NULL,'산대특','2기','임태현','남',NULL,NULL,'2023-07-26 05:59:46'),(8,NULL,NULL,'산대특','2기','강다현','여',NULL,NULL,'2023-07-26 05:59:46'),(9,NULL,NULL,'산대특','2기','윤강준','남',NULL,NULL,'2023-07-26 05:59:47'),(10,NULL,NULL,'산대특','2기','최다은','여',NULL,NULL,'2023-07-26 05:59:48'),(11,NULL,NULL,'산대특','2기','소영수','남',NULL,NULL,'2023-07-26 05:59:49'),(12,NULL,NULL,'산대특','2기','양세희','여',NULL,NULL,'2023-07-26 05:59:50'),(13,NULL,NULL,'산대특','2기','장재원','남',NULL,NULL,'2023-07-26 05:59:50'),(14,NULL,NULL,'산대특','2기','주일권','남',NULL,NULL,'2023-07-26 05:59:51'),(15,NULL,NULL,'산대특','2기','김지성','남',NULL,NULL,'2023-07-26 05:59:51'),(16,NULL,NULL,'산대특','2기','이성원','남',NULL,NULL,'2023-07-26 05:59:52');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `part1` int(11) NOT NULL,
  `part2` varchar(100) NOT NULL,
  `part3` varchar(100) NOT NULL,
  `part4` varchar(100) NOT NULL,
  `part5` varchar(100) NOT NULL,
  `part6` varchar(100) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `m_fk` (`midx`),
  CONSTRAINT `m_fk` FOREIGN KEY (`midx`) REFERENCES `member` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,1,100,'100','100','100','100','100','2023-07-26 06:00:44'),(2,2,100,'100','100','100','100','100','2023-07-26 06:00:45'),(3,3,100,'100','100','100','100','100','2023-07-26 06:00:45'),(4,4,100,'100','100','100','100','100','2023-07-26 06:00:46'),(5,5,100,'100','100','100','100','100','2023-07-26 06:00:46'),(6,6,100,'100','100','100','100','100','2023-07-26 06:00:47'),(7,7,100,'100','100','100','100','100','2023-07-26 06:00:48'),(8,8,100,'100','100','100','100','100','2023-07-26 06:00:49'),(9,9,100,'100','100','100','100','100','2023-07-26 06:00:52'),(10,10,100,'100','100','100','100','100','2023-07-26 06:00:54'),(11,11,100,'100','100','100','100','100','2023-07-26 06:00:54'),(12,12,100,'100','100','100','100','100','2023-07-26 06:00:55'),(13,13,100,'100','100','100','100','100','2023-07-26 06:00:55'),(14,14,100,'100','100','100','100','100','2023-07-26 06:00:56'),(15,15,100,'100','100','100','100','100','2023-07-26 06:00:57'),(16,16,100,'100','100','100','100','100','2023-07-26 06:00:58');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29  6:54:24
