/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - dcms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dcms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dcms`;

/*Table structure for table `appointmenttbl` */

DROP TABLE IF EXISTS `appointmenttbl`;

CREATE TABLE `appointmenttbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Patient` varchar(50) NOT NULL,
  `Treatment` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `appointmenttbl` */

/*Table structure for table `patienttbl` */

DROP TABLE IF EXISTS `patienttbl`;

CREATE TABLE `patienttbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DoB` date NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `Notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `patienttbl` */

/*Table structure for table `prescriptiontbl` */

DROP TABLE IF EXISTS `prescriptiontbl`;

CREATE TABLE `prescriptiontbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Treatment` varchar(50) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Medicine` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `prescriptiontbl` */

/*Table structure for table `treatmenttbl` */

DROP TABLE IF EXISTS `treatmenttbl`;

CREATE TABLE `treatmenttbl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Treatment` varchar(50) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `treatmenttbl` */

/*Table structure for table `useraccess` */

DROP TABLE IF EXISTS `useraccess`;

CREATE TABLE `useraccess` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL DEFAULT 'User',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `useraccess` */

insert  into `useraccess`(`ID`,`Username`,`Password`,`Email`,`Type`) values 
(1,'admin','admin','g1dev2024@gmail.com','Admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
