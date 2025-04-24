-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: Orson.ischool.wisc.edu    Database: user015_DB3
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Temporary view structure for view `DishAverageRating`
--

DROP TABLE IF EXISTS `DishAverageRating`;
/*!50001 DROP VIEW IF EXISTS `DishAverageRating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DishAverageRating` AS SELECT 
 1 AS `DishName`,
 1 AS `AvgRating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DishReviewCount`
--

DROP TABLE IF EXISTS `DishReviewCount`;
/*!50001 DROP VIEW IF EXISTS `DishReviewCount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DishReviewCount` AS SELECT 
 1 AS `DishName`,
 1 AS `ReviewCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Dish_Reviews`
--

DROP TABLE IF EXISTS `Dish_Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dish_Reviews` (
  `DishReviewID` int NOT NULL AUTO_INCREMENT,
  `DishReviewDate` date NOT NULL,
  `DishReviewRating` int DEFAULT '3',
  `DishReviewDescription` text,
  `UserID` int NOT NULL,
  `DishID` int NOT NULL,
  PRIMARY KEY (`DishReviewID`),
  KEY `UserID` (`UserID`),
  KEY `DishID` (`DishID`),
  CONSTRAINT `Dish_Reviews_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  CONSTRAINT `Dish_Reviews_ibfk_2` FOREIGN KEY (`DishID`) REFERENCES `Dishes` (`DishID`),
  CONSTRAINT `Dish_Reviews_chk_1` CHECK ((`DishReviewRating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dish_Reviews`
--

LOCK TABLES `Dish_Reviews` WRITE;
/*!40000 ALTER TABLE `Dish_Reviews` DISABLE KEYS */;
INSERT INTO `Dish_Reviews` VALUES (11,'2023-01-20',5,'Amazing flavor, highly recommend!',1,1),(12,'2023-02-25',4,'Fresh and tasty, but a little too salty',2,3),(13,'2023-03-10',3,'The burger was good, but the fries were cold',3,1),(14,'2023-04-12',5,'Perfect croissant, buttery and flaky',4,4),(15,'2023-05-25',4,'The tacos were great, a bit too spicy',5,5),(16,'2023-06-20',4,'Good pasta, could use more sauce',6,5),(17,'2023-07-05',3,'Not the best fish, but good chips',7,7),(18,'2023-08-18',4,'Classic diner food, nice atmosphere',8,8),(19,'2023-09-05',2,'The vegan options were limited',9,9),(20,'2023-10-12',5,'Amazing vegetarian options, will return!',10,2);
/*!40000 ALTER TABLE `Dish_Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dishes`
--

DROP TABLE IF EXISTS `Dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dishes` (
  `DishID` int NOT NULL AUTO_INCREMENT,
  `DishName` varchar(100) NOT NULL,
  `DishCategory` enum('Appetizer','Main Course','Dessert','Beverage','Soup','Snack','Other') NOT NULL,
  `DishPrice` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`DishID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dishes`
--

LOCK TABLES `Dishes` WRITE;
/*!40000 ALTER TABLE `Dishes` DISABLE KEYS */;
INSERT INTO `Dishes` VALUES (1,'Margherita Pizza','Main Course',12.99),(2,'California Roll','Appetizer',8.99),(3,'Cheeseburger','Main Course',6.99),(4,'Croissant','Dessert',3.50),(5,'Beef Taco','Main Course',5.99),(6,'Spaghetti Bolognese','Main Course',14.99),(7,'Fish & Chips','Main Course',10.99),(8,'Pancakes','Dessert',7.99),(9,'Vegan Burger','Main Course',11.99),(10,'Vegetable Stir Fry','Main Course',9.99);
/*!40000 ALTER TABLE `Dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `FoodStoreAvgVisitRating`
--

DROP TABLE IF EXISTS `FoodStoreAvgVisitRating`;
/*!50001 DROP VIEW IF EXISTS `FoodStoreAvgVisitRating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `FoodStoreAvgVisitRating` AS SELECT 
 1 AS `FoodStoreName`,
 1 AS `AvgVisitRating`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `FoodStoreDishes`
--

DROP TABLE IF EXISTS `FoodStoreDishes`;
/*!50001 DROP VIEW IF EXISTS `FoodStoreDishes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `FoodStoreDishes` AS SELECT 
 1 AS `FoodStoreName`,
 1 AS `DishName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `FoodStoreLocation`
--

DROP TABLE IF EXISTS `FoodStoreLocation`;
/*!50001 DROP VIEW IF EXISTS `FoodStoreLocation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `FoodStoreLocation` AS SELECT 
 1 AS `FoodStoreName`,
 1 AS `FoodStoreStyle`,
 1 AS `FoodStoreType`,
 1 AS `LocationCity`,
 1 AS `LocationState`,
 1 AS `LocationAddress`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `FoodStore_Dishes`
--

DROP TABLE IF EXISTS `FoodStore_Dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FoodStore_Dishes` (
  `FoodStoreDishID` int NOT NULL AUTO_INCREMENT,
  `FoodStoreID` int NOT NULL,
  `DishID` int NOT NULL,
  PRIMARY KEY (`FoodStoreDishID`),
  UNIQUE KEY `UC_FoodStore_Dishes` (`FoodStoreID`,`DishID`),
  KEY `DishID` (`DishID`),
  CONSTRAINT `FoodStore_Dishes_ibfk_1` FOREIGN KEY (`FoodStoreID`) REFERENCES `FoodStores` (`FoodStoreID`),
  CONSTRAINT `FoodStore_Dishes_ibfk_2` FOREIGN KEY (`DishID`) REFERENCES `Dishes` (`DishID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoodStore_Dishes`
--

LOCK TABLES `FoodStore_Dishes` WRITE;
/*!40000 ALTER TABLE `FoodStore_Dishes` DISABLE KEYS */;
INSERT INTO `FoodStore_Dishes` VALUES (1,31,1),(2,32,2),(3,33,3),(5,33,5),(4,34,4),(6,36,6),(7,36,7),(8,38,8),(9,39,9),(10,40,10);
/*!40000 ALTER TABLE `FoodStore_Dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FoodStores`
--

DROP TABLE IF EXISTS `FoodStores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FoodStores` (
  `FoodStoreID` int NOT NULL AUTO_INCREMENT,
  `FoodStoreName` varchar(100) NOT NULL,
  `FoodStoreStyle` set('French','Italian','Japanese','Chinese','American','Mexican','Korean','Indian','Thai','Vegan','Middle Eastern','Mediterranean','Other') NOT NULL,
  `FoodStoreType` set('Restaurant','Cafe','Beverage Shop','Fast Food','Buffet','Takeout','Fine Dining','Casual Dining','Food Truck','Bakery','Bar','Ice Cream','Pizzeria','Sushi Bar','Fast Casual','Pub','Diner','Other') NOT NULL,
  `FoodStoreAcceptsReservations` tinyint(1) DEFAULT '0',
  `LocationID` int NOT NULL,
  PRIMARY KEY (`FoodStoreID`),
  KEY `LocationID` (`LocationID`),
  CONSTRAINT `FoodStores_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `Locations` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoodStores`
--

LOCK TABLES `FoodStores` WRITE;
/*!40000 ALTER TABLE `FoodStores` DISABLE KEYS */;
INSERT INTO `FoodStores` VALUES (31,'Pizza Place','Italian','Restaurant',1,1),(32,'Sushi World','Japanese','Restaurant',0,2),(33,'Burger King','American','Fast Food',1,3),(34,'Café Mocha','French','Cafe',0,4),(35,'Taco Bell','Mexican','Fast Food',1,5),(36,'Pasta Paradise','Italian','Restaurant',1,6),(37,'Fish & Chips','Other','Restaurant',0,7),(38,'The Diner','Other','Diner',1,8),(39,'Vegan Delight','Vegan','Restaurant',0,9),(40,'Greenhouse Cafe','Vegan','Cafe',1,10);
/*!40000 ALTER TABLE `FoodStores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Locations` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `LocationCountry` varchar(100) NOT NULL,
  `LocationState` varchar(100) DEFAULT NULL,
  `LocationCity` varchar(100) DEFAULT NULL,
  `LocationAddress` varchar(255) NOT NULL,
  `LocationPostalCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
INSERT INTO `Locations` VALUES (1,'USA','California','Los Angeles','123 Sunset Blvd','90001'),(2,'USA','California','San Francisco','456 Market St','94105'),(3,'USA','New York','New York City','789 Broadway St','10001'),(4,'USA','Texas','Austin','101 Congress Ave','73301'),(5,'Canada','Ontario','Toronto','202 King St','M5V 1X4'),(6,'Canada','British Columbia','Vancouver','303 Granville St','V6B 1V7'),(7,'UK','England','London','404 Oxford St','W1D 1BS'),(8,'UK','Scotland','Edinburgh','505 Princes St','EH2 4BG'),(9,'Australia','New South Wales','Sydney','606 George St','2000'),(10,'Australia','Victoria','Melbourne','707 Collins St','3000');
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stores_Visited`
--

DROP TABLE IF EXISTS `Stores_Visited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stores_Visited` (
  `StoreVisitID` int NOT NULL AUTO_INCREMENT,
  `StoreVisitDate` date NOT NULL,
  `StoreVisitRating` int DEFAULT '3',
  `StoreVisitDescription` text,
  `UserID` int NOT NULL,
  `FoodStoreID` int NOT NULL,
  PRIMARY KEY (`StoreVisitID`),
  KEY `UserID` (`UserID`),
  KEY `FoodStoreID` (`FoodStoreID`),
  CONSTRAINT `Stores_Visited_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  CONSTRAINT `Stores_Visited_ibfk_2` FOREIGN KEY (`FoodStoreID`) REFERENCES `FoodStores` (`FoodStoreID`),
  CONSTRAINT `Stores_Visited_chk_1` CHECK ((`StoreVisitRating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stores_Visited`
--

LOCK TABLES `Stores_Visited` WRITE;
/*!40000 ALTER TABLE `Stores_Visited` DISABLE KEYS */;
INSERT INTO `Stores_Visited` VALUES (21,'2023-01-15',5,'Great pizza, friendly staff!',1,32),(22,'2023-02-20',4,'Fresh sushi, nice ambiance',2,33),(23,'2023-03-05',3,'Average experience, good fries',3,33),(24,'2023-04-10',4,'Lovely coffee and pastries',4,34),(25,'2023-05-21',5,'Delicious tacos, very spicy',5,31),(26,'2023-06-18',4,'Pasta was amazing, good portion',6,36),(27,'2023-07-02',3,'Decent fish, not great service',7,38),(28,'2023-08-15',4,'Friendly diner, classic American food',8,39),(29,'2023-09-01',2,'Lack of variety, but good vegan options',9,40),(30,'2023-10-10',5,'Excellent vegetarian food, cozy place',10,36);
/*!40000 ALTER TABLE `Stores_Visited` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `UserDishReviews`
--

DROP TABLE IF EXISTS `UserDishReviews`;
/*!50001 DROP VIEW IF EXISTS `UserDishReviews`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UserDishReviews` AS SELECT 
 1 AS `UserFname`,
 1 AS `UserLname`,
 1 AS `DishName`,
 1 AS `DishReviewRating`,
 1 AS `DishReviewDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserFname` varchar(50) NOT NULL,
  `UserLname` varchar(50) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserEmail` (`UserEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'John','Doe','john.doe@example.com','password123'),(2,'Jane','Smith','jane.smith@example.com','password456'),(3,'Michael','Brown','michael.brown@example.com','password789'),(4,'Emily','Davis','emily.davis@example.com','password321'),(5,'David','Wilson','david.wilson@example.com','password654'),(6,'Olivia','Taylor','olivia.taylor@example.com','password987'),(7,'James','Moore','james.moore@example.com','password135'),(8,'Isabella','Anderson','isabella.anderson@example.com','password246'),(9,'Liam','Thomas','liam.thomas@example.com','password369'),(10,'Sophia','Jackson','sophia.jackson@example.com','password741');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `UsersVisitedFoodStore`
--

DROP TABLE IF EXISTS `UsersVisitedFoodStore`;
/*!50001 DROP VIEW IF EXISTS `UsersVisitedFoodStore`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UsersVisitedFoodStore` AS SELECT 
 1 AS `UserFname`,
 1 AS `UserLname`,
 1 AS `StoreVisitDate`,
 1 AS `StoreVisitRating`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `DishAverageRating`
--

/*!50001 DROP VIEW IF EXISTS `DishAverageRating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DishAverageRating` AS select `d`.`DishName` AS `DishName`,avg(`r`.`DishReviewRating`) AS `AvgRating` from (`Dishes` `d` join `Dish_Reviews` `r` on((`d`.`DishID` = `r`.`DishID`))) group by `d`.`DishID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DishReviewCount`
--

/*!50001 DROP VIEW IF EXISTS `DishReviewCount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DishReviewCount` AS select `d`.`DishName` AS `DishName`,count(`r`.`DishReviewID`) AS `ReviewCount` from (`Dishes` `d` join `Dish_Reviews` `r` on((`d`.`DishID` = `r`.`DishID`))) group by `d`.`DishID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `FoodStoreAvgVisitRating`
--

/*!50001 DROP VIEW IF EXISTS `FoodStoreAvgVisitRating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `FoodStoreAvgVisitRating` AS select `f`.`FoodStoreName` AS `FoodStoreName`,avg(`s`.`StoreVisitRating`) AS `AvgVisitRating` from (`FoodStores` `f` join `Stores_Visited` `s` on((`f`.`FoodStoreID` = `s`.`FoodStoreID`))) group by `f`.`FoodStoreID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `FoodStoreDishes`
--

/*!50001 DROP VIEW IF EXISTS `FoodStoreDishes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `FoodStoreDishes` AS select `f`.`FoodStoreName` AS `FoodStoreName`,`d`.`DishName` AS `DishName` from ((`FoodStores` `f` join `FoodStore_Dishes` `fsd` on((`f`.`FoodStoreID` = `fsd`.`FoodStoreID`))) join `Dishes` `d` on((`fsd`.`DishID` = `d`.`DishID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `FoodStoreLocation`
--

/*!50001 DROP VIEW IF EXISTS `FoodStoreLocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `FoodStoreLocation` AS select `f`.`FoodStoreName` AS `FoodStoreName`,`f`.`FoodStoreStyle` AS `FoodStoreStyle`,`f`.`FoodStoreType` AS `FoodStoreType`,`l`.`LocationCity` AS `LocationCity`,`l`.`LocationState` AS `LocationState`,`l`.`LocationAddress` AS `LocationAddress` from (`FoodStores` `f` join `Locations` `l` on((`f`.`LocationID` = `l`.`LocationID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UserDishReviews`
--

/*!50001 DROP VIEW IF EXISTS `UserDishReviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `UserDishReviews` AS select `u`.`UserFname` AS `UserFname`,`u`.`UserLname` AS `UserLname`,`d`.`DishName` AS `DishName`,`r`.`DishReviewRating` AS `DishReviewRating`,`r`.`DishReviewDescription` AS `DishReviewDescription` from ((`Dish_Reviews` `r` join `Users` `u` on((`r`.`UserID` = `u`.`UserID`))) join `Dishes` `d` on((`r`.`DishID` = `d`.`DishID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UsersVisitedFoodStore`
--

/*!50001 DROP VIEW IF EXISTS `UsersVisitedFoodStore`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user015`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `UsersVisitedFoodStore` AS select `u`.`UserFname` AS `UserFname`,`u`.`UserLname` AS `UserLname`,`s`.`StoreVisitDate` AS `StoreVisitDate`,`s`.`StoreVisitRating` AS `StoreVisitRating` from ((`Stores_Visited` `s` join `Users` `u` on((`s`.`UserID` = `u`.`UserID`))) join `FoodStores` `f` on((`s`.`FoodStoreID` = `f`.`FoodStoreID`))) where (`f`.`FoodStoreID` = 33) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 23:51:10
