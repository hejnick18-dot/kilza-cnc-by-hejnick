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


DROP TABLE IF EXISTS `attacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `port` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `duration` int NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hitted` datetime DEFAULT CURRENT_TIMESTAMP,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4824 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(111) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'None',
  `admin` int NOT NULL DEFAULT '0',
  `vip` int NOT NULL DEFAULT '0',
  `kilza` int NOT NULL DEFAULT '0',
  `raw` int NOT NULL DEFAULT '0',
  `private` int NOT NULL DEFAULT '0',
  `expiry` datetime DEFAULT NULL,
  `concurrents` int NOT NULL DEFAULT '1',
  `cooldown` int NOT NULL DEFAULT '60',
  `maxtime` int NOT NULL DEFAULT '60',
  `api_access` int NOT NULL DEFAULT '0',
  `powersaving_bypass` int NOT NULL DEFAULT '0',
  `spam_bypass` int NOT NULL DEFAULT '0',
  `blacklist_bypass` int NOT NULL DEFAULT '0',
  `created_by` varchar(111) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_attacks` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
