-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2019 at 12:42 AM
-- Server version: 10.1.38-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeroafmn_discoverpalawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_config`
--

CREATE TABLE `app_config` (
  `id` int(11) NOT NULL,
  `_key` varchar(100) DEFAULT NULL,
  `value` text,
  `_type` varchar(30) DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `_version` varchar(30) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_config`
--

INSERT INTO `app_config` (`id`, `_key`, `value`, `_type`, `is_verified`, `user_id`, `_version`, `updated_at`, `created_at`) VALUES
(62, 'NBR_OFFERS_MONTHLY', '-1', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'DEFAULT_USER_GRPAC', '0', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'DEFAULT_USER_MOBILE_GRPAC', '0', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'USER_SETTINGS_PACKAGE', '', 'string', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'PUSH_CAMPAIGN_AUTO', '1', 'boolean', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'NBR_CAMPAIGNS_MONTHLY', '-1', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'NBR_EVENTS_MONTHLY', '-1', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'NBR_STORES', '-1', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'NBR_GALLERY_PER_STORE', '30', 'int', 1, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'DASHBOARD_ANALYTICS', 'UA-XXXXXXX-X', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'NO_OF_ITEMS_PER_PAGE_HOME', '5', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'FCM_KEY', '***FIREBASE SERVER KEY HERE***', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'MAPS_API_KEY', '***GOOGLE MAPS KEY HERE***', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'NO_OF_ITEMS_PER_PAGE', '10', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'NO_OF_STORE_ITEMS_PER_PAGE', '20', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'DEFAULT_LANG', 'en', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'MAP_DEFAULT_LATITUDE', '46.152424377523', 'float', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'MAP_DEFAULT_LONGITUDE', '46.152424377523', 'float', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'TIME_ZONE', 'Asia/Manila', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'LIMIT_NBR_STORES', '10', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'LIMIT_NBR_EVENTS_MONTHLY', '10', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'LIMIT_NBR_COMPAIGN_MONTHLY', '10', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'LIMIT_NBR_OFFERS_MONTHLY', '10', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'PUSH_COMPAIGN_AUTO', '0', 'N/A', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'ENABLE_STORE_AUTO', '0', 'N/A', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'ENABLE_OFFER_AUTO', '0', 'N/A', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'ENABLE_EVENT_AUTO', '0', 'N/A', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'DEFAULT_CURRENCY', 'MAD', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'RADUIS_TRAGET', '100', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'LIMIT_PUSHED_GUESTS_PER_CAMPAIGN', '600', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'PUSH_CAMPAIGNS_WITH_CRON', '0', 'N/A', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'NBR_PUSHS_FOR_EVERY_TIME', '10', 'int', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'APP_NAME', 'NEARBY STORES', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'APP_LOGO', '{\"151233148926118\":\"151233148926118\"}', 'json', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'DEFAULT_EMAIL', 'bboyjong6989@gmail.com', 'string', 0, NULL, '1.7.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `id_block` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blocked_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `received` int(11) NOT NULL DEFAULT '0',
  `estimation` int(11) NOT NULL DEFAULT '0',
  `int_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(60) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id_city` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `comment` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `symbol` varchar(30) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id_discussion` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL DEFAULT '0',
  `receiver_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  `lat` double NOT NULL DEFAULT '0',
  `lng` double NOT NULL DEFAULT '0',
  `date_b` datetime DEFAULT NULL,
  `date_e` datetime DEFAULT NULL,
  `description` text,
  `autres` int(11) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `website` varchar(60) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `featured` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `verified` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `int_id` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `_order` int(11) DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `permissions` text,
  `editable` int(11) NOT NULL DEFAULT '1',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`id`, `name`, `permissions`, `editable`, `updated_at`, `created_at`) VALUES
