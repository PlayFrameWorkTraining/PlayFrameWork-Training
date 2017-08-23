CREATE DATABASE  IF NOT EXISTS `studentdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `studentdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: studentdb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `periodic_elements`
--

DROP TABLE IF EXISTS `periodic_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodic_elements` (
  `ELEMENT` varchar(255) NOT NULL,
  `ATOMIC_NUMBER` int(11) NOT NULL,
  `SYMBOL` varchar(255) NOT NULL,
  `METAL_GROUP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodic_elements`
--

LOCK TABLES `periodic_elements` WRITE;
/*!40000 ALTER TABLE `periodic_elements` DISABLE KEYS */;
INSERT INTO `periodic_elements` VALUES ('Hydrogen',1,'H','diatomicnonmetal'),('Helium',2,'He','noblegas'),('Lithium',3,'Li','alkalimetal'),('Beryllium',4,'Be','alkalineearthmetal'),('Boron',5,'B','metalloid'),('Carbon',6,'C','polyatomicnonmetal'),('Nitrogen',7,'N','diatomicnonmetal'),('Oxygen',8,'O','diatomicnonmetal'),('Fluorine',9,'F','diatomicnonmetal'),('Neon',10,'Ne','noblegas'),('Sodium',11,'Na','alkalimetal'),('Magnesium',12,'Mg','alkalineearthmetal'),('Aluminum',13,'Al','othermetal'),('Silicon',14,'Si','metalloid'),('Phosphorus',15,'P','polyatomicnonmetal'),('Sulfur',16,'S','polyatomicnonmetal'),('Chlorine',17,'Cl','diatomicnonmetal'),('Argon',18,'Ar','noblegas'),('Potassium',19,'K','alkalimetal'),('Calcium',20,'Ca','alkalineearthmetal'),('Scandium',21,'Sc','transitionmetal'),('Titanium',22,'Ti','transitionmetal'),('Vanadium',23,'V','transitionmetal'),('Chromium',24,'Cr','transitionmetal'),('Manganese',25,'Mn','transitionmetal'),('Iron',26,'Fe','transitionmetal'),('Cobalt',27,'Co','transitionmetal'),('Nickel',28,'Ni','transitionmetal'),('Copper',29,'Cu','transitionmetal'),('Zinc',30,'Zn','transitionmetal'),('Gallium',31,'Ga','othermetal'),('Germanium',32,'Ge','metalloid'),('Arsenic',33,'As','metalloid'),('Selenium',34,'Se','polyatomicnonmetal'),('Bromine',35,'Br','diatomicnonmetal'),('Krypton',36,'Kr','noblegas'),('Rubidium',37,'Rb','alkalimetal'),('Strontium',38,'Sr','alkalineearthmetal'),('Yttrium',39,'Y','transitionmetal'),('Zirconium',40,'Zr','transitionmetal'),('Niobium',41,'Nb','transitionmetal'),('Molybdenum',42,'Mo','transitionmetal'),('Technetium',43,'Tc','transitionmetal'),('Ruthenium',44,'Ru','transitionmetal'),('Rhodium',45,'Rh','transitionmetal'),('Palladium',46,'Pd','transitionmetal'),('Silver',47,'Ag','transitionmetal'),('Cadmium',48,'Cd','transitionmetal'),('Indium',49,'In','othermetal'),('Tin',50,'Sn','othermetal'),('Antimony',51,'Sb','metalloid'),('Tellurium',52,'Te','metalloid'),('Iodine',53,'I','diatomicnonmetal'),('Xenon',54,'Xe','noblegas'),('Cesium',55,'Cs','alkalimetal'),('Barium',56,'Ba','alkalineearthmetal'),('Lanthanum',57,'La','lanthanide'),('Cerium',58,'Ce','lanthanide'),('Praseodymium',59,'Pr','lanthanide'),('Neodymium',60,'Nd','lanthanide'),('Promethium',61,'Pm','lanthanide'),('Samarium',62,'Sm','lanthanide'),('Europium',63,'Eu','lanthanide'),('Gadolinium',64,'Gd','lanthanide'),('Terbium',65,'Tb','lanthanide'),('Dysprosium',66,'Dy','lanthanide'),('Holmium',67,'Ho','lanthanide'),('Erbium',68,'Er','lanthanide'),('Thulium',69,'Tm','lanthanide'),('Ytterbium',70,'Yb','lanthanide'),('Lutetium',71,'Lu','lanthanide'),('Hafnium',72,'Hf','transitionmetal'),('Tantalum',73,'Ta','transitionmetal'),('Wolfram',74,'W','transitionmetal'),('Rhenium',75,'Re','transitionmetal'),('Osmium',76,'Os','transitionmetal'),('Iridium',77,'Ir','transitionmetal'),('Platinum',78,'Pt','transitionmetal'),('Gold',79,'Au','transitionmetal'),('Mercury',80,'Hg','transitionmetal'),('Thallium',81,'Tl','othermetal'),('Lead',82,'Pb','othermetal'),('Bismuth',83,'Bi','othermetal'),('Polonium',84,'Po','othermetal'),('Astatine',85,'At','metalloid'),('Radon',86,'Rn','noblegas'),('Francium',87,'Fr','alkalimetal'),('Radium',88,'Ra','alkalineearthmetal'),('Actinium',89,'Ac','actinide'),('Thorium',90,'Th','actinide'),('Protactinium',91,'Pa','actinide'),('Uranium',92,'U','actinide'),('Neptunium',93,'Np','actinide'),('Plutonium',94,'Pu','actinide'),('Americium',95,'Am','actinide'),('Curium',96,'Cm','actinide'),('Berkelium',97,'Bk','actinide'),('Californium',98,'Cf','actinide'),('Einsteinium',99,'Es','actinide'),('Fermium',100,'Fm','actinide'),('Mendelevium',101,'Md','actinide'),('Nobelium',102,'No','actinide'),('Lawrencium',103,'Lr','actinide');
/*!40000 ALTER TABLE `periodic_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_evolutions`
--

DROP TABLE IF EXISTS `play_evolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `play_evolutions` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apply_script` mediumtext,
  `revert_script` mediumtext,
  `state` varchar(255) DEFAULT NULL,
  `last_problem` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_evolutions`
--

LOCK TABLES `play_evolutions` WRITE;
/*!40000 ALTER TABLE `play_evolutions` DISABLE KEYS */;
INSERT INTO `play_evolutions` VALUES (1,'acc0363bb4f41f5c297f5093be0ee5a6200ff205','2017-08-22 09:19:39','CREATE TABLE PERIODIC_ELEMENTS(\nELEMENT varchar(255) not null,\nATOMIC_NUMBER int not null,\nSYMBOL varchar(255) not null,\nMETAL_GROUP varchar(255) not null\n);\n\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Hydrogen\', 1, \'H\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Helium\', 2, \'He\', \'noblegas\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Lithium\', 3, \'Li\', \'alkalimetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Beryllium\', 4, \'Be\', \'alkalineearthmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Boron\', 5, \'B\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Carbon\', 6, \'C\', \'polyatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Nitrogen\', 7, \'N\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Oxygen\', 8, \'O\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Fluorine\', 9, \'F\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Neon\', 10, \'Ne\', \'noblegas\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Sodium\', 11, \'Na\', \'alkalimetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Magnesium\', 12, \'Mg\', \'alkalineearthmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Aluminum\', 13, \'Al\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Silicon\', 14, \'Si\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Phosphorus\', 15, \'P\', \'polyatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Sulfur\', 16, \'S\', \'polyatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Chlorine\', 17, \'Cl\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Argon\', 18, \'Ar\', \'noblegas\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Potassium\', 19, \'K\', \'alkalimetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Calcium\', 20, \'Ca\', \'alkalineearthmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Scandium\', 21, \'Sc\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Titanium\', 22, \'Ti\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Vanadium\', 23, \'V\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Chromium\', 24, \'Cr\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Manganese\', 25, \'Mn\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Iron\', 26, \'Fe\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Cobalt\', 27, \'Co\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Nickel\', 28, \'Ni\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Copper\', 29, \'Cu\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Zinc\', 30, \'Zn\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Gallium\', 31, \'Ga\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Germanium\', 32, \'Ge\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Arsenic\', 33, \'As\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Selenium\', 34, \'Se\', \'polyatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Bromine\', 35, \'Br\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Krypton\', 36, \'Kr\', \'noblegas\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Rubidium\', 37, \'Rb\', \'alkalimetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Strontium\', 38, \'Sr\', \'alkalineearthmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Yttrium\', 39, \'Y\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Zirconium\', 40, \'Zr\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Niobium\', 41, \'Nb\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Molybdenum\', 42, \'Mo\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Technetium\', 43, \'Tc\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Ruthenium\', 44, \'Ru\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Rhodium\', 45, \'Rh\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Palladium\', 46, \'Pd\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Silver\', 47, \'Ag\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Cadmium\', 48, \'Cd\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Indium\', 49, \'In\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Tin\', 50, \'Sn\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Antimony\', 51, \'Sb\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Tellurium\', 52, \'Te\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Iodine\', 53, \'I\', \'diatomicnonmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Xenon\', 54, \'Xe\', \'noblegas\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Cesium\', 55, \'Cs\', \'alkalimetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Barium\', 56, \'Ba\', \'alkalineearthmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Lanthanum\', 57, \'La\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Cerium\', 58, \'Ce\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Praseodymium\', 59, \'Pr\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Neodymium\', 60, \'Nd\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Promethium\', 61, \'Pm\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Samarium\', 62, \'Sm\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Europium\', 63, \'Eu\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Gadolinium\', 64, \'Gd\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Terbium\', 65, \'Tb\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Dysprosium\', 66, \'Dy\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Holmium\', 67, \'Ho\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Erbium\', 68, \'Er\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Thulium\', 69, \'Tm\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Ytterbium\', 70, \'Yb\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Lutetium\', 71, \'Lu\', \'lanthanide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Hafnium\', 72, \'Hf\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Tantalum\', 73, \'Ta\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Wolfram\', 74, \'W\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Rhenium\', 75, \'Re\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Osmium\', 76, \'Os\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Iridium\', 77, \'Ir\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Platinum\', 78, \'Pt\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Gold\', 79, \'Au\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Mercury\', 80, \'Hg\', \'transitionmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Thallium\', 81, \'Tl\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Lead\', 82, \'Pb\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Bismuth\', 83, \'Bi\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Polonium\', 84, \'Po\', \'othermetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Astatine\', 85, \'At\', \'metalloid\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Radon\', 86, \'Rn\', \'noblegas\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Francium\', 87, \'Fr\', \'alkalimetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Radium\', 88, \'Ra\', \'alkalineearthmetal\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Actinium\', 89, \'Ac\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Thorium\', 90, \'Th\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Protactinium\', 91, \'Pa\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Uranium\', 92, \'U\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Neptunium\', 93, \'Np\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Plutonium\', 94, \'Pu\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Americium\', 95, \'Am\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Curium\', 96, \'Cm\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Berkelium\', 97, \'Bk\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Californium\', 98, \'Cf\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Einsteinium\', 99, \'Es\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Fermium\', 100, \'Fm\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Mendelevium\', 101, \'Md\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Nobelium\', 102, \'No\', \'actinide\');\nINSERT INTO PERIODIC_ELEMENTS(ELEMENT, ATOMIC_NUMBER, SYMBOL, METAL_GROUP)  VALUES(\'Lawrencium\', 103, \'Lr\', \'actinide\');','DROP TABLE PERIODIC_ELEMENTS;','applied','');
/*!40000 ALTER TABLE `play_evolutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'thien4','123456'),(2,'manh4','23456'),(3,'hieu2','010101011'),(4,'duy2','345678'),(5,'manhngu','2222'),(6,'aaaa','2222'),(7,'thinhnek','2356'),(8,'Hieunv','234562'),(9,'thien3','290111'),(10,'S','234562'),(11,'S','234562'),(12,'S','234562');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-23 19:09:29
