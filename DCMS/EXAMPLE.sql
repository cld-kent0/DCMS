-- MySqlBackup.NET 2.3.8.0
-- Dump Time: 2024-02-01 22:30:28
-- --------------------------------------
-- Server version 10.4.32-MariaDB mariadb.org binary distribution


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of appointmenttbl
-- 

DROP TABLE IF EXISTS `appointmenttbl`;
CREATE TABLE IF NOT EXISTS `appointmenttbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient` varchar(50) NOT NULL,
  `Treatment` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table appointmenttbl
-- 

/*!40000 ALTER TABLE `appointmenttbl` DISABLE KEYS */;
INSERT INTO `appointmenttbl`(`ID`,`Patient`,`Treatment`,`Date`,`Time`) VALUES(1,'Claud','Tooth Whitening','2024-01-30 00:00:00','11:30:00'),(2,'Cuizon','Tooth Extraction','2024-02-01 00:00:00','05:30:00'),(3,'Delos Santos','Dentures','2024-07-17 00:00:00','03:30:00');
/*!40000 ALTER TABLE `appointmenttbl` ENABLE KEYS */;

-- 
-- Definition of patienttbl
-- 

DROP TABLE IF EXISTS `patienttbl`;
CREATE TABLE IF NOT EXISTS `patienttbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `Notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table patienttbl
-- 

/*!40000 ALTER TABLE `patienttbl` DISABLE KEYS */;
INSERT INTO `patienttbl`(`ID`,`Name`,`Phone`,`Address`,`DoB`,`Sex`,`Notes`) VALUES(1,'Claud','01010101011','CC','2001-07-27 00:00:00','Male',''),(2,'Chan','02020202022','CC','2000-08-31 00:00:00','Male',''),(3,'Diaz','03030303033','CC','2002-11-20 00:00:00','Male',''),(4,'Delos Santos','04040404044','CC','2002-06-11 00:00:00','Male',''),(5,'Cuizon','05050505055','CC','2001-10-16 00:00:00','Male','');
/*!40000 ALTER TABLE `patienttbl` ENABLE KEYS */;

-- 
-- Definition of prescriptiontbl
-- 

DROP TABLE IF EXISTS `prescriptiontbl`;
CREATE TABLE IF NOT EXISTS `prescriptiontbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Treatment` varchar(50) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Medicine` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table prescriptiontbl
-- 

/*!40000 ALTER TABLE `prescriptiontbl` DISABLE KEYS */;
INSERT INTO `prescriptiontbl`(`ID`,`Name`,`Treatment`,`Cost`,`Medicine`,`Quantity`) VALUES(1,'Claud','Tooth Whitening',6500,'Amoxicillin',3);
/*!40000 ALTER TABLE `prescriptiontbl` ENABLE KEYS */;

-- 
-- Definition of treatmenttbl
-- 

DROP TABLE IF EXISTS `treatmenttbl`;
CREATE TABLE IF NOT EXISTS `treatmenttbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Treatment` varchar(50) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table treatmenttbl
-- 

/*!40000 ALTER TABLE `treatmenttbl` DISABLE KEYS */;
INSERT INTO `treatmenttbl`(`ID`,`Treatment`,`Cost`,`Description`) VALUES(1,'Tooth Whitening',6500,''),(2,'Dentures',10000,''),(3,'Tooth Extraction',8000,''),(4,'Root Canal Therapy',15000,''),(5,'Dental Bonding',7800,'');
/*!40000 ALTER TABLE `treatmenttbl` ENABLE KEYS */;

-- 
-- Definition of useraccess
-- 

DROP TABLE IF EXISTS `useraccess`;
CREATE TABLE IF NOT EXISTS `useraccess` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL DEFAULT 'User',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 
-- Dumping data for table useraccess
-- 

/*!40000 ALTER TABLE `useraccess` DISABLE KEYS */;
INSERT INTO `useraccess`(`ID`,`Username`,`Password`,`Email`,`Type`) VALUES(1,'admin','admin','g1dev2024@gmail.com','Admin');
/*!40000 ALTER TABLE `useraccess` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2024-02-01 22:30:28
-- Total time: 0:0:0:0:560 (d:h:m:s:ms)