(1, 'SuperAdmin', '{\"payment\":{\"config_payment\":1,\"display_transactions\":1,\"manage_taxes\":1},\"store\":{\"add\":1,\"edit\":1,\"delete\":1,\"validate_stores\":1},\"campaign\":{\"push_campaigns\":1,\"edit\":1,\"delete\":1},\"event\":{\"add\":1,\"edit\":1,\"delete\":1,\"validate_events\":1},\"category\":{\"add\":1,\"edit\":1,\"delete\":1},\"messenger\":{\"send_and_receive\":1,\"manage_messages\":1},\"user\":{\"add\":1,\"edit\":1,\"delete\":1,\"user_setting\":1,\"accessible_dashboard\":1,\"manage_group_access\":1,\"user_admin\":1},\"gallery\":{\"manage_gallery\":1},\"pack\":{\"add\":1,\"edit\":1,\"delete\":1},\"offer\":{\"add\":1,\"edit\":1,\"delete\":1,\"validate_offers\":1},\"setting\":{\"change_app_setting\":1,\"manage_currencies\":1}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'MobileUser', '{\"payment\":{\"config_payment\":0,\"display_transactions\":0,\"manage_taxes\":0},\"store\":{\"add\":0,\"edit\":0,\"delete\":0,\"validate_stores\":0},\"campaign\":{\"push_campaigns\":0,\"edit\":0,\"delete\":0},\"event\":{\"add\":0,\"edit\":0,\"delete\":0,\"validate_events\":0},\"category\":{\"add\":0,\"edit\":0,\"delete\":0},\"messenger\":{\"send_and_receive\":0,\"manage_messages\":0},\"user\":{\"add\":0,\"edit\":0,\"delete\":0,\"user_setting\":0,\"accessible_dashboard\":0,\"manage_group_access\":0,\"user_admin\":0},\"gallery\":{\"manage_gallery\":0},\"pack\":{\"add\":0,\"edit\":0,\"delete\":0},\"offer\":{\"add\":0,\"edit\":0,\"delete\":0,\"validate_offers\":0}}', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'BusinessOwner', '{\"payment\":{\"config_payment\":0,\"display_transactions\":0,\"manage_taxes\":0},\"store\":{\"add\":1,\"edit\":1,\"delete\":1,\"validate_stores\":0},\"campaign\":{\"push_campaigns\":1,\"edit\":1,\"delete\":0},\"event\":{\"add\":1,\"edit\":1,\"delete\":1,\"validate_events\":0},\"category\":{\"add\":0,\"edit\":0,\"delete\":0},\"messenger\":{\"send_and_receive\":1,\"manage_messages\":1},\"user\":{\"add\":0,\"edit\":0,\"delete\":0,\"user_setting\":0,\"accessible_dashboard\":1,\"manage_group_access\":0,\"user_admin\":0},\"gallery\":{\"manage_gallery\":1},\"pack\":{\"add\":1,\"edit\":1,\"delete\":1},\"offer\":{\"add\":1,\"edit\":1,\"delete\":1,\"validate_offers\":0},\"setting\":{\"change_app_setting\":0,\"manage_currencies\":0}}', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(200) NOT NULL,
  `fcm_id` text,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `last_activity` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_message` bigint(21) NOT NULL,
  `sender_id` int(11) NOT NULL DEFAULT '0',
  `receiver_id` int(11) NOT NULL DEFAULT '0',
  `discussion_id` varchar(100) NOT NULL DEFAULT '0',
  `content` text,
  `status` int(11) NOT NULL DEFAULT '-1',
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_name` varchar(60) NOT NULL,
  `version_code` int(11) NOT NULL,
  `version_name` varchar(60) NOT NULL,
  `_enabled` int(11) NOT NULL,
  `_order` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_name`, `version_code`, `version_name`, `_enabled`, `_order`, `updated_at`, `created_at`) VALUES
('campaign', 1, '1.0.1 Beta', 1, 7, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('category', 1, '1.0.1 Beta', 1, 11, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('cms', 1, '1.0.1 Beta', 1, 8, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('event', 2, '1.0.1 Beta', 1, 4, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('gallery', 1, '1.0.1 Beta', 1, 9, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('messenger', 1, '1.0.1 Beta', 1, 6, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('modules_manager', 1, '1.0.1 Beta', 1, 1, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('offer', 3, '1.0.1 Beta', 1, 3, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('setting', 1, '1.0.1 Beta', 1, 20, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('store', 2, '1.0.1 Beta', 1, 2, '2019-04-14 00:00:00', '2019-04-14 00:00:00'),
('user', 1, '1.0.1 Beta', 1, 5, '2019-04-14 00:00:00', '2019-04-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `module_actions`
--

CREATE TABLE `module_actions` (
  `id` int(11) NOT NULL,
  `module` varchar(100) DEFAULT NULL,
  `actions` text,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_actions`
--

INSERT INTO `module_actions` (`id`, `module`, `actions`, `updated_at`, `created_at`) VALUES
(1, 'offer', '[\"add\",\"edit\",\"delete\",\"validate_offers\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'user', '[\"add\",\"edit\",\"delete\",\"user_setting\",\"accessible_dashboard\",\"manage_group_access\",\"user_admin\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'campaign', '[\"push_campaigns\",\"edit\",\"delete\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'category', '[\"add\",\"edit\",\"delete\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'event', '[\"add\",\"edit\",\"delete\",\"validate_events\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'store', '[\"add\",\"edit\",\"delete\",\"recentlyAdded\",\"validate_stores\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'messenger', '[\"send_and_receive\",\"manage_messages\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'gallery', '[\"manage_gallery\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'setting', '[\"change_app_setting\",\"manage_currencies\"]', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id_offer` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `content` text,
  `image` varchar(60) DEFAULT NULL,
  `images` text,
  `description` text,
  `value_type` varchar(10) DEFAULT 'percent',
  `offer_value` double DEFAULT '0',
  `currency` varchar(30) DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_created` date DEFAULT NULL,
  `featured` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `verified` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pending_campaigns`
--

CREATE TABLE `pending_campaigns` (
  `id` bigint(20) NOT NULL,
  `fcm` varchar(200) DEFAULT NULL,
  `sender_id` varchar(100) NOT NULL DEFAULT '0',
  `campaign_id` int(11) NOT NULL DEFAULT '0',
  `logs` varchar(50) DEFAULT NULL,
  `failed` int(11) NOT NULL DEFAULT '0',
  `guest_id` int(11) NOT NULL DEFAULT '0',
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id_rate` int(11) NOT NULL,
  `mac_user` varchar(50) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `guest_id` int(11) NOT NULL DEFAULT '0',
  `rate` float DEFAULT NULL,
  `review` text,
  `pseudo` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saves`
--

CREATE TABLE `saves` (
  `user_id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `ids` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `token` varchar(60) NOT NULL,
  `mac_address` varchar(30) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id_store` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(200) DEFAULT 'N/A',
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  `category_id` int(45) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `images` text,
  `detail` text,
  `telephone` varchar(60) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `customers` text,
  `user_id` int(11) NOT NULL,
  `date_created` date DEFAULT NULL,
  `featured` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `verified` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` varchar(120) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(60) NOT NULL DEFAULT '0',
  `account` varchar(30) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `content` text,
  `created_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `confirmed` int(11) NOT NULL DEFAULT '0',
  `dateLogin` datetime DEFAULT NULL,
  `typeAuth` varchar(50) DEFAULT NULL,
  `manager` int(11) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `guest_id` int(11) NOT NULL DEFAULT '0',
  `grp_access_id` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `username`, `password`, `email`, `telephone`, `images`, `status`, `confirmed`, `dateLogin`, `typeAuth`, `manager`, `lat`, `lng`, `country`, `guest_id`, `grp_access_id`, `created_at`, `updated_at`) VALUES
(3, 'Discover Palawan', 'admin', '36f7a0d930f444671a1ea40eb6447cf7b00aa2fb', 'bboyjong6989@gmail.com', NULL, NULL, 1, 1, NULL, 'SuperAdmin', 1, NULL, NULL, NULL, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscribe_setting`
--

CREATE TABLE `user_subscribe_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nbr_gallery_per_store` int(11) DEFAULT '30',
  `nbr_campaigns_monthly` int(11) DEFAULT '-1',
  `user_language` varchar(11) DEFAULT 'en',
  `user_timezone` varchar(11) DEFAULT 'UTC',
  `user_settings_package` text,
  `nbr_offers_monthly` int(11) DEFAULT '-1',
  `timezone` varchar(60) DEFAULT NULL,
  `package` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `nbr_stores` int(11) NOT NULL,
  `nbr_events_monthly` int(11) NOT NULL,
  `nbr_campaign_monthly` int(11) NOT NULL,
  `nbr_offer_monthly` int(11) NOT NULL,
  `push_campaign_auto` int(11) NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT '0',
  `will_expired` datetime DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_subscribe_setting`
--

INSERT INTO `user_subscribe_setting` (`id`, `user_id`, `nbr_gallery_per_store`, `nbr_campaigns_monthly`, `user_language`, `user_timezone`, `user_settings_package`, `nbr_offers_monthly`, `timezone`, `package`, `status`, `nbr_stores`, `nbr_events_monthly`, `nbr_campaign_monthly`, `nbr_offer_monthly`, `push_campaign_auto`, `reminded`, `will_expired`, `last_updated`, `updated_at`, `created_at`) VALUES
(3, 3, 30, -1, 'en', 'UTC', '{\"nbr_offers_monthly\":-1,\"push_campaign_auto\":true,\"nbr_campaigns_monthly\":-1,\"nbr_events_monthly\":-1,\"nbr_stores\":-1}', -1, NULL, '{\"user_id\":3,\"nbr_offers_monthly\":-1,\"user_settings_package\":\"\",\"user_timezone\":\"UTC\",\"user_language\":\"en\",\"push_campaign_auto\":true,\"nbr_campaigns_monthly\":-1,\"nbr_events_monthly\":-1,\"nbr_stores\":-1,\"nbr_gallery_per_store\":30}', NULL, -1, -1, 0, 0, 1, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `id_visit` bigint(20) NOT NULL,
  `guest_id` int(11) NOT NULL DEFAULT '0',
  `date_visited` date DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_config`
--
ALTER TABLE `app_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id_block`),
  ADD KEY `user_id` (`user_id`,`blocked_id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `int_id` (`int_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id_city`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id_discussion`),
  ADD KEY `sender_id` (`sender_id`,`receiver_id`),
  ADD KEY `sender_id_2` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `sender_id` (`sender_id`,`receiver_id`,`status`),
  ADD KEY `discussion_id` (`discussion_id`),
  ADD KEY `sender_id_2` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `discussion_id_2` (`discussion_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_name`);

--
-- Indexes for table `module_actions`
--
ALTER TABLE `module_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id_offer`);

--
-- Indexes for table `pending_campaigns`
--
ALTER TABLE `pending_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fcm` (`fcm`,`campaign_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id_rate`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`token`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id_store`,`user_id`),
  ADD KEY `fk_store_user_idx` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `user_subscribe_setting`
--
ALTER TABLE `user_subscribe_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id_visit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_config`
--
ALTER TABLE `app_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `id_block` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id_discussion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_access`
--
ALTER TABLE `group_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` bigint(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_actions`
--
ALTER TABLE `module_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id_offer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_campaigns`
--
ALTER TABLE `pending_campaigns`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id_rate` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id_store` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_subscribe_setting`
--
ALTER TABLE `user_subscribe_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `id_visit` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `fk_store_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
