-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_22
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

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
-- Table structure for table `bbms`
--

DROP TABLE IF EXISTS `bbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbms` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(100) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phonenum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_donor_name_blood_group` (`id`,`donor_name`,`blood_group`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbms`
--

LOCK TABLES `bbms` WRITE;
/*!40000 ALTER TABLE `bbms` DISABLE KEYS */;
INSERT INTO `bbms` VALUES (1,'Candelario Feeney','8','507 Noemie Plain Suite 605\nEast Marian, ID 85646-4968',68),(2,'Prof. Alyce Leuschke','4','55786 Rippin Walks\nNew Luther, ME 27120-0589',1),(3,'Melody Strosin','4','090 Miguel Lodge Apt. 299\nKirstinmouth, OR 17703-5136',48),(4,'Tiara Hahn','7','3509 Mitchell Pike\nKolbybury, OH 35300-0364',0),(5,'Quinton Heathcote','4','246 Daniel Throughway\nGorczanystad, HI 78684-6410',954902),(6,'Mac Beahan I','7','428 Leannon Run\nEast Laneychester, HI 24245',847827),(7,'Madelyn Schumm','1','490 Shyann Squares Suite 660\nCasimertown, UT 06838-4813',49),(8,'Ila Rice I','6','87333 Katelynn Mills\nWest Ashleyton, ND 38727',389079),(9,'Dr. Litzy Rath','6','89478 Willie Hill\nCristberg, HI 43414',1),(10,'Deshawn Ferry I','1','292 Daija Drive\nNorth Napoleonhaven, OR 85071',0),(11,'Letitia Bailey','2','09815 Little Fords\nGiovannashire, FL 79806-4559',871),(12,'Brionna Lebsack PhD','9','65802 Kirstin Track\nNorth Corrineland, ID 29569-9657',68),(13,'Luella Russel','6','12253 Wilderman Valleys\nLake Alvahland, AK 01511',61964),(14,'Ryley Willms I','4','937 Bradtke Terrace\nCordellchester, NE 31945-1566',364),(15,'Elza Wilkinson','4','072 Bednar Loop Apt. 413\nSouth Skylarshire, AR 93673-3973',0),(16,'Makenna Larson','8','1862 Stoltenberg Gardens Suite 287\nPort Saraiside, VT 13989',336568),(17,'Elisa Ankunding','9','74283 Kuhic Trafficway\nLake Hayleestad, IA 05599',504),(18,'Westley Dickens','5','0191 Kaitlyn Greens\nWest Victoriatown, KS 83176',890033),(19,'Prof. Kian Goldner','8','758 Sonia Manors\nRamonshire, LA 84735-4748',2),(20,'Prof. Burdette Kub','1','73863 Emilia Mills\nGleasonview, KS 52401',2147483647),(21,'Sasha Mohr','3','2151 Goyette Manor\nHirtheport, GA 09366',813743),(22,'Mr. Kale Shields','8','0661 Collier Mountains Suite 865\nEast Bricemouth, PA 17457',1563521507),(23,'Jayme Kessler','5','698 Vada Mountain\nNorth Nash, HI 38007',232757),(24,'Ernestina Rolfson','5','16776 Medhurst Rapids\nMyrnabury, ME 91959-6100',0),(25,'Marilie Nolan','7','644 Brandi Knoll\nNorth Bobbiefurt, UT 56384-7476',1),(26,'Malinda Trantow','9','5974 Jensen Ford Suite 965\nBertborough, OR 53626',1),(27,'Keven Wehner','3','71907 Alexzander Dale Suite 092\nWeimannville, PA 45319-9328',351),(28,'Miss Hilma Mills III','7','80963 Marquis Plains\nHoweton, VT 88673',1),(29,'Dr. Alberto Macejkovic DDS','8','56790 Maggio Common\nNew Zelda, MI 81612',0),(30,'Mireya Wiegand','2','40261 Hassie Circle\nMrazhaven, KS 83964',2147483647),(31,'Omari Pollich','4','77373 Wilfred Forest Apt. 415\nWest Stanley, NH 24381-8193',1),(32,'Jovanny Senger','5','735 Esperanza Crossing Apt. 867\nAmeliaberg, VA 00511',1),(33,'Ms. Isobel Mayer','7','0525 Justen Cliffs Suite 826\nLake Arch, AL 25088',604477),(34,'Christelle Rice','1','9013 Yolanda Court Suite 211\nDarechester, SD 53763-8726',1),(35,'Stuart Lesch','1','63226 Boehm Rapid\nRitchiefort, MO 35916-9339',988),(36,'Mrs. Harmony Murray III','4','7833 Jacobs Landing\nEast Catalina, TN 37818-0716',0),(37,'Marlin Friesen','7','426 Rhianna Parkways Apt. 538\nSouth Jonton, LA 87506',267507),(38,'Tillman Hamill','6','68921 Spencer Points Suite 911\nPort Laverna, OH 81378-0861',1),(39,'Prof. Isobel Morar II','4','292 Stoltenberg Lane\nPort Genoveva, SC 47223-7451',0),(40,'Dr. Stephen Rogahn III','6','554 Turcotte Fields Suite 021\nEast Karolann, VA 94777',2147483647),(41,'Kaleb Beahan','4','89949 Aurelia Drives Apt. 568\nWilliechester, IN 50287',759),(42,'Dr. Alexane Wiza','2','7189 Kozey Port\nBeulahchester, SD 38611',1),(43,'Prof. Adrian Botsford I','2','2822 Lindgren Island Apt. 243\nSouth Rosalinda, MT 98091-1116',1),(44,'Ms. Mya Haag II','9','724 Gislason Ridge\nPort Sibyl, AR 55841',0),(45,'Logan Nitzsche','7','176 Herzog Crossing Apt. 524\nStiedemannmouth, NC 70448',93),(46,'Halie Bauch','8','234 Rodriguez Trail\nEast Albinstad, UT 50540',693790),(47,'Jammie Bayer Sr.','9','24748 Tromp Ville Suite 070\nNew Magnus, OR 97124-6637',373379),(48,'Prof. Manley Kilback','6','925 Gaston Streets\nSouth Maryjaneport, AL 87444',0),(49,'Felipe Hayes','9','827 Schmeler Mall Apt. 874\nYostmouth, NM 18744-4773',0),(50,'Abdul Hodkiewicz','7','3994 Nikolaus Stream Apt. 522\nWest Lydia, LA 88887-4203',776517),(51,'Mr. Urban Kuhlman I','1','18711 Toby Circle\nNew Demetriusside, AZ 22735',0),(52,'Mr. Jeff Batz','2','84696 Schmidt Prairie\nReannaburgh, NC 65629',1),(53,'Idella Lynch','3','3565 Cullen Overpass Suite 916\nBogisichfort, TX 03306',295780),(54,'Prof. Bessie Reilly Sr.','6','3682 Yundt Stream\nAbshirefurt, NV 35987',48),(55,'Okey Zemlak','1','3332 Clement Track\nWest Willardmouth, WV 63540-2279',892626),(56,'Flo Kovacek','4','6322 Salvador Drive Suite 158\nGarfieldton, ND 99789-7635',0),(57,'Makenna Fisher Jr.','5','4474 Uriel Trafficway Apt. 647\nBotsfordville, ND 77904-4980',2147483647),(58,'Dr. Claire Bahringer III','1','4282 Romaine Pine\nPort Kalechester, CO 18255',72),(59,'Miss Ruthe O\'Conner DVM','5','47031 Amelie Circle\nQuitzonmouth, UT 77576-9890',966572),(60,'Trevion Collins','6','8420 Ebert Island Suite 003\nWest Meganemouth, TN 37449',356245),(61,'Hope Vandervort','1','557 Desiree Causeway Apt. 001\nEast Loychester, OR 63074',2147483647),(62,'Brannon Buckridge','7','5126 Schuster Burg\nSchoenmouth, WV 69218',1),(63,'Eusebio Bradtke','5','27811 Crooks Summit Suite 178\nLake Lily, ME 48436-0495',1),(64,'Rowena Jerde','4','702 Wehner Court Apt. 539\nWest Lizzie, NE 82909-3429',1),(65,'Bertram Bahringer','3','26435 Jalen Glen\nPort Breannashire, TX 75991-1218',464),(66,'Minerva Hagenes','8','0497 Abshire Forge\nAlanbury, MN 97561',0),(67,'Erika Littel','6','540 Fahey Cape\nKalebstad, KY 44838',59),(68,'Jaydon Hettinger','2','049 Ritchie Vista\nEricastad, NJ 33146-4488',52),(69,'Nathaniel Kshlerin','4','3125 Lilliana Road\nWest Malikafort, NC 37437-3972',0),(70,'Madelyn Shields','9','30693 Collier Terrace Suite 769\nEast Haley, NY 15719-0217',904),(71,'Ubaldo Cruickshank','8','5344 Kevin Mill\nDewittfort, NM 58256-1736',1185056150),(72,'Vaughn Reilly','5','35772 Kassulke Ramp\nWest Aylaland, OR 81842-3577',0),(73,'Cleo Daugherty','9','80053 Alessandro Flats\nBellfurt, KS 39540-6575',1),(74,'Dr. Barrett Kuhn','8','670 Halvorson Canyon\nHeloisebury, NJ 05595-5530',1),(75,'Haskell Bayer PhD','5','61203 Cyrus Land\nNorth Joanne, WY 93536',1),(76,'Ashly Bayer PhD','7','77599 Stehr Squares\nWest Kailyn, HI 51539-2822',621961),(77,'Kris Tremblay I','6','910 Bernier Drive\nNew Genoveva, VA 40985-5525',251),(78,'Dr. Marian Effertz Sr.','2','368 Blaise Station\nLake Mallory, ID 89936',856060),(79,'Mellie Zieme','7','500 Rowe Plaza Apt. 275\nPort Nayeliview, NC 77082-7898',43),(80,'Dr. Theo O\'Reilly','1','960 Aliza Skyway\nSouth Emilieside, NC 40197-8125',0),(81,'Bobby Raynor','5','50099 Johnston Hill Apt. 029\nNew Loma, KS 55911',1),(82,'Dr. Chelsey Considine DVM','6','054 Xavier Squares\nLindgrenmouth, WV 31502-0660',492),(83,'Estevan Kuhn','3','50993 Clyde Ways\nStoltenbergtown, WY 90484-7448',585),(84,'Dr. Caitlyn Kunze','9','4207 Moore Turnpike Suite 410\nMayefurt, ME 95026',64),(85,'Mr. Reyes Gulgowski DVM','3','215 Matilde Camp Suite 214\nNienowville, NV 67957-7096',0),(86,'Annamarie Gorczany II','1','240 Ruthe Square\nMasonton, OK 27541',858234),(87,'Melyna Bednar','7','302 Ellie Park\nWest Kevenland, VA 94501',1),(88,'Roman Crist','4','196 Johns Bridge\nEast Adrien, CT 38161',512713),(89,'Emmett Murphy II','9','66824 McLaughlin Ways\nLake Nicholaus, ND 14193-1194',28),(90,'Prof. Chance Lemke Jr.','3','173 Sincere Stravenue Apt. 624\nSkileshaven, NY 67393-9607',450),(91,'Destiney Cummings Sr.','3','69551 Marcel Unions\nLake Nataliehaven, NH 39634-4782',590462),(92,'Dr. Lucious McKenzie','2','68422 Littel Meadow\nNorth Mona, VT 42334-5822',0),(93,'Bette Lindgren II','7','6844 Turner Fork\nPrincessborough, AR 79216',0),(94,'Carmella Green','3','10517 Langworth Fort\nNorth Abdielshire, NC 98634-0678',1),(95,'Marlon Parisian','1','814 Candida Burg\nLake Emory, KY 29622',682),(96,'Jamey Ritchie Sr.','1','922 Nader Centers\nSouth Felixburgh, HI 69882-5381',1),(97,'Tina Sauer','8','5631 Rafaela Rapids Apt. 663\nSouth Jordy, TN 38581',1),(98,'Lindsay Grant','5','9504 Johann Spurs\nVergiefurt, MA 08856',1),(99,'Zelda Sanford','1','472 Cremin Fall Suite 916\nEast Alvinaberg, GA 33377-6378',0),(100,'Mrs. Ofelia Kessler','2','414 Casper Coves\nWehnerhaven, CT 08177',1488070428);
/*!40000 ALTER TABLE `bbms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11  7:19:03
