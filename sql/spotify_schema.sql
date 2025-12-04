-- MySQL dump 10.13  Distrib 8.0.44, for macos15 (arm64)
--
-- Host: localhost    Database: spotify
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `Artists`
--

DROP TABLE IF EXISTS `Artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artists` (
  `artist_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artists`
--

LOCK TABLES `Artists` WRITE;
/*!40000 ALTER TABLE `Artists` DISABLE KEYS */;
INSERT INTO `Artists` VALUES (1,'Ali Gatie'),(2,'Anuel AA'),(3,'Ariana Grande'),(4,'Bad Bunny'),(5,'Billie Eilish'),(6,'Chris Brown'),(7,'DJ Snake'),(8,'Daddy Yankee'),(9,'Drake'),(10,'Ed Sheeran'),(11,'J Balvin'),(12,'Jhay Cortez'),(13,'Jonas Brothers'),(14,'Katy Perry'),(15,'Khalid'),(16,'Kygo'),(17,'Lady Gaga'),(18,'Lauv'),(19,'Lewis Capaldi'),(20,'Lil Nas X'),(21,'Lil Tecca'),(22,'Lizzo'),(23,'Lunay'),(24,'MEDUZA'),(25,'Maluma'),(26,'Marshmello'),(27,'Martin Garrix'),(28,'Nicky Jam'),(29,'Post Malone'),(30,'ROSALIA'),(31,'Sam Smith'),(32,'Sech'),(33,'Shawn Mendes'),(34,'Taylor Swift'),(35,'The Chainsmokers'),(36,'Tones and I'),(37,'Y2K'),(38,'Young Thug'),(39,'ROSALIA'),(40,'Sam Smith'),(41,'Sech'),(42,'Sech'),(43,'Shawn Mendes'),(44,'Shawn Mendes'),(45,'Taylor Swift'),(46,'The Chainsmokers'),(47,'The Chainsmokers'),(48,'Tones and I'),(49,'Y2K'),(50,'Young Thug');
/*!40000 ALTER TABLE `Artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Popularity`
--

DROP TABLE IF EXISTS `Popularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Popularity` (
  `music_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `song_id` bigint unsigned NOT NULL,
  `chart_rank` int NOT NULL,
  `popularity_score` int NOT NULL,
  PRIMARY KEY (`music_id`),
  KEY `fk_popularity_song` (`song_id`),
  CONSTRAINT `fk_popularity_song` FOREIGN KEY (`song_id`) REFERENCES `Songs` (`song_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Popularity`
--

LOCK TABLES `Popularity` WRITE;
/*!40000 ALTER TABLE `Popularity` DISABLE KEYS */;
INSERT INTO `Popularity` VALUES (1,1,1,79),(2,2,2,92),(3,3,3,85),(4,4,4,86),(5,5,5,94),(6,6,6,84),(7,7,7,92),(8,8,8,90),(9,9,9,87),(10,10,10,95),(11,11,11,93),(12,12,12,86),(13,13,13,88),(14,14,14,87),(15,15,15,92),(16,16,16,82),(17,17,17,90),(18,18,18,91),(19,19,19,88),(20,20,20,91),(21,21,21,91),(22,22,22,91),(23,23,23,83),(24,24,24,91),(25,25,25,89),(26,26,26,70),(27,27,27,83),(28,28,28,89),(29,29,29,91),(30,30,30,89),(31,31,31,84),(32,32,32,89),(33,33,33,89),(34,34,34,89),(35,35,35,89),(36,36,36,89),(37,37,37,91),(38,38,38,87),(39,39,39,80),(40,40,40,78),(41,41,41,88),(42,42,42,90),(43,43,43,87),(44,44,44,84),(45,45,45,88),(46,46,46,88),(47,47,47,88),(48,48,48,88),(49,49,49,88),(50,50,50,82);
/*!40000 ALTER TABLE `Popularity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Songs`
--

DROP TABLE IF EXISTS `Songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Songs` (
  `song_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `track_name` varchar(255) NOT NULL,
  `artist_id` bigint unsigned NOT NULL,
  `genre` varchar(255) NOT NULL,
  `genre_group` varchar(50) NOT NULL,
  `length_seconds` int NOT NULL,
  `beats_per_minute` int NOT NULL,
  `acousticness` int NOT NULL,
  `danceability` int NOT NULL,
  `loudness_db` int NOT NULL,
  `energy` int NOT NULL,
  `liveness` int NOT NULL,
  `speechiness` int NOT NULL,
  `valence` int NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `fk_songs_artist` (`artist_id`),
  CONSTRAINT `fk_songs_artist` FOREIGN KEY (`artist_id`) REFERENCES `Artists` (`artist_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Songs`
--

LOCK TABLES `Songs` WRITE;
/*!40000 ALTER TABLE `Songs` DISABLE KEYS */;
INSERT INTO `Songs` VALUES (1,'Senorita',33,'canadian pop','Pop',191,117,4,76,-6,55,8,3,75),(2,'China',2,'reggaeton flow','Latin',302,105,8,79,-4,81,8,9,61),(3,'boyfriend (with Social House)',3,'dance pop','Pop',186,190,12,40,-4,80,16,46,70),(4,'Beautiful People (feat. Khalid)',10,'pop','Pop',198,93,12,64,-8,65,8,19,55),(5,'Goodbyes (Feat. Young Thug)',29,'dfw rap','Hip Hop',175,150,45,58,-4,65,11,7,18),(6,'I Don\'t Care (with Justin Bieber)',10,'pop','Pop',220,102,9,80,-5,68,9,4,84),(7,'Ransom',21,'trap music','Hip Hop',131,180,2,75,-6,64,7,29,23),(8,'How Do You Sleep?',31,'pop','Pop',202,111,15,48,-5,68,8,9,35),(9,'Old Town Road - Remix',20,'country rap','Hip Hop',157,136,5,88,-6,62,11,10,64),(10,'bad guy',5,'electropop','Electronic',194,135,33,70,-11,43,10,38,56),(11,'Callaita',4,'reggaeton','Latin',251,176,60,61,-5,62,24,31,24),(12,'Loco Contigo (feat. J. Balvin & Tyga)',7,'dance pop','Pop',185,96,28,82,-4,71,15,7,38),(13,'Someone You Loved',19,'pop','Pop',182,110,75,50,-6,41,11,3,45),(14,'Otro Trago - Remix',32,'panamanian pop','Latin',288,176,7,73,-2,79,6,20,76),(15,'Money In The Grave (Drake ft. Rick Ross)',9,'canadian hip hop','Hip Hop',205,101,10,83,-4,50,12,5,10),(16,'No Guidance (feat. Drake)',6,'dance pop','Pop',261,93,12,70,-7,45,16,15,14),(17,'LA CANCION',11,'latin','Latin',243,176,15,75,-6,65,11,32,43),(18,'Sunflower - Spider-Man: Into the Spider-Verse',29,'dfw rap','Hip Hop',158,90,56,76,-6,48,7,5,91),(19,'Lalala',37,'canadian hip hop','Hip Hop',161,130,18,84,-8,39,14,8,50),(20,'Truth Hurts',22,'escape room','Experimental',173,158,11,72,-3,62,12,11,41),(21,'Piece Of Your Heart',24,'pop house','Pop',153,124,4,68,-7,74,7,3,63),(22,'Panini',20,'country rap','Hip Hop',115,154,34,70,-6,59,12,8,48),(23,'No Me Conoce - Remix',12,'reggaeton flow','Latin',309,92,14,81,-4,79,9,7,58),(24,'Soltera - Remix',23,'latin','Latin',266,92,36,80,-4,78,44,4,80),(25,'bad guy (with Justin Bieber)',5,'electropop','Electronic',195,135,25,67,-11,45,12,30,68),(26,'If I Can\'t Have You',33,'canadian pop','Pop',191,124,49,69,-4,82,13,6,87),(27,'Dance Monkey',36,'australian pop','Pop',210,98,69,82,-6,59,18,10,54),(28,'It\'s You',1,'canadian hip hop','Hip Hop',213,96,37,73,-7,46,19,3,40),(29,'Con Calma',8,'latin','Latin',193,94,11,74,-3,86,6,6,66),(30,'QUE PRETENDES',11,'latin','Latin',222,93,3,64,-4,79,36,25,94),(31,'Takeaway',35,'edm','Electronic',210,85,12,29,-8,51,10,4,36),(32,'7 rings',3,'dance pop','Pop',179,140,59,78,-11,32,9,33,33),(33,'Unknown',25,'reggaeton','Latin',176,96,22,78,-5,71,9,28,68),(34,'The London (feat. J. Cole & Travis Scott)',38,'atl hip hop','Hip Hop',200,98,2,80,-7,59,13,15,18),(35,'Never Really Over',14,'dance pop','Pop',224,100,19,77,-5,88,32,6,39),(36,'Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)',27,'big room','Electronic',164,114,18,66,-7,72,14,6,32),(37,'Otro Trago',32,'panamanian pop','Latin',226,176,14,75,-5,70,11,34,62),(38,'Antisocial (with Travis Scott)',10,'pop','Pop',162,152,13,72,-5,82,36,5,91),(39,'Sucker',13,'boy band','Pop',181,138,4,84,-5,73,11,6,95),(40,'fuck, i\'m lonely (with Anne-Marie) - from 13 Reasons Why: Season 3',18,'dance pop','Pop',199,95,48,81,-6,56,6,7,68),(41,'Higher Love',16,'edm','Electronic',228,104,2,69,-7,68,10,3,40),(42,'You Need To Calm Down',34,'dance pop','Pop',171,85,1,77,-6,68,7,5,73),(43,'Shallow',17,'dance pop','Pop',216,96,37,57,-6,39,23,3,32),(44,'Talk',15,'pop','Pop',198,136,5,90,-9,40,6,13,35),(45,'Con Altura',30,'r&b en espanol','Latin',162,98,39,88,-4,69,5,12,75),(46,'One Thing Right',26,'brostep','Electronic',182,88,7,66,-2,62,58,5,44),(47,'Te Robare',28,'latin','Latin',202,176,24,67,-4,75,8,6,80),(48,'Happier',26,'brostep','Electronic',214,100,19,69,-3,79,17,5,67),(49,'Call You Mine',35,'edm','Electronic',218,104,23,59,-6,70,41,3,50),(50,'Cross Me (feat. Chance the Rapper & PnB Rock)',10,'pop','Pop',206,95,21,75,-6,79,7,12,61);
/*!40000 ALTER TABLE `Songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-04 15:17:29
