/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.21-log : Database - characters
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`characters` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `characters`;

/*Table structure for table `shard_aa_allocation` */

DROP TABLE IF EXISTS `shard_aa_allocation`;

CREATE TABLE `shard_aa_allocation` (
  `playerguid` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `spell1` int(11) DEFAULT '0',
  `spell2` int(11) DEFAULT '0',
  `spell3` int(11) DEFAULT '0',
  `spell4` int(11) DEFAULT '0',
  `spell5` int(11) DEFAULT '0',
  `spell6` int(11) DEFAULT '0',
  `spell7` int(11) DEFAULT '0',
  `spell8` int(11) DEFAULT '0',
  `spell9` int(11) DEFAULT '0',
  `spell10` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shard_aa_points` */

DROP TABLE IF EXISTS `shard_aa_points`;

CREATE TABLE `shard_aa_points` (
  `playerguid` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `statpoints` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shard_assigned_class` */

DROP TABLE IF EXISTS `shard_assigned_class`;

CREATE TABLE `shard_assigned_class` (
  `playerguid` int(11) NOT NULL AUTO_INCREMENT,
  `class` int(11) DEFAULT NULL,
  KEY `id` (`playerguid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

/*Table structure for table `shard_class_info` */

DROP TABLE IF EXISTS `shard_class_info`;

CREATE TABLE `shard_class_info` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `skill1` int(11) NOT NULL,
  `skill2` int(11) NOT NULL,
  `req_gender` int(11) NOT NULL,
  `req_class` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL DEFAULT '[No Description]',
  `icon_path` varchar(255) NOT NULL,
  `archetype` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `armor_class` varchar(255) NOT NULL,
  `item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shard_pvp_stats` */

DROP TABLE IF EXISTS `shard_pvp_stats`;

CREATE TABLE `shard_pvp_stats` (
  `playerguid` int(11) DEFAULT NULL,
  `honorable_kills` int(11) DEFAULT '0',
  `dishonorable_kills` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shard_spell_table` */

DROP TABLE IF EXISTS `shard_spell_table`;

CREATE TABLE `shard_spell_table` (
  `SpellID` int(11) DEFAULT NULL,
  `SkillID` int(11) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Comment` text,
  `Data1` int(11) DEFAULT NULL,
  `Data2` int(11) DEFAULT NULL,
  `Data3` int(11) DEFAULT NULL,
  `Data4` int(11) DEFAULT NULL,
  `Data5` int(11) DEFAULT NULL,
  `EffectMult` int(11) DEFAULT NULL,
  `BaseCooldown` int(11) DEFAULT NULL,
  `CooldownMult` int(11) DEFAULT NULL,
  `ExEffect1` int(11) DEFAULT NULL,
  `ExEffect2` int(11) DEFAULT NULL,
  `ExEffect3` int(11) DEFAULT NULL,
  `ExDuration1` int(11) DEFAULT NULL,
  `ExDuration2` int(11) DEFAULT NULL,
  `ExDuration3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `shard_stats` */

DROP TABLE IF EXISTS `shard_stats`;

CREATE TABLE `shard_stats` (
  `playerguid` int(11) DEFAULT NULL,
  `str` int(11) DEFAULT '0',
  `sta` int(11) DEFAULT '0',
  `inte` int(11) DEFAULT '0',
  `agi` int(11) DEFAULT '0',
  `spi` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
