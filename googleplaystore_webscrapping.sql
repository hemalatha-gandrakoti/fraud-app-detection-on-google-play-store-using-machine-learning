-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 20, 2023 at 08:54 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `googleplaystore_webscrapping`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_details`
--

DROP TABLE IF EXISTS `app_details`;
CREATE TABLE IF NOT EXISTS `app_details` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) NOT NULL,
  `app_apk` varchar(100) NOT NULL,
  `app_image` varchar(100) NOT NULL,
  `app_desc` longtext NOT NULL,
  `app_status` varchar(50) NOT NULL,
  `developer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_id`),
  KEY `app_details_developer_id_70b698ea` (`developer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_details`
--

INSERT INTO `app_details` (`app_id`, `app_name`, `app_apk`, `app_image`, `app_desc`, `app_status`, `developer_id`) VALUES
(6, 'Chicago Bulls', 'appd/apk/bulls.apk', 'app/image/chicagobulls.png', 'This is the official mobile app of the Chicago Bulls. It delivers an unrivaled interactive team experience by providing the most up-to-date scores, schedules, news, and stats.', 'Accepted', 1),
(5, 'PUBG', 'appd/apk/pubg_04FMRJR.apk', 'app/image/pubg_fnoJB0H.png', 'Lots of events for you to explore.Climb to the top in PUBG MOBILE and fire at will. PUBG MOBILE is an original battle royale mobile game and one of the best mobile shooting games.\r\n\r\nPrepare your firearms, respond to the call for battle in PUBG MOBILE, and fire at will.', 'Pending', 1),
(7, 'Pokemon Go', 'appd/apk/pokemongo.apk', 'app/image/pokemongo.png', 'New! Now you can battle other Pokémon GO Trainers online! Try the GO Battle League today!\r\n\r\nJoin Trainers across the globe who are discovering Pokémon as they explore the world around them. Pokémon GO is the global gaming sensation that has been downloaded over 1 billion times and named “Best Mobile Game” by the Game Developers Choice Awards and “Best App of the Year” by TechCrunch.\r\n', 'Accepted', 1),
(8, 'Netflix', 'appd/apk/netflix.apkm', 'app/image/netflix.png', 'Looking for the most talked about TV shows and movies from the around the world? They’re all on Netflix.\r\n\r\nWe’ve got award-winning series, movies, documentaries, and stand-up specials. And with the mobile app, you get Netflix while you travel, commute, or just take a break.', 'Accepted', 1),
(9, 'Mozilla Firefox', 'appd/apk/mozilla.apk', 'app/image/mozilla.png', 'Get the people-first browser that’s backed by a non-profit.\r\n\r\nIt’s a new era in tech. Don’t settle for a browser produced by giant, profit-driven, data-hoarding tech companies. Firefox is the obvious choice for independent, ethical tech that respects your privacy and gives you more ways than ever before to tailor your internet experience exactly the way you want it.', 'Accepted', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add url', 7, 'add_url'),
(26, 'Can change url', 7, 'change_url'),
(27, 'Can delete url', 7, 'delete_url'),
(28, 'Can view url', 7, 'view_url'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add developer', 9, 'add_developer'),
(34, 'Can change developer', 9, 'change_developer'),
(35, 'Can delete developer', 9, 'delete_developer'),
(36, 'Can view developer', 9, 'view_developer'),
(37, 'Can add apps', 10, 'add_apps'),
(38, 'Can change apps', 10, 'change_apps'),
(39, 'Can delete apps', 10, 'delete_apps'),
(40, 'Can view apps', 10, 'view_apps'),
(41, 'Can add dataset', 11, 'add_dataset'),
(42, 'Can change dataset', 11, 'change_dataset'),
(43, 'Can delete dataset', 11, 'delete_dataset'),
(44, 'Can view dataset', 11, 'view_dataset'),
(45, 'Can add graph', 12, 'add_graph'),
(46, 'Can change graph', 12, 'change_graph'),
(47, 'Can delete graph', 12, 'delete_graph'),
(48, 'Can view graph', 12, 'view_graph'),
(49, 'Can add downloaded_app', 13, 'add_downloaded_app'),
(50, 'Can change downloaded_app', 13, 'change_downloaded_app'),
(51, 'Can delete downloaded_app', 13, 'delete_downloaded_app'),
(52, 'Can view downloaded_app', 13, 'view_downloaded_app'),
(53, 'Can add feedback', 14, 'add_feedback'),
(54, 'Can change feedback', 14, 'change_feedback'),
(55, 'Can delete feedback', 14, 'delete_feedback'),
(56, 'Can view feedback', 14, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_set` varchar(100) NOT NULL,
  `Accuracy` double DEFAULT NULL,
  `F1_Score` double DEFAULT NULL,
  `Precision` double DEFAULT NULL,
  `Recall` double DEFAULT NULL,
  `algo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`data_id`, `data_set`, `Accuracy`, `F1_Score`, `Precision`, `Recall`, `algo`) VALUES
(36, 'files/Negative_review_QguxfVz.csv', NULL, NULL, NULL, NULL, NULL),
(35, 'files/Negative_review_CWrFDHJ.csv', NULL, NULL, NULL, NULL, NULL),
(34, 'files/Negative_review_1F3PYNp.csv', NULL, NULL, NULL, NULL, NULL),
(33, 'files/Negative_review_Yd9SSrQ.csv', NULL, NULL, NULL, NULL, NULL),
(32, 'files/Negative_review_ZUoWZmC.csv', NULL, NULL, NULL, NULL, NULL),
(31, 'files/Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(30, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(29, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(28, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(27, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(26, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(25, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(24, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(23, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(22, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(21, 'Negative_review.csv', NULL, NULL, NULL, NULL, NULL),
(37, 'files/Negative_review_2gvscn5.csv', NULL, NULL, NULL, NULL, NULL),
(38, 'files/Negative_review_yBJ299C.csv', NULL, NULL, NULL, NULL, NULL),
(39, 'files/Negative_review_CwiZ493.csv', NULL, NULL, NULL, NULL, NULL),
(40, 'files/Negative_review_zUZpJ6x.csv', NULL, NULL, NULL, NULL, NULL),
(41, 'files/Negative_reviews.csv', NULL, NULL, NULL, NULL, NULL),
(42, 'files/Negative_reviews_5LuTifT.csv', NULL, NULL, NULL, NULL, NULL),
(43, 'files/Negative_reviews_4Y5cusC.csv', NULL, NULL, NULL, NULL, NULL),
(44, 'files/Negative_reviews_NaCXywJ.csv', NULL, NULL, NULL, NULL, NULL),
(45, 'files/Negative_reviews_Ptc3YKu.csv', NULL, NULL, NULL, NULL, NULL),
(46, 'files/Negative_reviews_MCkFPNW.csv', NULL, NULL, NULL, NULL, NULL),
(47, 'files/Negative_reviews_GEXSV9Q.csv', NULL, NULL, NULL, NULL, NULL),
(48, 'files/Negative_reviews_D0xbI2n.csv', NULL, NULL, NULL, NULL, NULL),
(49, 'files/Negative_reviews_bgRaBWf.csv', NULL, NULL, NULL, NULL, NULL),
(50, 'files/Negative_reviews_st8dY1N.csv', NULL, NULL, NULL, NULL, NULL),
(51, 'files/Negative_reviews_9X6RkF4.csv', NULL, NULL, NULL, NULL, NULL),
(52, 'files/Negative_reviews_nRYhzVi.csv', NULL, NULL, NULL, NULL, NULL),
(53, 'files/Negative_reviews_MP1FCWw.csv', NULL, NULL, NULL, NULL, NULL),
(54, 'files/Negative_reviews_znnX0Er.csv', NULL, NULL, NULL, NULL, NULL),
(55, 'files/Negative_reviews_FUoeuTc.csv', NULL, NULL, NULL, NULL, NULL),
(56, 'files/Negative_reviews_NdgLHrC.csv', NULL, NULL, NULL, NULL, NULL),
(57, 'files/Negative_reviews_TgUxXXJ.csv', NULL, NULL, NULL, NULL, NULL),
(58, 'files/Negative_reviews_UJBVJm1.csv', NULL, NULL, NULL, NULL, NULL),
(59, 'files/Negative_reviews_C9Z6GhJ.csv', NULL, NULL, NULL, NULL, NULL),
(60, 'files/Negative_reviews_lEsTvA3.csv', NULL, NULL, NULL, NULL, NULL),
(61, 'files/Negative_reviews_G9j7ksU.csv', NULL, NULL, NULL, NULL, NULL),
(62, 'files/Negative_reviews_e4cXMNw.csv', NULL, NULL, NULL, NULL, NULL),
(63, 'files/Negative_reviews_7P6kLoA.csv', NULL, NULL, NULL, NULL, NULL),
(64, 'files/Negative_reviews_jFNZKDG.csv', NULL, NULL, NULL, NULL, NULL),
(65, 'files/Negative_reviews_nYiwEEq.csv', NULL, NULL, NULL, NULL, NULL),
(66, 'files/Negative_reviews_9LU4jPQ.csv', NULL, NULL, NULL, NULL, NULL),
(67, 'files/Negative_reviews_ATT727p.csv', NULL, NULL, NULL, NULL, NULL),
(68, 'files/Negative_reviews_67e8FEU.csv', 0.7850467289719626, 0.6071827613727054, 0.603448275862069, 0.8861386138613861, 'Logistic Regression'),
(69, 'files/Negative_reviews_jCEDdu9.csv', 0.7850467289719626, 0.6071827613727054, 0.603448275862069, 0.8861386138613861, 'Logistic Regression'),
(70, 'files/Negative_reviews_8WaAkNm.csv', 0.8878504672897196, 0.861038961038961, 0.868921308576481, 0.8542020373514432, 'Decision Tree'),
(71, 'files/Negative_reviews_0kx63sX.csv', 0.7757009345794392, 0.580392156862745, 0.5862068965517242, 0.8823529411764706, 'Navie Bayes'),
(72, 'files/Negative_reviews_T96m7cy.csv', 0.7850467289719626, 0.6071827613727054, 0.603448275862069, 0.8861386138613861, 'Logistic Regression'),
(74, 'files/Negative_reviews_aAuZI9u.csv', 0.7850467289719626, 0.6071827613727054, 0.603448275862069, 0.8861386138613861, 'Logistic Regression');

-- --------------------------------------------------------

--
-- Table structure for table `developer_details`
--

DROP TABLE IF EXISTS `developer_details`;
CREATE TABLE IF NOT EXISTS `developer_details` (
  `developer_id` int(11) NOT NULL AUTO_INCREMENT,
  `developer_fullname` varchar(100) NOT NULL,
  `developer_email` varchar(100) NOT NULL,
  `developer_password` varchar(100) NOT NULL,
  `developer_contact` varchar(15) NOT NULL,
  `developer_image` varchar(100) NOT NULL,
  `developer_status` varchar(50) NOT NULL,
  PRIMARY KEY (`developer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer_details`
--

INSERT INTO `developer_details` (`developer_id`, `developer_fullname`, `developer_email`, `developer_password`, `developer_contact`, `developer_image`, `developer_status`) VALUES
(1, 'Vardhan', 'harshavardhan.hv12@gmail.com', '0000', '9959152523', 'images/developer/267943552_291287712933811_2629578141344788144_n_1.jpg', 'Accepted'),
(2, 'Mark', 'mark@email.com', '0000', '9988998899', 'images/developer/g5.jpg', 'Pending'),
(3, 'JAmes', 'james@email.com', '0000', '8877887788', 'images/developer/error.png', 'Pending'),
(4, 'jhon', 'jhon@email.com', '0000', '4455445544', 'images/developer/g14.jpg', 'Pending'),
(5, 'dev', 'dev@email.com', 'Dev1234', '7898789878', 'images/developer/g16.jpg', 'Pending'),
(6, 'dev', 'dev@email.com', 'Dev1234', '7898789878', 'images/developer/g16_hx3lPyK.jpg', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'url'),
(8, 'userapp', 'user'),
(9, 'developerapp', 'developer'),
(10, 'developerapp', 'apps'),
(11, 'adminapp', 'dataset'),
(12, 'adminapp', 'graph'),
(13, 'userapp', 'downloaded_app'),
(14, 'userapp', 'feedback');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-05 11:24:40.863802'),
(2, 'auth', '0001_initial', '2023-01-05 11:24:42.180998'),
(3, 'admin', '0001_initial', '2023-01-05 11:24:42.505898'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-05 11:24:42.555505'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-05 11:24:42.563353'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-05 11:24:42.682936'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-05 11:24:42.746426'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-05 11:24:42.814035'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-05 11:24:42.814035'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-05 11:24:42.876671'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-05 11:24:42.880944'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-05 11:24:42.888456'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-05 11:24:42.945158'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-05 11:24:43.010164'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-05 11:24:43.079825'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-05 11:24:43.084333'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-05 11:24:43.141504'),
(18, 'sessions', '0001_initial', '2023-01-05 11:24:43.247481'),
(19, 'userapp', '0001_initial', '2023-01-11 07:03:18.863556'),
(20, 'developerapp', '0001_initial', '2023-01-11 11:36:30.089869'),
(21, 'developerapp', '0002_apps', '2023-01-12 06:29:08.958073'),
(22, 'developerapp', '0003_apps_developer', '2023-01-12 06:41:27.537632'),
(23, 'adminapp', '0001_initial', '2023-01-12 11:23:52.422045'),
(24, 'adminapp', '0002_alter_dataset_data_set', '2023-01-12 11:59:49.892766'),
(25, 'adminapp', '0003_alter_dataset_data_set', '2023-01-12 12:05:01.602308'),
(26, 'adminapp', '0004_alter_dataset_data_set', '2023-01-12 12:19:32.156677'),
(27, 'adminapp', '0005_graph', '2023-01-18 11:27:25.295556'),
(28, 'adminapp', '0006_alter_graph_accuracy_alter_graph_f1_score_and_more', '2023-01-18 11:31:15.430901'),
(29, 'adminapp', '0007_delete_graph_dataset_accuracy_dataset_f1_score_and_more', '2023-01-18 11:44:01.988705'),
(30, 'adminapp', '0008_alter_dataset_accuracy_alter_dataset_f1_score_and_more', '2023-01-18 12:06:55.311380'),
(31, 'userapp', '0002_downloaded_app', '2023-01-19 08:35:04.063226'),
(32, 'userapp', '0003_feedback', '2023-01-19 09:38:05.877915');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('w2o1oclyuh9mmryf7evqp8ytzuugq1lo', 'eyJ1c2VyX2lkIjoxLCJkZXZlbG9wZXJfaWQiOjF9:1pIlha:k7KU9ULzNfVoh15ybn-YT4f7tNhQuhgoG-EbHvBZFOs', '2023-02-03 07:20:42.149243'),
('dop22pjcfr1k7qpi9vlq3jzocxg4w895', 'eyJ1c2VyX2lkIjoyLCJkZXZlbG9wZXJfaWQiOjF9:1pImB8:2UgVF2JB3uQf4Xr4RMDYCIHynlWvnBTWFdOpK7jPxhs', '2023-02-03 07:51:14.807248');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE IF NOT EXISTS `downloads` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `downloaded_user_id` int(11) NOT NULL,
  PRIMARY KEY (`download_id`),
  KEY `downloads_app_id_d85ee61a` (`app_id`),
  KEY `downloads_downloaded_user_id_b2e584ae` (`downloaded_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `app_id`, `downloaded_user_id`) VALUES
