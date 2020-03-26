/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.62-0+deb8u1 : Database - arma3sql1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `allowed_objects` */

DROP TABLE IF EXISTS `allowed_objects`;

CREATE TABLE `allowed_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectClass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectAllowed` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `allowed_vehicles` */

DROP TABLE IF EXISTS `allowed_vehicles`;

CREATE TABLE `allowed_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleClass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleAllowed` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `icons` */

DROP TABLE IF EXISTS `icons`;

CREATE TABLE `icons` (
  `iconID` int(11) NOT NULL AUTO_INCREMENT,
  `iconClass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iconImg` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`iconID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `marker` */

DROP TABLE IF EXISTS `marker`;

CREATE TABLE `marker` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `markerName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `markerDescription` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `markerDir` int(11) DEFAULT '0',
  `markerPos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mission_FK` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `mission` */

DROP TABLE IF EXISTS `mission`;

CREATE TABLE `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `missionMap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `missionName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `missionLoaded` datetime DEFAULT NULL,
  `defaultPos` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `objects` */

DROP TABLE IF EXISTS `objects`;

CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objClass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objCategory` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objInit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objPos` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objDir` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objDamage` float DEFAULT NULL,
  `objRecDate` timestamp NULL DEFAULT NULL,
  `objInvItem` text COLLATE utf8_unicode_ci,
  `objInvBackpack` text COLLATE utf8_unicode_ci,
  `objInvMagazine` text COLLATE utf8_unicode_ci,
  `objInvWeapon` text COLLATE utf8_unicode_ci,
  `mission_FK` int(11) DEFAULT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `player` */

DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerUID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playerRank` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'vDSK_Schuetze',
  `playerAdmin` int(1) DEFAULT '0',
  `playerLastOnline` datetime DEFAULT NULL,
  UNIQUE KEY `playerUID` (`playerUID`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `player_mission_connection` */

DROP TABLE IF EXISTS `player_mission_connection`;

CREATE TABLE `player_mission_connection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playerInv` text COLLATE utf8_unicode_ci NOT NULL,
  `playerPos` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `playerDir` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `mission_FK` int(11) DEFAULT NULL,
  `playerUID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playerLastOnline` char(19) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `playerMission` (`mission_FK`,`playerUID`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `ranks` */

DROP TABLE IF EXISTS `ranks`;

CREATE TABLE `ranks` (
  `r_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `r_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `r_className` varchar(50) DEFAULT NULL,
  `r_short` varchar(10) CHARACTER SET utf8 NOT NULL,
  `r_order` int(4) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `val` tinytext COLLATE utf8_unicode_ci,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleClass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehiclePos` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleDir` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleDamage` float DEFAULT NULL,
  `vehicleHitpoints` text COLLATE utf8_unicode_ci,
  `vehicleFuel` float DEFAULT NULL,
  `vehicleInvItem` text COLLATE utf8_unicode_ci,
  `vehicleInvBackpack` text COLLATE utf8_unicode_ci,
  `vehicleInvMagazine` text COLLATE utf8_unicode_ci,
  `vehicleInvWeapon` text COLLATE utf8_unicode_ci,
  `vehicleInvExt` text COLLATE utf8_unicode_ci,
  `vehicleLastDriver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleLastRide` timestamp NULL DEFAULT NULL,
  `vehicleCrew` int(1) DEFAULT '0',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mission_FK` int(3) DEFAULT NULL,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `wi_inventory_templates` */

DROP TABLE IF EXISTS `wi_inventory_templates`;

CREATE TABLE `wi_inventory_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invItem` text COLLATE utf8_unicode_ci,
  `invBackpack` text COLLATE utf8_unicode_ci,
  `invMagazine` text COLLATE utf8_unicode_ci,
  `invWeapon` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `wi_reqobj` */

DROP TABLE IF EXISTS `wi_reqobj`;

CREATE TABLE `wi_reqobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ro_class` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ro_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'just to sort in the webinterface (V = vehicle, S = Supply, O = Object)',
  `ro_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ro_requestable` int(1) DEFAULT '1',
  `ro_reqTime` int(5) DEFAULT '24',
  `ro_blockRadius` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `wi_request` */

DROP TABLE IF EXISTS `wi_request`;

CREATE TABLE `wi_request` (
  `r_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `r_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_template_id` int(11) DEFAULT '0',
  `r_reqdate` datetime DEFAULT NULL,
  `r_dateapproved` datetime DEFAULT NULL,
  `r_date` datetime DEFAULT NULL,
  `r_pos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `r_marker_id` int(11) DEFAULT NULL,
  `r_object_id` int(11) DEFAULT NULL,
  `r_status` int(1) DEFAULT '0',
  `r_mission` int(11) DEFAULT NULL,
  `r_remarks` text COLLATE utf8_unicode_ci,
  `r_comments` text COLLATE utf8_unicode_ci,
  `r_apprperson` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `wi_user` */

DROP TABLE IF EXISTS `wi_user`;

CREATE TABLE `wi_user` (
  `u_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `u_A3UID` varchar(20) DEFAULT NULL,
  `u_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_pwd` varchar(255) CHARACTER SET utf8 NOT NULL,
  `u_access` varchar(255) DEFAULT NULL,
  `u_lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
