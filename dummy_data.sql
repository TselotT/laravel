-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(23,4,'name','text','Name',0,1,1,1,1,1,'{}',2),(24,4,'health','number','Health',0,1,1,1,1,1,'{}',3),(25,4,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,5,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(28,5,'name','text','Name',1,1,1,1,1,1,'{}',2),(29,5,'damage','number','Damage',0,1,1,1,1,1,'{}',3),(30,5,'is_range','checkbox','Is Range',0,1,1,1,1,1,'{}',4),(31,5,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(32,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(33,5,'weapon_belongstomany_hero_relationship','relationship','heroes',0,1,1,1,1,1,'{\"foreign_pivot_key\":\"weapon_id\",\"related_pivot_key\":\"hero_id\",\"parent_key\":\"id\",\"model\":\"App\\\\Models\\\\Hero\",\"table\":\"heroes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"hero_weapon\",\"pivot\":\"1\",\"taggable\":\"0\"}',8),(34,4,'hero_belongstomany_weapon_relationship','relationship','weapons',0,1,1,1,1,1,'{\"foreign_pivot_key\":\"hero_id\",\"related_pivot_key\":\"weapon_id\",\"parent_key\":\"id\",\"model\":\"App\\\\Models\\\\Weapon\",\"table\":\"weapons\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"hero_weapon\",\"pivot\":\"1\",\"taggable\":\"on\"}',7),(35,4,'weapon_id','hidden','Weapon Id',0,1,1,1,1,1,'{}',6),(36,5,'hero_id','hidden','Hero Id',0,1,1,1,1,1,'{}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(4,'heroes','heroes','Hero','Heroes',NULL,'App\\Models\\Hero',NULL,'App\\Http\\Controllers\\Voyager\\VoyagerHeroController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-01-17 14:13:38','2023-01-18 04:39:22'),(5,'weapons','weapons','Weapon','Weapons',NULL,'App\\Models\\Weapon',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-01-17 14:14:23','2023-01-17 16:42:24');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'1e44ec10-5c19-4a30-aad3-eb99bab80b9a','database','default','{\"uuid\":\"1e44ec10-5c19-4a30-aad3-eb99bab80b9a\",\"displayName\":\"App\\\\Notifications\\\\HeroCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\HeroCreated\\\":2:{s:4:\\\"hero\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Hero\\\";s:2:\\\"id\\\";i:28;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a14f70e1-5dbd-494d-b0b3-689808426b77\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}','Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code \"250\" but got empty code. in /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php:337\nStack trace:\n#0 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(201): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode()\n#1 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/Smtp/EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand()\n#2 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(258): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand()\n#3 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(218): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doMailFromCommand()\n#4 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend()\n#5 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send()\n#6 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send()\n#7 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage()\n#8 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Notifications/Channels/MailChannel.php(67): Illuminate\\Mail\\Mailer->send()\n#9 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(148): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#10 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(106): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#11 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#12 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(109): Illuminate\\Notifications\\NotificationSender->withLocale()\n#13 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Notifications/ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow()\n#14 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Notifications/SendQueuedNotifications.php(112): Illuminate\\Notifications\\ChannelManager->sendNow()\n#15 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Notifications\\SendQueuedNotifications->handle()\n#16 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#20 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then()\n#28 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#32 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#33 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon()\n#34 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#40 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#41 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#42 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run()\n#43 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#44 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#46 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#47 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#48 /home/chumkin/Documents/proj/laravel-task/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#49 {main}','2023-01-18 12:50:30'),(2,'fff4868e-e699-4f8e-896d-a88980279f2d','database','default','{\"uuid\":\"fff4868e-e699-4f8e-896d-a88980279f2d\",\"displayName\":\"App\\\\Notifications\\\\HeroCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\HeroCreated\\\":2:{s:4:\\\"hero\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Hero\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f0e06546-f7ce-4b8a-9ef2-a6ab7eeed8ed\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}','Illuminate\\Queue\\MaxAttemptsExceededException: App\\Notifications\\HeroCreated has been attempted too many times or run too long. The job may have previously timed out. in /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:746\nStack trace:\n#0 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(505): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(415): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#2 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#3 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#4 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon()\n#5 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#6 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#9 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#10 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#11 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#12 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#13 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run()\n#14 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#15 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#16 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#17 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#18 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#19 /home/chumkin/Documents/proj/laravel-task/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#20 {main}','2023-01-18 12:55:52'),(3,'68ddb9ca-9450-4c7b-b115-f0468a62118d','database','default','{\"uuid\":\"68ddb9ca-9450-4c7b-b115-f0468a62118d\",\"displayName\":\"App\\\\Notifications\\\\HeroCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\HeroCreated\\\":2:{s:4:\\\"hero\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\Hero\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"f34c9a0f-9125-4d15-a5da-731200dbc6ab\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}','Illuminate\\Queue\\MaxAttemptsExceededException: App\\Notifications\\HeroCreated has been attempted too many times or run too long. The job may have previously timed out. in /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:746\nStack trace:\n#0 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(505): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(415): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#2 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#3 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#4 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon()\n#5 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#6 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#9 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#10 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#11 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#12 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#13 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Command.php(152): Symfony\\Component\\Console\\Command\\Command->run()\n#14 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#15 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#16 /home/chumkin/Documents/proj/laravel-task/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#17 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#18 /home/chumkin/Documents/proj/laravel-task/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#19 /home/chumkin/Documents/proj/laravel-task/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#20 {main}','2023-01-18 12:56:34');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_weapon`
--

DROP TABLE IF EXISTS `hero_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero_weapon` (
  `hero_id` int unsigned NOT NULL,
  `weapon_id` int unsigned NOT NULL,
  KEY `hero_weapon_hero_id_index` (`hero_id`),
  KEY `hero_weapon_weapon_id_index` (`weapon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_weapon`
--

LOCK TABLES `hero_weapon` WRITE;
/*!40000 ALTER TABLE `hero_weapon` DISABLE KEYS */;
INSERT INTO `hero_weapon` VALUES (9,1),(8,1),(7,2),(9,2),(6,3),(8,3),(7,4),(9,5),(6,5),(5,5),(6,6),(8,6),(9,7),(5,8),(6,9),(5,10),(7,10),(10,1),(11,1),(12,1),(14,4),(15,2),(16,2),(17,2),(18,2),(19,2),(20,1),(21,3),(21,5),(22,1),(23,3),(24,3),(25,5),(26,5),(27,4),(28,2),(29,1),(30,4),(31,2),(32,1),(33,2),(34,2);
/*!40000 ALTER TABLE `hero_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heroes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weapon_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroes`
--

LOCK TABLES `heroes` WRITE;
/*!40000 ALTER TABLE `heroes` DISABLE KEYS */;
INSERT INTO `heroes` VALUES (5,'Barbarian King',200,'2023-01-17 15:53:16','2023-01-17 15:53:16',NULL),(6,'Archer Queen',200,'2023-01-17 15:53:27','2023-01-17 15:53:27',NULL),(7,'Grand Warden',200,'2023-01-17 15:53:38','2023-01-17 15:53:38',NULL),(8,'Royal Champion',200,'2023-01-17 15:53:00','2023-01-17 16:30:50',NULL),(9,'Battle Machine',200,'2023-01-17 15:54:00','2023-01-17 15:54:00',NULL);
/*!40000 ALTER TABLE `heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2023-01-17 14:05:31','2023-01-17 14:05:31','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,6,'2023-01-17 14:05:31','2023-01-17 15:37:19','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2023-01-17 14:05:31','2023-01-17 14:05:31','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2023-01-17 14:05:31','2023-01-17 14:05:31','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,7,'2023-01-17 14:05:31','2023-01-17 15:37:19',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2023-01-17 14:05:31','2023-01-17 15:37:16','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2023-01-17 14:05:31','2023-01-17 15:37:17','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2023-01-17 14:05:31','2023-01-17 15:37:17','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2023-01-17 14:05:31','2023-01-17 15:37:17','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,8,'2023-01-17 14:05:31','2023-01-17 15:37:19','voyager.settings.index',NULL),(13,1,'Hero','admin/heroes','_self',NULL,'#000000',NULL,4,'2023-01-17 15:36:01','2023-01-17 15:37:16',NULL,''),(14,1,'Weapon','admin/weapons','_self',NULL,'#000000',NULL,5,'2023-01-17 15:37:10','2023-01-17 15:37:18',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2023-01-17 14:05:31','2023-01-17 14:05:31');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (73,'2023_01_16_190904_create_hero_weapons_table',2),(74,'2014_10_12_000000_create_users_table',3),(75,'2014_10_12_100000_create_password_resets_table',3),(76,'2016_01_01_000000_add_voyager_user_fields',3),(77,'2016_01_01_000000_create_data_types_table',3),(78,'2016_05_19_173453_create_menu_table',3),(79,'2016_10_21_190000_create_roles_table',3),(80,'2016_10_21_190000_create_settings_table',3),(81,'2016_11_30_135954_create_permission_table',3),(82,'2016_11_30_141208_create_permission_role_table',3),(83,'2016_12_26_201236_data_types__add__server_side',3),(84,'2017_01_13_000000_add_route_to_menu_items_table',3),(85,'2017_01_14_005015_create_translations_table',3),(86,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',3),(87,'2017_03_06_000000_add_controller_to_data_types_table',3),(88,'2017_04_21_000000_add_order_to_data_rows_table',3),(89,'2017_07_05_210000_add_policyname_to_data_types_table',3),(90,'2017_08_05_000000_add_group_to_settings_table',3),(91,'2017_11_26_013050_add_user_role_relationship',3),(92,'2017_11_26_015000_create_user_roles_table',3),(93,'2018_03_11_000000_add_user_settings',3),(94,'2018_03_14_000000_add_details_to_data_types_table',3),(95,'2018_03_16_000000_make_settings_value_nullable',3),(96,'2019_08_19_000000_create_failed_jobs_table',3),(97,'2019_12_14_000001_create_personal_access_tokens_table',3),(98,'2023_01_18_153442_create_jobs_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(2,'browse_bread',NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(3,'browse_database',NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(4,'browse_media',NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(5,'browse_compass',NULL,'2023-01-17 14:05:31','2023-01-17 14:05:31'),(6,'browse_menus','menus','2023-01-17 14:05:31','2023-01-17 14:05:31'),(7,'read_menus','menus','2023-01-17 14:05:31','2023-01-17 14:05:31'),(8,'edit_menus','menus','2023-01-17 14:05:31','2023-01-17 14:05:31'),(9,'add_menus','menus','2023-01-17 14:05:31','2023-01-17 14:05:31'),(10,'delete_menus','menus','2023-01-17 14:05:31','2023-01-17 14:05:31'),(11,'browse_roles','roles','2023-01-17 14:05:31','2023-01-17 14:05:31'),(12,'read_roles','roles','2023-01-17 14:05:31','2023-01-17 14:05:31'),(13,'edit_roles','roles','2023-01-17 14:05:31','2023-01-17 14:05:31'),(14,'add_roles','roles','2023-01-17 14:05:31','2023-01-17 14:05:31'),(15,'delete_roles','roles','2023-01-17 14:05:31','2023-01-17 14:05:31'),(16,'browse_users','users','2023-01-17 14:05:31','2023-01-17 14:05:31'),(17,'read_users','users','2023-01-17 14:05:31','2023-01-17 14:05:31'),(18,'edit_users','users','2023-01-17 14:05:31','2023-01-17 14:05:31'),(19,'add_users','users','2023-01-17 14:05:31','2023-01-17 14:05:31'),(20,'delete_users','users','2023-01-17 14:05:31','2023-01-17 14:05:31'),(21,'browse_settings','settings','2023-01-17 14:05:31','2023-01-17 14:05:31'),(22,'read_settings','settings','2023-01-17 14:05:31','2023-01-17 14:05:31'),(23,'edit_settings','settings','2023-01-17 14:05:31','2023-01-17 14:05:31'),(24,'add_settings','settings','2023-01-17 14:05:31','2023-01-17 14:05:31'),(25,'delete_settings','settings','2023-01-17 14:05:31','2023-01-17 14:05:31'),(26,'browse_heroes','heroes','2023-01-17 14:13:38','2023-01-17 14:13:38'),(27,'read_heroes','heroes','2023-01-17 14:13:38','2023-01-17 14:13:38'),(28,'edit_heroes','heroes','2023-01-17 14:13:38','2023-01-17 14:13:38'),(29,'add_heroes','heroes','2023-01-17 14:13:38','2023-01-17 14:13:38'),(30,'delete_heroes','heroes','2023-01-17 14:13:38','2023-01-17 14:13:38'),(31,'browse_weapons','weapons','2023-01-17 14:14:23','2023-01-17 14:14:23'),(32,'read_weapons','weapons','2023-01-17 14:14:23','2023-01-17 14:14:23'),(33,'edit_weapons','weapons','2023-01-17 14:14:23','2023-01-17 14:14:23'),(34,'add_weapons','weapons','2023-01-17 14:14:23','2023-01-17 14:14:23'),(35,'delete_weapons','weapons','2023-01-17 14:14:23','2023-01-17 14:14:23');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2023-01-17 14:05:08','2023-01-17 14:05:08'),(2,'user','Normal User','2023-01-17 14:05:31','2023-01-17 14:05:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,1,'admin','admin@test.com','users/default.png',NULL,'$2y$10$CKqyEDU6NrGGO9hG/Pcv..EA/4b2X1.xL2uzUmbcEfw0xY29kgu9K',NULL,NULL,'2023-01-18 12:58:11','2023-01-18 12:58:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damage` int DEFAULT NULL,
  `is_range` tinytext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hero_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,'Eagle Artillery',50,'1','2023-01-17 15:56:00','2023-01-17 16:00:20',NULL),(2,'Bomb Tower',30,'1','2023-01-17 16:32:15','2023-01-17 16:32:15',NULL),(3,'Mortar',40,'0','2023-01-17 16:32:51','2023-01-17 16:32:51',NULL),(4,'Hidden Tesla',70,'1','2023-01-17 16:33:32','2023-01-17 16:33:32',NULL),(5,'Inferno Tower',110,'1','2023-01-17 16:34:52','2023-01-17 16:34:52',NULL),(6,'Wizard Tower',120,'1','2023-01-17 16:35:58','2023-01-17 16:35:58',NULL),(7,'Giga Inferno',150,'1','2023-01-17 16:36:22','2023-01-17 16:36:22',NULL),(8,'Giga Tesla',140,'1','2023-01-17 16:37:12','2023-01-17 16:37:12',NULL),(9,'Archer Tower',60,'0','2023-01-17 16:37:49','2023-01-17 16:37:49',NULL),(10,'Cannon',30,'0','2023-01-17 16:38:00','2023-01-17 18:13:32',NULL);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18 19:10:57
