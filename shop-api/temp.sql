-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: temp
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1),(2),(21);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` varchar(255) NOT NULL,
  `status` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('10 percent offer on $200 and above',0),('15 percent offer on $500 and above',0),('20 percent offer on $1000 and above',0);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (94),(94),(94),(94),(94);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_main`
--

DROP TABLE IF EXISTS `order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_main` (
  `order_id` bigint NOT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `order_amount` decimal(19,2) NOT NULL,
  `order_status` int NOT NULL DEFAULT '0',
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_main`
--

LOCK TABLES `order_main` WRITE;
/*!40000 ALTER TABLE `order_main` DISABLE KEYS */;
INSERT INTO `order_main` VALUES (5,'Rajahmundry','harish@gmail.com','harish','98765','2022-07-06 19:25:13.821428',40.00,2,'2022-07-06 20:21:06.556261'),(7,'Rajahmundry','harish@gmail.com','harish','98765','2022-07-06 19:25:27.177508',30.00,1,'2022-07-06 20:19:52.648235'),(10,'Rajahmundry','harish@gmail.com','harish','98765','2022-07-06 20:18:06.850169',70.00,1,'2022-07-06 20:19:56.803317'),(16,'hyderabad','vamsi@gmail.com','vamsi','12345','2022-07-07 19:40:09.568362',318.00,1,'2022-07-09 16:54:50.872441'),(18,'hyderabad','vamsi@gmail.com','vamsi','12345','2022-07-07 19:42:56.157507',229.00,0,'2022-07-07 19:42:56.157507'),(24,'Guntur','yash@gmail.com','Yashwanth','2341845','2022-07-09 19:43:23.118347',22.00,1,'2022-07-10 22:22:41.066240'),(27,'Guntur','yash@gmail.com','Yashwanth','2341845','2022-07-10 21:07:39.728701',78.00,2,'2022-07-12 10:59:48.819686'),(29,'Guntur','yash@gmail.com','Yashwanth','2341845','2022-07-11 09:04:44.003918',56.00,2,'2022-07-12 10:59:23.260941'),(56,'Guntur','yash@gmail.com','Yashwanth','2341845','2022-07-12 10:58:29.732178',430.00,1,'2022-07-12 10:59:02.734646');
/*!40000 ALTER TABLE `order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_type` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `UK_6kq6iveuim6wd90cxo5bksumw` (`category_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (2147483641,'Furniture',0,'2018-03-09 23:03:26.000000','2018-03-10 00:15:27.000000'),(2147483642,'Kitchen',2,'2018-03-10 00:15:02.000000','2018-03-10 00:15:21.000000'),(2147483644,'Home Decor',3,'2018-03-10 01:01:09.000000','2018-03-10 01:01:09.000000'),(2147483645,'Electronic',1,'2018-03-10 00:26:05.000000','2018-03-10 00:26:05.000000');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_order`
--

DROP TABLE IF EXISTS `product_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_in_order` (
  `id` bigint NOT NULL,
  `category_type` int NOT NULL,
  `count` int DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_stock` int DEFAULT NULL,
  `cart_user_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhnivo3fl2qtco3ulm4mq0mbr5` (`cart_user_id`),
  KEY `FKt0sfj3ffasrift1c4lv3ra85e` (`order_id`),
  CONSTRAINT `FKhnivo3fl2qtco3ulm4mq0mbr5` FOREIGN KEY (`cart_user_id`) REFERENCES `cart` (`user_id`),
  CONSTRAINT `FKt0sfj3ffasrift1c4lv3ra85e` FOREIGN KEY (`order_id`) REFERENCES `order_main` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_order`
--

LOCK TABLES `product_in_order` WRITE;
/*!40000 ALTER TABLE `product_in_order` DISABLE KEYS */;
INSERT INTO `product_in_order` VALUES (22,3,1,'Aluminum Plastic Wall Clock','https://m.media-amazon.com/images/I/71AoA2F0RhL._AC_UL480_FMwebp_QL65_.jpg','D0001','Clock',22.00,100,NULL,24),(26,3,2,'Wooden Wall Hangings for Home Decoration','https://m.media-amazon.com/images/I/81o-KlpBYAS._AC_UL480_FMwebp_QL65_.jpg','D0002','Wall Decor',39.00,20,NULL,27),(28,2,1,'Mixer with four Jars','https://m.media-amazon.com/images/I/71Wq0mQNTLL._SX679_.jpg','C0002','Mixer Grinder',56.00,76,NULL,29),(30,0,1,'The Sleep Company Smart Grid High-Back Chair For Office & Home','https://m.media-amazon.com/images/I/815M0u6oXRL._AC_UL480_QL65_.jpg','B0004','Chairs',119.00,42,NULL,NULL),(33,0,1,'The Sleep Company Smart Grid High-Back Chair For Office & Home','https://m.media-amazon.com/images/I/815M0u6oXRL._AC_UL480_QL65_.jpg','B0004','Chairs',119.00,42,NULL,56),(34,0,1,'4 Seater Dining Table Chair Set','https://images-eu.ssl-images-amazon.com/images/G/31/IMG21/Furniture/2021/Popular-Categories-_Desktop_22.jpg','B0002','Dining Table',199.00,29,2,NULL),(35,1,1,'Croma 80 cm (32 Inches) HD Ready Certified Android Smart LED TV ','https://m.media-amazon.com/images/I/61XouL+PH-L._SX522_.jpg','F0001','LED TV',229.00,24,2,NULL),(36,0,1,'4 Seater Dining Table Chair Set','https://images-eu.ssl-images-amazon.com/images/G/31/IMG21/Furniture/2021/Popular-Categories-_Desktop_22.jpg','B0002','Dining Table',199.00,29,NULL,56),(55,2,2,'Mixer with four Jars','https://m.media-amazon.com/images/I/71Wq0mQNTLL._SX679_.jpg','C0002','Mixer Grinder',56.00,75,NULL,56),(93,2,3,'Mixer with four Jars','https://m.media-amazon.com/images/I/71Wq0mQNTLL._SX679_.jpg','C0002','Mixer Grinder',56.00,74,21,NULL);
/*!40000 ALTER TABLE `product_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `product_id` varchar(255) NOT NULL,
  `category_type` int DEFAULT '0',
  `create_time` datetime(6) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_status` int DEFAULT '0',
  `product_stock` int NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES ('B0002',0,'2018-03-10 10:35:43.000000','4 Seater Dining Table Chair Set','https://images-eu.ssl-images-amazon.com/images/G/31/IMG21/Furniture/2021/Popular-Categories-_Desktop_22.jpg','Dining Table',199.00,0,28,'2022-07-12 10:58:29.747000'),('B0003',0,'2018-03-10 10:37:39.000000','Wakefit King Size Leo Engineered Wood Platform Bed','https://images-eu.ssl-images-amazon.com/images/G/31/IMG21/Furniture/2021/Popular-Categories-_Desktop_12.jpg','Bed',176.00,1,0,'2022-07-07 15:26:35.983000'),('B0004',0,'2018-03-10 10:39:29.000000','The Sleep Company Smart Grid High-Back Chair For Office & Home','https://m.media-amazon.com/images/I/815M0u6oXRL._AC_UL480_QL65_.jpg','Chairs',119.00,0,41,'2022-07-12 10:58:29.771000'),('B0005',0,'2018-03-10 10:40:35.000000','Solimo Tracy Engineered Wood Wall Mounted Dressing Table','https://m.media-amazon.com/images/I/71hb0KYhm8L._AC_UL480_QL65_.jpg','Dressing Table',42.00,0,34,'2022-07-07 15:29:11.380000'),('C0001',2,'2018-03-10 12:09:41.000000','3 Burner Gas Stove','https://images-eu.ssl-images-amazon.com/images/I/51TYBmz4JXL._AC._SR360,460.jpg','Gas Stove',47.00,0,24,'2022-07-07 15:29:49.187000'),('C0002',2,'2018-03-10 12:11:51.000000','Mixer with four Jars','https://m.media-amazon.com/images/I/71Wq0mQNTLL._SX679_.jpg','Mixer Grinder',56.00,0,74,'2022-07-12 10:59:23.265000'),('C0003',2,'2018-03-10 12:12:46.000000','Hot and Cold Water Bottle','https://m.media-amazon.com/images/I/61c-GtJ+0eL._SX679_.jpg','Milton Bottle',8.00,0,19,'2022-07-07 15:31:00.787000'),('D0001',3,'2018-03-10 06:51:03.000000','Aluminum Plastic Wall Clock','https://m.media-amazon.com/images/I/71AoA2F0RhL._AC_UL480_FMwebp_QL65_.jpg','Clock',22.00,0,99,'2022-07-09 19:43:23.133000'),('D0002',3,'2018-03-10 12:08:17.000000','Wooden Wall Hangings for Home Decoration','https://m.media-amazon.com/images/I/81o-KlpBYAS._AC_UL480_FMwebp_QL65_.jpg','Wall Decor',39.00,0,20,'2022-07-12 10:59:48.824000'),('D0003',3,'2022-07-07 16:49:13.066000','WallDaddy Square Preciser 3D Acrylic Home Decorative Art Mirror Wall Stickers Silver','https://images-eu.ssl-images-amazon.com/images/I/61Kys8EZIIL._AC._SR360,460.jpg','Mirror',12.00,0,18,'2022-07-07 16:49:13.066000'),('E0005',1,NULL,'1100 W Dry Iron with Black Weilburger Soleplate�','https://m.media-amazon.com/images/I/71q7meZ82qL._SX679_.jpg','Iron Box',79.00,0,124,'2022-07-09 19:48:49.726000'),('E0007',1,'2022-07-12 13:06:08.863000','Whirlpool 1.5 Ton 3 Star, Inverter Split AC�','https://images-eu.ssl-images-amazon.com/images/I/21bg5ZO5ToL._SY445_SX342_QL70_FMwebp_.jpg','Air Conditioners',449.00,0,23,'2022-07-12 13:06:08.863000'),('E0008',1,'2022-07-12 13:06:08.887000','LG 270 L 3 Star Inverter Direct-Cool Single Door Refrigerator�','https://images-eu.ssl-images-amazon.com/images/I/312HPeK-bGL._SX342_SY445_QL70_FMwebp_.jpg','Refrigerator',399.00,0,29,'2022-07-12 13:06:08.887000'),('E0010',1,'2022-07-12 13:06:08.890000','Bosch 6 kg 5 Star Fully Automatic Front Loading Washing Machine with In - built Heater�','https://m.media-amazon.com/images/I/61v2jxdd5zL._SX679_.jpg','Washing Machine',369.00,0,33,'2022-07-12 13:06:08.890000'),('E0011',1,'2022-07-12 13:06:08.893000','IFB 30 L Convection Microwave Oven�','https://m.media-amazon.com/images/I/81D8pNFmWzL._SX679_.jpg','Microwave Oven',179.00,0,18,'2022-07-12 13:06:08.893000'),('F0001',1,'2018-03-10 12:15:05.000000','Croma 80 cm (32 Inches) HD Ready Certified Android Smart LED TV ','https://m.media-amazon.com/images/I/61XouL+PH-L._SX522_.jpg','LED TV',229.00,0,24,'2022-07-07 19:42:56.162000'),('F0002',1,'2018-03-10 12:16:44.000000','Zebronics Wireless Bluetooth Multimedia Speaker With Supporting SD Card ','https://m.media-amazon.com/images/I/81yF3MS-UBL._AC_UY327_FMwebp_QL65_.jpg','Home Theater',29.00,0,22,'2022-07-07 15:31:42.905000'),('F0003',1,'2022-07-07 16:49:13.097000','5 liter Electric Pressure Cooker with SS Pot','https://m.media-amazon.com/images/I/71GJmUcJkgS._SX679_.jpg','Rice Cooker',29.00,0,25,'2022-07-07 16:49:13.097000'),('F0006',0,'2022-07-09 18:12:39.694000','HomeTown Mezzola Engineered Wood 3 Tier Bookshelf in Wenge & White Color','https://m.media-amazon.com/images/I/61wUxiJJ5bL._SL1100_.jpg','Book Case',199.00,0,45,'2022-07-09 18:14:06.937000'),('F0007',0,'2022-07-09 18:12:39.727000','Wooden Chest of Drawer for Bed Room','https://m.media-amazon.com/images/I/91acnroY5yL._AC_UL480_FMwebp_QL65_.jpg','Drawer',179.00,0,38,'2022-07-09 18:14:46.902000'),('F0008',0,'2022-07-09 18:12:39.731000','1 Seater Fabric Manual Recliner with Cup Holder�','https://m.media-amazon.com/images/I/91S9c-cZZEL._SX679_.jpg','Recliner',149.00,0,45,'2022-07-09 18:14:37.688000'),('F0009',0,'2022-07-09 18:12:39.733000','Inditradition Rope Hammock with Wooden Spreader Bars','https://m.media-amazon.com/images/I/61XWkuY+D5L.jpg','Hammock',99.00,0,25,'2022-07-09 18:14:28.552000'),('F0010',0,'2022-07-09 18:12:39.735000','Mini Bar on Wheels','https://m.media-amazon.com/images/I/91dWjslBuBL._SX679_.jpg','Bar Cabinet',129.00,0,38,'2022-07-09 18:14:17.360000'),('H0004',3,'2022-07-10 21:14:11.200000','Wolpin Wall Stickers DIY Wallpaper (45 x 500 cm) Black Damask Luxury Self Adhesive Decals Li','https://images-eu.ssl-images-amazon.com/images/I/514e6uvF-HL._AC_SX368_.jpg','Wall Stickers',8.00,0,45,'2022-07-10 21:14:11.200000'),('H0006',3,NULL,'Antique Horse Idol for Living Room Wall Shelf Office Shop Festive Gifting','https://m.media-amazon.com/images/I/51eKnuj-+JL.jpg','Horse Idol',15.00,0,18,'2022-07-12 13:43:14.333000'),('H0007',3,NULL,'YTC Artificial Plants for Home Decor -Best Different Types of Plants','https://m.media-amazon.com/images/I/81jMMucgcRS._SX679_.jpg','Plants for Home',5.00,0,23,'2022-07-12 13:43:14.341000'),('H0008',3,NULL,'Kriwin Acrylic Rangoli Decorative (10-to 11 inches Multicolor) Reusable','https://m.media-amazon.com/images/I/71WcJ5CwYHL._SX679_.jpg','Rangoli',5.00,0,14,'2022-07-12 13:43:14.347000'),('H0009',3,NULL,'Rare Handcrafted 3D Ceramic Decorative Plate with Stand, Floral Plates for Living Room','https://m.media-amazon.com/images/I/71QkVVbqHQL._SX679_.jpg','Decorative Plate',12.00,0,17,'2022-07-12 13:43:14.349000'),('K0004',2,NULL,'Cello Prima Induction Base Non-Stick Aluminium Pan Cookware Set, 3-Pieces, Cherry Red','https://m.media-amazon.com/images/I/7169jlr-0mL._SX679_.jpg','Aluminium Pan',19.00,0,38,'2022-07-12 13:24:21.307000'),('K0005',2,NULL,'Cello Checkers Plastic PET Canister Set, 18 Pieces, Clear','https://m.media-amazon.com/images/I/71ZmmLW97YL._SX679_.jpg','Canister Set',8.00,0,24,'2022-07-12 13:24:21.309000'),('k0006',2,NULL,'FnP CL Ceramic Tea and Coffee Cup - 6 Pieces, Glossy Golden','https://images-eu.ssl-images-amazon.com/images/I/812VOfjXlaL._AC._SR360,460.jpg','Coffee Cup',4.00,0,34,'2022-07-12 13:24:21.311000'),('K0007',2,NULL,'6 Pieces Professional Kitchen Knife Set, Meat Knife, Chef�s Knife with Non-Slip Handle for Home Kitchen','https://m.media-amazon.com/images/I/81ZDgX1KbNL._SX679_.jpg','Knife Set',11.00,0,45,'2022-07-12 13:24:21.312000');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','2-50, mutyalapadu,lingasamudram mandal','manmadhak49@gmail.com','Manmadha','$2a$10$kInX.47r5DOTCO60gesEA.SOXdBGLqb7ef1hSiJ3x1v2gqAkGhGN.','+916302690363','ROLE_ADMIN'),(2,_binary '','hyderabad','vamsi@gmail.com','vamsi','$2a$10$L3cuItNCFR/1lSq9Q6DYdun6h9axShK7g5mpYamrx7kD/LQPYIvl6','12345','ROLE_USER'),(21,_binary '','Guntur','yash@gmail.com','Yashwanth','$2a$10$lTuUGdosDTfGSzdrvRnrN.mPkxD2VRFVbGCwXspwwU5oBFD5gpsSi','2341845','ROLE_USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklfv8svemdde0od1rs6mgstb` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FKklfv8svemdde0od1rs6mgstb` FOREIGN KEY (`product_id`) REFERENCES `product_info` (`product_id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (42,'2022-07-11 22:07:38.647000','D0001',2),(44,'2022-07-11 22:08:47.730000','C0001',2),(45,'2022-07-11 22:10:16.026000','C0002',2),(46,'2022-07-11 22:11:02.806000','C0002',2),(47,'2022-07-11 22:11:53.427000','B0005',2),(48,'2022-07-11 22:13:22.697000','B0005',2);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12 20:14:01
