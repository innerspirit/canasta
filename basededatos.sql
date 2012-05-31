-- MySQL dump 10.13  Distrib 5.5.21, for Win64 (x86)
--
-- Host: localhost    Database: canasta
-- ------------------------------------------------------
-- Server version	5.5.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'site=es-ES\nadministrator=es-ES\n\n',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(34,'COM_VIRTUEMART','option=com_virtuemart',0,0,'option=com_virtuemart','COM_VIRTUEMART','com_virtuemart',0,'../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png',0,'',1),(35,'VirtueMart AIO','option=com_virtuemart_allinone',0,0,'option=com_virtuemart_allinone','VirtueMart AIO','com_virtuemart_allinone',0,'js/ThemeOffice/component.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` VALUES (10,'users','62',0,'Administrator',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` VALUES (1,'mainmenu','Home','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'mainmenu','Comprar','comprar','index.php?option=com_virtuemart&view=cart','component',1,0,34,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` VALUES (1,'Main Menu','',1,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmoduleclass_sfx=_menu\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'VM - Currencies Selector','',4,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_currencies',0,0,1,'',0,0,''),(17,'VM - Featured products','',3,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_product',0,0,1,'',0,0,''),(18,'VM - Best Sales','',1,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_product',0,0,1,'',0,0,''),(19,'VM - Search in Shop','',2,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_search',0,0,1,'',0,0,''),(20,'VM - Manufacturer','',5,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_manufacturer',0,0,1,'',0,0,''),(21,'VM - Shopping cart','',0,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_cart',0,0,1,'',0,0,''),(22,'VM - Category','',6,'left',0,'0000-00-00 00:00:00',1,'mod_virtuemart_category',0,0,1,'',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` VALUES (1,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(22,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'System - Mootools Upgrade','mtupgrade','system',0,8,0,1,0,0,'0000-00-00 00:00:00',''),(35,'VM - Payment, Standard','standard','vmpayment',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(36,'VM - Payment, Payzen','payzen','vmpayment',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(37,'VM - Payment, SystemPay','systempay','vmpayment',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(38,'VM - Payment, Authorize.net','authorizenet','vmpayment',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(39,'VM - Payment, Paypal','paypal','vmpayment',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(40,'VM - Shipment, By weight, ZIP and countries','weight_countries','vmshipment',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(41,'VM - Custom, customer text input','textinput','vmcustom',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(42,'VM - Custom, product specification','specification','vmcustom',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(43,'VM - Custom, stockable variants','stockable','vmcustom',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(44,'VM - Search, Virtuemart Product','virtuemart','search',0,0,1,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` VALUES ('','1338041402','f35123368bbc63675c3a1e135d29b454',1,0,'',0,1,'__default|a:5:{s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:15:\"session.counter\";i:1;s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"06d70325713ce1bc7e542c413c350e85\";}'),('','1338041433','on630egsqgr5aar43njnsrr2j3',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1338041432;s:18:\"session.timer.last\";i:1338041432;s:17:\"session.timer.now\";i:1338041432;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"7cf113afcd3089736991052ff07ccbec\";}'),('admin','1338170961','pjfrmb8oa00mu2iakgo5m9k3p2',0,62,'Super Administrator',25,1,'__default|a:8:{s:15:\"session.counter\";i:91;s:19:\"session.timer.start\";i:1338041432;s:18:\"session.timer.last\";i:1338170957;s:17:\"session.timer.now\";i:1338170961;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:5:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:10:\"com_cpanel\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:9:\"mtupgrade\";O:8:\"stdClass\":1:{s:7:\"checked\";b:1;}}}s:14:\"com_virtuemart\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:7:\"product\";O:8:\"stdClass\":2:{s:16:\"filter_order_Dir\";s:4:\"DESC\";s:12:\"filter_order\";s:10:\"created_on\";}}}s:9:\"com_menus\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:8:\"mainmenu\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:21:\"mmchristian@gmail.com\";s:8:\"password\";s:65:\"9a7926a7d9a144210dfa8d8f6b8b9fc8:IMepdb746aJaE29OXBsBcYPUqsZcHS0Q\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2012-05-26 12:33:32\";s:13:\"lastvisitDate\";s:19:\"2012-05-26 14:10:32\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:1:\"\n\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"7cf113afcd3089736991052ff07ccbec\";}'),('','1338171662','u9be9equoointjsjnpuuh3p2c0',1,0,'',0,0,'__default|a:8:{s:15:\"session.counter\";i:54;s:19:\"session.timer.start\";i:1338132346;s:18:\"session.timer.last\";i:1338171651;s:17:\"session.timer.now\";i:1338171662;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"f2169428033327349fcdebfd8e62b73b\";}__vm|a:3:{s:6:\"vmcart\";s:3723:\"O:8:\"stdClass\":21:{s:8:\"products\";a:1:{i:17;O:8:\"stdClass\":40:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:7:\"canasta\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:2:\"17\";s:21:\"virtuemart_product_id\";s:2:\"17\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:9:\"300.00000\";s:8:\"override\";N;s:22:\"product_override_price\";s:7:\"0.00000\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:2:\"47\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:1:\"0\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:7:\"Canasta\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";s:6:\"0.0000\";s:18:\"product_weight_uom\";s:2:\"KG\";s:14:\"product_length\";s:6:\"0.0000\";s:13:\"product_width\";s:6:\"0.0000\";s:14:\"product_height\";s:6:\"0.0000\";s:15:\"product_lwh_uom\";s:1:\"M\";s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";s:0:\"\";s:17:\"product_packaging\";s:1:\"0\";s:15:\"min_order_level\";s:1:\"0\";s:15:\"max_order_level\";s:1:\"0\";s:19:\"virtuemart_media_id\";a:0:{}s:10:\"categories\";a:0:{}s:22:\"virtuemart_category_id\";N;s:13:\"category_name\";s:0:\"\";s:4:\"link\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=17&amp;virtuemart_category_id=\";s:9:\"packaging\";s:0:\"\";s:8:\"quantity\";i:2;s:3:\"url\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=17&amp;virtuemart_category_id=\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:17;}}s:8:\"vendorId\";i:1;s:21:\"lastVisitedCategoryId\";i:0;s:28:\"virtuemart_shipmentmethod_id\";i:0;s:27:\"virtuemart_paymentmethod_id\";i:0;s:25:\"automaticSelectedShipment\";b:0;s:24:\"automaticSelectedPayment\";b:0;s:2:\"BT\";i:0;s:2:\"ST\";i:0;s:11:\"tosAccepted\";N;s:16:\"customer_comment\";s:0:\"\";s:10:\"couponCode\";s:0:\"\";s:8:\"cartData\";a:7:{s:4:\"duty\";i:1;s:7:\"payment\";i:0;s:11:\"paymentName\";s:35:\"No hay método de pago seleccionado\";s:14:\"DBTaxRulesBill\";a:0:{}s:12:\"shipmentName\";s:23:\"No se selecciono envío\";s:12:\"taxRulesBill\";a:0:{}s:14:\"DATaxRulesBill\";a:0:{}}s:5:\"lists\";a:2:{s:6:\"shipTo\";s:0:\"\";s:6:\"billTo\";i:0;}s:17:\"pricesUnformatted\";a:26:{s:9:\"basePrice\";s:3:\"600\";s:16:\"basePriceWithTax\";s:5:\"655.5\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:10:\"salesPrice\";s:5:\"655.5\";s:9:\"taxAmount\";s:4:\"55.5\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:3:\"600\";s:16:\"subTotalProducts\";s:1:\"0\";s:5:\"1Diff\";s:5:\"27.75\";i:17;a:20:{s:9:\"costPrice\";s:9:\"300.00000\";s:9:\"basePrice\";s:3:\"300\";s:16:\"basePriceVariant\";s:3:\"300\";s:16:\"basePriceWithTax\";s:6:\"327.75\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:14:\"priceBeforeTax\";s:3:\"300\";s:10:\"salesPrice\";s:6:\"327.75\";s:9:\"taxAmount\";s:5:\"27.75\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"salesPriceTemp\";s:6:\"327.75\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:3:\"300\";s:19:\"variantModification\";s:1:\"0\";s:5:\"DBTax\";s:5:\"Array\";s:3:\"Tax\";s:5:\"Array\";s:5:\"DATax\";s:5:\"Array\";s:8:\"subtotal\";s:3:\"600\";s:19:\"subtotal_tax_amount\";s:4:\"55.5\";s:17:\"subtotal_discount\";s:1:\"0\";s:17:\"subtotal_with_tax\";s:5:\"655.5\";}s:13:\"shipmentValue\";s:1:\"0\";s:11:\"shipmentTax\";s:1:\"0\";s:13:\"shipmentTotal\";s:1:\"0\";s:18:\"salesPriceShipment\";s:1:\"0\";s:21:\"discountBeforeTaxBill\";s:1:\"0\";s:7:\"withTax\";s:5:\"655.5\";s:16:\"discountAfterTax\";s:5:\"655.5\";s:12:\"paymentValue\";s:1:\"0\";s:10:\"paymentTax\";s:1:\"0\";s:12:\"paymentTotal\";s:1:\"0\";s:17:\"salesPricePayment\";s:1:\"0\";s:7:\"billSub\";s:3:\"600\";s:18:\"billDiscountAmount\";s:1:\"0\";s:13:\"billTaxAmount\";s:4:\"55.5\";s:9:\"billTotal\";s:5:\"655.5\";}s:14:\"pricesCurrency\";i:47;s:15:\"paymentCurrency\";N;s:11:\"_inCheckOut\";b:1;s:14:\"_dataValidated\";b:0;s:12:\"_confirmDone\";b:0;s:10:\"STsameAsBT\";i:0;}\";s:23:\"vmlastvisitedcategoryid\";i:2;s:23:\"vmlastvisitedproductids\";a:1:{i:0;i:17;}}'),('','1338367736','1acv5rjd29j7hslk4b3pma9hv7',1,0,'',0,0,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1338367736;s:18:\"session.timer.last\";i:1338367736;s:17:\"session.timer.now\";i:1338367736;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"e5d116679702146e4708db20b6b6d96c\";}__vm|a:1:{s:6:\"vmcart\";s:1543:\"O:8:\"stdClass\":21:{s:8:\"products\";a:0:{}s:8:\"vendorId\";i:1;s:21:\"lastVisitedCategoryId\";i:0;s:28:\"virtuemart_shipmentmethod_id\";i:0;s:27:\"virtuemart_paymentmethod_id\";i:0;s:25:\"automaticSelectedShipment\";b:0;s:24:\"automaticSelectedPayment\";b:0;s:2:\"BT\";i:0;s:2:\"ST\";i:0;s:11:\"tosAccepted\";N;s:16:\"customer_comment\";s:0:\"\";s:10:\"couponCode\";s:0:\"\";s:8:\"cartData\";a:7:{s:4:\"duty\";i:1;s:7:\"payment\";i:0;s:11:\"paymentName\";s:35:\"No hay método de pago seleccionado\";s:14:\"DBTaxRulesBill\";a:0:{}s:12:\"shipmentName\";s:23:\"No se selecciono envío\";s:12:\"taxRulesBill\";a:0:{}s:14:\"DATaxRulesBill\";a:0:{}}s:5:\"lists\";a:2:{s:6:\"shipTo\";s:0:\"\";s:6:\"billTo\";i:0;}s:17:\"pricesUnformatted\";a:24:{s:9:\"basePrice\";s:1:\"0\";s:16:\"basePriceWithTax\";s:1:\"0\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:10:\"salesPrice\";s:1:\"0\";s:9:\"taxAmount\";s:1:\"0\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:1:\"0\";s:16:\"subTotalProducts\";s:1:\"0\";s:13:\"shipmentValue\";s:1:\"0\";s:11:\"shipmentTax\";s:1:\"0\";s:13:\"shipmentTotal\";s:1:\"0\";s:18:\"salesPriceShipment\";s:1:\"0\";s:21:\"discountBeforeTaxBill\";s:1:\"0\";s:7:\"withTax\";s:1:\"0\";s:16:\"discountAfterTax\";s:1:\"0\";s:12:\"paymentValue\";s:1:\"0\";s:10:\"paymentTax\";s:1:\"0\";s:12:\"paymentTotal\";s:1:\"0\";s:17:\"salesPricePayment\";s:1:\"0\";s:7:\"billSub\";s:1:\"0\";s:18:\"billDiscountAmount\";s:1:\"0\";s:13:\"billTaxAmount\";s:1:\"0\";s:9:\"billTotal\";s:1:\"0\";}s:14:\"pricesCurrency\";i:47;s:15:\"paymentCurrency\";N;s:11:\"_inCheckOut\";b:1;s:14:\"_dataValidated\";b:0;s:12:\"_confirmDone\";b:0;s:10:\"STsameAsBT\";i:0;}\";}'),('','1338367736','uaef6kll2nvnbo79ndmtu2o946',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1338367736;s:18:\"session.timer.last\";i:1338367736;s:17:\"session.timer.now\";i:1338367736;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"962c7eb212030ae4b639514ff87af457\";}'),('','1338367736','3ct1t65pe70fcmsdmc4cuv2ev1',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1338367736;s:18:\"session.timer.last\";i:1338367736;s:17:\"session.timer.now\";i:1338367736;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"e70af58a1d1263d6e12252605b044e8b\";}'),('','1338426710','h6tr5u7dsmf045fottj15mnj94',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1338426710;s:18:\"session.timer.last\";i:1338426710;s:17:\"session.timer.now\";i:1338426710;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"455348ca880cd9ae0b743f8b47261f99\";}'),('','1338428341','ih5cah8v5o1jo8l2ib5q06rok0',1,0,'',0,1,'__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1338426710;s:18:\"session.timer.last\";i:1338426710;s:17:\"session.timer.now\";i:1338428337;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"261a1e049cda795eea6f482bdda04164\";}'),('','1338464209','25atcj4i85b6vgbt7a1lirj6g3',1,0,'',0,0,'__default|a:8:{s:15:\"session.counter\";i:77;s:19:\"session.timer.start\";i:1338426710;s:18:\"session.timer.last\";i:1338464206;s:17:\"session.timer.now\";i:1338464209;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"091a2916c669e2f8e95db07c9d600a1d\";}__vm|a:3:{s:6:\"vmcart\";s:12258:\"O:8:\"stdClass\":21:{s:8:\"products\";a:5:{i:18;O:8:\"stdClass\":40:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:8:\"naranjas\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:2:\"18\";s:21:\"virtuemart_product_id\";s:2:\"18\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:8:\"25.00000\";s:8:\"override\";N;s:22:\"product_override_price\";s:7:\"0.00000\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:2:\"47\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:2:\"17\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:8:\"Naranjas\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";s:6:\"0.0000\";s:18:\"product_weight_uom\";s:2:\"KG\";s:14:\"product_length\";s:6:\"0.0000\";s:13:\"product_width\";s:6:\"0.0000\";s:14:\"product_height\";s:6:\"0.0000\";s:15:\"product_lwh_uom\";s:1:\"M\";s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";s:0:\"\";s:17:\"product_packaging\";s:6:\"655360\";s:15:\"min_order_level\";s:1:\"0\";s:15:\"max_order_level\";s:1:\"0\";s:19:\"virtuemart_media_id\";a:0:{}s:10:\"categories\";a:0:{}s:22:\"virtuemart_category_id\";N;s:13:\"category_name\";s:0:\"\";s:4:\"link\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=18&amp;virtuemart_category_id=\";s:9:\"packaging\";i:0;s:8:\"quantity\";i:1;s:3:\"url\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=18&amp;virtuemart_category_id=\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:18;}i:19;O:8:\"stdClass\":40:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:7:\"lechuga\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:2:\"19\";s:21:\"virtuemart_product_id\";s:2:\"19\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:8:\"50.00000\";s:8:\"override\";N;s:22:\"product_override_price\";s:7:\"0.00000\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:2:\"47\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:2:\"17\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:7:\"Lechuga\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";s:8:\"500.0000\";s:18:\"product_weight_uom\";s:2:\"GR\";s:14:\"product_length\";s:6:\"0.0000\";s:13:\"product_width\";s:6:\"0.0000\";s:14:\"product_height\";s:6:\"0.0000\";s:15:\"product_lwh_uom\";s:1:\"M\";s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";s:0:\"\";s:17:\"product_packaging\";s:1:\"0\";s:15:\"min_order_level\";s:1:\"0\";s:15:\"max_order_level\";s:1:\"0\";s:19:\"virtuemart_media_id\";a:0:{}s:10:\"categories\";a:0:{}s:22:\"virtuemart_category_id\";N;s:13:\"category_name\";s:0:\"\";s:4:\"link\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=19&amp;virtuemart_category_id=\";s:9:\"packaging\";s:0:\"\";s:8:\"quantity\";i:1;s:3:\"url\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=19&amp;virtuemart_category_id=\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:19;}i:21;O:8:\"stdClass\":40:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:7:\"tomates\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:2:\"21\";s:21:\"virtuemart_product_id\";s:2:\"21\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:8:\"35.00000\";s:8:\"override\";N;s:22:\"product_override_price\";s:7:\"0.00000\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:2:\"47\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:2:\"17\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:7:\"Tomates\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";s:8:\"250.0000\";s:18:\"product_weight_uom\";s:2:\"GR\";s:14:\"product_length\";s:6:\"0.0000\";s:13:\"product_width\";s:6:\"0.0000\";s:14:\"product_height\";s:6:\"0.0000\";s:15:\"product_lwh_uom\";s:1:\"M\";s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";s:0:\"\";s:17:\"product_packaging\";s:1:\"0\";s:15:\"min_order_level\";s:1:\"0\";s:15:\"max_order_level\";s:1:\"0\";s:19:\"virtuemart_media_id\";a:0:{}s:10:\"categories\";a:0:{}s:22:\"virtuemart_category_id\";N;s:13:\"category_name\";s:0:\"\";s:4:\"link\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=21&amp;virtuemart_category_id=\";s:9:\"packaging\";s:0:\"\";s:8:\"quantity\";i:1;s:3:\"url\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=21&amp;virtuemart_category_id=\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:21;}i:22;O:8:\"stdClass\":40:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:8:\"manzanas\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:2:\"22\";s:21:\"virtuemart_product_id\";s:2:\"22\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:8:\"20.00000\";s:8:\"override\";N;s:22:\"product_override_price\";s:7:\"0.00000\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:2:\"47\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:2:\"17\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:8:\"Manzanas\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";s:6:\"0.0000\";s:18:\"product_weight_uom\";s:2:\"KG\";s:14:\"product_length\";s:6:\"0.0000\";s:13:\"product_width\";s:6:\"0.0000\";s:14:\"product_height\";s:6:\"0.0000\";s:15:\"product_lwh_uom\";s:1:\"M\";s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";s:0:\"\";s:17:\"product_packaging\";s:6:\"983040\";s:15:\"min_order_level\";s:1:\"0\";s:15:\"max_order_level\";s:1:\"0\";s:19:\"virtuemart_media_id\";a:0:{}s:10:\"categories\";a:0:{}s:22:\"virtuemart_category_id\";N;s:13:\"category_name\";s:0:\"\";s:4:\"link\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=22&amp;virtuemart_category_id=\";s:9:\"packaging\";i:0;s:8:\"quantity\";i:1;s:3:\"url\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=22&amp;virtuemart_category_id=\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:22;}i:17;O:8:\"stdClass\":40:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:7:\"canasta\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:2:\"17\";s:21:\"virtuemart_product_id\";s:2:\"17\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:9:\"135.00000\";s:8:\"override\";N;s:22:\"product_override_price\";s:7:\"0.00000\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:2:\"47\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:1:\"0\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:7:\"Canasta\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";s:6:\"0.0000\";s:18:\"product_weight_uom\";s:2:\"KG\";s:14:\"product_length\";s:6:\"0.0000\";s:13:\"product_width\";s:6:\"0.0000\";s:14:\"product_height\";s:6:\"0.0000\";s:15:\"product_lwh_uom\";s:1:\"M\";s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";s:0:\"\";s:17:\"product_packaging\";s:1:\"0\";s:15:\"min_order_level\";s:1:\"0\";s:15:\"max_order_level\";s:1:\"0\";s:19:\"virtuemart_media_id\";a:0:{}s:10:\"categories\";a:0:{}s:22:\"virtuemart_category_id\";N;s:13:\"category_name\";s:0:\"\";s:4:\"link\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=17&amp;virtuemart_category_id=\";s:9:\"packaging\";s:0:\"\";s:8:\"quantity\";i:1;s:3:\"url\";s:113:\"/index.php?option=com_virtuemart&amp;view=productdetails&amp;virtuemart_product_id=17&amp;virtuemart_category_id=\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:17;}}s:8:\"vendorId\";i:1;s:21:\"lastVisitedCategoryId\";i:0;s:28:\"virtuemart_shipmentmethod_id\";i:0;s:27:\"virtuemart_paymentmethod_id\";i:0;s:25:\"automaticSelectedShipment\";b:0;s:24:\"automaticSelectedPayment\";b:0;s:2:\"BT\";i:0;s:2:\"ST\";i:0;s:11:\"tosAccepted\";N;s:16:\"customer_comment\";s:0:\"\";s:10:\"couponCode\";s:0:\"\";s:8:\"cartData\";a:7:{s:4:\"duty\";i:1;s:7:\"payment\";i:0;s:11:\"paymentName\";s:35:\"No hay método de pago seleccionado\";s:14:\"DBTaxRulesBill\";a:0:{}s:12:\"shipmentName\";s:23:\"No se selecciono envío\";s:12:\"taxRulesBill\";a:0:{}s:14:\"DATaxRulesBill\";a:0:{}}s:5:\"lists\";a:2:{s:6:\"shipTo\";s:0:\"\";s:6:\"billTo\";i:0;}s:17:\"pricesUnformatted\";a:30:{s:9:\"basePrice\";s:3:\"265\";s:16:\"basePriceWithTax\";s:8:\"289.5125\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:10:\"salesPrice\";s:8:\"289.5125\";s:9:\"taxAmount\";s:7:\"24.5125\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:3:\"265\";s:16:\"subTotalProducts\";s:1:\"0\";s:5:\"1Diff\";s:7:\"12.4875\";i:18;a:20:{s:9:\"costPrice\";s:8:\"25.00000\";s:9:\"basePrice\";s:2:\"25\";s:16:\"basePriceVariant\";s:2:\"25\";s:16:\"basePriceWithTax\";s:7:\"27.3125\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:14:\"priceBeforeTax\";s:2:\"25\";s:10:\"salesPrice\";s:7:\"27.3125\";s:9:\"taxAmount\";s:6:\"2.3125\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"salesPriceTemp\";s:7:\"27.3125\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:2:\"25\";s:19:\"variantModification\";s:1:\"0\";s:5:\"DBTax\";s:5:\"Array\";s:3:\"Tax\";s:5:\"Array\";s:5:\"DATax\";s:5:\"Array\";s:8:\"subtotal\";s:2:\"25\";s:19:\"subtotal_tax_amount\";s:6:\"2.3125\";s:17:\"subtotal_discount\";s:1:\"0\";s:17:\"subtotal_with_tax\";s:7:\"27.3125\";}i:19;a:20:{s:9:\"costPrice\";s:8:\"50.00000\";s:9:\"basePrice\";s:2:\"50\";s:16:\"basePriceVariant\";s:2:\"50\";s:16:\"basePriceWithTax\";s:6:\"54.625\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:14:\"priceBeforeTax\";s:2:\"50\";s:10:\"salesPrice\";s:6:\"54.625\";s:9:\"taxAmount\";s:5:\"4.625\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"salesPriceTemp\";s:6:\"54.625\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:2:\"50\";s:19:\"variantModification\";s:1:\"0\";s:5:\"DBTax\";s:5:\"Array\";s:3:\"Tax\";s:5:\"Array\";s:5:\"DATax\";s:5:\"Array\";s:8:\"subtotal\";s:2:\"50\";s:19:\"subtotal_tax_amount\";s:5:\"4.625\";s:17:\"subtotal_discount\";s:1:\"0\";s:17:\"subtotal_with_tax\";s:6:\"54.625\";}i:21;a:20:{s:9:\"costPrice\";s:8:\"35.00000\";s:9:\"basePrice\";s:2:\"35\";s:16:\"basePriceVariant\";s:2:\"35\";s:16:\"basePriceWithTax\";s:7:\"38.2375\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:14:\"priceBeforeTax\";s:2:\"35\";s:10:\"salesPrice\";s:7:\"38.2375\";s:9:\"taxAmount\";s:6:\"3.2375\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"salesPriceTemp\";s:7:\"38.2375\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:2:\"35\";s:19:\"variantModification\";s:1:\"0\";s:5:\"DBTax\";s:5:\"Array\";s:3:\"Tax\";s:5:\"Array\";s:5:\"DATax\";s:5:\"Array\";s:8:\"subtotal\";s:2:\"35\";s:19:\"subtotal_tax_amount\";s:6:\"3.2375\";s:17:\"subtotal_discount\";s:1:\"0\";s:17:\"subtotal_with_tax\";s:7:\"38.2375\";}i:22;a:20:{s:9:\"costPrice\";s:8:\"20.00000\";s:9:\"basePrice\";s:2:\"20\";s:16:\"basePriceVariant\";s:2:\"20\";s:16:\"basePriceWithTax\";s:5:\"21.85\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:14:\"priceBeforeTax\";s:2:\"20\";s:10:\"salesPrice\";s:5:\"21.85\";s:9:\"taxAmount\";s:4:\"1.85\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"salesPriceTemp\";s:5:\"21.85\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:2:\"20\";s:19:\"variantModification\";s:1:\"0\";s:5:\"DBTax\";s:5:\"Array\";s:3:\"Tax\";s:5:\"Array\";s:5:\"DATax\";s:5:\"Array\";s:8:\"subtotal\";s:2:\"20\";s:19:\"subtotal_tax_amount\";s:4:\"1.85\";s:17:\"subtotal_discount\";s:1:\"0\";s:17:\"subtotal_with_tax\";s:5:\"21.85\";}i:17;a:20:{s:9:\"costPrice\";s:9:\"135.00000\";s:9:\"basePrice\";s:3:\"135\";s:16:\"basePriceVariant\";s:3:\"135\";s:16:\"basePriceWithTax\";s:8:\"147.4875\";s:25:\"discountedPriceWithoutTax\";s:1:\"0\";s:14:\"priceBeforeTax\";s:3:\"135\";s:10:\"salesPrice\";s:8:\"147.4875\";s:9:\"taxAmount\";s:7:\"12.4875\";s:22:\"salesPriceWithDiscount\";s:1:\"0\";s:14:\"salesPriceTemp\";s:8:\"147.4875\";s:14:\"discountAmount\";s:1:\"0\";s:15:\"priceWithoutTax\";s:3:\"135\";s:19:\"variantModification\";s:1:\"0\";s:5:\"DBTax\";s:5:\"Array\";s:3:\"Tax\";s:5:\"Array\";s:5:\"DATax\";s:5:\"Array\";s:8:\"subtotal\";s:3:\"135\";s:19:\"subtotal_tax_amount\";s:7:\"12.4875\";s:17:\"subtotal_discount\";s:1:\"0\";s:17:\"subtotal_with_tax\";s:8:\"147.4875\";}s:13:\"shipmentValue\";s:1:\"0\";s:11:\"shipmentTax\";s:1:\"0\";s:13:\"shipmentTotal\";s:1:\"0\";s:18:\"salesPriceShipment\";s:1:\"0\";s:21:\"discountBeforeTaxBill\";s:1:\"0\";s:7:\"withTax\";s:8:\"289.5125\";s:16:\"discountAfterTax\";s:8:\"289.5125\";s:12:\"paymentValue\";s:1:\"0\";s:10:\"paymentTax\";s:1:\"0\";s:12:\"paymentTotal\";s:1:\"0\";s:17:\"salesPricePayment\";s:1:\"0\";s:7:\"billSub\";s:3:\"265\";s:18:\"billDiscountAmount\";s:1:\"0\";s:13:\"billTaxAmount\";s:7:\"24.5125\";s:9:\"billTotal\";s:8:\"289.5125\";}s:14:\"pricesCurrency\";i:47;s:15:\"paymentCurrency\";N;s:11:\"_inCheckOut\";b:1;s:14:\"_dataValidated\";b:0;s:12:\"_confirmDone\";b:0;s:10:\"STsameAsBT\";i:0;}\";s:23:\"vmlastvisitedcategoryid\";i:0;s:23:\"vmlastvisitedproductids\";a:1:{i:0;i:17;}}'),('admin','1338457902','9c4uldcdmfcf45hqd2aoblekh0',0,62,'Super Administrator',25,1,'__default|a:8:{s:15:\"session.counter\";i:45;s:19:\"session.timer.start\";i:1338426710;s:18:\"session.timer.last\";i:1338457901;s:17:\"session.timer.now\";i:1338457902;s:22:\"session.client.browser\";s:106:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.52 Safari/536.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:10:\"com_cpanel\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:9:\"mtupgrade\";O:8:\"stdClass\":1:{s:7:\"checked\";b:1;}}}s:14:\"com_virtuemart\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:7:\"product\";O:8:\"stdClass\":2:{s:16:\"filter_order_Dir\";s:4:\"DESC\";s:12:\"filter_order\";s:10:\"created_on\";}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:21:\"mmchristian@gmail.com\";s:8:\"password\";s:65:\"9a7926a7d9a144210dfa8d8f6b8b9fc8:IMepdb746aJaE29OXBsBcYPUqsZcHS0Q\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2012-05-26 12:33:32\";s:13:\"lastvisitDate\";s:19:\"2012-05-26 14:10:34\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:1:\"\n\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:59:\"C:\\wamp\\www\\canasta\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"261a1e049cda795eea6f482bdda04164\";}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` VALUES ('rhuk_milkyway',0,0),('khepri',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` VALUES (62,'Administrator','admin','mmchristian@gmail.com','9a7926a7d9a144210dfa8d8f6b8b9fc8:IMepdb746aJaE29OXBsBcYPUqsZcHS0Q','Super Administrator',0,1,25,'2012-05-26 12:33:32','2012-05-31 01:39:01','','\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_adminmenuentries`
--

DROP TABLE IF EXISTS `jos_virtuemart_adminmenuentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_adminmenuentries`
--

LOCK TABLES `jos_virtuemart_adminmenuentries` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_adminmenuentries` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_adminmenuentries` VALUES (1,1,0,'COM_VIRTUEMART_CATEGORY_S','','','vmicon vmicon-16-folder_camera',1,1,'','category',''),(2,1,0,'COM_VIRTUEMART_PRODUCT_S','','','vmicon vmicon-16-camera',2,1,'','product',''),(3,1,0,'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S','','','vmicon vmicon-16-document_move',5,1,'','custom',''),(4,1,0,'COM_VIRTUEMART_PRODUCT_INVENTORY','','','vmicon vmicon-16-price_watch',7,1,'','inventory',''),(5,1,0,'COM_VIRTUEMART_CALC_S','','','vmicon vmicon-16-calculator',8,1,'','calc',''),(6,1,0,'COM_VIRTUEMART_REVIEW_RATE_S','','','vmicon vmicon-16-comments',9,1,'','ratings',''),(7,2,0,'COM_VIRTUEMART_ORDER_S','','','vmicon vmicon-16-page_white_stack',1,1,'','orders',''),(8,2,0,'COM_VIRTUEMART_COUPON_S','','','vmicon vmicon-16-shopping',10,1,'','coupon',''),(9,2,0,'COM_VIRTUEMART_REPORT','','','vmicon vmicon-16-to_do_list_cheked_1',3,1,'','report',''),(10,2,0,'COM_VIRTUEMART_USER_S','','','vmicon vmicon-16-user',4,1,'','user',''),(11,2,0,'COM_VIRTUEMART_SHOPPERGROUP_S','','','vmicon vmicon-16-user-group',5,1,'','shoppergroup',''),(12,3,0,'COM_VIRTUEMART_MANUFACTURER_S','','','vmicon vmicon-16-wrench_orange',1,1,'','manufacturer',''),(13,3,0,'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S','','','vmicon vmicon-16-folder_wrench',2,1,'','manufacturercategories',''),(14,4,0,'COM_VIRTUEMART_STORE','','','vmicon vmicon-16-reseller_account_template',1,1,'','user','editshop'),(15,4,0,'COM_VIRTUEMART_MEDIA_S','','','vmicon vmicon-16-pictures',2,1,'','media',''),(16,4,0,'COM_VIRTUEMART_SHIPMENTMETHOD_S','','','vmicon vmicon-16-lorry',3,1,'','shipmentmethod',''),(17,4,0,'COM_VIRTUEMART_PAYMENTMETHOD_S','','','vmicon vmicon-16-creditcards',4,1,'','paymentmethod',''),(18,5,0,'COM_VIRTUEMART_CONFIGURATION','','','vmicon vmicon-16-config',1,1,'','config',''),(19,5,0,'COM_VIRTUEMART_USERFIELD_S','','','vmicon vmicon-16-participation_rate',2,1,'','userfields',''),(20,5,0,'COM_VIRTUEMART_ORDERSTATUS_S','','','vmicon vmicon-16-orderstatus',3,1,'','orderstatus',''),(21,5,0,'COM_VIRTUEMART_CURRENCY_S','','','vmicon vmicon-16-coins',5,1,'','currency',''),(22,5,0,'COM_VIRTUEMART_COUNTRY_S','','','vmicon vmicon-16-globe',6,1,'','country',''),(23,11,0,'COM_VIRTUEMART_MIGRATION_UPDATE','','','vmicon vmicon-16-installer_box',1,1,'','updatesmigration',''),(24,11,0,'COM_VIRTUEMART_ABOUT','','','vmicon vmicon-16-info',2,1,'','about',''),(25,11,0,'COM_VIRTUEMART_HELP_TOPICS','http://virtuemart.net/','','vmicon vmicon-16-help',4,1,'','',''),(26,11,0,'COM_VIRTUEMART_COMMUNITY_FORUM','http://forum.virtuemart.net/','','vmicon vmicon-16-reseller_programm',6,1,'','',''),(27,11,0,'COM_VIRTUEMART_STATISTIC_SUMMARY','','','vmicon vmicon-16-info',1,1,'','virtuemart',''),(28,77,0,'COM_VIRTUEMART_USER_GROUP_S','','','vmicon vmicon-16-user',2,1,'','usergroups','');
/*!40000 ALTER TABLE `jos_virtuemart_adminmenuentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_calc_categories`
--

DROP TABLE IF EXISTS `jos_virtuemart_calc_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_calc_categories` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_calc_categories`
--

LOCK TABLES `jos_virtuemart_calc_categories` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_calc_categories` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_calc_categories` VALUES (1,3,2);
/*!40000 ALTER TABLE `jos_virtuemart_calc_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_calc_countries`
--

DROP TABLE IF EXISTS `jos_virtuemart_calc_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_calc_countries` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_calc_countries`
--

LOCK TABLES `jos_virtuemart_calc_countries` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_calc_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_calc_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_calc_shoppergroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_calc_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_calc_shoppergroups` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_calc_shoppergroups`
--

LOCK TABLES `jos_virtuemart_calc_shoppergroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_calc_shoppergroups` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_calc_shoppergroups` VALUES (1,2,2);
/*!40000 ALTER TABLE `jos_virtuemart_calc_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_calc_states`
--

DROP TABLE IF EXISTS `jos_virtuemart_calc_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_calc_states` (
  `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_calc_states`
--

LOCK TABLES `jos_virtuemart_calc_states` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_calc_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_calc_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_calcs`
--

DROP TABLE IF EXISTS `jos_virtuemart_calcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` char(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` char(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` text,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_calc_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_calcs`
--

LOCK TABLES `jos_virtuemart_calcs` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_calcs` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_calcs` VALUES (1,1,'Tax 9.25%','A simple tax for all products regardless the category','Tax','+%',9.2500,47,1,1,'2010-02-21 00:00:00','0000-00-00 00:00:00',0,NULL,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'Discount for all Hand Tools','Discount for all Hand Tools 2 euro','DATax','-',2.0000,47,1,1,'2010-02-21 00:00:00','0000-00-00 00:00:00',0,NULL,1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'Duty for Powertools','Ah tax that only effects a certain category, Power Tools, and Shoppergroup','Tax','+%',20.0000,47,1,1,'2010-02-21 00:00:00','0000-00-00 00:00:00',0,NULL,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_calcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_categories`
--

DROP TABLE IF EXISTS `jos_virtuemart_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_categories` (
  `virtuemart_category_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `category_template` char(24) DEFAULT NULL,
  `category_layout` char(16) DEFAULT NULL,
  `category_product_layout` char(16) DEFAULT NULL,
  `products_per_row` tinyint(2) DEFAULT NULL,
  `limit_list_start` smallint(1) unsigned DEFAULT NULL,
  `limit_list_step` smallint(1) unsigned DEFAULT NULL,
  `limit_list_max` smallint(1) unsigned DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_category_id`),
  KEY `idx_category_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_categories`
--

LOCK TABLES `jos_virtuemart_categories` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_categories` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_categories` VALUES (1,1,'0','default','default',3,0,10,0,10,0,'','',1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'','','',4,NULL,NULL,NULL,NULL,0,'','',2,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'','','',2,NULL,NULL,NULL,NULL,0,'','',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'','','',1,NULL,NULL,NULL,NULL,0,'','',4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'','','',1,NULL,NULL,NULL,NULL,0,'','',5,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_categories_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_categories_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_categories_es_es` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(20000) NOT NULL DEFAULT '',
  `metadesc` char(192) NOT NULL DEFAULT '',
  `metakey` char(192) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_category_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_categories_es_es`
--

LOCK TABLES `jos_virtuemart_categories_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_categories_es_es` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_categories_es_es` VALUES (1,'Hand Tools','Hand Tools','','','','handtools'),(2,'Power Tools','Power Tools','','','','powertools'),(3,'Garden Tools','Garden Tools','','','','gardentools'),(4,'Outdoor Tools','Outdoor Tools','','','','outdoortools'),(5,'Indoor Tools','Indoor Tools','','','','indoortools');
/*!40000 ALTER TABLE `jos_virtuemart_categories_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_category_categories`
--

DROP TABLE IF EXISTS `jos_virtuemart_category_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_category_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_category_parent_id` (`category_parent_id`,`category_child_id`),
  KEY `category_child_id` (`category_child_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_category_categories`
--

LOCK TABLES `jos_virtuemart_category_categories` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_category_categories` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_category_categories` VALUES (1,0,1,0),(2,0,2,0),(3,0,3,0),(4,2,4,0),(5,2,5,0);
/*!40000 ALTER TABLE `jos_virtuemart_category_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_category_medias`
--

DROP TABLE IF EXISTS `jos_virtuemart_category_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_category_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_category_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_category_medias`
--

LOCK TABLES `jos_virtuemart_category_medias` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_category_medias` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_category_medias` VALUES (1,1,1,0),(2,2,2,0),(3,3,3,0),(4,4,4,0),(5,5,5,0);
/*!40000 ALTER TABLE `jos_virtuemart_category_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_configs`
--

DROP TABLE IF EXISTS `jos_virtuemart_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_configs`
--

LOCK TABLES `jos_virtuemart_configs` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_configs` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_configs` VALUES (1,'shop_is_offline=s:1:\"0\";|offline_message=czo3MzoiT3VyIFNob3AgaXMgY3VycmVudGx5IGRvd24gZm9yIG1haW50ZW5hbmNlLiBQbGVhc2UgY2hlY2sgYmFjayBhZ2FpbiBzb29uLiI7|use_as_catalog=s:1:\"0\";|currency_converter_module=s:14:\"convertECB.php\";|order_mail_html=s:1:\"1\";|dateformat=s:8:\"%m/%d/%y\";|useSSL=s:1:\"0\";|dangeroustools=i:0;|debug_enable=s:4:\"none\";|google_jquery=s:1:\"1\";|multix=s:4:\"none\";|pdf_button_enable=s:1:\"1\";|show_emailfriend=s:1:\"1\";|show_printicon=s:1:\"0\";|show_out_of_stock_products=s:1:\"1\";|coupons_enable=s:1:\"0\";|coupons_default_expire=s:3:\"1,D\";|weight_unit_default=s:2:\"KG\";|lwh_unit_default=s:1:\"m\";|list_limit=s:2:\"10\";|showReviewFor=s:3:\"all\";|reviewMode=s:10:\"registered\";|showRatingFor=s:3:\"all\";|ratingMode=s:10:\"registered\";|reviews_autopublish=s:1:\"1\";|reviews_minimum_comment_length=s:3:\"100\";|reviews_maximum_comment_length=s:4:\"2000\";|vmtemplate=s:7:\"default\";|categorytemplate=s:7:\"default\";|showCategory=s:1:\"1\";|categorylayout=s:7:\"default\";|categories_per_row=s:1:\"3\";|productlayout=s:7:\"default\";|products_per_row=s:1:\"3\";|vmlayout=s:7:\"default\";|show_featured=s:1:\"1\";|featured_products_per_row=s:1:\"3\";|show_topTen=s:1:\"1\";|topten_products_per_row=s:1:\"3\";|show_recent=s:1:\"1\";|show_latest=s:1:\"1\";|assets_general_path=s:33:\"components/com_virtuemart/assets/\";|media_category_path=s:35:\"images/stories/virtuemart/category/\";|media_product_path=s:34:\"images/stories/virtuemart/product/\";|media_manufacturer_path=s:39:\"images/stories/virtuemart/manufacturer/\";|media_vendor_path=s:33:\"images/stories/virtuemart/vendor/\";|forSale_path_thumb=s:42:\"images/stories/virtuemart/forSale/resized/\";|img_resize_enable=s:1:\"1\";|img_width=s:2:\"90\";|img_height=s:2:\"90\";|no_image_set=s:11:\"noimage.gif\";|no_image_found=s:11:\"warning.png\";|browse_orderby_field=s:23:\"p.virtuemart_product_id\";|browse_orderby_fields=a:4:{i:0;s:11:\"product_sku\";i:1;s:13:\"category_name\";i:2;s:7:\"mf_name\";i:3;s:12:\"product_name\";}|browse_search_fields=a:6:{i:0;s:11:\"product_sku\";i:1;s:13:\"category_name\";i:2;s:20:\"category_description\";i:3;s:7:\"mf_name\";i:4;s:12:\"product_name\";i:5;s:14:\"product_s_desc\";}|show_prices=s:1:\"1\";|price_access_level_published=s:1:\"0\";|price_show_packaging_pricelabel=s:1:\"0\";|show_tax=s:1:\"1\";|basePrice=s:1:\"1\";|basePriceText=s:1:\"1\";|basePriceRounding=s:1:\"2\";|variantModification=s:1:\"1\";|variantModificationText=s:1:\"1\";|variantModificationRounding=s:1:\"2\";|basePriceVariant=s:1:\"1\";|basePriceVariantText=s:1:\"1\";|basePriceVariantRounding=s:1:\"2\";|basePriceWithTax=s:1:\"1\";|basePriceWithTaxText=s:1:\"1\";|basePriceWithTaxRounding=s:1:\"2\";|discountedPriceWithoutTax=s:1:\"1\";|discountedPriceWithoutTaxText=s:1:\"1\";|discountedPriceWithoutTaxRounding=s:1:\"2\";|salesPriceWithDiscount=s:1:\"1\";|salesPriceWithDiscountText=s:1:\"1\";|salesPriceWithDiscountRounding=s:1:\"2\";|salesPrice=s:1:\"1\";|salesPriceText=s:1:\"1\";|salesPriceRounding=s:1:\"2\";|priceWithoutTax=s:1:\"1\";|priceWithoutTaxText=s:1:\"1\";|priceWithoutTaxRounding=s:1:\"2\";|discountAmount=s:1:\"1\";|discountAmountText=s:1:\"1\";|discountAmountRounding=s:1:\"2\";|taxAmount=s:1:\"1\";|taxAmountText=s:1:\"1\";|taxAmountRounding=s:1:\"2\";|check_stock=s:1:\"0\";|automatic_payment=s:1:\"1\";|automatic_shipment=s:1:\"1\";|agree_to_tos_onorder=s:1:\"0\";|oncheckout_show_legal_info=s:1:\"1\";|oncheckout_show_register=s:1:\"1\";|oncheckout_show_steps=s:1:\"0\";|oncheckout_show_register_text=s:47:\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\";|seo_disabled=s:1:\"0\";|seo_translate=s:1:\"0\";|seo_use_id=s:1:\"0\";|soap_ws_cat_on=s:1:\"0\";|soap_ws_cat_cache_on=s:1:\"1\";|soap_auth_getcat=s:1:\"1\";|soap_auth_addcat=s:1:\"1\";|soap_auth_upcat=s:1:\"1\";|soap_auth_delcat=s:1:\"1\";|soap_auth_cat_otherget=s:1:\"1\";|soap_auth_cat_otheradd=s:1:\"1\";|soap_auth_cat_otherupdate=s:1:\"1\";|soap_auth_cat_otherdelete=s:1:\"1\";|soap_ws_user_on=s:1:\"0\";|soap_ws_user_cache_on=s:1:\"1\";|soap_auth_getuser=s:1:\"1\";|soap_auth_adduser=s:1:\"1\";|soap_auth_upuser=s:1:\"1\";|soap_auth_deluser=s:1:\"1\";|soap_auth_user_otherget=s:1:\"1\";|soap_auth_user_otheradd=s:1:\"1\";|soap_auth_user_otherupdate=s:1:\"1\";|soap_auth_user_otherdelete=s:1:\"1\";|soap_ws_prod_on=s:1:\"0\";|soap_ws_prod_cache_on=s:1:\"1\";|soap_auth_getprod=s:1:\"1\";|soap_auth_addprod=s:1:\"1\";|soap_auth_upprod=s:1:\"1\";|soap_auth_delprod=s:1:\"1\";|soap_auth_prod_otherget=s:1:\"1\";|soap_auth_prod_otheradd=s:1:\"1\";|soap_auth_prod_otherupdate=s:1:\"1\";|soap_auth_prod_otherdelete=s:1:\"1\";|soap_ws_order_on=s:1:\"0\";|soap_ws_order_cache_on=s:1:\"1\";|soap_auth_getorder=s:1:\"1\";|soap_auth_addorder=s:1:\"1\";|soap_auth_uporder=s:1:\"1\";|soap_auth_delorder=s:1:\"1\";|soap_auth_order_otherget=s:1:\"1\";|soap_auth_order_otheradd=s:1:\"1\";|soap_auth_order_otherupdate=s:1:\"1\";|soap_auth_order_otherdelete=s:1:\"1\";|soap_ws_sql_on=s:1:\"0\";|soap_ws_sql_cache_on=s:1:\"1\";|soap_auth_execsql=s:1:\"1\";|soap_auth_execsql_select=s:1:\"1\";|soap_auth_execsql_insert=s:1:\"1\";|soap_auth_execsql_update=s:1:\"1\";|soap_ws_custom_on=s:1:\"0\";|soap_ws_custom_cache_on=s:1:\"1\";|soap_EP_custom=s:24:\"VM_CustomizedService.php\";|soap_wsdl_custom=s:18:\"VM_Customized.wsdl\";|sctime=d:1338036981.276132106781005859375;|vmlang=s:5:\"es_es\";|virtuemart_config_id=i:1;','2012-05-26 12:56:21',62,'2012-05-26 12:56:21',62,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_countries`
--

DROP TABLE IF EXISTS `jos_virtuemart_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_worldzone_id` tinyint(11) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_country_id`),
  KEY `idx_country_3_code` (`country_3_code`),
  KEY `idx_country_2_code` (`country_2_code`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='Country records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_countries`
--

LOCK TABLES `jos_virtuemart_countries` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_countries` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_countries` VALUES (1,1,'Afghanistan','AFG','AF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'Albania','ALB','AL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'Algeria','DZA','DZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'American Samoa','ASM','AS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'Andorra','AND','AD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'Angola','AGO','AO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'Anguilla','AIA','AI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,'Antarctica','ATA','AQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'Antigua and Barbuda','ATG','AG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'Argentina','ARG','AR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'Armenia','ARM','AM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,'Aruba','ABW','AW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,'Australia','AUS','AU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,'Austria','AUT','AT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,'Azerbaijan','AZE','AZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,'Bahamas','BHS','BS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,'Bahrain','BHR','BH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,'Bangladesh','BGD','BD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,'Barbados','BRB','BB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,'Belarus','BLR','BY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,'Belgium','BEL','BE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,'Belize','BLZ','BZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,1,'Benin','BEN','BJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,'Bermuda','BMU','BM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,'Bhutan','BTN','BT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,'Bolivia','BOL','BO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,'Bosnia and Herzegowina','BIH','BA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,'Botswana','BWA','BW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,'Bouvet Island','BVT','BV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,'Brazil','BRA','BR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,'British Indian Ocean Territory','IOT','IO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,'Brunei Darussalam','BRN','BN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,'Bulgaria','BGR','BG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,'Burkina Faso','BFA','BF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,'Burundi','BDI','BI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(36,1,'Cambodia','KHM','KH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(37,1,'Cameroon','CMR','CM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(38,1,'Canada','CAN','CA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(39,1,'Cape Verde','CPV','CV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,'Cayman Islands','CYM','KY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,'Central African Republic','CAF','CF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,'Chad','TCD','TD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(43,1,'Chile','CHL','CL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,'China','CHN','CN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(45,1,'Christmas Island','CXR','CX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,'Cocos (Keeling) Islands','CCK','CC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,'Colombia','COL','CO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(48,1,'Comoros','COM','KM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,'Congo','COG','CG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,'Cook Islands','COK','CK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(51,1,'Costa Rica','CRI','CR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,'Cote D\'Ivoire','CIV','CI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(53,1,'Croatia','HRV','HR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,'Cuba','CUB','CU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,'Cyprus','CYP','CY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,'Czech Republic','CZE','CZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(57,1,'Denmark','DNK','DK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,'Djibouti','DJI','DJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(59,1,'Dominica','DMA','DM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,'Dominican Republic','DOM','DO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,'East Timor','TMP','TP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,'Ecuador','ECU','EC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,'Egypt','EGY','EG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,'El Salvador','SLV','SV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,'Equatorial Guinea','GNQ','GQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(66,1,'Eritrea','ERI','ER',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,'Estonia','EST','EE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,'Ethiopia','ETH','ET',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,'Falkland Islands (Malvinas)','FLK','FK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,'Faroe Islands','FRO','FO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(71,1,'Fiji','FJI','FJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(72,1,'Finland','FIN','FI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,'France','FRA','FR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,'French Guiana','GUF','GF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,'French Polynesia','PYF','PF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,'French Southern Territories','ATF','TF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,'Gabon','GAB','GA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,'Gambia','GMB','GM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,'Georgia','GEO','GE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,'Germany','DEU','DE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,'Ghana','GHA','GH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,'Gibraltar','GIB','GI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,'Greece','GRC','GR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,'Greenland','GRL','GL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,'Grenada','GRD','GD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,'Guadeloupe','GLP','GP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(88,1,'Guam','GUM','GU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,'Guatemala','GTM','GT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,'Guinea','GIN','GN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(91,1,'Guinea-bissau','GNB','GW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,'Guyana','GUY','GY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,'Haiti','HTI','HT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,'Heard and Mc Donald Islands','HMD','HM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(95,1,'Honduras','HND','HN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,'Hong Kong','HKG','HK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,'Hungary','HUN','HU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,'Iceland','ISL','IS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(99,1,'India','IND','IN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,'Indonesia','IDN','ID',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(101,1,'Iran (Islamic Republic of)','IRN','IR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,'Iraq','IRQ','IQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(103,1,'Ireland','IRL','IE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(104,1,'Israel','ISR','IL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,'Italy','ITA','IT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,'Jamaica','JAM','JM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,'Japan','JPN','JP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,'Jordan','JOR','JO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,'Kazakhstan','KAZ','KZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,'Kenya','KEN','KE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,'Kiribati','KIR','KI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,'Korea, Democratic People\'s Republic of','PRK','KP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,'Korea, Republic of','KOR','KR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,'Kuwait','KWT','KW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(115,1,'Kyrgyzstan','KGZ','KG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,'Lao People\'s Democratic Republic','LAO','LA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,'Latvia','LVA','LV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,'Lebanon','LBN','LB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,'Lesotho','LSO','LS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,'Liberia','LBR','LR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,'Libyan Arab Jamahiriya','LBY','LY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,'Liechtenstein','LIE','LI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(123,1,'Lithuania','LTU','LT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,'Luxembourg','LUX','LU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,'Macau','MAC','MO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,'Macedonia, The Former Yugoslav Republic of','MKD','MK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,'Madagascar','MDG','MG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,'Malawi','MWI','MW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(129,1,'Malaysia','MYS','MY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,'Maldives','MDV','MV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,'Mali','MLI','ML',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,'Malta','MLT','MT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,'Marshall Islands','MHL','MH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,'Martinique','MTQ','MQ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,'Mauritania','MRT','MR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,'Mauritius','MUS','MU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,'Mayotte','MYT','YT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(138,1,'Mexico','MEX','MX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,'Micronesia, Federated States of','FSM','FM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,'Moldova, Republic of','MDA','MD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,'Monaco','MCO','MC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,'Mongolia','MNG','MN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(143,1,'Montserrat','MSR','MS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,'Morocco','MAR','MA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(145,1,'Mozambique','MOZ','MZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(146,1,'Myanmar','MMR','MM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,'Namibia','NAM','NA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,'Nauru','NRU','NR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,'Nepal','NPL','NP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(150,1,'Netherlands','NLD','NL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,'Netherlands Antilles','ANT','AN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,'New Caledonia','NCL','NC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,'New Zealand','NZL','NZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,'Nicaragua','NIC','NI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(155,1,'Niger','NER','NE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,'Nigeria','NGA','NG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(157,1,'Niue','NIU','NU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,'Norfolk Island','NFK','NF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,'Northern Mariana Islands','MNP','MP',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,'Norway','NOR','NO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,'Oman','OMN','OM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,'Pakistan','PAK','PK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,'Palau','PLW','PW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,'Panama','PAN','PA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,'Papua New Guinea','PNG','PG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,'Paraguay','PRY','PY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,'Peru','PER','PE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,'Philippines','PHL','PH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,'Pitcairn','PCN','PN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,'Poland','POL','PL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,'Portugal','PRT','PT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,'Puerto Rico','PRI','PR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,'Qatar','QAT','QA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,'Reunion','REU','RE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,'Romania','ROM','RO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,'Russian Federation','RUS','RU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,'Rwanda','RWA','RW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,'Saint Kitts and Nevis','KNA','KN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,'Saint Lucia','LCA','LC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,'Saint Vincent and the Grenadines','VCT','VC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,'Samoa','WSM','WS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,'San Marino','SMR','SM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,'Sao Tome and Principe','STP','ST',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,'Saudi Arabia','SAU','SA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,'Senegal','SEN','SN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,'Seychelles','SYC','SC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,'Sierra Leone','SLE','SL',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,'Singapore','SGP','SG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,'Slovakia','SVK','SK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,'Slovenia','SVN','SI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,'Solomon Islands','SLB','SB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,'Somalia','SOM','SO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,'South Africa','ZAF','ZA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,'South Georgia and the South Sandwich Islands','SGS','GS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,'Spain','ESP','ES',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,'Sri Lanka','LKA','LK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,'St. Helena','SHN','SH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,'St. Pierre and Miquelon','SPM','PM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,'Sudan','SDN','SD',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,'Suriname','SUR','SR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,'Svalbard and Jan Mayen Islands','SJM','SJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(202,1,'Swaziland','SWZ','SZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(203,1,'Sweden','SWE','SE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(204,1,'Switzerland','CHE','CH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(205,1,'Syrian Arab Republic','SYR','SY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(206,1,'Taiwan','TWN','TW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(207,1,'Tajikistan','TJK','TJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(208,1,'Tanzania, United Republic of','TZA','TZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(209,1,'Thailand','THA','TH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(210,1,'Togo','TGO','TG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(211,1,'Tokelau','TKL','TK',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(212,1,'Tonga','TON','TO',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(213,1,'Trinidad and Tobago','TTO','TT',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(214,1,'Tunisia','TUN','TN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(215,1,'Turkey','TUR','TR',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(216,1,'Turkmenistan','TKM','TM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(217,1,'Turks and Caicos Islands','TCA','TC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(218,1,'Tuvalu','TUV','TV',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(219,1,'Uganda','UGA','UG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(220,1,'Ukraine','UKR','UA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(221,1,'United Arab Emirates','ARE','AE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(222,1,'United Kingdom','GBR','GB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(223,1,'United States','USA','US',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(224,1,'United States Minor Outlying Islands','UMI','UM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(225,1,'Uruguay','URY','UY',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(226,1,'Uzbekistan','UZB','UZ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(227,1,'Vanuatu','VUT','VU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(228,1,'Vatican City State (Holy See)','VAT','VA',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(229,1,'Venezuela','VEN','VE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(230,1,'Viet Nam','VNM','VN',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(231,1,'Virgin Islands (British)','VGB','VG',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(232,1,'Virgin Islands (U.S.)','VIR','VI',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(233,1,'Wallis and Futuna Islands','WLF','WF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(234,1,'Western Sahara','ESH','EH',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(235,1,'Yemen','YEM','YE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(237,1,'The Democratic Republic of Congo','DRC','DC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(238,1,'Zambia','ZMB','ZM',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(239,1,'Zimbabwe','ZWE','ZW',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(240,1,'East Timor','XET','XE',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(241,1,'Jersey','XJE','XJ',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(242,1,'St. Barthelemy','XSB','XB',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(243,1,'St. Eustatius','XSE','XU',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(244,1,'Canary Islands','XCA','XC',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(245,1,'Serbia','SRB','RS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(246,1,'Sint Maarten (French Antilles)','MAF','MF',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(247,1,'Sint Maarten (Netherlands Antilles)','SXM','SX',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(248,1,'Palestinian Territory, occupied','PSE','PS',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_coupons`
--

DROP TABLE IF EXISTS `jos_virtuemart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_coupons` (
  `virtuemart_coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_coupon_id`),
  KEY `idx_coupon_code` (`coupon_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_coupons`
--

LOCK TABLES `jos_virtuemart_coupons` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_currencies`
--

DROP TABLE IF EXISTS `jos_virtuemart_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_currency_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_currency_code_3` (`currency_code_3`),
  KEY `idx_currency_numeric_code` (`currency_numeric_code`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_currencies`
--

LOCK TABLES `jos_virtuemart_currencies` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_currencies` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_currencies` VALUES (2,1,'United Arab Emirates dirham','','AED',784,0.00000,'د.إ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'Albanian lek','','ALL',8,0.00000,'Lek','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'Netherlands Antillean gulden','','ANG',532,0.00000,'ƒ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'Argentine peso','','ARS',32,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'Australian dollar','','AUD',36,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'Aruban florin','','AWG',533,0.00000,'ƒ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'Barbadian dollar','','BBD',52,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,'Bangladeshi taka','','BDT',50,0.00000,'৳','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,'Bahraini dinar','','BHD',48,0.00000,'ب.د','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,'Burundian franc','','BIF',108,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,'Bermudian dollar','','BMD',60,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,'Brunei dollar','','BND',96,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,'Bolivian boliviano','','BOB',68,0.00000,'$b','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,'Brazilian real','','BRL',986,0.00000,'R$','2','.',',','{symbol} {number}','{symbol} {sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,'Bahamian dollar','','BSD',44,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,'Bhutanese ngultrum','','BTN',64,0.00000,'BTN','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,'Botswana pula','','BWP',72,0.00000,'P','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,'Belize dollar','','BZD',84,0.00000,'BZ$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,'Canadian dollar','','CAD',124,0.00000,'$','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,'Swiss franc','','CHF',756,0.00000,'CHF','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,'Unidad de Fomento','','CLF',990,0.00000,'CLF','0',',','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,'Chilean peso','','CLP',152,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,'Chinese renminbi yuan','','CNY',156,0.00000,'元','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,'Colombian peso','','COP',170,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,'Costa Rican colón','','CRC',188,0.00000,'₡','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,'Czech koruna','','CZK',203,0.00000,'Kč','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,'Cuban peso','','CUP',192,0.00000,'₱','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,'Cape Verdean escudo','','CVE',132,0.00000,'$','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,'Danish krone','','DKK',208,0.00000,'kr','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,'Dominican peso','','DOP',214,0.00000,'RD$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,'Algerian dinar','','DZD',12,0.00000,'د.ج','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,'Egyptian pound','','EGP',818,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,'Ethiopian birr','','ETB',230,0.00000,'ETB','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,'Euro','','EUR',978,0.00000,'€','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,'Fijian dollar','','FJD',242,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,'Falkland pound','','FKP',238,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,'British pound','','GBP',826,0.00000,'£','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,'Gibraltar pound','','GIP',292,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,'Gambian dalasi','','GMD',270,0.00000,'D','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,'Guinean franc','','GNF',324,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,'Guatemalan quetzal','','GTQ',320,0.00000,'Q','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,'Guyanese dollar','','GYD',328,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,'Hong Kong dollar','','HKD',344,0.00000,'元','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,'Honduran lempira','','HNL',340,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,'Haitian gourde','','HTG',332,0.00000,'G','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,'Hungarian forint','','HUF',348,0.00000,'Ft','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,'Indonesian rupiah','','IDR',360,0.00000,'Rp','0','','','{symbol}{number}','{symbol}{sign}{number}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,'Israeli new sheqel','','ILS',376,0.00000,'₪','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,'Indian rupee','','INR',356,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,'Iraqi dinar','','IQD',368,0.00000,'ع.د','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,'Iranian rial','','IRR',364,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number}{symb0l}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,'Jamaican dollar','','JMD',388,0.00000,'J$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(74,1,'Jordanian dinar','','JOD',400,0.00000,'د.ا','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,'Japanese yen','','JPY',392,0.00000,'¥','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,'Kenyan shilling','','KES',404,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,'Cambodian riel','','KHR',116,0.00000,'៛','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,'Comorian franc','','KMF',174,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,'North Korean won','','KPW',408,0.00000,'₩','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,'South Korean won','','KRW',410,0.00000,'₩','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,'Kuwaiti dinar','','KWD',414,0.00000,'د.ك','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,'Cayman Islands dollar','','KYD',136,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,'Lao kip','','LAK',418,0.00000,'₭','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,'Lebanese pound','','LBP',422,0.00000,'£','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,'Sri Lankan rupee','','LKR',144,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,'Liberian dollar','','LRD',430,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,'Lesotho loti','','LSL',426,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,'Libyan dinar','','LYD',434,0.00000,'ل.د','3',',','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,'Moroccan dirham','','MAD',504,0.00000,'د.م.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,'Mongolian tögrög','','MNT',496,0.00000,'₮','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,'Macanese pataca','','MOP',446,0.00000,'P','1',',','','{symbol}{number}','{symbol}{sign}{number}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,'Mauritanian ouguiya','','MRO',478,0.00000,'UM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,'Mauritian rupee','','MUR',480,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,'Maldivian rufiyaa','','MVR',462,0.00000,'ރ.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,'Malawian kwacha','','MWK',454,0.00000,'MK','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,'Malaysian ringgit','','MYR',458,0.00000,'RM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,'Nigerian naira','','NGN',566,0.00000,'₦','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,'Norwegian krone','','NOK',578,0.00000,'kr','2',',','','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,'Nepalese rupee','','NPR',524,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,'New Zealand dollar','','NZD',554,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,'Omani rial','','OMR',512,0.00000,'﷼','3','.','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,'Panamanian balboa','','PAB',590,0.00000,'B/.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,'Peruvian nuevo sol','','PEN',604,0.00000,'S/.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,'Papua New Guinean kina','','PGK',598,0.00000,'K','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,'Philippine peso','','PHP',608,0.00000,'₱','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,'Pakistani rupee','','PKR',586,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,'Polish Złoty','','PLN',985,0.00000,'zł','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,'Paraguayan guaraní','','PYG',600,0.00000,'₲','0','','.','{symbol} {number}','{symbol} {sign}{number}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,'Qatari riyal','','QAR',634,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,'Romanian leu','','RON',946,0.00000,'lei','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,'Rwandan franc','','RWF',646,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,'Saudi riyal','','SAR',682,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,'Solomon Islands dollar','','SBD',90,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,'Seychellois rupee','','SCR',690,0.00000,'₨','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,'Swedish krona','','SEK',752,0.00000,'kr','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,'Singapore dollar','','SGD',702,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,'Saint Helenian pound','','SHP',654,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,'Sierra Leonean leone','','SLL',694,0.00000,'Le','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,'Somali shilling','','SOS',706,0.00000,'S','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,'São Tomé and Príncipe dobra','','STD',678,0.00000,'Db','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,'Russian ruble','','RUB',643,0.00000,'руб','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,'Salvadoran colón','','SVC',222,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,'Syrian pound','','SYP',760,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,'Swazi lilangeni','','SZL',748,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,'Thai baht','','THB',764,0.00000,'฿','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,'Tunisian dinar','','TND',788,0.00000,'د.ت','3',',','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,'Tongan paʻanga','','TOP',776,0.00000,'T$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,'Turkish new lira','','TRY',949,0.00000,'YTL','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,'Trinidad and Tobago dollar','','TTD',780,0.00000,'TT$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,'New Taiwan dollar','','TWD',901,0.00000,'NT$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,'Tanzanian shilling','','TZS',834,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,'United States dollar','','USD',840,0.00000,'$','2','.',',','{symbol}{number}','{symbol}{sign}{number}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,'Vietnamese Dong','','VND',704,0.00000,'₫','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,'Vanuatu vatu','','VUV',548,0.00000,'Vt','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,'Samoan tala','','WST',882,0.00000,'T','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,'Yemeni rial','','YER',886,0.00000,'﷼','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,'Serbian dinar','','RSD',941,0.00000,'Дин.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,'South African rand','','ZAR',710,0.00000,'R','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,'Zambian kwacha','','ZMK',894,0.00000,'ZK','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,'Zimbabwean dollar','','ZWD',932,0.00000,'Z$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,'Armenian dram','','AMD',51,0.00000,'դր.','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,'Myanmar kyat','','MMK',104,0.00000,'K','2',',','','{number} {symbol}','{symbol} {sign}{number}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,'Croatian kuna','','HRK',191,0.00000,'kn','2',',','.','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,'Eritrean nakfa','','ERN',232,0.00000,'Nfk','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,'Djiboutian franc','','DJF',262,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,'Icelandic króna','','ISK',352,0.00000,'kr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,'Kazakhstani tenge','','KZT',398,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,'Kyrgyzstani som','','KGS',417,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,'Latvian lats','','LVL',428,0.00000,'Ls','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,'Lithuanian litas','','LTL',440,0.00000,'Lt','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,'Mexican peso','','MXN',484,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,'Moldovan leu','','MDL',498,0.00000,'L','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,'Namibian dollar','','NAD',516,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,'Nicaraguan córdoba','','NIO',558,0.00000,'C$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,'Ugandan shilling','','UGX',800,0.00000,'Sh','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,'Macedonian denar','','MKD',807,0.00000,'ден','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,'Uruguayan peso','','UYU',858,0.00000,'$','0','','','{symbol}number}','{symbol}{sign}{number}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,'Uzbekistani som','','UZS',860,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,'Azerbaijani manat','','AZN',934,0.00000,'ман','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,'Ghanaian cedi','','GHS',936,0.00000,'₵','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,'Venezuelan bolívar','','VEF',937,0.00000,'Bs','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,'Sudanese pound','','SDG',938,0.00000,'£','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,'Uruguay Peso','','UYI',940,0.00000,'UYI','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,'Mozambican metical','','MZN',943,0.00000,'MT','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,'WIR Euro','','CHE',947,0.00000,'€','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,'WIR Franc','','CHW',948,0.00000,'CHW','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,'Central African CFA franc','','XAF',950,0.00000,'Fr','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,'East Caribbean dollar','','XCD',951,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,'West African CFA franc','','XOF',952,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,'CFP franc','','XPF',953,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,'Surinamese dollar','','SRD',968,0.00000,'$','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,'Malagasy ariary','','MGA',969,0.00000,'MGA','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,'Unidad de Valor Real','','COU',970,0.00000,'COU','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,'Afghan afghani','','AFN',971,0.00000,'؋','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,'Tajikistani somoni','','TJS',972,0.00000,'ЅМ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,'Angolan kwanza','','AOA',973,0.00000,'Kz','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,'Belarusian ruble','','BYR',974,0.00000,'p.','0','','','{number} {symbol}','{sign}{number} {symbol}',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,'Bulgarian lev','','BGN',975,0.00000,'лв','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,'Congolese franc','','CDF',976,0.00000,'Fr','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,'Bosnia and Herzegovina convert','','BAM',977,0.00000,'KM','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,'Mexican Unid','','MXV',979,0.00000,'MXV','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,'Ukrainian hryvnia','','UAH',980,0.00000,'₴','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,'Georgian lari','','GEL',981,0.00000,'ლ','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,'Mvdol','','BOV',984,0.00000,'BOV','2',',','','{number} {symbol}','{sign}{number} {symbol}',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_customs`
--

DROP TABLE IF EXISTS `jos_virtuemart_customs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_customs` (
  `virtuemart_custom_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `custom_element` char(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` char(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `custom_tip` char(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` char(255) DEFAULT NULL COMMENT 'defaut value',
  `custom_field_desc` char(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` char(1) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `layout_pos` char(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` text,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_custom_id`),
  KEY `idx_custom_plugin_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_custom_plugin_element` (`custom_element`),
  KEY `idx_custom_plugin_ordering` (`ordering`),
  KEY `idx_custom_parent_id` (`custom_parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='custom fields definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_customs`
--

LOCK TABLES `jos_virtuemart_customs` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_customs` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_customs` VALUES (1,0,1,0,'',0,'COM_VIRTUEMART_RELATED_PRODUCTS','COM_VIRTUEMART_RELATED_PRODUCTS_TIP','','COM_VIRTUEMART_RELATED_PRODUCTS_DESC','R',0,0,0,NULL,NULL,0,1,'2011-05-25 21:52:43',62,0,'2011-05-25 21:52:43',62,'0000-00-00 00:00:00',0),(2,0,1,0,'',0,'COM_VIRTUEMART_RELATED_CATEGORIES','COM_VIRTUEMART_RELATED_CATEGORIES_TIP',NULL,'COM_VIRTUEMART_RELATED_CATEGORIES_DESC','Z',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,1,0,'',0,'Integer','Make a choice','100','number','I',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,1,0,'',0,'Yes or no ?','Boolean','0','Only 2 choices','B',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,0,1,0,'',0,'Photo','Give a media ID as defaut','1','Add a photo','M',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,0,1,0,'',0,'Size','Change the size','30','CM','V',0,0,1,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,0,1,0,'',0,'Group of fields','Add fields to this parent and they are added all at once','I\'m a parent','Add many fields','P',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,1,0,'',0,'I\'m a string','Here you can add some text','Please enter a text','Comment','S',0,0,0,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,0,1,0,'',0,'Color','','Choose a color','Colors','S',0,0,1,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,0,1,0,'',0,'add a showel','The best choice','','Showels','M',0,0,1,NULL,NULL,0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,0,1,0,'',0,'Automatic Child Variant','','','','A',0,0,0,'ontop','0',0,1,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_customs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_invoices`
--

DROP TABLE IF EXISTS `jos_virtuemart_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` char(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_invoice_id`),
  UNIQUE KEY `idx_invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  KEY `idx_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `idx_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_invoices`
--

LOCK TABLES `jos_virtuemart_invoices` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_manufacturer_medias`
--

DROP TABLE IF EXISTS `jos_virtuemart_manufacturer_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_manufacturer_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_category_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_manufacturer_medias`
--

LOCK TABLES `jos_virtuemart_manufacturer_medias` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_manufacturer_medias` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_manufacturer_medias` VALUES (1,1,14,0);
/*!40000 ALTER TABLE `jos_virtuemart_manufacturer_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_manufacturercategories`
--

DROP TABLE IF EXISTS `jos_virtuemart_manufacturercategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_manufacturercategories`
--

LOCK TABLES `jos_virtuemart_manufacturercategories` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_manufacturercategories` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_manufacturercategories` VALUES (1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_manufacturercategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_manufacturercategories_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_manufacturercategories_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_manufacturercategories_es_es` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(20000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_manufacturercategories_es_es`
--

LOCK TABLES `jos_virtuemart_manufacturercategories_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_manufacturercategories_es_es` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_manufacturercategories_es_es` VALUES (1,'-default-','This is the default manufacturer category','-default-');
/*!40000 ALTER TABLE `jos_virtuemart_manufacturercategories_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_manufacturers`
--

DROP TABLE IF EXISTS `jos_virtuemart_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturercategories_id` int(11) DEFAULT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_manufacturers`
--

LOCK TABLES `jos_virtuemart_manufacturers` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_manufacturers` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_manufacturers` VALUES (1,1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_manufacturers_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_manufacturers_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_manufacturers_es_es` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(20000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_manufacturers_es_es`
--

LOCK TABLES `jos_virtuemart_manufacturers_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_manufacturers_es_es` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_manufacturers_es_es` VALUES (1,'Manufacturer',' manufacturer@example.org','An example for a manufacturer','http://www.example.org','manufacturer-example');
/*!40000 ALTER TABLE `jos_virtuemart_manufacturers_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_medias`
--

DROP TABLE IF EXISTS `jos_virtuemart_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_medias` (
  `virtuemart_media_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` text,
  `file_url_thumb` char(254) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` text,
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_media_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_medias`
--

LOCK TABLES `jos_virtuemart_medias` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_medias` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_medias` VALUES (1,1,'black shovel','','','image/jpeg','category','images/stories/virtuemart/category/fc2f001413876a374484df36ed9cf775.jpg','0',0,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'fe2f63f4c46023e3b33404c80bdd2bfe.jpg','','','image/jpeg','category','images/stories/virtuemart/category/fe2f63f4c46023e3b33404c80bdd2bfe.jpg','0',0,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'green shovel','','','image/jpeg','category','images/stories/virtuemart/category/756ff6d140e11079caf56955060f1162.jpg','0',0,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'wooden shovel','','','image/jpeg','category','images/stories/virtuemart/category/1b0c96d67abdbea648cd0ea96fd6abcb.jpg','0',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'black shovel','the','','image/jpeg','product','images/stories/virtuemart/product/520efefd6d7977f91b16fac1149c7438.jpg','0',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'480655b410d98a5cc3bef3927e786866.jpg','','','image/jpeg','product','images/stories/virtuemart/product/480655b410d98a5cc3bef3927e786866.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'nice saw','','','image/jpeg','product','images/stories/virtuemart/product/e614ba08c3ee0c2adc62fd9e5b9440eb.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,'our ladder','','','image/jpeg','product','images/stories/virtuemart/product/8cb8d644ef299639b7eab25829d13dbc.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'Hamma','','','image/jpeg','product','images/stories/virtuemart/product/578563851019e01264a9b40dcf1c4ab6.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'drill','','','image/jpeg','product','images/stories/virtuemart/product/1ff5f2527907ca86103288e1b7cc3446.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'circular saw','for the fine cut','','image/jpeg','product','images/stories/virtuemart/product/9a4448bb13e2f7699613b2cfd7cd51ad.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,'chain saw','','','image/jpeg','product','images/stories/virtuemart/product/8716aefc3b0dce8870360604e6eb8744.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,'hand shovel','','','image/jpeg','product','images/stories/virtuemart/product/cca3cd5db813ee6badf6a3598832f2fc.jpg','',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,'manufacturer','','','image/jpeg','manufacturer','images/stories/virtuemart/manufacturer/manufacturersample.jpg','0',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,'Washupito','','','image/jpeg','vendor','images/stories/virtuemart/vendor/washupito.gif','images/stories/virtuemart/vendor/resized/washupito_90x90.gif',1,0,0,'',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_migration_oldtonew_ids`
--

DROP TABLE IF EXISTS `jos_virtuemart_migration_oldtonew_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `orders_start` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_migration_oldtonew_ids`
--

LOCK TABLES `jos_virtuemart_migration_oldtonew_ids` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_migration_oldtonew_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_migration_oldtonew_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_modules`
--

DROP TABLE IF EXISTS `jos_virtuemart_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_modules` (
  `module_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` char(255) DEFAULT NULL,
  `module_description` text,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_ordering` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_modules`
--

LOCK TABLES `jos_virtuemart_modules` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_modules` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_modules` VALUES (1,'product','Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes  ,Product Types      Product Files (view=media), Inventory  , Calculation Rules ,Customer Reviews  ','storeadmin,admin',1,'1',1),(2,'order','View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ','admin,storeadmin',1,'1',2),(3,'manufacturer','Manage the manufacturers of products in your store.','storeadmin,admin',1,'1',3),(4,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),(5,'configuration','Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ','admin,storeadmin',1,'1',5),(6,'msgs','This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.','none',0,'0',99),(7,'shop','This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.','none',1,'0',99),(8,'store','Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates','storeadmin,admin',1,'1',4),(9,'account','This module allows shoppers to update their account information and view previously placed orders.','shopper,storeadmin,admin,demo',1,'0',99),(10,'checkout','','none',0,'0',99),(11,'tools','Tools','admin',1,'1',8),(13,'zone','This is the zone-shipment module. Here you can manage your shipment costs according to Zones.','admin,storeadmin',0,'1',11);
/*!40000 ALTER TABLE `jos_virtuemart_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_order_calc_rules`
--

DROP TABLE IF EXISTS `jos_virtuemart_order_calc_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `calc_rule_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_calc_rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_order_calc_rules`
--

LOCK TABLES `jos_virtuemart_order_calc_rules` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_order_calc_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_order_calc_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_order_histories`
--

DROP TABLE IF EXISTS `jos_virtuemart_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_order_histories`
--

LOCK TABLES `jos_virtuemart_order_histories` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_order_items`
--

DROP TABLE IF EXISTS `jos_virtuemart_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_order_items` (
  `virtuemart_order_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `order_item_sku` char(64) NOT NULL DEFAULT '',
  `order_item_name` char(255) NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(11) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_item_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `idx_order_item_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `idx_order_item_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_order_items`
--

LOCK TABLES `jos_virtuemart_order_items` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_order_userinfos`
--

DROP TABLE IF EXISTS `jos_virtuemart_order_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` char(32) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(32) DEFAULT NULL,
  `first_name` char(32) DEFAULT NULL,
  `middle_name` char(32) DEFAULT NULL,
  `phone_1` char(24) DEFAULT NULL,
  `phone_2` char(24) DEFAULT NULL,
  `fax` char(24) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(32) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(16) NOT NULL DEFAULT '',
  `email` char(255) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_userinfo_id`),
  KEY `i_virtuemart_order_id` (`virtuemart_order_id`),
  KEY `i_virtuemart_user_id` (`virtuemart_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_order_userinfos`
--

LOCK TABLES `jos_virtuemart_order_userinfos` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_order_userinfos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_order_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_orders`
--

DROP TABLE IF EXISTS `jos_virtuemart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `order_number` char(64) DEFAULT NULL,
  `order_pass` char(8) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,2) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` char(4) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `customer_note` text,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_order_id`),
  KEY `idx_orders_virtuemart_user_id` (`virtuemart_user_id`),
  KEY `idx_orders_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  KEY `idx_orders_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_orders`
--

LOCK TABLES `jos_virtuemart_orders` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_orderstates`
--

DROP TABLE IF EXISTS `jos_virtuemart_orderstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` char(64) DEFAULT NULL,
  `order_status_description` text,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_orderstate_id`),
  KEY `idx_order_status_ordering` (`ordering`),
  KEY `idx_order_status_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='All available order statuses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_orderstates`
--

LOCK TABLES `jos_virtuemart_orderstates` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_orderstates` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_orderstates` VALUES (1,1,'P','Pending','','R',1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'C','Confirmed','','R',2,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'X','Cancelled','','A',3,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'R','Refunded','','A',4,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'S','Shipped','','O',5,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_orderstates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_paymentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_paymentmethod_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_paymentmethod_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_paymentmethod_shoppergroups`
--

LOCK TABLES `jos_virtuemart_paymentmethod_shoppergroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_paymentmethod_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_paymentmethod_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_paymentmethods`
--

DROP TABLE IF EXISTS `jos_virtuemart_paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `slug` char(255) NOT NULL DEFAULT '',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` text,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  KEY `idx_payment_jplugin_id` (`payment_jplugin_id`),
  KEY `idx_payment_element` (`payment_element`,`virtuemart_vendor_id`),
  KEY `idx_payment_method_ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_paymentmethods`
--

LOCK TABLES `jos_virtuemart_paymentmethods` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_paymentmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_paymentmethods_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_paymentmethods_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_paymentmethods_es_es` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(20000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_paymentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_paymentmethods_es_es`
--

LOCK TABLES `jos_virtuemart_paymentmethods_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_paymentmethods_es_es` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_paymentmethods_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_permgroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_permgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_permgroups` (
  `virtuemart_permgroup_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` char(128) DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_permgroup_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Holds all the user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_permgroups`
--

LOCK TABLES `jos_virtuemart_permgroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_permgroups` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_permgroups` VALUES (1,1,'admin',0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'storeadmin',250,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'shopper',500,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'demo',750,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_permgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_categories`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_categories`
--

LOCK TABLES `jos_virtuemart_product_categories` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_customfields`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'field id',
  `virtuemart_product_id` int(11) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(11) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `custom_value` varchar(20000) DEFAULT NULL COMMENT 'field value',
  `custom_price` char(255) DEFAULT NULL COMMENT 'price',
  `custom_param` text COMMENT 'Param for Plugins',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_customfield_id`),
  KEY `idx_virtuemart_product_id` (`virtuemart_product_id`),
  KEY `idx_virtuemart_custom_id` (`virtuemart_custom_id`),
  KEY `idx_custom_value` (`custom_value`(333))
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='custom fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_customfields`
--

LOCK TABLES `jos_virtuemart_product_customfields` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_customfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_product_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_manufacturers`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_manufacturers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_manufacturers`
--

LOCK TABLES `jos_virtuemart_product_manufacturers` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_product_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_medias`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_category_id` (`virtuemart_product_id`,`virtuemart_media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_medias`
--

LOCK TABLES `jos_virtuemart_product_medias` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_product_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_prices`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(11) DEFAULT NULL,
  `product_price` decimal(15,5) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(11) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `product_currency` mediumint(3) DEFAULT NULL,
  `product_price_vdate` datetime DEFAULT NULL,
  `product_price_edate` datetime DEFAULT NULL,
  `price_quantity_start` int(11) unsigned DEFAULT NULL,
  `price_quantity_end` int(11) unsigned DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_price_id`),
  KEY `idx_product_price_product_id` (`virtuemart_product_id`),
  KEY `idx_product_price_virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_prices`
--

LOCK TABLES `jos_virtuemart_product_prices` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_prices` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_product_prices` VALUES (17,17,NULL,135.00000,NULL,0.00000,0,0,47,NULL,NULL,NULL,NULL,'2012-05-31 09:51:42',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(18,18,NULL,25.00000,NULL,0.00000,0,0,47,NULL,NULL,NULL,NULL,'2012-05-31 09:51:42',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(19,19,NULL,50.00000,NULL,0.00000,0,0,47,NULL,NULL,NULL,NULL,'2012-05-31 09:51:42',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(21,21,NULL,35.00000,NULL,0.00000,0,0,47,NULL,NULL,NULL,NULL,'2012-05-31 09:51:42',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(22,22,NULL,20.00000,NULL,0.00000,0,0,47,NULL,NULL,NULL,NULL,'2012-05-31 09:51:42',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_relations`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_relations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `related_products` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`related_products`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_relations`
--

LOCK TABLES `jos_virtuemart_product_relations` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_product_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_product_shoppergroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_product_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_product_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_product_shoppergroups`
--

LOCK TABLES `jos_virtuemart_product_shoppergroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_product_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_product_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_products`
--

DROP TABLE IF EXISTS `jos_virtuemart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_products` (
  `virtuemart_product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` char(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` char(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` char(7) DEFAULT NULL,
  `product_url` char(255) DEFAULT NULL,
  `product_in_stock` int(1) DEFAULT NULL,
  `product_ordered` int(1) DEFAULT NULL,
  `low_stock_notification` int(1) unsigned DEFAULT NULL,
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_canasta_state` smallint(3) unsigned DEFAULT NULL,
  `product_sales` int(1) unsigned DEFAULT NULL,
  `product_unit` char(4) DEFAULT NULL,
  `product_packaging` int(11) DEFAULT NULL,
  `product_params` text,
  `hits` int(11) unsigned DEFAULT NULL,
  `intnotes` text,
  `metarobot` text,
  `metaauthor` text,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_product_id`),
  KEY `idx_product_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_products`
--

LOCK TABLES `jos_virtuemart_products` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_products` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_products` VALUES (17,1,0,'',0.0000,'KG',0.0000,0.0000,0.0000,'M','',0,0,0,'2012-05-26 00:00:00','',0,1,0,'',0,'min_order_level=\"0\"|max_order_level=\"0\"|',NULL,'','','','0',1,'2012-05-26 13:09:20',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(18,1,17,'',0.0000,'KG',0.0000,0.0000,0.0000,'M','',0,0,0,'0000-00-00 00:00:00','',0,2,0,'',655360,'min_order_level=\"0\"|max_order_level=\"0\"|',NULL,'','','','0',1,'2012-05-27 15:30:13',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(19,1,17,'',500.0000,'GR',0.0000,0.0000,0.0000,'M','',0,0,0,'0000-00-00 00:00:00','',0,2,0,'',0,'min_order_level=\"0\"|max_order_level=\"0\"|',NULL,'','','','0',1,'2012-05-27 15:39:24',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(21,1,17,'',250.0000,'GR',0.0000,0.0000,0.0000,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,0,'',0,'min_order_level=\"0\"|max_order_level=\"0\"|',NULL,'','','','0',1,'2012-05-31 09:49:42',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0),(22,1,17,'',0.0000,'KG',0.0000,0.0000,0.0000,'M','',0,0,0,'0000-00-00 00:00:00','',0,0,0,'',983040,'min_order_level=\"0\"|max_order_level=\"0\"|',NULL,'','','','0',1,'2012-05-31 09:50:41',62,'2012-05-31 09:51:42',62,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_products_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_products_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_products_es_es` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18500) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` char(192) NOT NULL DEFAULT '',
  `metakey` char(192) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_product_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_products_es_es`
--

LOCK TABLES `jos_virtuemart_products_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_products_es_es` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_products_es_es` VALUES (17,'','','Canasta','','','','canasta'),(18,'','','Naranjas','','','','naranjas'),(19,'','','Lechuga','','','','lechuga'),(21,'','','Tomates','','','','tomates'),(22,'','','Manzanas','','','','manzanas');
/*!40000 ALTER TABLE `jos_virtuemart_products_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_rating_reviews`
--

DROP TABLE IF EXISTS `jos_virtuemart_rating_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_review_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_rating_reviews`
--

LOCK TABLES `jos_virtuemart_rating_reviews` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_rating_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_rating_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_rating_votes`
--

DROP TABLE IF EXISTS `jos_virtuemart_rating_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(11) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_vote_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_rating_votes`
--

LOCK TABLES `jos_virtuemart_rating_votes` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_rating_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_rating_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_ratings`
--

DROP TABLE IF EXISTS `jos_virtuemart_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_ratings` (
  `virtuemart_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(11) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_rating_id`),
  UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_ratings`
--

LOCK TABLES `jos_virtuemart_ratings` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_shipmentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_shipmentmethod_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_shipmentmethod_shoppergroups`
--

LOCK TABLES `jos_virtuemart_shipmentmethod_shoppergroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_shipmentmethod_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_shipmentmethod_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_shipmentmethods`
--

DROP TABLE IF EXISTS `jos_virtuemart_shipmentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(11) NOT NULL DEFAULT '0',
  `slug` char(255) NOT NULL DEFAULT '',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` text,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  KEY `idx_shipment_jplugin_id` (`shipment_jplugin_id`),
  KEY `idx_shipment_element` (`shipment_element`,`virtuemart_vendor_id`),
  KEY `idx_shipment_method_ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_shipmentmethods`
--

LOCK TABLES `jos_virtuemart_shipmentmethods` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_shipmentmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_shipmentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_shipmentmethods_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_shipmentmethods_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_shipmentmethods_es_es` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(20000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_shipmentmethods_es_es`
--

LOCK TABLES `jos_virtuemart_shipmentmethods_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_shipmentmethods_es_es` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_shipmentmethods_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_shoppergroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT '1',
  `shopper_group_name` char(32) DEFAULT NULL,
  `shopper_group_desc` char(128) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_shoppergroup_id`),
  KEY `idx_shopper_group_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_shoppergroups`
--

LOCK TABLES `jos_virtuemart_shoppergroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_shoppergroups` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_shoppergroups` VALUES (2,1,'-default-','This is the default shopper group.',0,NULL,1,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(1,1,'-anonymous-','Shopper group for anonymous shoppers',0,NULL,2,0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'Gold Level','Gold Level Shoppers.',0,NULL,0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'Wholesale','Shoppers that can buy at wholesale.',0,NULL,0,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_states`
--

DROP TABLE IF EXISTS `jos_virtuemart_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_state_id`),
  UNIQUE KEY `idx_state_3_code` (`virtuemart_country_id`,`state_3_code`),
  UNIQUE KEY `idx_state_2_code` (`virtuemart_country_id`,`state_2_code`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `i_virtuemart_country_id` (`virtuemart_country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=570 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_states`
--

LOCK TABLES `jos_virtuemart_states` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_states` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_states` VALUES (1,1,223,0,'Alabama','ALA','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,223,0,'Alaska','ALK','AK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,223,0,'Arizona','ARZ','AZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,223,0,'Arkansas','ARK','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,223,0,'California','CAL','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,223,0,'Colorado','COL','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,223,0,'Connecticut','CCT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,223,0,'Delaware','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,223,0,'District Of Columbia','DOC','DC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,223,0,'Florida','FLO','FL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,223,0,'Georgia','GEA','GA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,223,0,'Hawaii','HWI','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,223,0,'Idaho','IDA','ID',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,223,0,'Illinois','ILL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,223,0,'Indiana','IND','IN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,223,0,'Iowa','IOA','IA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,223,0,'Kansas','KAS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,223,0,'Kentucky','KTY','KY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,223,0,'Louisiana','LOA','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,223,0,'Maine','MAI','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,223,0,'Maryland','MLD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,223,0,'Massachusetts','MSA','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,1,223,0,'Michigan','MIC','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,223,0,'Minnesota','MIN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,223,0,'Mississippi','MIS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,223,0,'Missouri','MIO','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,223,0,'Montana','MOT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,223,0,'Nebraska','NEB','NE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,223,0,'Nevada','NEV','NV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(30,1,223,0,'New Hampshire','NEH','NH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(31,1,223,0,'New Jersey','NEJ','NJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(32,1,223,0,'New Mexico','NEM','NM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(33,1,223,0,'New York','NEY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(34,1,223,0,'North Carolina','NOC','NC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(35,1,223,0,'North Dakota','NOD','ND',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(36,1,223,0,'Ohio','OHI','OH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(37,1,223,0,'Oklahoma','OKL','OK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(38,1,223,0,'Oregon','ORN','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(39,1,223,0,'Pennsylvania','PEA','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(40,1,223,0,'Rhode Island','RHI','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(41,1,223,0,'South Carolina','SOC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(42,1,223,0,'South Dakota','SOD','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(43,1,223,0,'Tennessee','TEN','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(44,1,223,0,'Texas','TXS','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(45,1,223,0,'Utah','UTA','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(46,1,223,0,'Vermont','VMT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(47,1,223,0,'Virginia','VIA','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(48,1,223,0,'Washington','WAS','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(49,1,223,0,'West Virginia','WEV','WV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(50,1,223,0,'Wisconsin','WIS','WI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(51,1,223,0,'Wyoming','WYO','WY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(52,1,38,0,'Alberta','ALB','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(53,1,38,0,'British Columbia','BRC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(54,1,38,0,'Manitoba','MAB','MB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(55,1,38,0,'New Brunswick','NEB','NB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(56,1,38,0,'Newfoundland and Labrador','NFL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(57,1,38,0,'Northwest Territories','NWT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(58,1,38,0,'Nova Scotia','NOS','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(59,1,38,0,'Nunavut','NUT','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(60,1,38,0,'Ontario','ONT','ON',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(61,1,38,0,'Prince Edward Island','PEI','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(62,1,38,0,'Quebec','QEC','QC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(63,1,38,0,'Saskatchewan','SAK','SK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(64,1,38,0,'Yukon','YUT','YT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(65,1,222,0,'England','ENG','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(66,1,222,0,'Northern Ireland','NOI','NI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(67,1,222,0,'Scotland','SCO','SD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(68,1,222,0,'Wales','WLS','WS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(69,1,13,0,'Australian Capital Territory','ACT','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(70,1,13,0,'New South Wales','NSW','NS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(71,1,13,0,'Northern Territory','NOT','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(72,1,13,0,'Queensland','QLD','QL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(73,1,13,0,'South Australia','SOA','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(74,1,13,0,'Tasmania','TAS','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(75,1,13,0,'Victoria','VIC','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(76,1,13,0,'Western Australia','WEA','WA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(77,1,138,0,'Aguascalientes','AGS','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(78,1,138,0,'Baja California Norte','BCN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(79,1,138,0,'Baja California Sur','BCS','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(80,1,138,0,'Campeche','CAM','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(81,1,138,0,'Chiapas','CHI','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(82,1,138,0,'Chihuahua','CHA','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(83,1,138,0,'Coahuila','COA','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(84,1,138,0,'Colima','COL','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(85,1,138,0,'Distrito Federal','DFM','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(86,1,138,0,'Durango','DGO','DO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(87,1,138,0,'Guanajuato','GTO','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(88,1,138,0,'Guerrero','GRO','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(89,1,138,0,'Hidalgo','HGO','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(90,1,138,0,'Jalisco','JAL','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(91,1,138,0,'M','EDM','EM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(92,1,138,0,'Michoac','MCN','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(93,1,138,0,'Morelos','MOR','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(94,1,138,0,'Nayarit','NAY','NY',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(95,1,138,0,'Nuevo Le','NUL','NL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(96,1,138,0,'Oaxaca','OAX','OA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(97,1,138,0,'Puebla','PUE','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(98,1,138,0,'Quer','QRO','QU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(99,1,138,0,'Quintana Roo','QUR','QR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(100,1,138,0,'San Luis Potos','SLP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(101,1,138,0,'Sinaloa','SIN','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(102,1,138,0,'Sonora','SON','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(103,1,138,0,'Tabasco','TAB','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(104,1,138,0,'Tamaulipas','TAM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(105,1,138,0,'Tlaxcala','TLX','TX',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(106,1,138,0,'Veracruz','VER','VZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(107,1,138,0,'Yucat','YUC','YU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(108,1,138,0,'Zacatecas','ZAC','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(109,1,30,0,'Acre','ACR','AC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(110,1,30,0,'Alagoas','ALG','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(111,1,30,0,'Amapá','AMP','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(112,1,30,0,'Amazonas','AMZ','AM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(113,1,30,0,'Bahía','BAH','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(114,1,30,0,'Ceará','CEA','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(115,1,30,0,'Distrito Federal','DFB','DF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(116,1,30,0,'Espírito Santo','ESS','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(117,1,30,0,'Goiás','GOI','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(118,1,30,0,'Maranhão','MAR','MA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(119,1,30,0,'Mato Grosso','MAT','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(120,1,30,0,'Mato Grosso do Sul','MGS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(121,1,30,0,'Minas Gerais','MIG','MG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(122,1,30,0,'Paraná','PAR','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(123,1,30,0,'Paraíba','PRB','PB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(124,1,30,0,'Pará','PAB','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(125,1,30,0,'Pernambuco','PER','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(126,1,30,0,'Piauí','PIA','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(127,1,30,0,'Rio Grande do Norte','RGN','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(128,1,30,0,'Rio Grande do Sul','RGS','RS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(129,1,30,0,'Rio de Janeiro','RDJ','RJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(130,1,30,0,'Rondônia','RON','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(131,1,30,0,'Roraima','ROR','RR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(132,1,30,0,'Santa Catarina','SAC','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(133,1,30,0,'Sergipe','SER','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(134,1,30,0,'São Paulo','SAP','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(135,1,30,0,'Tocantins','TOC','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(136,1,44,0,'Anhui','ANH','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(137,1,44,0,'Beijing','BEI','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(138,1,44,0,'Chongqing','CHO','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(139,1,44,0,'Fujian','FUJ','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(140,1,44,0,'Gansu','GAN','62',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(141,1,44,0,'Guangdong','GUA','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(142,1,44,0,'Guangxi Zhuang','GUZ','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(143,1,44,0,'Guizhou','GUI','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(144,1,44,0,'Hainan','HAI','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(145,1,44,0,'Hebei','HEB','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(146,1,44,0,'Heilongjiang','HEI','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(147,1,44,0,'Henan','HEN','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(148,1,44,0,'Hubei','HUB','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(149,1,44,0,'Hunan','HUN','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(150,1,44,0,'Jiangsu','JIA','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(151,1,44,0,'Jiangxi','JIX','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(152,1,44,0,'Jilin','JIL','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(153,1,44,0,'Liaoning','LIA','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(154,1,44,0,'Nei Mongol','NML','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(155,1,44,0,'Ningxia Hui','NIH','64',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(156,1,44,0,'Qinghai','QIN','63',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(157,1,44,0,'Shandong','SNG','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(158,1,44,0,'Shanghai','SHH','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(159,1,44,0,'Shaanxi','SHX','61',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(160,1,44,0,'Sichuan','SIC','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(161,1,44,0,'Tianjin','TIA','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(162,1,44,0,'Xinjiang Uygur','XIU','65',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(163,1,44,0,'Xizang','XIZ','54',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(164,1,44,0,'Yunnan','YUN','53',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(165,1,44,0,'Zhejiang','ZHE','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(166,1,104,0,'Israel','ISL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(167,1,104,0,'Gaza Strip','GZS','GZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(168,1,104,0,'West Bank','WBK','WB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(169,1,151,0,'St. Maarten','STM','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(170,1,151,0,'Bonaire','BNR','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(171,1,151,0,'Curacao','CUR','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(172,1,175,0,'Alba','ABA','AB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(173,1,175,0,'Arad','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(174,1,175,0,'Arges','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(175,1,175,0,'Bacau','BAC','BC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(176,1,175,0,'Bihor','BIH','BH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(177,1,175,0,'Bistrita-Nasaud','BIS','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(178,1,175,0,'Botosani','BOT','BT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(179,1,175,0,'Braila','BRL','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(180,1,175,0,'Brasov','BRA','BV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(181,1,175,0,'Bucuresti','BUC','B',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(182,1,175,0,'Buzau','BUZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(183,1,175,0,'Calarasi','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(184,1,175,0,'Caras Severin','CRS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(185,1,175,0,'Cluj','CLJ','CJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(186,1,175,0,'Constanta','CST','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(187,1,175,0,'Covasna','COV','CV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(188,1,175,0,'Dambovita','DAM','DB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(189,1,175,0,'Dolj','DLJ','DJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(190,1,175,0,'Galati','GAL','GL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(191,1,175,0,'Giurgiu','GIU','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(192,1,175,0,'Gorj','GOR','GJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(193,1,175,0,'Hargita','HRG','HR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(194,1,175,0,'Hunedoara','HUN','HD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(195,1,175,0,'Ialomita','IAL','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(196,1,175,0,'Iasi','IAS','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(197,1,175,0,'Ilfov','ILF','IF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(198,1,175,0,'Maramures','MAR','MM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(199,1,175,0,'Mehedinti','MEH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(200,1,175,0,'Mures','MUR','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(201,1,175,0,'Neamt','NEM','NT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(202,1,175,0,'Olt','OLT','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(203,1,175,0,'Prahova','PRA','PH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(204,1,175,0,'Salaj','SAL','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(205,1,175,0,'Satu Mare','SAT','SM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(206,1,175,0,'Sibiu','SIB','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(207,1,175,0,'Suceava','SUC','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(208,1,175,0,'Teleorman','TEL','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(209,1,175,0,'Timis','TIM','TM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(210,1,175,0,'Tulcea','TUL','TL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(211,1,175,0,'Valcea','VAL','VL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(212,1,175,0,'Vaslui','VAS','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(213,1,175,0,'Vrancea','VRA','VN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(214,1,105,0,'Agrigento','AGR','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(215,1,105,0,'Alessandria','ALE','AL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(216,1,105,0,'Ancona','ANC','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(217,1,105,0,'Aosta','AOS','AO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(218,1,105,0,'Arezzo','ARE','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(219,1,105,0,'Ascoli Piceno','API','AP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(220,1,105,0,'Asti','AST','AT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(221,1,105,0,'Avellino','AVE','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(222,1,105,0,'Bari','BAR','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(223,1,105,0,'Belluno','BEL','BL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(224,1,105,0,'Benevento','BEN','BN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(225,1,105,0,'Bergamo','BEG','BG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(226,1,105,0,'Biella','BIE','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(227,1,105,0,'Bologna','BOL','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(228,1,105,0,'Bolzano','BOZ','BZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(229,1,105,0,'Brescia','BRE','BS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(230,1,105,0,'Brindisi','BRI','BR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(231,1,105,0,'Cagliari','CAG','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(232,1,105,0,'Caltanissetta','CAL','CL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(233,1,105,0,'Campobasso','CBO','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(234,1,105,0,'Carbonia-Iglesias','CAR','CI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(235,1,105,0,'Caserta','CAS','CE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(236,1,105,0,'Catania','CAT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(237,1,105,0,'Catanzaro','CTZ','CZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(238,1,105,0,'Chieti','CHI','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(239,1,105,0,'Como','COM','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(240,1,105,0,'Cosenza','COS','CS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(241,1,105,0,'Cremona','CRE','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(242,1,105,0,'Crotone','CRO','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(243,1,105,0,'Cuneo','CUN','CN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(244,1,105,0,'Enna','ENN','EN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(245,1,105,0,'Ferrara','FER','FE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(246,1,105,0,'Firenze','FIR','FI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(247,1,105,0,'Foggia','FOG','FG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(248,1,105,0,'Forli-Cesena','FOC','FC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(249,1,105,0,'Frosinone','FRO','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(250,1,105,0,'Genova','GEN','GE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(251,1,105,0,'Gorizia','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(252,1,105,0,'Grosseto','GRO','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(253,1,105,0,'Imperia','IMP','IM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(254,1,105,0,'Isernia','ISE','IS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(255,1,105,0,'L\'Aquila','AQU','AQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(256,1,105,0,'La Spezia','LAS','SP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(257,1,105,0,'Latina','LAT','LT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(258,1,105,0,'Lecce','LEC','LE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(259,1,105,0,'Lecco','LCC','LC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(260,1,105,0,'Livorno','LIV','LI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(261,1,105,0,'Lodi','LOD','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(262,1,105,0,'Lucca','LUC','LU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(263,1,105,0,'Macerata','MAC','MC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(264,1,105,0,'Mantova','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(265,1,105,0,'Massa-Carrara','MAS','MS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(266,1,105,0,'Matera','MAA','MT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(267,1,105,0,'Medio Campidano','MED','VS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(268,1,105,0,'Messina','MES','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(269,1,105,0,'Milano','MIL','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(270,1,105,0,'Modena','MOD','MO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(271,1,105,0,'Napoli','NAP','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(272,1,105,0,'Novara','NOV','NO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(273,1,105,0,'Nuoro','NUR','NU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(274,1,105,0,'Ogliastra','OGL','OG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(275,1,105,0,'Olbia-Tempio','OLB','OT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(276,1,105,0,'Oristano','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(277,1,105,0,'Padova','PDA','PD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(278,1,105,0,'Palermo','PAL','PA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(279,1,105,0,'Parma','PAA','PR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(280,1,105,0,'Pavia','PAV','PV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(281,1,105,0,'Perugia','PER','PG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(282,1,105,0,'Pesaro e Urbino','PES','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(283,1,105,0,'Pescara','PSC','PE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(284,1,105,0,'Piacenza','PIA','PC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(285,1,105,0,'Pisa','PIS','PI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(286,1,105,0,'Pistoia','PIT','PT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(287,1,105,0,'Pordenone','POR','PN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(288,1,105,0,'Potenza','PTZ','PZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(289,1,105,0,'Prato','PRA','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(290,1,105,0,'Ragusa','RAG','RG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(291,1,105,0,'Ravenna','RAV','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(292,1,105,0,'Reggio Calabria','REG','RC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(293,1,105,0,'Reggio Emilia','REE','RE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(294,1,105,0,'Rieti','RIE','RI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(295,1,105,0,'Rimini','RIM','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(296,1,105,0,'Roma','ROM','RM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(297,1,105,0,'Rovigo','ROV','RO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(298,1,105,0,'Salerno','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(299,1,105,0,'Sassari','SAS','SS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(300,1,105,0,'Savona','SAV','SV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(301,1,105,0,'Siena','SIE','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(302,1,105,0,'Siracusa','SIR','SR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(303,1,105,0,'Sondrio','SOO','SO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(304,1,105,0,'Taranto','TAR','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(305,1,105,0,'Teramo','TER','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(306,1,105,0,'Terni','TRN','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(307,1,105,0,'Torino','TOR','TO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(308,1,105,0,'Trapani','TRA','TP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(309,1,105,0,'Trento','TRE','TN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(310,1,105,0,'Treviso','TRV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(311,1,105,0,'Trieste','TRI','TS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(312,1,105,0,'Udine','UDI','UD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(313,1,105,0,'Varese','VAR','VA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(314,1,105,0,'Venezia','VEN','VE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(315,1,105,0,'Verbano Cusio Ossola','VCO','VB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(316,1,105,0,'Vercelli','VER','VC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(317,1,105,0,'Verona','VRN','VR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(318,1,105,0,'Vibo Valenzia','VIV','VV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(319,1,105,0,'Vicenza','VII','VI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(320,1,105,0,'Viterbo','VIT','VT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(321,1,195,0,'A Coru','ACO','15',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(322,1,195,0,'Alava','ALA','01',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(323,1,195,0,'Albacete','ALB','02',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(324,1,195,0,'Alicante','ALI','03',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(325,1,195,0,'Almeria','ALM','04',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(326,1,195,0,'Asturias','AST','33',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(327,1,195,0,'Avila','AVI','05',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(328,1,195,0,'Badajoz','BAD','06',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(329,1,195,0,'Baleares','BAL','07',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(330,1,195,0,'Barcelona','BAR','08',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(331,1,195,0,'Burgos','BUR','09',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(332,1,195,0,'Caceres','CAC','10',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(333,1,195,0,'Cadiz','CAD','11',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(334,1,195,0,'Cantabria','CAN','39',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(335,1,195,0,'Castellon','CAS','12',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(336,1,195,0,'Ceuta','CEU','51',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(337,1,195,0,'Ciudad Real','CIU','13',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(338,1,195,0,'Cordoba','COR','14',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(339,1,195,0,'Cuenca','CUE','16',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(340,1,195,0,'Girona','GIR','17',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(341,1,195,0,'Granada','GRA','18',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(342,1,195,0,'Guadalajara','GUA','19',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(343,1,195,0,'Guipuzcoa','GUI','20',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(344,1,195,0,'Huelva','HUL','21',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(345,1,195,0,'Huesca','HUS','22',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(346,1,195,0,'Jaen','JAE','23',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(347,1,195,0,'La Rioja','LRI','26',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(348,1,195,0,'Las Palmas','LPA','35',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(349,1,195,0,'Leon','LEO','24',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(350,1,195,0,'Lleida','LLE','25',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(351,1,195,0,'Lugo','LUG','27',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(352,1,195,0,'Madrid','MAD','28',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(353,1,195,0,'Malaga','MAL','29',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(354,1,195,0,'Melilla','MEL','52',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(355,1,195,0,'Murcia','MUR','30',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(356,1,195,0,'Navarra','NAV','31',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(357,1,195,0,'Ourense','OUR','32',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(358,1,195,0,'Palencia','PAL','34',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(359,1,195,0,'Pontevedra','PON','36',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(360,1,195,0,'Salamanca','SAL','37',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(361,1,195,0,'Santa Cruz de Tenerife','SCT','38',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(362,1,195,0,'Segovia','SEG','40',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(363,1,195,0,'Sevilla','SEV','41',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(364,1,195,0,'Soria','SOR','42',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(365,1,195,0,'Tarragona','TAR','43',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(366,1,195,0,'Teruel','TER','44',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(367,1,195,0,'Toledo','TOL','45',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(368,1,195,0,'Valencia','VAL','46',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(369,1,195,0,'Valladolid','VLL','47',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(370,1,195,0,'Vizcaya','VIZ','48',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(371,1,195,0,'Zamora','ZAM','49',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(372,1,195,0,'Zaragoza','ZAR','50',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(373,1,10,0,'Buenos Aires','BAS','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(374,1,10,0,'Ciudad Autonoma De Buenos Aires','CBA','CB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(375,1,10,0,'Catamarca','CAT','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(376,1,10,0,'Chaco','CHO','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(377,1,10,0,'Chubut','CTT','CT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(378,1,10,0,'Cordoba','COD','CO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(379,1,10,0,'Corrientes','CRI','CR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(380,1,10,0,'Entre Rios','ERS','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(381,1,10,0,'Formosa','FRM','FR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(382,1,10,0,'Jujuy','JUJ','JU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(383,1,10,0,'La Pampa','LPM','LP',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(384,1,10,0,'La Rioja','LRI','LR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(385,1,10,0,'Mendoza','MED','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(386,1,10,0,'Misiones','MIS','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(387,1,10,0,'Neuquen','NQU','NQ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(388,1,10,0,'Rio Negro','RNG','RN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(389,1,10,0,'Salta','SAL','SA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(390,1,10,0,'San Juan','SJN','SJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(391,1,10,0,'San Luis','SLU','SL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(392,1,10,0,'Santa Cruz','SCZ','SC',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(393,1,10,0,'Santa Fe','SFE','SF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(394,1,10,0,'Santiago Del Estero','SEN','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(395,1,10,0,'Tierra Del Fuego','TFE','TF',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(396,1,10,0,'Tucuman','TUC','TU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(397,1,11,0,'Aragatsotn','ARG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(398,1,11,0,'Ararat','ARR','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(399,1,11,0,'Armavir','ARM','AV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(400,1,11,0,'Gegharkunik','GEG','GR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(401,1,11,0,'Kotayk','KOT','KT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(402,1,11,0,'Lori','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(403,1,11,0,'Shirak','SHI','SH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(404,1,11,0,'Syunik','SYU','SU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(405,1,11,0,'Tavush','TAV','TV',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(406,1,11,0,'Vayots-Dzor','VAD','VD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(407,1,11,0,'Yerevan','YER','ER',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(408,1,99,0,'Andaman & Nicobar Islands','ANI','AI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(409,1,99,0,'Andhra Pradesh','AND','AN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(410,1,99,0,'Arunachal Pradesh','ARU','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(411,1,99,0,'Assam','ASS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(412,1,99,0,'Bihar','BIH','BI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(413,1,99,0,'Chandigarh','CHA','CA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(414,1,99,0,'Chhatisgarh','CHH','CH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(415,1,99,0,'Dadra & Nagar Haveli','DAD','DD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(416,1,99,0,'Daman & Diu','DAM','DA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(417,1,99,0,'Delhi','DEL','DE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(418,1,99,0,'Goa','GOA','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(419,1,99,0,'Gujarat','GUJ','GU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(420,1,99,0,'Haryana','HAR','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(421,1,99,0,'Himachal Pradesh','HIM','HI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(422,1,99,0,'Jammu & Kashmir','JAM','JA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(423,1,99,0,'Jharkhand','JHA','JH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(424,1,99,0,'Karnataka','KAR','KA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(425,1,99,0,'Kerala','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(426,1,99,0,'Lakshadweep','LAK','LA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(427,1,99,0,'Madhya Pradesh','MAD','MD',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(428,1,99,0,'Maharashtra','MAH','MH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(429,1,99,0,'Manipur','MAN','MN',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(430,1,99,0,'Meghalaya','MEG','ME',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(431,1,99,0,'Mizoram','MIZ','MI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(432,1,99,0,'Nagaland','NAG','NA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(433,1,99,0,'Orissa','ORI','OR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(434,1,99,0,'Pondicherry','PON','PO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(435,1,99,0,'Punjab','PUN','PU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(436,1,99,0,'Rajasthan','RAJ','RA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(437,1,99,0,'Sikkim','SIK','SI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(438,1,99,0,'Tamil Nadu','TAM','TA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(439,1,99,0,'Tripura','TRI','TR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(440,1,99,0,'Uttaranchal','UAR','UA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(441,1,99,0,'Uttar Pradesh','UTT','UT',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(442,1,99,0,'West Bengal','WES','WE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(443,1,101,0,'Ahmadi va Kohkiluyeh','BOK','BO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(444,1,101,0,'Ardabil','ARD','AR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(445,1,101,0,'Azarbayjan-e Gharbi','AZG','AG',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(446,1,101,0,'Azarbayjan-e Sharqi','AZS','AS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(447,1,101,0,'Bushehr','BUS','BU',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(448,1,101,0,'Chaharmahal va Bakhtiari','CMB','CM',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(449,1,101,0,'Esfahan','ESF','ES',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(450,1,101,0,'Fars','FAR','FA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(451,1,101,0,'Gilan','GIL','GI',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(452,1,101,0,'Gorgan','GOR','GO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(453,1,101,0,'Hamadan','HAM','HA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(454,1,101,0,'Hormozgan','HOR','HO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(455,1,101,0,'Ilam','ILA','IL',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(456,1,101,0,'Kerman','KER','KE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(457,1,101,0,'Kermanshah','BAK','BA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(458,1,101,0,'Khorasan-e Junoubi','KHJ','KJ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(459,1,101,0,'Khorasan-e Razavi','KHR','KR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(460,1,101,0,'Khorasan-e Shomali','KHS','KS',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(461,1,101,0,'Khuzestan','KHU','KH',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(462,1,101,0,'Kordestan','KOR','KO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(463,1,101,0,'Lorestan','LOR','LO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(464,1,101,0,'Markazi','MAR','MR',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(465,1,101,0,'Mazandaran','MAZ','MZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(466,1,101,0,'Qazvin','QAS','QA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(467,1,101,0,'Qom','QOM','QO',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(468,1,101,0,'Semnan','SEM','SE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(469,1,101,0,'Sistan va Baluchestan','SBA','SB',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(470,1,101,0,'Tehran','TEH','TE',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(471,1,101,0,'Yazd','YAZ','YA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(472,1,101,0,'Zanjan','ZAN','ZA',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(535,1,84,0,'ΛΕΥΚΑΔΑΣ','ΛΕΥ','ΛΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(532,1,84,0,'ΛΑΡΙΣΑΣ','ΛΑΡ','ΛΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(504,1,84,0,'ΑΡΚΑΔΙΑΣ','ΑΡΚ','ΑΚ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(503,1,84,0,'ΑΡΓΟΛΙΔΑΣ','ΑΡΓ','ΑΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(533,1,84,0,'ΛΑΣΙΘΙΟΥ','ΛΑΣ','ΛΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(534,1,84,0,'ΛΕΣΒΟΥ','ΛΕΣ','ΛΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(530,1,84,0,'ΚΥΚΛΑΔΩΝ','ΚΥΚ','ΚΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(553,1,84,0,'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ','ΑΙΤ','ΑΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(529,1,84,0,'ΚΟΡΙΝΘΙΑΣ','ΚΟΡ','ΚΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(531,1,84,0,'ΛΑΚΩΝΙΑΣ','ΛΑΚ','ΛK',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(517,1,84,0,'ΗΜΑΘΙΑΣ','ΗΜΑ','ΗΜ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(518,1,84,0,'ΗΡΑΚΛΕΙΟΥ','ΗΡΑ','ΗΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(519,1,84,0,'ΘΕΣΠΡΩΤΙΑΣ','ΘΕΠ','ΘΠ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(520,1,84,0,'ΘΕΣΣΑΛΟΝΙΚΗΣ','ΘΕΣ','ΘΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(521,1,84,0,'ΙΩΑΝΝΙΝΩΝ','ΙΩΑ','ΙΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(522,1,84,0,'ΚΑΒΑΛΑΣ','ΚΑΒ','ΚΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(523,1,84,0,'ΚΑΡΔΙΤΣΑΣ','ΚΑΡ','ΚΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(524,1,84,0,'ΚΑΣΤΟΡΙΑΣ','ΚΑΣ','ΚΣ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(525,1,84,0,'ΚΕΡΚΥΡΑΣ','ΚΕΡ','ΚΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(526,1,84,0,'ΚΕΦΑΛΛΗΝΙΑΣ','ΚΕΦ','ΚΦ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(527,1,84,0,'ΚΙΛΚΙΣ','ΚΙΛ','ΚΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(528,1,84,0,'ΚΟΖΑΝΗΣ','ΚΟΖ','ΚZ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(507,1,84,0,'ΑΧΑΪΑΣ','ΑΧΑ','ΑΧ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(508,1,84,0,'ΒΟΙΩΤΙΑΣ','ΒΟΙ','ΒΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(509,1,84,0,'ΓΡΕΒΕΝΩΝ','ΓΡΕ','ΓΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(510,1,84,0,'ΔΡΑΜΑΣ','ΔΡΑ','ΔΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(511,1,84,0,'ΔΩΔΕΚΑΝΗΣΟΥ','ΔΩΔ','ΔΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(512,1,84,0,'ΕΒΡΟΥ','ΕΒΡ','ΕΒ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(513,1,84,0,'ΕΥΒΟΙΑΣ','ΕΥΒ','ΕΥ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(514,1,84,0,'ΕΥΡΥΤΑΝΙΑΣ','ΕΥΡ','ΕΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(515,1,84,0,'ΖΑΚΥΝΘΟΥ','ΖΑΚ','ΖΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(516,1,84,0,'ΗΛΕΙΑΣ','ΗΛΕ','ΗΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(505,1,84,0,'ΑΡΤΑΣ','ΑΡΤ','ΑΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(506,1,84,0,'ΑΤΤΙΚΗΣ','ΑΤΤ','ΑΤ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(536,1,84,0,'ΜΑΓΝΗΣΙΑΣ','ΜΑΓ','ΜΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(537,1,84,0,'ΜΕΣΣΗΝΙΑΣ','ΜΕΣ','ΜΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(538,1,84,0,'ΞΑΝΘΗΣ','ΞΑΝ','ΞΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(539,1,84,0,'ΠΕΛΛΗΣ','ΠΕΛ','ΠΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(540,1,84,0,'ΠΙΕΡΙΑΣ','ΠΙΕ','ΠΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(541,1,84,0,'ΠΡΕΒΕΖΑΣ','ΠΡΕ','ΠΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(542,1,84,0,'ΡΕΘΥΜΝΗΣ','ΡΕΘ','ΡΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(543,1,84,0,'ΡΟΔΟΠΗΣ','ΡΟΔ','ΡΟ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(544,1,84,0,'ΣΑΜΟΥ','ΣΑΜ','ΣΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(545,1,84,0,'ΣΕΡΡΩΝ','ΣΕΡ','ΣΕ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(546,1,84,0,'ΤΡΙΚΑΛΩΝ','ΤΡΙ','ΤΡ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(547,1,84,0,'ΦΘΙΩΤΙΔΑΣ','ΦΘΙ','ΦΘ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(548,1,84,0,'ΦΛΩΡΙΝΑΣ','ΦΛΩ','ΦΛ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(549,1,84,0,'ΦΩΚΙΔΑΣ','ΦΩΚ','ΦΩ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(550,1,84,0,'ΧΑΛΚΙΔΙΚΗΣ','ΧΑΛ','ΧΑ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(551,1,84,0,'ΧΑΝΙΩΝ','ΧΑΝ','ΧΝ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(552,1,84,0,'ΧΙΟΥ','ΧΙΟ','ΧΙ',0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(569,1,81,0,'Schleswig-Holstein','SHO','SH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(554,1,81,0,'Freie und Hansestadt Hamburg','HAM','HH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(555,1,81,0,'Niedersachsen','NIS','NI',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(556,1,81,0,'Freie Hansestadt Bremen','HBR','HB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(557,1,81,0,'Nordrhein-Westfalen','NRW','NW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(558,1,81,0,'Hessen','HES','HE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(559,1,81,0,'Rheinland-Pfalz','RLP','RP',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(560,1,81,0,'Baden-Württemberg','BWÜ','BW',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(561,1,81,0,'Freistaat Bayern','BAV','BY',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(562,1,81,0,'Saarland','SLA','SL',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(563,1,81,0,'Berlin','BER','BE',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(564,1,81,0,'Brandenburg','BRB','BB',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(565,1,81,0,'Mecklenburg-Vorpommern','MVO','MV',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(566,1,81,0,'Freistaat Sachsen','SAC','SN',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(567,1,81,0,'Sachsen-Anhalt','SAA','ST',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(568,1,81,0,'Freistaat Thüringen','THÜ','TH',0,1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_userfield_values`
--

DROP TABLE IF EXISTS `jos_virtuemart_userfield_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_userfield_values`
--

LOCK TABLES `jos_virtuemart_userfield_values` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_userfield_values` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_userfield_values` VALUES (1,10,'Mr','Mr',0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,10,'Mrs','Mrs',0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_userfield_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_userfields`
--

DROP TABLE IF EXISTS `jos_virtuemart_userfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `name` char(50) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `type` char(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` char(50) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `params` mediumtext,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userfield_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_userfields`
--

LOCK TABLES `jos_virtuemart_userfields` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_userfields` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_userfields` VALUES (1,1,'email','COM_VIRTUEMART_REGISTER_EMAIL','','emailaddress',100,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,1,'password','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1','','password',25,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,4,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,1,'password2','COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2','','password',25,30,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,5,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,1,'agreed','COM_VIRTUEMART_I_AGREE_TO_TOS','','checkbox',NULL,NULL,1,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,29,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(5,1,'name','COM_VIRTUEMART_USER_DISPLAYED_NAME','','text',25,30,1,0,0,'',NULL,1,0,1,0,0,1,'',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(6,1,'username','COM_VIRTUEMART_USERNAME','','text',25,30,1,0,0,'',NULL,1,0,1,0,0,1,'',3,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(7,1,'address_type_name','COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL','','text',32,30,1,NULL,NULL,NULL,NULL,0,1,0,0,0,1,NULL,6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(8,1,'delimiter_billto','COM_VIRTUEMART_USER_FORM_BILLTO_LBL','','delimiter',25,30,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,6,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(9,1,'company','COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME','','text',64,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,7,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(10,1,'title','COM_VIRTUEMART_SHOPPER_FORM_TITLE','','select',0,0,0,NULL,NULL,NULL,NULL,1,0,1,0,0,1,NULL,8,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(11,1,'first_name','COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,9,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(12,1,'middle_name','COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,10,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(13,1,'last_name','COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,11,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(14,1,'address_1','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1','','text',64,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,12,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(15,1,'address_2','COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2','','text',64,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,13,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(16,1,'zip','COM_VIRTUEMART_SHOPPER_FORM_ZIP','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,14,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(17,1,'city','COM_VIRTUEMART_SHOPPER_FORM_CITY','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,15,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(18,1,'virtuemart_country_id','COM_VIRTUEMART_SHOPPER_FORM_COUNTRY','','select',0,0,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,16,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(19,1,'virtuemart_state_id','COM_VIRTUEMART_SHOPPER_FORM_STATE','','select',0,0,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,17,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(20,1,'phone_1','COM_VIRTUEMART_SHOPPER_FORM_PHONE','','text',32,30,1,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,18,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(21,1,'phone_2','COM_VIRTUEMART_SHOPPER_FORM_PHONE2','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,19,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(22,1,'fax','COM_VIRTUEMART_SHOPPER_FORM_FAX','','text',32,30,0,NULL,NULL,NULL,NULL,1,1,1,0,0,1,NULL,20,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(23,1,'delimiter_sendregistration','COM_VIRTUEMART_BUTTON_SEND_REG','','delimiter',25,30,0,NULL,NULL,NULL,NULL,1,0,0,0,0,0,NULL,28,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(24,1,'delimiter_userinfo','COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL','','delimiter',NULL,NULL,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,1,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(25,1,'extra_field_1','COM_VIRTUEMART_SHOPPER_FORM_EXTRA_FIELD_1','','text',255,30,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,31,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(26,1,'extra_field_2','COM_VIRTUEMART_SHOPPER_FORM_EXTRA_FIELD_2','','text',255,30,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,32,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(27,1,'extra_field_3','COM_VIRTUEMART_SHOPPER_FORM_EXTRA_FIELD_3','','text',255,30,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,33,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(28,1,'extra_field_4','COM_VIRTUEMART_SHOPPER_FORM_EXTRA_FIELD_4','','select',1,1,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,34,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(29,1,'extra_field_5','COM_VIRTUEMART_SHOPPER_FORM_EXTRA_FIELD_5','','select',1,1,0,NULL,NULL,NULL,NULL,1,0,1,0,0,0,NULL,35,0,0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_userfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_userinfos`
--

DROP TABLE IF EXISTS `jos_virtuemart_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` char(32) NOT NULL DEFAULT '',
  `name` char(64) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(32) DEFAULT NULL,
  `first_name` char(32) DEFAULT NULL,
  `middle_name` char(32) DEFAULT NULL,
  `phone_1` char(24) DEFAULT NULL,
  `phone_2` char(24) DEFAULT NULL,
  `fax` char(24) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(32) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_userinfo_id`),
  KEY `idx_userinfo_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_userinfos`
--

LOCK TABLES `jos_virtuemart_userinfos` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_userinfos` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_userinfos` VALUES (1,62,'BT','','Administrator','Washupito\'s the virtual mart','Sire','upito','Wash','the cheapest','555-555-555','','','vendorra road 8','','Canangra',361,195,'055555',0,'2012-05-26 12:56:29',62,'2012-05-26 12:56:29',62,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_vendor_medias`
--

DROP TABLE IF EXISTS `jos_virtuemart_vendor_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_vendor_medias` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_vendor_medias`
--

LOCK TABLES `jos_virtuemart_vendor_medias` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_vendor_medias` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_vendor_medias` VALUES (1,1,15,0);
/*!40000 ALTER TABLE `jos_virtuemart_vendor_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_vendors`
--

DROP TABLE IF EXISTS `jos_virtuemart_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_vendors` (
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(11) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1024) NOT NULL DEFAULT '',
  `vendor_params` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_vendors`
--

LOCK TABLES `jos_virtuemart_vendors` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_vendors` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_vendors` VALUES (1,'Washupito',47,'52,26,47,144','vendor_min_pov=0|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=\"\"|vendor_date_format=\"\"|','2012-05-26 12:56:29',62,'2012-05-26 12:56:29',62,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_vendors_es_es`
--

DROP TABLE IF EXISTS `jos_virtuemart_vendors_es_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_vendors_es_es` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT '',
  PRIMARY KEY (`virtuemart_vendor_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_vendors_es_es`
--

LOCK TABLES `jos_virtuemart_vendors_es_es` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_vendors_es_es` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_vendors_es_es` VALUES (1,' <p>We have the best tools for do-it-yourselfers.  Check us out! </p> <p>We were established in 1969 in a time when getting good tools was expensive, but the quality was good.  Now that only a select few of those authentic tools survive, we have dedicated this store to bringing the experience alive for collectors and master mechanics everywhere.</p> 		<p>You can easily find products selecting the category you would like to browse above.</p>	','<h5>You haven&#39;t configured any terms of service yet. Click <a href=\"/administrator/index.php?option=com_virtuemart&view=user&task=editshop\">here</a> to change this text.</h5>','VAT-ID: XYZ-DEMO<br />Reg.Nr: DEMONUMBER','Washupito\'s Tiendita','555-555-1212','http://canasta/','washupitos-tiendita');
/*!40000 ALTER TABLE `jos_virtuemart_vendors_es_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_vmuser_shoppergroups`
--

DROP TABLE IF EXISTS `jos_virtuemart_vmuser_shoppergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_vmuser_shoppergroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_vmuser_shoppergroups`
--

LOCK TABLES `jos_virtuemart_vmuser_shoppergroups` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_vmuser_shoppergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_vmuser_shoppergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_vmusers`
--

DROP TABLE IF EXISTS `jos_virtuemart_vmusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_vmusers` (
  `virtuemart_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `perms` char(40) NOT NULL DEFAULT 'shopper',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_user_id`),
  UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_vmusers`
--

LOCK TABLES `jos_virtuemart_vmusers` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_vmusers` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_vmusers` VALUES (62,1,1,'21232f297a57a5a743894a0e4a801fc3','admin',0,0,0,'0000-00-00 00:00:00',0,'2012-05-26 12:56:29',62,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_vmusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_waitingusers`
--

DROP TABLE IF EXISTS `jos_virtuemart_waitingusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(2) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_waitinguser_id`),
  KEY `virtuemart_product_id` (`virtuemart_product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_waitingusers`
--

LOCK TABLES `jos_virtuemart_waitingusers` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_waitingusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_virtuemart_waitingusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_virtuemart_worldzones`
--

DROP TABLE IF EXISTS `jos_virtuemart_worldzones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` text,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(2) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_worldzone_id`),
  KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_virtuemart_worldzones`
--

LOCK TABLES `jos_virtuemart_worldzones` WRITE;
/*!40000 ALTER TABLE `jos_virtuemart_worldzones` DISABLE KEYS */;
INSERT INTO `jos_virtuemart_worldzones` VALUES (1,NULL,'Default',6.00,35.00,'This is the default Shipment Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(2,NULL,'Zone 1',1000.00,10000.00,'This is a zone example',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(3,NULL,'Zone 2',2.00,22.00,'This is the second zone. You can use this for notes about this zone',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0),(4,NULL,'Zone 3',11.00,64.00,'Another usefull thing might be details about this zone or special instructions.',2,0,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `jos_virtuemart_worldzones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-31  8:42:25