(1, 8, 1),
(2, 6, 1),
(3, 9, 1),
(4, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `sentiment` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `downloaded_user_id` int(11) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `feedback_app_id_2400651b` (`app_id`),
  KEY `feedback_downloaded_user_id_59e83f90` (`downloaded_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback`, `sentiment`, `rating`, `app_id`, `downloaded_user_id`) VALUES
(1, 'Awesome App to chillax with Friends\r\n', 'Very Positive', 2, 8, 1),
(2, 'Neutral', 'Neutral', 2, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `url_deatils`
--

DROP TABLE IF EXISTS `url_deatils`;
CREATE TABLE IF NOT EXISTS `url_deatils` (
  `url_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` longtext NOT NULL,
  `user_url_id` int(11) NOT NULL,
  PRIMARY KEY (`url_id`),
  KEY `URL_Deatils_user_url_id_4397bdd4` (`user_url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_deatils`
--

INSERT INTO `url_deatils` (`url_id`, `url`, `user_url_id`) VALUES
(1, 'https://play.google.com/store/apps/details?id=com.instagram.android', 1),
(2, 'https://play.google.com/store/apps/details?id=com.instagram.android', 1),
(3, 'https://play.google.com/store/apps/details?id=com.curiositycurve.www.theonestarapp&hl=en_IN&gl=US', 1),
(4, 'https://play.google.com/store/apps/details?id=com.curiositycurve.www.theonestarapp&hl=en_IN&gl=US', 1),
(5, 'https://play.google.com/store/apps/details?id=com.curiositycurve.www.theonestarapp&hl=en_IN&gl=US', 1),
(6, 'https://play.google.com/store/apps/details?id=com.curiositycurve.www.theonestarapp&hl=en_IN&gl=US', 1),
(7, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(8, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(9, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(10, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(11, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(12, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(13, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl', 1),
(14, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat', 1),
(15, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(16, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat', 1),
(17, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(18, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(19, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(20, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(21, 'https://play.google.com/store/apps/details?id=com.quip.quip&hl=en_IN&gl=US', 1),
(22, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(23, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(24, 'count_comments = us_reviews.comments.count()', 1),
(25, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(26, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(27, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(28, 'https://play.google.com/store/apps/details?id=org.mozilla.firefox&hl=en_US&gl=US', 1),
(29, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(30, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(31, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(32, 'https://play.google.com/store/apps/details?id=com.mobileiron.appstation.android', 2),
(33, 'https://play.google.com/store/apps/details?id=com.mobileiron.appstation.android', 2),
(34, 'https://play.google.com/store/apps/details?id=com.mobileiron', 2),
(35, 'https://play.google.com/store/apps/details?id=com.mobileiron.tunnel.android.release', 2),
(36, 'https://play.google.com/store/apps/details?id=com.mobileiron.workplace.android', 2),
(37, 'https://play.google.com/store/apps/details?id=men.hairstyle.haircut', 2),
(38, 'https://play.google.com/store/apps/details?id=height.increase.home.exercise', 2),
(39, 'https://play.google.com/store/apps/details?id=com.popsworldwide.popsapp', 2),
(40, 'https://play.google.com/store/apps/details?id=com.lensa.app', 2),
(41, 'https://play.google.com/store/apps/details?id=com.topgamesinc.dj', 2),
(42, 'https://play.google.com/store/apps/dev?id=6563849290382059195', 2),
(43, 'https://play.google.com/store/apps/details?id=com.chooChoo.charles.horror', 2),
(44, 'https://play.google.com/store/apps/details?id=com.momentum.americantruck', 2),
(45, 'https://play.google.com/store/apps/details?id=com.gguide.genshinimpactguide', 2),
(46, 'https://play.google.com/store/apps/details?id=com.nexon.v4gb', 2),
(47, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.emailplus', 2),
(48, 'https://play.google.com/store/apps/details?id=com.kapwing.www.twa', 1),
(49, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.docsatwork', 1),
(50, 'https://play.google.com/store/apps/details?id=com.ichangemycity.swachhbharat&hl=en', 1),
(51, 'https://play.google.com/store/apps/details?id=com.mobileiron.workplace.android', 1),
(52, 'https://play.google.com/store/apps/details?id=com.mobileiron.tunnel.android.release', 1),
(53, 'https://play.google.com/store/apps/details?id=com.mobileiron.anyware.android', 1),
(54, 'https://play.google.com/store/apps/details?id=com.mobileiron.anyware.android', 1),
(55, 'https://play.google.com/store/apps/details?id=com.mobileiron.efa.distribution.authenticator', 1),
(56, 'https://play.google.com/store/apps/details?id=com.mobileiron', 1),
(57, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.emailplus', 1),
(58, 'https://play.google.com/store/apps/details?id=com.filmrapp.videoeditor', 1),
(59, 'https://play.google.com/store/apps/details?id=com.chooChoo.charles.horror', 1),
(60, 'https://play.google.com/store/apps/details?id=com.mobileiron', 1),
(61, 'https://play.google.com/store/apps/details?id=com.mobileiron.anyware.android', 1),
(62, 'https://play.google.com/store/apps/details?id=com.mobileiron.workplace.android', 1),
(63, 'https://play.google.com/store/apps/details?id=com.mobileiron.client.android.nfcprovisioner', 1),
(64, 'https://play.google.com/store/apps/details?id=com.mobileiron.appstation.android', 1),
(65, 'https://play.google.com/store/apps/details?id=com.mobileiron.efa.distribution.authenticator', 1),
(66, 'de', 1),
(67, 'https://play.google.com/store/apps/details?id=com.mobileiron.android.emailplus', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_username`, `user_email`, `user_password`, `user_contact`, `user_image`) VALUES
(1, 'Harsh ', 'harshavardhan.hv12@gmail.com', '0000', '+919618294480', 'images/user/267111175_658332002189900_7198454065126109970_n_1.jpg'),
(2, 'netra', 'netra@email.com', '0000', '9966889966', 'images/user/g2.jpg'),
(3, 'vishwa', 'vishwa@email.com', '0000', '8855222255', 'images/user/g3.jpg'),
(4, 'admin', 'harshavardhan.hv12@gmail.com', 'Varshab123', '8989898989', 'images/user/login_image.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
