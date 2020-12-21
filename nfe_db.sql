/*
SQLyog Ultimate v8.82 
MySQL - 5.0.86-community-nt : Database - nfe_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nfe_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nfe_db`;

/*Table structure for table `gender_master` */

DROP TABLE IF EXISTS `gender_master`;

CREATE TABLE `gender_master` (
  `Id` int(11) NOT NULL auto_increment,
  `Gender` varchar(20) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `gender_master` */

insert  into `gender_master`(`Id`,`Gender`) values (1,'Male'),(2,'Female'),(3,'Others');

/*Table structure for table `t_user_master` */

DROP TABLE IF EXISTS `t_user_master`;

CREATE TABLE `t_user_master` (
  `Id` int(11) NOT NULL auto_increment,
  `Cid` int(11) default NULL,
  `Name` varchar(200) default NULL,
  `Gender` int(3) default NULL,
  `Phone_No` varchar(20) default NULL,
  `Email` varchar(200) default NULL,
  `Status` enum('Active','InActive') default 'Active',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `t_user_master` */

insert  into `t_user_master`(`Id`,`Cid`,`Name`,`Gender`,`Phone_No`,`Email`,`Status`) values (1,2147483647,'Full Name',1,'12312312','email@gmail.com','Active');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
