-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: localhost    Database: db_recipe
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sans gluten'),(2,'Végétarien');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Appetizer'),(2,'Starter'),(3,'Main course'),(4,'Desert'),(5,'Drink'),(6,'Sweet');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `element` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` double DEFAULT NULL,
  `ingredient_id` bigint(20) DEFAULT NULL,
  `recipe_id` bigint(20) DEFAULT NULL,
  `unit_of_measure_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK52gd4u7kwr69tfq4f7rlhuge4` (`ingredient_id`),
  KEY `FKrtwcosqh5j68cw56l5m8iml0q` (`recipe_id`),
  KEY `FKp1o1n9c39e1mi6f0n15k731gs` (`unit_of_measure_id`),
  CONSTRAINT `FK52gd4u7kwr69tfq4f7rlhuge4` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `FKp1o1n9c39e1mi6f0n15k731gs` FOREIGN KEY (`unit_of_measure_id`) REFERENCES `unit_of_measure` (`id`),
  CONSTRAINT `FKrtwcosqh5j68cw56l5m8iml0q` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element`
--

LOCK TABLES `element` WRITE;
/*!40000 ALTER TABLE `element` DISABLE KEYS */;
INSERT INTO `element` VALUES (1,250,5,1,2),(2,200,6,1,2),(3,1,1,1,1),(4,200,7,1,2),(5,10,8,1,1),(6,8,9,1,1),(7,1,10,1,1),(8,500,11,1,2),(9,1.5,1,2,3),(10,2,2,2,1),(11,1,3,2,3),(12,15,4,2,4);
/*!40000 ALTER TABLE `element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ingredient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'melon'),(2,'citron'),(3,'sucre'),(4,'eau'),(5,'salades composée'),(6,'saumon fumé'),(7,'crevette cuite'),(8,'pomme de terre'),(9,'tranche de coppa'),(10,'vinaigrette'),(11,'fromages à raclette ');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recipe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cook_time` bigint(20) DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `prep_time` bigint(20) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `serving` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8vfd7vlaamsqp6w0m0kt23dpm` (`course_id`),
  CONSTRAINT `FK8vfd7vlaamsqp6w0m0kt23dpm` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,600,'','Raclette d\'été',900,'FIVE',4,'http://www.marmiton.org/recettes/recette_raclette-d-ete_62325.aspx',3),(2,3600,'','Confiture de melon d\'été',1200,'THREE',6,'http://www.marmiton.org/recettes/recette_confiture-de-melon-d-ete_20657.aspx',6);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_category`
--

DROP TABLE IF EXISTS `recipe_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recipe_category` (
  `recipe_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`recipe_id`,`category_id`),
  KEY `FKqsi87i8d4qqdehlv2eiwvpwb` (`category_id`),
  CONSTRAINT `FKcqlqnvfyarhieewfeayk3v25v` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FKqsi87i8d4qqdehlv2eiwvpwb` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_category`
--

LOCK TABLES `recipe_category` WRITE;
/*!40000 ALTER TABLE `recipe_category` DISABLE KEYS */;
INSERT INTO `recipe_category` VALUES (1,1),(2,1),(2,2);
/*!40000 ALTER TABLE `recipe_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `step`
--

DROP TABLE IF EXISTS `step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `step` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `number` int(11) DEFAULT NULL,
  `recipe_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpwpbn24pd57073jm669d7dwt9` (`recipe_id`),
  CONSTRAINT `FKpwpbn24pd57073jm669d7dwt9` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `step`
--

LOCK TABLES `step` WRITE;
/*!40000 ALTER TABLE `step` DISABLE KEYS */;
INSERT INTO `step` VALUES (1,'Cuire les pommes de terre, couper le melon en dés et le saumon en bandes.',1,1),(2,'Présenter le tout dans une assiette en mettant au centre la pomme de terre, autour la salade et à chaque coin de l\'assiette mettre un peu de saumon, melon, coppa et crevettes, sans mélanger les ingrédients ensemble.',2,1),(3,'Mettre de la vinaigrette juste sur la salade.',3,1),(4,'Reste plus qu\'à mettre l\'appareil à raclette au centre de la table.',4,1),(5,'Verser l’eau et le sucre dans une bassine à confiture, puis porter le mélange à ébullition jusqu’à la formation d’un sirop.',1,2),(6,'Détailler ensuite la chair du melon en dés, puis presser le jus des citrons et incorporer le tout dans la bassine.',2,2),(7,'Saupoudrer d’une pincée de noix de muscade.',3,2),(8,'Laisser cuire sur feu très doux pendant 1 h en remuant de temps en temps.',4,2),(9,'Arroser de 2 cuillères à soupe de rhum en fin de cuisson.',5,2),(10,'Ecumer et verser dans les pots, puis laisser refroidir avant de les refermer.',6,2);
/*!40000 ALTER TABLE `step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_of_measure`
--

DROP TABLE IF EXISTS `unit_of_measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `unit_of_measure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_of_measure`
--

LOCK TABLES `unit_of_measure` WRITE;
/*!40000 ALTER TABLE `unit_of_measure` DISABLE KEYS */;
INSERT INTO `unit_of_measure` VALUES (1,''),(2,'g'),(3,'kg'),(4,'cL');
/*!40000 ALTER TABLE `unit_of_measure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 23:22:27
