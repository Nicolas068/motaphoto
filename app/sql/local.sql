-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint unsigned NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (46,'action_scheduler_run_recurring_actions_schedule_hook','complete','2025-09-24 08:05:01','2025-09-24 08:05:01',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758701101;s:18:\"\0*\0first_timestamp\";i:1758701101;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758701101;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,1,'2025-09-24 08:05:02','2025-09-24 08:05:02',1,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (47,'action_scheduler/migration_hook','complete','2025-09-24 08:06:01','2025-09-24 08:06:01',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1758701161;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1758701161;}',2,1,'2025-09-24 08:06:04','2025-09-24 08:06:04',4,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (48,'action_scheduler_run_recurring_actions_schedule_hook','pending','2025-09-25 08:05:02','2025-09-25 08:05:02',20,'[]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758787502;s:18:\"\0*\0first_timestamp\";i:1758701101;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758787502;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (49,'wpforms_process_forms_locator_scan','complete','2025-09-24 08:06:27','2025-09-24 08:06:27',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758701187;s:18:\"\0*\0first_timestamp\";i:1758701187;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758701187;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2025-09-24 08:07:07','2025-09-24 08:07:07',6,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (50,'wpforms_process_purge_spam','complete','2025-09-24 08:06:27','2025-09-24 08:06:27',10,'{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758701187;s:18:\"\0*\0first_timestamp\";i:1758701187;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758701187;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,1,'2025-09-24 08:07:07','2025-09-24 08:07:07',6,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (51,'wpforms_email_summaries_fetch_info_blocks','canceled','2025-09-27 06:01:07','2025-09-27 06:01:07',10,'{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758952867;s:18:\"\0*\0first_timestamp\";i:1758952867;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758952867;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (52,'wpforms_admin_addons_cache_update','canceled','2025-10-01 08:06:27','2025-10-01 08:06:27',10,'{\"tasks_meta_id\":3}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1759305987;s:18:\"\0*\0first_timestamp\";i:1759305987;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1759305987;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (53,'wpforms_builder_help_cache_update','canceled','2025-10-01 08:06:27','2025-10-01 08:06:27',10,'{\"tasks_meta_id\":4}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1759305987;s:18:\"\0*\0first_timestamp\";i:1759305987;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1759305987;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (54,'wpforms_admin_builder_templates_cache_update','canceled','2025-10-01 08:06:27','2025-10-01 08:06:27',10,'{\"tasks_meta_id\":5}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1759305987;s:18:\"\0*\0first_timestamp\";i:1759305987;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1759305987;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (55,'wpforms_admin_notifications_update','complete','2025-09-24 08:06:27','2025-09-24 08:06:27',10,'{\"tasks_meta_id\":6}','O:28:\"ActionScheduler_NullSchedule\":0:{}',3,1,'2025-09-24 08:07:07','2025-09-24 08:07:07',6,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (56,'wpforms_process_forms_locator_scan','canceled','2025-09-25 08:07:07','2025-09-25 08:07:07',10,'{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758787627;s:18:\"\0*\0first_timestamp\";i:1758701187;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758787627;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (57,'wpforms_process_purge_spam','canceled','2025-09-25 08:07:07','2025-09-25 08:07:07',10,'{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1758787627;s:18:\"\0*\0first_timestamp\";i:1758701187;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1758787627;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'ActionScheduler');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (3,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,46,'action created','2025-09-24 08:05:01','2025-09-24 08:05:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,47,'action created','2025-09-24 08:05:01','2025-09-24 08:05:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,46,'action started via WP Cron','2025-09-24 08:05:02','2025-09-24 08:05:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,46,'action complete via WP Cron','2025-09-24 08:05:02','2025-09-24 08:05:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,48,'action created','2025-09-24 08:05:02','2025-09-24 08:05:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,47,'action started via WP Cron','2025-09-24 08:06:04','2025-09-24 08:06:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,47,'action complete via WP Cron','2025-09-24 08:06:04','2025-09-24 08:06:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,49,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,50,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,51,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,52,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,53,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,54,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,55,'action created','2025-09-24 08:06:27','2025-09-24 08:06:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,49,'action started via WP Cron','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,49,'action complete via WP Cron','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,56,'action created','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,50,'action started via WP Cron','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,50,'action complete via WP Cron','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,57,'action created','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,55,'action started via WP Cron','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,55,'action complete via WP Cron','2025-09-24 08:07:07','2025-09-24 08:07:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,51,'action canceled','2025-09-24 08:11:31','2025-09-24 08:11:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,52,'action canceled','2025-09-24 08:11:31','2025-09-24 08:11:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,53,'action canceled','2025-09-24 08:11:31','2025-09-24 08:11:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,54,'action canceled','2025-09-24 08:11:31','2025-09-24 08:11:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,56,'action canceled','2025-09-24 08:11:31','2025-09-24 08:11:31');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,57,'action canceled','2025-09-24 08:11:31','2025-09-24 08:11:31');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2025-09-10 11:42:37','2025-09-10 11:42:37','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:11:{i:1760632958;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1760638673;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760661756;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760663556;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760665356;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1760701358;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1760702096;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1760702100;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1761134111;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1761219758;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://mota-photo.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://mota-photo.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','mota-photo','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:145:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"photo/?$\";s:25:\"index.php?post_type=photo\";s:38:\"photo/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=photo&feed=$matches[1]\";s:33:\"photo/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=photo&feed=$matches[1]\";s:25:\"photo/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=photo&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"format/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?format=$matches[1]&feed=$matches[2]\";s:42:\"format/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?format=$matches[1]&feed=$matches[2]\";s:23:\"format/([^/]+)/embed/?$\";s:39:\"index.php?format=$matches[1]&embed=true\";s:35:\"format/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?format=$matches[1]&paged=$matches[2]\";s:17:\"format/([^/]+)/?$\";s:28:\"index.php?format=$matches[1]\";s:50:\"categorie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categorie=$matches[1]&feed=$matches[2]\";s:45:\"categorie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categorie=$matches[1]&feed=$matches[2]\";s:26:\"categorie/([^/]+)/embed/?$\";s:42:\"index.php?categorie=$matches[1]&embed=true\";s:38:\"categorie/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?categorie=$matches[1]&paged=$matches[2]\";s:20:\"categorie/([^/]+)/?$\";s:31:\"index.php?categorie=$matches[1]\";s:33:\"photo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"photo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"photo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"photo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"photo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"photo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"photo/([^/]+)/embed/?$\";s:38:\"index.php?photo=$matches[1]&embed=true\";s:26:\"photo/([^/]+)/trackback/?$\";s:32:\"index.php?photo=$matches[1]&tb=1\";s:46:\"photo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?photo=$matches[1]&feed=$matches[2]\";s:41:\"photo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?photo=$matches[1]&feed=$matches[2]\";s:34:\"photo/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?photo=$matches[1]&paged=$matches[2]\";s:41:\"photo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?photo=$matches[1]&cpage=$matches[2]\";s:30:\"photo/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?photo=$matches[1]&page=$matches[2]\";s:22:\"photo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"photo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"photo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"photo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"photo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"photo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"smart-custom-fields/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"smart-custom-fields/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"smart-custom-fields/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"smart-custom-fields/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"smart-custom-fields/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"smart-custom-fields/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"smart-custom-fields/([^/]+)/embed/?$\";s:52:\"index.php?smart-custom-fields=$matches[1]&embed=true\";s:40:\"smart-custom-fields/([^/]+)/trackback/?$\";s:46:\"index.php?smart-custom-fields=$matches[1]&tb=1\";s:48:\"smart-custom-fields/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?smart-custom-fields=$matches[1]&paged=$matches[2]\";s:55:\"smart-custom-fields/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?smart-custom-fields=$matches[1]&cpage=$matches[2]\";s:44:\"smart-custom-fields/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?smart-custom-fields=$matches[1]&page=$matches[2]\";s:36:\"smart-custom-fields/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"smart-custom-fields/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"smart-custom-fields/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"smart-custom-fields/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"smart-custom-fields/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"smart-custom-fields/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:3:{i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:43:\"smart-custom-fields/smart-custom-fields.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','https://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','mota-photo','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','mota-photo','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','60421','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:2:{s:43:\"smart-custom-fields/smart-custom-fields.php\";a:2:{i:0;s:19:\"Smart_Custom_Fields\";i:1;s:9:\"uninstall\";}s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','8','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1773056556','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','60421','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (126,'WPLANG','fr_FR','auto');
INSERT INTO `wp_options` VALUES (149,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (153,'new_admin_email','dev-email@wpengine.local','auto');
INSERT INTO `wp_options` VALUES (161,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (162,'theme_mods_twentytwentyfive','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1757506153;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (163,'current_theme','Mota Photo','auto');
INSERT INTO `wp_options` VALUES (164,'theme_mods_mota-photo','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:12:\"private-menu\";i:0;s:11:\"footer-menu\";i:6;s:14:\"menu-principal\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (185,'recovery_mode_email_last_sent','1757507582','auto');
INSERT INTO `wp_options` VALUES (198,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"04bc21473354e6654273c9319dc29fde\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (213,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":4,\"critical\":3}','on');
INSERT INTO `wp_options` VALUES (237,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (340,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (345,'action_scheduler_hybrid_store_demarkation','45','auto');
INSERT INTO `wp_options` VALUES (346,'schema-ActionScheduler_StoreSchema','8.0.1758701101','auto');
INSERT INTO `wp_options` VALUES (347,'schema-ActionScheduler_LoggerSchema','3.0.1758701101','auto');
INSERT INTO `wp_options` VALUES (348,'wpforms_version','1.9.7.3','auto');
INSERT INTO `wp_options` VALUES (349,'wpforms_version_lite','1.9.7.3','auto');
INSERT INTO `wp_options` VALUES (350,'wpforms_activated','a:1:{s:4:\"lite\";i:1758701101;}','auto');
INSERT INTO `wp_options` VALUES (355,'recently_activated','a:1:{s:27:\"autoptimize/autoptimize.php\";i:1759757658;}','off');
INSERT INTO `wp_options` VALUES (356,'action_scheduler_lock_async-request-runner','68d3a791d47736.25853994|1758701517','no');
INSERT INTO `wp_options` VALUES (357,'wpforms_versions_lite','a:15:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:5:\"1.9.1\";i:0;s:5:\"1.9.2\";i:0;s:5:\"1.9.7\";i:0;s:7:\"1.9.7.3\";i:1758701101;}','auto');
INSERT INTO `wp_options` VALUES (358,'wpforms_constant_contact_version','3','auto');
INSERT INTO `wp_options` VALUES (359,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (362,'wpforms_settings','a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}','auto');
INSERT INTO `wp_options` VALUES (364,'wpforms_admin_notices','a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1758701102;s:9:\"dismissed\";b:0;}}','auto');
INSERT INTO `wp_options` VALUES (365,'_wpforms_transient_timeout_addons.json','1759305907','off');
INSERT INTO `wp_options` VALUES (366,'_wpforms_transient_addons.json','1758701107','off');
INSERT INTO `wp_options` VALUES (367,'_wpforms_transient_timeout_splash.json','1759305908','off');
INSERT INTO `wp_options` VALUES (368,'_wpforms_transient_splash.json','1758701108','off');
INSERT INTO `wp_options` VALUES (369,'_wpforms_transient_upload_htaccess_file','a:3:{s:4:\"size\";i:775;s:5:\"mtime\";i:1758701108;s:5:\"ctime\";i:1758701108;}','on');
INSERT INTO `wp_options` VALUES (370,'_wpforms_transient_wpforms_C:/Users/nheim/Local Sites/mota-photo/app/public/wp-content/uploads/wpforms/cache/.htaccess_file','a:3:{s:4:\"size\";i:484;s:5:\"mtime\";i:1758701121;s:5:\"ctime\";i:1758701108;}','on');
INSERT INTO `wp_options` VALUES (371,'wpforms_splash_version','1.8.6','auto');
INSERT INTO `wp_options` VALUES (372,'_wpforms_transient_timeout_docs.json','1759305919','off');
INSERT INTO `wp_options` VALUES (373,'_wpforms_transient_docs.json','1758701119','off');
INSERT INTO `wp_options` VALUES (374,'_wpforms_transient_timeout_templates.json','1759305920','off');
INSERT INTO `wp_options` VALUES (375,'_wpforms_transient_templates.json','1758701120','off');
INSERT INTO `wp_options` VALUES (376,'wpforms_builder_opened_date','1758701121','off');
INSERT INTO `wp_options` VALUES (377,'wpforms_challenge','a:13:{s:6:\"status\";s:7:\"skipped\";s:4:\"step\";i:4;s:7:\"user_id\";i:1;s:7:\"form_id\";i:45;s:10:\"embed_page\";i:0;s:16:\"embed_page_title\";s:0:\"\";s:16:\"started_date_gmt\";s:19:\"2025-09-24 08:07:25\";s:17:\"finished_date_gmt\";s:19:\"2025-09-24 08:07:26\";s:13:\"seconds_spent\";i:37;s:12:\"seconds_left\";i:263;s:13:\"feedback_sent\";b:0;s:19:\"feedback_contact_me\";b:0;s:13:\"window_closed\";s:0:\"\";}','auto');
INSERT INTO `wp_options` VALUES (380,'wpforms_templates_hash','5416dc70d833af07d9668c48e2662801','auto');
INSERT INTO `wp_options` VALUES (383,'as_has_wp_comment_logs','no','on');
INSERT INTO `wp_options` VALUES (384,'wpforms_forms_first_created','1758701202','off');
INSERT INTO `wp_options` VALUES (386,'wpforms_process_forms_locator_status','completed','auto');
INSERT INTO `wp_options` VALUES (398,'wpcf7','a:2:{s:7:\"version\";s:5:\"6.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1758701503;s:7:\"version\";s:5:\"6.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','auto');
INSERT INTO `wp_options` VALUES (403,'secret_key','g21<m31YtKcG&>N8p3.>e`L$WY%,LIDM#7=7{#5W_D_F([rB<PMdZ! g8=kekSWN','off');
INSERT INTO `wp_options` VALUES (502,'cptui_new_install','false','auto');
INSERT INTO `wp_options` VALUES (503,'cptui_post_types','a:1:{s:5:\"photo\";a:34:{s:4:\"name\";s:5:\"photo\";s:5:\"label\";s:6:\"photos\";s:14:\"singular_label\";s:5:\"photo\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:2:{i:0;s:6:\"format\";i:1;s:9:\"categorie\";}s:6:\"labels\";a:31:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";s:13:\"template_name\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}','auto');
INSERT INTO `wp_options` VALUES (506,'cptui_taxonomies','a:2:{s:6:\"format\";a:28:{s:4:\"name\";s:6:\"format\";s:5:\"label\";s:7:\"formats\";s:14:\"singular_label\";s:6:\"format\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:13:\"template_name\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:6:\"photos\";}}s:9:\"categorie\";a:28:{s:4:\"name\";s:9:\"categorie\";s:5:\"label\";s:11:\"catégories\";s:14:\"singular_label\";s:10:\"catégorie\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:13:\"template_name\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:6:\"photos\";}}}','auto');
INSERT INTO `wp_options` VALUES (1013,'_site_transient_timeout_browser_2204ee63bef2f351470a66ffe1bb020e','1760964468','off');
INSERT INTO `wp_options` VALUES (1014,'_site_transient_browser_2204ee63bef2f351470a66ffe1bb020e','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"141.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (1076,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.8.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.8.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:5:\"6.8.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:51:\"https://downloads.w.org/release/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:51:\"https://downloads.w.org/release/wordpress-6.8.3.zip\";s:10:\"no_content\";s:62:\"https://downloads.w.org/release/wordpress-6.8.3-no-content.zip\";s:11:\"new_bundled\";s:63:\"https://downloads.w.org/release/wordpress-6.8.3-new-bundled.zip\";s:7:\"partial\";s:61:\"https://downloads.w.org/release/wordpress-6.8.3-partial-2.zip\";s:8:\"rollback\";s:62:\"https://downloads.w.org/release/wordpress-6.8.3-rollback-2.zip\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:5:\"6.8.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1760628632;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1077,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1760622305;s:7:\"checked\";a:1:{s:10:\"mota-photo\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1078,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1760621831;s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";s:6:\"tested\";s:5:\"6.8.3\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2025-02-06 12:02:14\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/6.1.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"1.18.0\";s:7:\"updated\";s:19:\"2025-02-23 13:23:52\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.18.0/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.18.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.18.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:43:\"smart-custom-fields/smart-custom-fields.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/smart-custom-fields\";s:4:\"slug\";s:19:\"smart-custom-fields\";s:6:\"plugin\";s:43:\"smart-custom-fields/smart-custom-fields.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/smart-custom-fields/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/smart-custom-fields.5.0.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:70:\"https://s.w.org/plugins/geopattern-icon/smart-custom-fields_043846.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/smart-custom-fields/assets/banner-1544x500.png?rev=1799490\";s:2:\"1x\";s:74:\"https://ps.w.org/smart-custom-fields/assets/banner-772x250.png?rev=1799490\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}}s:7:\"checked\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.1.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.18.0\";s:43:\"smart-custom-fields/smart-custom-fields.php\";s:5:\"5.0.4\";}}','off');
INSERT INTO `wp_options` VALUES (1136,'_site_transient_timeout_theme_roots','1760623616','off');
INSERT INTO `wp_options` VALUES (1137,'_site_transient_theme_roots','a:1:{s:10:\"mota-photo\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (1138,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1761226616','off');
INSERT INTO `wp_options` VALUES (1139,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (1146,'_site_transient_timeout_wp_theme_files_patterns-57cbaea7239c14802c84b0b9a2e40743','1760630435','off');
INSERT INTO `wp_options` VALUES (1147,'_site_transient_wp_theme_files_patterns-57cbaea7239c14802c84b0b9a2e40743','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (10,8,'_edit_lock','1759992879:1');
INSERT INTO `wp_postmeta` VALUES (11,10,'_edit_lock','1758699362:1');
INSERT INTO `wp_postmeta` VALUES (12,12,'_edit_lock','1759739622:1');
INSERT INTO `wp_postmeta` VALUES (43,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (44,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (45,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (46,21,'_edit_lock','1758558646:1');
INSERT INTO `wp_postmeta` VALUES (47,23,'_edit_lock','1758558701:1');
INSERT INTO `wp_postmeta` VALUES (48,25,'_edit_lock','1758558737:1');
INSERT INTO `wp_postmeta` VALUES (49,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,27,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (52,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_orphaned','1758558940');
INSERT INTO `wp_postmeta` VALUES (58,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,28,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_orphaned','1758558940');
INSERT INTO `wp_postmeta` VALUES (67,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (69,29,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (70,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_orphaned','1758558940');
INSERT INTO `wp_postmeta` VALUES (103,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (104,33,'_wp_trash_meta_time','1758559122');
INSERT INTO `wp_postmeta` VALUES (105,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (106,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (107,34,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (108,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (109,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (110,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (111,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (112,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (114,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (115,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (124,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (125,36,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (126,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (127,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (128,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (130,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,37,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (135,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (142,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (143,38,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (144,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (145,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (146,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (147,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (148,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (150,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (151,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (152,39,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (153,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (154,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (155,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (156,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (157,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (161,12,'_wp_page_template','page-contact.php');
INSERT INTO `wp_postmeta` VALUES (162,36,'_wp_old_date','2025-09-22');
INSERT INTO `wp_postmeta` VALUES (163,35,'_wp_old_date','2025-09-22');
INSERT INTO `wp_postmeta` VALUES (164,34,'_wp_old_date','2025-09-22');
INSERT INTO `wp_postmeta` VALUES (165,47,'_form','<label> NOM\n    [text* your-name autocomplete:name] </label>\n\n<label> E-MAIL\n    [email* your-email autocomplete:email] </label>\n<label> RÉF. PHOTO\n    [text your-photo-ref id:photo-reference readonly] </label>\n\n<label> MESSAGE\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]');
INSERT INTO `wp_postmeta` VALUES (166,47,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <wordpress@mota-photo.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}');
INSERT INTO `wp_postmeta` VALUES (167,47,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:42:\"[_site_title] <wordpress@mota-photo.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}');
INSERT INTO `wp_postmeta` VALUES (168,47,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}');
INSERT INTO `wp_postmeta` VALUES (169,47,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (170,47,'_locale','fr_FR');
INSERT INTO `wp_postmeta` VALUES (171,47,'_hash','66927a4b93e2dddc9f37b27b297ae0afd2af6f53ea62b67c6f9b6c747e9c2e0e');
INSERT INTO `wp_postmeta` VALUES (176,51,'_edit_lock','1759134903:1');
INSERT INTO `wp_postmeta` VALUES (180,51,'_wp_old_slug','51');
INSERT INTO `wp_postmeta` VALUES (183,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (184,56,'_edit_lock','1760426193:1');
INSERT INTO `wp_postmeta` VALUES (185,56,'smart-cf-setting','a:3:{i:0;a:3:{s:10:\"group-name\";i:1;s:6:\"fields\";a:1:{i:0;a:6:{s:4:\"type\";s:4:\"text\";s:5:\"label\";s:11:\"Référence\";s:4:\"name\";s:9:\"reference\";s:7:\"default\";s:0:\"\";s:11:\"instruction\";s:0:\"\";s:5:\"notes\";s:0:\"\";}}s:6:\"repeat\";b:0;}i:1;a:3:{s:10:\"group-name\";i:2;s:6:\"fields\";a:1:{i:0;a:6:{s:4:\"type\";s:4:\"text\";s:5:\"label\";s:4:\"Type\";s:4:\"name\";s:4:\"type\";s:7:\"default\";s:0:\"\";s:11:\"instruction\";s:0:\"\";s:5:\"notes\";s:0:\"\";}}s:6:\"repeat\";b:0;}i:2;a:3:{s:10:\"group-name\";i:3;s:6:\"fields\";a:1:{i:0;a:6:{s:4:\"type\";s:4:\"text\";s:5:\"label\";s:6:\"Année\";s:4:\"name\";s:5:\"annee\";s:7:\"default\";s:0:\"\";s:11:\"instruction\";s:0:\"\";s:5:\"notes\";s:0:\"\";}}s:6:\"repeat\";b:0;}}');
INSERT INTO `wp_postmeta` VALUES (187,56,'smart-cf-condition','a:1:{i:0;s:5:\"photo\";}');
INSERT INTO `wp_postmeta` VALUES (189,58,'_edit_lock','1759240963:1');
INSERT INTO `wp_postmeta` VALUES (191,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,59,'_edit_lock','1759136996:1');
INSERT INTO `wp_postmeta` VALUES (200,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (204,61,'_edit_lock','1759136946:1');
INSERT INTO `wp_postmeta` VALUES (205,62,'_wp_attached_file','2025/09/nathalie-2-1-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (206,62,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1544;s:4:\"file\";s:32:\"2025/09/nathalie-2-1-scaled.jpeg\";s:8:\"filesize\";i:901404;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"nathalie-2-1-300x181.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20212;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"nathalie-2-1-1024x617.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:617;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"nathalie-2-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9852;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-2-1-768x463.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:115335;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-2-1-1536x926.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:926;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:387237;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:27:\"nathalie-2-1-2048x1235.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1235;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:628061;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"nathalie-2-1.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (207,62,'_wp_attachment_image_alt','concert');
INSERT INTO `wp_postmeta` VALUES (208,61,'_thumbnail_id','62');
INSERT INTO `wp_postmeta` VALUES (209,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (210,61,'reference','bf2387');
INSERT INTO `wp_postmeta` VALUES (211,61,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (212,61,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (213,63,'_wp_attached_file','2025/09/nathalie-1-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (214,63,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2025/09/nathalie-1-scaled.jpeg\";s:8:\"filesize\";i:591626;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18537;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:134757;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7969;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85255;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:256402;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-1-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:406925;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-1.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (215,63,'_wp_attachment_image_alt','Bon anniversaire');
INSERT INTO `wp_postmeta` VALUES (216,59,'_thumbnail_id','63');
INSERT INTO `wp_postmeta` VALUES (217,59,'reference','bf2386');
INSERT INTO `wp_postmeta` VALUES (218,59,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (219,59,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (220,64,'_edit_lock','1759147673:1');
INSERT INTO `wp_postmeta` VALUES (221,65,'_wp_attached_file','2025/09/nathalie-3-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (222,65,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2025/09/nathalie-3-scaled.jpeg\";s:8:\"filesize\";i:236860;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-3-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9538;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58230;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4522;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68264;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105036;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:163761;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-3.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (223,65,'_wp_attachment_image_alt','tout est installé');
INSERT INTO `wp_postmeta` VALUES (224,64,'_thumbnail_id','65');
INSERT INTO `wp_postmeta` VALUES (225,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (229,64,'reference','bf2388');
INSERT INTO `wp_postmeta` VALUES (230,64,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (231,64,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (232,66,'_edit_lock','1759147802:1');
INSERT INTO `wp_postmeta` VALUES (233,67,'_wp_attached_file','2025/09/nathalie-4-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (234,67,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1706;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2025/09/nathalie-4-scaled.jpeg\";s:8:\"filesize\";i:652897;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-4-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18133;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:150845;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7582;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:181651;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-4-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:288685;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-4-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:458288;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-4.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (235,67,'_wp_attachment_image_alt','mariage');
INSERT INTO `wp_postmeta` VALUES (236,66,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (237,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (238,66,'reference','bf2389');
INSERT INTO `wp_postmeta` VALUES (239,66,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (240,66,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (242,69,'_edit_lock','1759147963:1');
INSERT INTO `wp_postmeta` VALUES (243,70,'_wp_attached_file','2025/09/nathalie-5-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (244,70,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2025/09/nathalie-5-scaled.jpeg\";s:8:\"filesize\";i:781915;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-5-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19233;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:154497;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8057;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:188077;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-5-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:307758;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-5-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:516757;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-5.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (245,70,'_wp_attachment_image_alt','Embrassez la mariée');
INSERT INTO `wp_postmeta` VALUES (246,69,'_thumbnail_id','70');
INSERT INTO `wp_postmeta` VALUES (247,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (248,69,'reference','bf2390');
INSERT INTO `wp_postmeta` VALUES (249,69,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (250,69,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (251,71,'_edit_lock','1759148125:1');
INSERT INTO `wp_postmeta` VALUES (252,72,'_wp_attached_file','2025/09/nathalie-6-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (253,72,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2048;s:4:\"file\";s:30:\"2025/09/nathalie-6-scaled.jpeg\";s:8:\"filesize\";i:675361;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-6-300x240.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14596;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-6-1024x819.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:115530;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-6-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5836;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-6-768x614.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69115;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-6-1536x1229.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:246926;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-6-2048x1638.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1638;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:436018;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-6.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (254,71,'_thumbnail_id','72');
INSERT INTO `wp_postmeta` VALUES (255,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (256,71,'reference','bf2391');
INSERT INTO `wp_postmeta` VALUES (257,71,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (258,71,'annee','2020');
INSERT INTO `wp_postmeta` VALUES (259,73,'_edit_lock','1759148229:1');
INSERT INTO `wp_postmeta` VALUES (260,74,'_wp_attached_file','2025/09/nathalie-7-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (261,74,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:30:\"2025/09/nathalie-7-scaled.jpeg\";s:8:\"filesize\";i:374877;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-7-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13543;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-7-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:91219;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-7-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6034;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-7-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58722;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-7-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:168814;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-7-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:263992;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-7.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (262,73,'_thumbnail_id','74');
INSERT INTO `wp_postmeta` VALUES (263,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (264,73,'reference','bf2392');
INSERT INTO `wp_postmeta` VALUES (265,73,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (266,73,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (267,75,'_edit_lock','1759148362:1');
INSERT INTO `wp_postmeta` VALUES (268,76,'_wp_attached_file','2025/09/nathalie-8-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (269,76,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2025/09/nathalie-8-scaled.jpeg\";s:8:\"filesize\";i:433935;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-8-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16911;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-684x1024.jpeg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108036;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8378;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-768x1150.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128141;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1025x1536.jpeg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:197904;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1367x2048.jpeg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:305818;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-8.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (270,76,'_wp_attachment_image_alt','photo concert');
INSERT INTO `wp_postmeta` VALUES (271,75,'_thumbnail_id','76');
INSERT INTO `wp_postmeta` VALUES (272,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,75,'reference','bf2393');
INSERT INTO `wp_postmeta` VALUES (274,75,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (275,75,'annee','2021');
INSERT INTO `wp_postmeta` VALUES (276,77,'_edit_lock','1759148474:1');
INSERT INTO `wp_postmeta` VALUES (277,78,'_wp_attached_file','2025/09/nathalie-9-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (278,78,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2025/09/nathalie-9-scaled.jpeg\";s:8:\"filesize\";i:606855;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-9-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14232;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-9-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:113922;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6886;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-9-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68942;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-9-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:232605;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-9-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:398070;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-9.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (279,78,'_wp_attachment_image_alt','piste de danse');
INSERT INTO `wp_postmeta` VALUES (280,77,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (281,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (282,77,'reference','bf2394');
INSERT INTO `wp_postmeta` VALUES (283,77,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (284,77,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (285,79,'_edit_lock','1759754180:1');
INSERT INTO `wp_postmeta` VALUES (286,80,'_wp_attached_file','2025/09/nathalie-10-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (287,80,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:31:\"2025/09/nathalie-10-scaled.jpeg\";s:8:\"filesize\";i:1332907;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-10-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25711;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-10-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:267240;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9016;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-10-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155522;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-10-1536x1152.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:560705;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-10-2048x1536.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:924563;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-10.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (288,80,'_wp_attachment_image_alt','supporter de foot');
INSERT INTO `wp_postmeta` VALUES (289,79,'_thumbnail_id','80');
INSERT INTO `wp_postmeta` VALUES (290,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (294,81,'_edit_lock','1759148704:1');
INSERT INTO `wp_postmeta` VALUES (295,82,'_wp_attached_file','2025/09/nathalie-11-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (296,82,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:31:\"2025/09/nathalie-11-scaled.jpeg\";s:8:\"filesize\";i:354241;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-11-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14866;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-11-1024x684.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88794;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-11-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7159;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-11-768x513.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58996;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-11-1536x1025.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159408;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-11-2048x1367.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:246299;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-11.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (297,82,'_wp_attachment_image_alt','public concert');
INSERT INTO `wp_postmeta` VALUES (298,81,'_thumbnail_id','82');
INSERT INTO `wp_postmeta` VALUES (299,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (300,81,'reference','bf2396');
INSERT INTO `wp_postmeta` VALUES (301,81,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (302,81,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (303,83,'_edit_lock','1759148809:1');
INSERT INTO `wp_postmeta` VALUES (304,84,'_wp_attached_file','2025/09/nathalie-12-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (305,84,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:31:\"2025/09/nathalie-12-scaled.jpeg\";s:8:\"filesize\";i:493425;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-12-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18576;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-12-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:126308;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-12-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8897;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-12-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81217;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-12-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:228718;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-12-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:352864;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-12.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (306,83,'_thumbnail_id','84');
INSERT INTO `wp_postmeta` VALUES (307,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (308,83,'reference','bf2397');
INSERT INTO `wp_postmeta` VALUES (309,83,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (310,83,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (311,85,'_edit_lock','1759148919:1');
INSERT INTO `wp_postmeta` VALUES (312,86,'_wp_attached_file','2025/09/nathalie-13-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (313,86,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2025/09/nathalie-13-scaled.jpeg\";s:8:\"filesize\";i:268865;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-13-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10027;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66619;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-13-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5351;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78942;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-13-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:122540;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-13-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:189159;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-13.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (314,86,'_wp_attachment_image_alt','bouquet de mariage');
INSERT INTO `wp_postmeta` VALUES (315,85,'_thumbnail_id','86');
INSERT INTO `wp_postmeta` VALUES (316,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (317,85,'reference','bf2398');
INSERT INTO `wp_postmeta` VALUES (318,85,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (319,85,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (320,87,'_edit_lock','1760425710:1');
INSERT INTO `wp_postmeta` VALUES (321,88,'_wp_attached_file','2025/09/nathalie-14-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (322,88,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2025/09/nathalie-14-scaled.jpeg\";s:8:\"filesize\";i:464788;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-14-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10923;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-683x1024.jpeg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95811;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-14-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5167;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-768x1152.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116603;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-14-1024x1536.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192964;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-14-1365x2048.jpeg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:317136;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-14.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (323,88,'_wp_attachment_image_alt','mariés au couché du soleil');
INSERT INTO `wp_postmeta` VALUES (324,87,'_thumbnail_id','88');
INSERT INTO `wp_postmeta` VALUES (325,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (326,87,'reference','bf2399');
INSERT INTO `wp_postmeta` VALUES (327,87,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (328,87,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (329,89,'_edit_lock','1759149156:1');
INSERT INTO `wp_postmeta` VALUES (330,90,'_wp_attached_file','2025/09/nathalie-15-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (331,90,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2025/09/nathalie-15-scaled.jpeg\";s:8:\"filesize\";i:652470;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-15-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19127;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-684x1024.jpeg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151352;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-15-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7989;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-768x1150.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:182087;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-15-1025x1536.jpeg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:291657;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-15-1367x2048.jpeg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:458449;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-15.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (332,90,'_wp_attachment_image_alt','équipe de mariée');
INSERT INTO `wp_postmeta` VALUES (333,89,'_thumbnail_id','90');
INSERT INTO `wp_postmeta` VALUES (334,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (335,89,'reference','bf2400');
INSERT INTO `wp_postmeta` VALUES (336,89,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (337,89,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (338,92,'_wp_attached_file','2025/09/nathalie-0-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (339,92,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:25:\"2025/09/nathalie-0-1.jpeg\";s:8:\"filesize\";i:659895;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"nathalie-0-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14292;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"nathalie-0-1-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85310;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"nathalie-0-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6938;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-0-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56206;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"nathalie-0-1-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:155931;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:27:\"nathalie-0-1-2048x1366.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:245495;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (340,58,'_thumbnail_id','92');
INSERT INTO `wp_postmeta` VALUES (341,58,'reference','bf2385');
INSERT INTO `wp_postmeta` VALUES (342,58,'type','Argentique');
INSERT INTO `wp_postmeta` VALUES (343,58,'annee','2019');
INSERT INTO `wp_postmeta` VALUES (344,79,'reference','bf2395');
INSERT INTO `wp_postmeta` VALUES (345,79,'type','Numérique');
INSERT INTO `wp_postmeta` VALUES (346,79,'annee','2022');
INSERT INTO `wp_postmeta` VALUES (354,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (355,95,'_edit_lock','1760425725:1');
INSERT INTO `wp_postmeta` VALUES (356,95,'smart-cf-setting','a:1:{i:0;a:3:{s:10:\"group-name\";i:1;s:6:\"fields\";a:1:{i:0;a:6:{s:4:\"type\";s:5:\"image\";s:5:\"label\";s:13:\"Image du hero\";s:4:\"name\";s:10:\"hero_image\";s:11:\"instruction\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:4:\"size\";s:4:\"full\";}}s:6:\"repeat\";b:0;}}');
INSERT INTO `wp_postmeta` VALUES (357,95,'smart-cf-condition-post-ids','8');
INSERT INTO `wp_postmeta` VALUES (358,95,'smart-cf-condition','a:3:{i:0;s:4:\"page\";i:1;s:13:\"wp_navigation\";i:2;s:5:\"photo\";}');
INSERT INTO `wp_postmeta` VALUES (362,8,'hero_image','78');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2025-09-10 11:42:37','2025-09-10 11:42:37','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2025-09-10 11:42:37','2025-09-10 11:42:37','',0,'http://mota-photo.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (8,1,'2025-09-12 07:44:43','2025-09-12 07:44:43','','ACCUEIL','','publish','closed','closed','','accueil','','','2025-10-09 06:53:07','2025-10-09 06:53:07','',0,'http://mota-photo.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2025-09-12 07:44:43','2025-09-12 07:44:43','','Accueil','','inherit','closed','closed','','8-revision-v1','','','2025-09-12 07:44:43','2025-09-12 07:44:43','',8,'http://mota-photo.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2025-09-12 07:45:18','2025-09-12 07:45:18','','A PROPOS','','publish','closed','closed','','a-propos','','','2025-09-22 15:55:13','2025-09-22 15:55:13','',0,'http://mota-photo.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2025-09-12 07:45:18','2025-09-12 07:45:18','','A propos','','inherit','closed','closed','','10-revision-v1','','','2025-09-12 07:45:18','2025-09-12 07:45:18','',10,'http://mota-photo.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-09-12 07:45:30','2025-09-12 07:45:30','<p><!-- Trigger/Open The Modal --><br />\n<button id=\"myBtn\">Open Modal</button></p>\n<p><!-- The Modal --></p>\n<div id=\"myModal\" class=\"modal\">\n<p>  <!-- Modal content --></p>\n<div class=\"modal-content\">\n    <span class=\"close\">x</span></p>\n<p>Some text in the Modal..</p>\n</p></div>\n</div>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','CONTACT','','publish','closed','closed','','contact','','','2025-09-23 12:02:19','2025-09-23 12:02:19','',0,'http://mota-photo.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2025-09-12 07:45:30','2025-09-12 07:45:30','','Contact','','inherit','closed','closed','','12-revision-v1','','','2025-09-12 07:45:30','2025-09-12 07:45:30','',12,'http://mota-photo.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2025-09-22 15:55:13','2025-09-22 15:55:13','','A PROPOS','','inherit','closed','closed','','10-revision-v1','','','2025-09-22 15:55:13','2025-09-22 15:55:13','',10,'http://mota-photo.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-09-22 15:55:22','2025-09-22 15:55:22','','ACCUEIL','','inherit','closed','closed','','8-revision-v1','','','2025-09-22 15:55:22','2025-09-22 15:55:22','',8,'http://mota-photo.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-09-22 15:55:35','2025-09-22 15:55:35','','CONTACT','','inherit','closed','closed','','12-revision-v1','','','2025-09-22 15:55:35','2025-09-22 15:55:35','',12,'http://mota-photo.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-09-22 16:30:25','2025-09-22 16:30:25','','MENTIONS LÉGALES','','publish','closed','closed','','mentions-legales','','','2025-09-22 16:30:25','2025-09-22 16:30:25','',0,'http://mota-photo.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-09-22 16:30:25','2025-09-22 16:30:25','','MENTIONS LÉGALES','','inherit','closed','closed','','21-revision-v1','','','2025-09-22 16:30:25','2025-09-22 16:30:25','',21,'http://mota-photo.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-09-22 16:31:39','2025-09-22 16:31:39','','VIE PRIVÉE','','publish','closed','closed','','vie-privee','','','2025-09-22 16:31:39','2025-09-22 16:31:39','',0,'http://mota-photo.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-09-22 16:31:39','2025-09-22 16:31:39','','VIE PRIVÉE','','inherit','closed','closed','','23-revision-v1','','','2025-09-22 16:31:39','2025-09-22 16:31:39','',23,'http://mota-photo.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2025-09-22 16:32:17','2025-09-22 16:32:17','','TOUS DROITS RÉSERVÉS','','publish','closed','closed','','tous-droits-reserves','','','2025-09-22 16:32:17','2025-09-22 16:32:17','',0,'http://mota-photo.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2025-09-22 16:32:17','2025-09-22 16:32:17','','TOUS DROITS RÉSERVÉS','','inherit','closed','closed','','25-revision-v1','','','2025-09-22 16:32:17','2025-09-22 16:32:17','',25,'http://mota-photo.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2025-09-22 16:35:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-22 16:35:40','0000-00-00 00:00:00','',0,'http://mota-photo.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-09-22 16:35:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-22 16:35:40','0000-00-00 00:00:00','',0,'http://mota-photo.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-09-22 16:35:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-09-22 16:35:40','0000-00-00 00:00:00','',0,'http://mota-photo.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-09-22 16:38:42','2025-09-22 16:38:42','{\n    \"nav_menu[4]\": {\n        \"value\": {\n            \"name\": \"Nav menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-09-22 16:38:42\"\n    }\n}','','','trash','closed','closed','','1da13ee9-f8a1-4ea2-ad16-03526c0f6f6f','','','2025-09-22 16:38:42','2025-09-22 16:38:42','',0,'http://mota-photo.local/1da13ee9-f8a1-4ea2-ad16-03526c0f6f6f/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-09-24 07:39:40','2025-09-22 16:44:12',' ','','','publish','closed','closed','','34','','','2025-09-24 07:39:40','2025-09-24 07:39:40','',0,'http://mota-photo.local/?p=34',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-09-24 07:39:40','2025-09-22 16:44:12',' ','','','publish','closed','closed','','35','','','2025-09-24 07:39:40','2025-09-24 07:39:40','',0,'http://mota-photo.local/?p=35',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-09-24 07:39:40','2025-09-22 16:44:12',' ','','','publish','closed','closed','','36','','','2025-09-24 07:39:40','2025-09-24 07:39:40','',0,'http://mota-photo.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-09-22 17:09:28','2025-09-22 16:44:53',' ','','','publish','closed','closed','','37','','','2025-09-22 17:09:28','2025-09-22 17:09:28','',0,'http://mota-photo.local/?p=37',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-09-22 17:09:28','2025-09-22 16:44:53',' ','','','publish','closed','closed','','38','','','2025-09-22 17:09:28','2025-09-22 17:09:28','',0,'http://mota-photo.local/?p=38',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2025-09-22 17:09:28','2025-09-22 16:44:53',' ','','','publish','closed','closed','','39','','','2025-09-22 17:09:28','2025-09-22 17:09:28','',0,'http://mota-photo.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-09-23 08:34:37','2025-09-23 08:34:37','<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;!-- Trigger/Open The Modal -->\n&lt;button id=\"myBtn\">Open Modal&lt;/button>\n\n&lt;!-- The Modal -->\n&lt;div id=\"myModal\" class=\"modal\">\n\n  &lt;!-- Modal content -->\n  &lt;div class=\"modal-content\">\n    &lt;span class=\"close\">x&lt;/span>\n    &lt;p>Some text in the Modal..&lt;/p>\n  &lt;/div>\n\n&lt;/div></code></pre>\n<!-- /wp:code -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','CONTACT','','inherit','closed','closed','','12-revision-v1','','','2025-09-23 08:34:37','2025-09-23 08:34:37','',12,'http://mota-photo.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2025-09-23 08:41:54','2025-09-23 08:41:54','<!-- Trigger/Open The Modal -->\n<button id=\"myBtn\">Open Modal</button>\n\n<!-- The Modal -->\n<div id=\"myModal\" class=\"modal\">\n\n  <!-- Modal content -->\n  <div class=\"modal-content\">\n    <span class=\"close\">x</span>\n    <p>Some text in the Modal..</p>\n  </div>\n\n</div>','CONTACT','','inherit','closed','closed','','12-revision-v1','','','2025-09-23 08:41:54','2025-09-23 08:41:54','',12,'http://mota-photo.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-09-23 11:58:24','2025-09-23 11:58:24','<p><!-- Trigger/Open The Modal --><br />\n<button id=\"myBtn\">Open Modal</button></p>\n<p><!-- The Modal --></p>\n<div id=\"myModal\" class=\"modal\">\n<p>  <!-- Modal content --></p>\n<div class=\"modal-content\">\n    <span class=\"close\">x</span></p>\n<p>Some text in the Modal..</p>\n</p></div>\n</div>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','CONTACT','','inherit','closed','closed','','12-revision-v1','','','2025-09-23 11:58:24','2025-09-23 11:58:24','',12,'http://mota-photo.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-09-24 08:06:42','2025-09-24 08:06:42','{\"fields\":[],\"id\":\"45\",\"field_id\":1,\"settings\":{\"themes\":{\"wpformsTheme\":\"default\",\"isCustomTheme\":\"\",\"themeName\":\"\",\"fieldSize\":\"medium\",\"fieldBorderStyle\":\"solid\",\"fieldBorderSize\":\"1\",\"fieldBorderRadius\":\"3\",\"fieldBackgroundColor\":\"#ffffff\",\"fieldBorderColor\":\"rgba(0, 0, 0, 0.25)\",\"fieldTextColor\":\"rgba(0, 0, 0, 0.7)\",\"labelSize\":\"medium\",\"labelColor\":\"rgba(0, 0, 0, 0.85)\",\"labelSublabelColor\":\"rgba(0, 0, 0, 0.55)\",\"labelErrorColor\":\"#d63637\",\"buttonSize\":\"medium\",\"buttonBorderStyle\":\"none\",\"buttonBorderSize\":\"1\",\"buttonBorderRadius\":\"3\",\"buttonBackgroundColor\":\"#066aab\",\"buttonBorderColor\":\"#066aab\",\"buttonTextColor\":\"#ffffff\",\"containerPadding\":\"0\",\"containerBorderStyle\":\"none\",\"containerBorderWidth\":\"1\",\"containerBorderRadius\":\"3\",\"containerBorderColor\":\"#000000\",\"containerShadowSize\":\"none\",\"backgroundColor\":\"rgba(0, 0, 0, 0)\",\"backgroundImage\":\"none\",\"backgroundSize\":\"cover\",\"backgroundUrl\":\"url()\",\"fieldMenuColor\":\"#ffffff\",\"pageBreakColor\":\"#066aab\",\"customCss\":\"\",\"copyPasteJsonValue\":\"{\\\"themeName\\\":\\\"\\\",\\\"isCustomTheme\\\":\\\"\\\",\\\"wpformsTheme\\\":\\\"default\\\",\\\"customCss\\\":\\\"\\\",\\\"containerPadding\\\":\\\"0\\\",\\\"containerBorderStyle\\\":\\\"none\\\",\\\"containerBorderWidth\\\":\\\"1\\\",\\\"containerBorderRadius\\\":\\\"3\\\",\\\"containerShadowSize\\\":\\\"none\\\",\\\"containerBorderColor\\\":\\\"#000000\\\",\\\"fieldSize\\\":\\\"medium\\\",\\\"fieldBorderStyle\\\":\\\"solid\\\",\\\"fieldBorderRadius\\\":\\\"3\\\",\\\"fieldBorderSize\\\":\\\"1\\\",\\\"fieldBackgroundColor\\\":\\\"#ffffff\\\",\\\"fieldBorderColor\\\":\\\"rgba(0, 0, 0, 0.25)\\\",\\\"fieldTextColor\\\":\\\"rgba(0, 0, 0, 0.7)\\\",\\\"fieldMenuColor\\\":\\\"#ffffff\\\",\\\"pageBreakColor\\\":\\\"#066aab\\\",\\\"labelSize\\\":\\\"medium\\\",\\\"labelColor\\\":\\\"rgba(0, 0, 0, 0.85)\\\",\\\"labelSublabelColor\\\":\\\"rgba(0, 0, 0, 0.55)\\\",\\\"labelErrorColor\\\":\\\"#d63637\\\",\\\"buttonSize\\\":\\\"medium\\\",\\\"buttonBorderStyle\\\":\\\"none\\\",\\\"buttonBorderSize\\\":\\\"1\\\",\\\"buttonBorderRadius\\\":\\\"3\\\",\\\"buttonBackgroundColor\\\":\\\"#066aab\\\",\\\"buttonBorderColor\\\":\\\"#066aab\\\",\\\"buttonTextColor\\\":\\\"#ffffff\\\",\\\"backgroundColor\\\":\\\"rgba(0, 0, 0, 0)\\\",\\\"backgroundPosition\\\":\\\"center center\\\",\\\"backgroundUrl\\\":\\\"url()\\\",\\\"backgroundRepeat\\\":\\\"no-repeat\\\",\\\"backgroundSize\\\":\\\"cover\\\",\\\"backgroundSizeMode\\\":\\\"cover\\\",\\\"backgroundWidth\\\":\\\"100\\\",\\\"backgroundHeight\\\":\\\"100\\\",\\\"backgroundImage\\\":\\\"none\\\"}\"},\"form_title\":\"Contact\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Contact Entry\",\"sender_name\":\"mota-photo\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\",\"template\":\"\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"message_scroll\":\"1\",\"page\":\"10\",\"redirect\":\"\"}},\"antispam_v3\":\"1\",\"anti_spam\":{\"time_limit\":{\"enable\":\"1\",\"duration\":\"2\"},\"filtering_store_spam\":\"1\"},\"form_tags\":[],\"store_spam_entries\":\"0\"},\"search_terms\":\"\",\"providers\":{\"constant-contact-v3\":[]},\"meta\":{\"template\":\"blank\"}}','Contact','','publish','closed','closed','','contact','','','2025-09-24 08:06:43','2025-09-24 08:06:43','',0,'http://mota-photo.local/?post_type=wpforms&#038;p=45',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-09-24 08:06:43','2025-09-24 08:06:43','{\"fields\":[],\"id\":\"45\",\"field_id\":1,\"settings\":{\"themes\":{\"wpformsTheme\":\"default\",\"isCustomTheme\":\"\",\"themeName\":\"\",\"fieldSize\":\"medium\",\"fieldBorderStyle\":\"solid\",\"fieldBorderSize\":\"1\",\"fieldBorderRadius\":\"3\",\"fieldBackgroundColor\":\"#ffffff\",\"fieldBorderColor\":\"rgba(0, 0, 0, 0.25)\",\"fieldTextColor\":\"rgba(0, 0, 0, 0.7)\",\"labelSize\":\"medium\",\"labelColor\":\"rgba(0, 0, 0, 0.85)\",\"labelSublabelColor\":\"rgba(0, 0, 0, 0.55)\",\"labelErrorColor\":\"#d63637\",\"buttonSize\":\"medium\",\"buttonBorderStyle\":\"none\",\"buttonBorderSize\":\"1\",\"buttonBorderRadius\":\"3\",\"buttonBackgroundColor\":\"#066aab\",\"buttonBorderColor\":\"#066aab\",\"buttonTextColor\":\"#ffffff\",\"containerPadding\":\"0\",\"containerBorderStyle\":\"none\",\"containerBorderWidth\":\"1\",\"containerBorderRadius\":\"3\",\"containerBorderColor\":\"#000000\",\"containerShadowSize\":\"none\",\"backgroundColor\":\"rgba(0, 0, 0, 0)\",\"backgroundImage\":\"none\",\"backgroundSize\":\"cover\",\"backgroundUrl\":\"url()\",\"fieldMenuColor\":\"#ffffff\",\"pageBreakColor\":\"#066aab\",\"customCss\":\"\",\"copyPasteJsonValue\":\"{\\\"themeName\\\":\\\"\\\",\\\"isCustomTheme\\\":\\\"\\\",\\\"wpformsTheme\\\":\\\"default\\\",\\\"customCss\\\":\\\"\\\",\\\"containerPadding\\\":\\\"0\\\",\\\"containerBorderStyle\\\":\\\"none\\\",\\\"containerBorderWidth\\\":\\\"1\\\",\\\"containerBorderRadius\\\":\\\"3\\\",\\\"containerShadowSize\\\":\\\"none\\\",\\\"containerBorderColor\\\":\\\"#000000\\\",\\\"fieldSize\\\":\\\"medium\\\",\\\"fieldBorderStyle\\\":\\\"solid\\\",\\\"fieldBorderRadius\\\":\\\"3\\\",\\\"fieldBorderSize\\\":\\\"1\\\",\\\"fieldBackgroundColor\\\":\\\"#ffffff\\\",\\\"fieldBorderColor\\\":\\\"rgba(0, 0, 0, 0.25)\\\",\\\"fieldTextColor\\\":\\\"rgba(0, 0, 0, 0.7)\\\",\\\"fieldMenuColor\\\":\\\"#ffffff\\\",\\\"pageBreakColor\\\":\\\"#066aab\\\",\\\"labelSize\\\":\\\"medium\\\",\\\"labelColor\\\":\\\"rgba(0, 0, 0, 0.85)\\\",\\\"labelSublabelColor\\\":\\\"rgba(0, 0, 0, 0.55)\\\",\\\"labelErrorColor\\\":\\\"#d63637\\\",\\\"buttonSize\\\":\\\"medium\\\",\\\"buttonBorderStyle\\\":\\\"none\\\",\\\"buttonBorderSize\\\":\\\"1\\\",\\\"buttonBorderRadius\\\":\\\"3\\\",\\\"buttonBackgroundColor\\\":\\\"#066aab\\\",\\\"buttonBorderColor\\\":\\\"#066aab\\\",\\\"buttonTextColor\\\":\\\"#ffffff\\\",\\\"backgroundColor\\\":\\\"rgba(0, 0, 0, 0)\\\",\\\"backgroundPosition\\\":\\\"center center\\\",\\\"backgroundUrl\\\":\\\"url()\\\",\\\"backgroundRepeat\\\":\\\"no-repeat\\\",\\\"backgroundSize\\\":\\\"cover\\\",\\\"backgroundSizeMode\\\":\\\"cover\\\",\\\"backgroundWidth\\\":\\\"100\\\",\\\"backgroundHeight\\\":\\\"100\\\",\\\"backgroundImage\\\":\\\"none\\\"}\"},\"form_title\":\"Contact\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Contact Entry\",\"sender_name\":\"mota-photo\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\",\"template\":\"\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"message_scroll\":\"1\",\"page\":\"10\",\"redirect\":\"\"}},\"antispam_v3\":\"1\",\"anti_spam\":{\"time_limit\":{\"enable\":\"1\",\"duration\":\"2\"},\"filtering_store_spam\":\"1\"},\"form_tags\":[],\"store_spam_entries\":\"0\"},\"search_terms\":\"\",\"providers\":{\"constant-contact-v3\":[]},\"meta\":{\"template\":\"blank\"}}','Contact','','inherit','closed','closed','','45-revision-v1','','','2025-09-24 08:06:43','2025-09-24 08:06:43','',45,'http://mota-photo.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-09-24 08:11:43','2025-09-24 08:11:43','<label> NOM\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> E-MAIL\r\n    [email* your-email autocomplete:email] </label>\r\n<label> RÉF. PHOTO\r\n    [text your-photo-ref id:photo-reference readonly] </label>\r\n\r\n<label> MESSAGE\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Envoyer\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@mota-photo.local>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@mota-photo.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n1\n1\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2025-10-03 08:12:11','2025-10-03 08:12:11','',0,'http://mota-photo.local/?post_type=wpcf7_contact_form&#038;p=47',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-09-29 07:49:17','2025-09-29 07:49:17','<!-- wp:table -->\n<figure class=\"wp-block-table\"><table class=\"has-fixed-layout\"><tbody><tr><td></td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Santé','','publish','closed','closed','','01','','','2025-09-29 08:35:07','2025-09-29 08:35:07','',0,'http://mota-photo.local/?post_type=photos&#038;p=51',0,'photos','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-09-29 08:44:05','2025-09-29 08:44:05','','infos photo','','publish','closed','closed','','infos-photo','','','2025-09-29 08:59:53','2025-09-29 08:59:53','',0,'http://mota-photo.local/?post_type=smart-custom-fields&#038;p=56',0,'smart-custom-fields','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2025-09-29 08:58:02','2025-09-29 08:58:02','','Santé !','','publish','closed','closed','','sante','','','2025-09-30 14:02:41','2025-09-30 14:02:41','',0,'http://mota-photo.local/?post_type=photo&#038;p=58',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2025-09-29 09:06:32','2025-09-29 09:06:32','','Et bon anniversaire !','','publish','closed','closed','','et-bon-anniversaire','','','2025-09-29 09:09:53','2025-09-29 09:09:53','',0,'http://mota-photo.local/?post_type=photo&#038;p=59',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2025-09-29 09:09:06','2025-09-29 09:09:06','','Let\'s party !','','publish','closed','closed','','lets-party','','','2025-09-29 09:09:06','2025-09-29 09:09:06','',0,'http://mota-photo.local/?post_type=photo&#038;p=61',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-09-29 09:08:38','2025-09-29 09:08:38','','nathalie-2','','inherit','open','closed','','nathalie-2-2','','','2025-09-29 09:09:01','2025-09-29 09:09:01','',61,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-2-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-09-29 09:09:34','2025-09-29 09:09:34','','nathalie-1','','inherit','open','closed','','nathalie-1','','','2025-09-29 09:09:50','2025-09-29 09:09:50','',59,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2025-09-29 12:07:33','2025-09-29 12:07:33','','Tout est installé','','publish','closed','closed','','tout-est-installe','','','2025-09-29 12:07:51','2025-09-29 12:07:51','',0,'http://mota-photo.local/?post_type=photo&#038;p=64',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-09-29 12:06:54','2025-09-29 12:06:54','','nathalie-3','','inherit','open','closed','','nathalie-3','','','2025-09-29 12:07:19','2025-09-29 12:07:19','',64,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-3.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-09-29 12:10:02','2025-09-29 12:10:02','','Vers l\'éternité','','publish','closed','closed','','vers-leternite','','','2025-09-29 12:10:02','2025-09-29 12:10:02','',0,'http://mota-photo.local/?post_type=photo&#038;p=66',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-09-29 12:09:44','2025-09-29 12:09:44','','nathalie-4','','inherit','open','closed','','nathalie-4','','','2025-09-29 12:09:57','2025-09-29 12:09:57','',66,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-4.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-09-29 12:12:42','2025-09-29 12:12:42','','Embrassez la mariée','','publish','closed','closed','','embrassez-la-mariee','','','2025-09-29 12:12:43','2025-09-29 12:12:43','',0,'http://mota-photo.local/?post_type=photo&#038;p=69',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-09-29 12:12:23','2025-09-29 12:12:23','','nathalie-5','','inherit','open','closed','','nathalie-5','','','2025-09-29 12:12:37','2025-09-29 12:12:37','',69,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-5.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-09-29 12:15:24','2025-09-29 12:15:24','','Dansons ensemble','','publish','closed','closed','','dansons-ensemble','','','2025-09-29 12:15:25','2025-09-29 12:15:25','',0,'http://mota-photo.local/?post_type=photo&#038;p=71',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2025-09-29 12:15:10','2025-09-29 12:15:10','','nathalie-6','','inherit','open','closed','','nathalie-6','','','2025-09-29 12:15:10','2025-09-29 12:15:10','',71,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-6.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2025-09-29 12:17:09','2025-09-29 12:17:09','','Le menu','','publish','closed','closed','','le-menu','','','2025-09-29 12:17:09','2025-09-29 12:17:09','',0,'http://mota-photo.local/?post_type=photo&#038;p=73',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2025-09-29 12:16:54','2025-09-29 12:16:54','','nathalie-7','','inherit','open','closed','','nathalie-7','','','2025-09-29 12:16:54','2025-09-29 12:16:54','',73,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-7.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2025-09-29 12:19:21','2025-09-29 12:19:21','','Au bal masqué','','publish','closed','closed','','au-bal-masque','','','2025-09-29 12:19:21','2025-09-29 12:19:21','',0,'http://mota-photo.local/?post_type=photo&#038;p=75',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2025-09-29 12:18:55','2025-09-29 12:18:55','','nathalie-8','','inherit','open','closed','','nathalie-8','','','2025-09-29 12:19:15','2025-09-29 12:19:15','',75,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-8.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2025-09-29 12:21:12','2025-09-29 12:21:12','','Let\'s dance!','','publish','closed','closed','','lets-dance','','','2025-09-29 12:21:12','2025-09-29 12:21:12','',0,'http://mota-photo.local/?post_type=photo&#038;p=77',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2025-09-29 12:20:41','2025-09-29 12:20:41','','nathalie-9','','inherit','open','closed','','nathalie-9','','','2025-09-29 12:21:06','2025-09-29 12:21:06','',77,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-9.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2025-09-29 12:23:25','2025-09-29 12:23:25','','Jour de match','','publish','closed','closed','','jour-de-match','','','2025-10-06 12:32:28','2025-10-06 12:32:28','',0,'http://mota-photo.local/?post_type=photo&#038;p=79',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2025-09-29 12:23:01','2025-09-29 12:23:01','','nathalie-10','','inherit','open','closed','','nathalie-10','','','2025-09-29 12:23:22','2025-09-29 12:23:22','',79,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-10.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2025-09-29 12:25:02','2025-09-29 12:25:02','','Préparation','','publish','closed','closed','','preparation','','','2025-09-29 12:25:02','2025-09-29 12:25:02','',0,'http://mota-photo.local/?post_type=photo&#038;p=81',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2025-09-29 12:24:39','2025-09-29 12:24:39','','nathalie-11','','inherit','open','closed','','nathalie-11','','','2025-09-29 12:24:57','2025-09-29 12:24:57','',81,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-11.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (83,1,'2025-09-29 12:26:47','2025-09-29 12:26:47','','Bière ou eau plate ?','','publish','closed','closed','','biere-ou-eau-plate','','','2025-09-29 12:26:47','2025-09-29 12:26:47','',0,'http://mota-photo.local/?post_type=photo&#038;p=83',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2025-09-29 12:26:23','2025-09-29 12:26:23','','nathalie-12','','inherit','open','closed','','nathalie-12','','','2025-09-29 12:26:23','2025-09-29 12:26:23','',83,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-12.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (85,1,'2025-09-29 12:28:39','2025-09-29 12:28:39','','Bouquet final','','publish','closed','closed','','bouquet-final','','','2025-09-29 12:28:39','2025-09-29 12:28:39','',0,'http://mota-photo.local/?post_type=photo&#038;p=85',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2025-09-29 12:28:19','2025-09-29 12:28:19','','nathalie-13','','inherit','open','closed','','nathalie-13','','','2025-09-29 12:28:35','2025-09-29 12:28:35','',85,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-13.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2025-09-29 12:30:51','2025-09-29 12:30:51','','Du soir au matin','','publish','closed','closed','','du-soir-au-matin','','','2025-09-29 12:30:51','2025-09-29 12:30:51','',0,'http://mota-photo.local/?post_type=photo&#038;p=87',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2025-09-29 12:30:05','2025-09-29 12:30:05','','nathalie-14','','inherit','open','closed','','nathalie-14','','','2025-09-29 12:30:46','2025-09-29 12:30:46','',87,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-14.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2025-09-29 12:32:36','2025-09-29 12:32:36','','Team mariée','','publish','closed','closed','','team-mariee','','','2025-09-29 12:32:36','2025-09-29 12:32:36','',0,'http://mota-photo.local/?post_type=photo&#038;p=89',0,'photo','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2025-09-29 12:31:56','2025-09-29 12:31:56','','nathalie-15','','inherit','open','closed','','nathalie-15','','','2025-09-29 12:32:32','2025-09-29 12:32:32','',89,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-15.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2025-09-30 14:01:35','2025-09-30 14:01:35','','nathalie-0','','inherit','open','closed','','nathalie-0','','','2025-09-30 14:01:35','2025-09-30 14:01:35','',0,'http://mota-photo.local/wp-content/uploads/2025/09/nathalie-0-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,1,'2025-10-07 08:31:20','2025-10-07 08:31:20','','hero photo','','publish','closed','closed','','hero-photo','','','2025-10-07 08:32:46','2025-10-07 08:32:46','',0,'http://mota-photo.local/?post_type=smart-custom-fields&#038;p=95',0,'smart-custom-fields','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (34,5,0);
INSERT INTO `wp_term_relationships` VALUES (35,5,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (37,6,0);
INSERT INTO `wp_term_relationships` VALUES (38,6,0);
INSERT INTO `wp_term_relationships` VALUES (39,6,0);
INSERT INTO `wp_term_relationships` VALUES (51,7,0);
INSERT INTO `wp_term_relationships` VALUES (51,8,0);
INSERT INTO `wp_term_relationships` VALUES (58,7,0);
INSERT INTO `wp_term_relationships` VALUES (58,8,0);
INSERT INTO `wp_term_relationships` VALUES (59,7,0);
INSERT INTO `wp_term_relationships` VALUES (59,8,0);
INSERT INTO `wp_term_relationships` VALUES (61,7,0);
INSERT INTO `wp_term_relationships` VALUES (61,10,0);
INSERT INTO `wp_term_relationships` VALUES (64,12,0);
INSERT INTO `wp_term_relationships` VALUES (64,13,0);
INSERT INTO `wp_term_relationships` VALUES (66,12,0);
INSERT INTO `wp_term_relationships` VALUES (66,13,0);
INSERT INTO `wp_term_relationships` VALUES (69,12,0);
INSERT INTO `wp_term_relationships` VALUES (69,13,0);
INSERT INTO `wp_term_relationships` VALUES (71,7,0);
INSERT INTO `wp_term_relationships` VALUES (71,13,0);
INSERT INTO `wp_term_relationships` VALUES (73,7,0);
INSERT INTO `wp_term_relationships` VALUES (73,13,0);
INSERT INTO `wp_term_relationships` VALUES (75,10,0);
INSERT INTO `wp_term_relationships` VALUES (75,12,0);
INSERT INTO `wp_term_relationships` VALUES (77,7,0);
INSERT INTO `wp_term_relationships` VALUES (77,13,0);
INSERT INTO `wp_term_relationships` VALUES (79,7,0);
INSERT INTO `wp_term_relationships` VALUES (79,14,0);
INSERT INTO `wp_term_relationships` VALUES (81,7,0);
INSERT INTO `wp_term_relationships` VALUES (81,10,0);
INSERT INTO `wp_term_relationships` VALUES (83,7,0);
INSERT INTO `wp_term_relationships` VALUES (83,10,0);
INSERT INTO `wp_term_relationships` VALUES (85,12,0);
INSERT INTO `wp_term_relationships` VALUES (85,13,0);
INSERT INTO `wp_term_relationships` VALUES (87,12,0);
INSERT INTO `wp_term_relationships` VALUES (87,13,0);
INSERT INTO `wp_term_relationships` VALUES (89,12,0);
INSERT INTO `wp_term_relationships` VALUES (89,13,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'format','',0,10);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'categorie','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'categorie','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'format','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'categorie','',0,9);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'categorie','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (5,'Menu principal','menu-principal',0);
INSERT INTO `wp_terms` VALUES (6,'footer menu','footer-menu',0);
INSERT INTO `wp_terms` VALUES (7,'paysage','paysage',0);
INSERT INTO `wp_terms` VALUES (8,'réception','reception',0);
INSERT INTO `wp_terms` VALUES (10,'Concert','concert',0);
INSERT INTO `wp_terms` VALUES (12,'portrait','portrait',0);
INSERT INTO `wp_terms` VALUES (13,'Mariage','mariage',0);
INSERT INTO `wp_terms` VALUES (14,'Télévision','television',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"26c36b7d5a6f3c4ecd1e77966f7004904a3f4fe5adf785685dae4dab39b6b0e9\";a:4:{s:10:\"expiration\";i:1760532467;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\";s:5:\"login\";i:1760359667;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','96');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"editorMode\";s:6:\"visual\";s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:21:\"taxonomy-panel-format\";i:2;s:25:\"taxonomy-panel-catégorie\";i:3;s:24:\"taxonomy-panel-categorie\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-09-29T08:34:55.749Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','5');
INSERT INTO `wp_usermeta` VALUES (22,1,'wpforms_overview_table_columns','a:6:{i:1;s:4:\"name\";i:2;s:4:\"tags\";i:3;s:6:\"author\";i:4;s:9:\"shortcode\";i:5;s:7:\"created\";i:6;s:9:\"locations\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1759132171');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_smart-custom-fields','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_smart-custom-fields','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_smart-custom-fields','a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:188:\"submitdiv,pageparentdiv,smart-cf-meta-box-condition-profile,smart-cf-meta-box-condition-post,smart-cf-meta-box-condition-taxonomy,smart-cf-meta-box,smart-cf-meta-box-condition-options-page\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'screen_layout_smart-custom-fields','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$wp$2y$10$oEpnXHZhSbmbbo6LxNcEQOdjvG2Y3/YrVVMywxQ3zS8fPg8xAFKna','admin','dev-email@wpengine.local','http://mota-photo.local','2025-09-10 11:42:37','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_logs`
--

DROP TABLE IF EXISTS `wp_wpforms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpforms_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint DEFAULT NULL,
  `entry_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_logs`
--

LOCK TABLES `wp_wpforms_logs` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_payment_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payment_meta`
--

LOCK TABLES `wp_wpforms_payment_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payment_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_payments`
--

DROP TABLE IF EXISTS `wp_wpforms_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpforms_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `form_id` bigint NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `discount_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `entry_id` bigint NOT NULL DEFAULT '0',
  `gateway` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mode` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_payments`
--

LOCK TABLES `wp_wpforms_payments` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforms_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_forms_locator_scan','W10=','2025-09-24 08:06:27');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (2,'wpforms_process_purge_spam','W10=','2025-09-24 08:06:27');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (3,'wpforms_admin_addons_cache_update','W10=','2025-09-24 08:06:27');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (4,'wpforms_builder_help_cache_update','W10=','2025-09-24 08:06:27');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (5,'wpforms_admin_builder_templates_cache_update','W10=','2025-09-24 08:06:27');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 17:55:32
