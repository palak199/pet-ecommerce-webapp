-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2020 at 06:52 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.19.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c4udb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileinfo`
--

CREATE TABLE `accounts_userprofileinfo` (
  `id` int(11) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_userprofileinfo`
--

INSERT INTO `accounts_userprofileinfo` (`id`, `profile_pic`, `user_id`) VALUES
(1, '', 2),
(2, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add detail', 9, 'add_detail'),
(34, 'Can change detail', 9, 'change_detail'),
(35, 'Can delete detail', 9, 'delete_detail'),
(36, 'Can view detail', 9, 'view_detail'),
(37, 'Can add question', 10, 'add_question'),
(38, 'Can change question', 10, 'change_question'),
(39, 'Can delete question', 10, 'delete_question'),
(40, 'Can view question', 10, 'view_question'),
(41, 'Can add choice', 11, 'add_choice'),
(42, 'Can change choice', 11, 'change_choice'),
(43, 'Can delete choice', 11, 'delete_choice'),
(44, 'Can view choice', 11, 'view_choice'),
(45, 'Can add user profile info', 12, 'add_userprofileinfo'),
(46, 'Can change user profile info', 12, 'change_userprofileinfo'),
(47, 'Can delete user profile info', 12, 'delete_userprofileinfo'),
(48, 'Can view user profile info', 12, 'view_userprofileinfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$yEffhLvIZCGO$kaIUcyheeC8dVBJ4qiAbmnHvwzo0nVbssdXeRSMo/Jg=', '2020-01-21 08:21:34.090704', 1, 'don', '', '', 'c4u@gmail.com', 1, 1, '2020-01-16 13:37:34.597170'),
(2, 'pbkdf2_sha256$150000$lhCDN2AYhyc5$7osFuvw9HHio46SRUtNYDb116+E+cplJO7421g5Xo5Q=', NULL, 0, 'upinder', '', '', '', 0, 1, '2020-01-20 18:33:46.045131'),
(3, 'pbkdf2_sha256$150000$7OEUdqlEBdJI$rcBVQob9nCdJOpk/gSKdYxJ8pRjhwW6m98avDRQRXx4=', NULL, 0, 'admin', '', '', '', 0, 1, '2020-01-21 08:36:15.578452');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-16 13:45:01.588075', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-01-16 13:45:46.400298', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-01-16 13:52:57.919849', '3', 'medicines', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-01-16 13:53:35.735711', '4', 'food', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-01-16 14:02:24.422929', '1', 'mug', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-01-16 14:05:34.079904', '2', 'bow', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-01-16 14:06:41.437836', '3', 'hat', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-01-16 14:08:10.499847', '4', 'top', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-01-16 14:09:06.999564', '5', 'dress', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-01-16 17:44:46.582656', '1', 'Question object (1)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2020-01-16 17:45:07.052237', '1', 'Question object (1)', 3, '', 10, 1),
(12, '2020-01-16 17:45:28.623372', '2', 'Question object (2)', 1, '[{\"added\": {}}]', 10, 1),
(13, '2020-01-16 17:45:48.388760', '1', 'Choice object (1)', 1, '[{\"added\": {}}]', 11, 1),
(14, '2020-01-16 17:46:10.484975', '2', 'Choice object (2)', 1, '[{\"added\": {}}]', 11, 1),
(15, '2020-01-17 06:44:50.174762', '5', 'dress', 2, '[]', 9, 1),
(16, '2020-01-17 06:45:22.125455', '3', 'hat', 2, '[{\"changed\": {\"fields\": [\"features\"]}}]', 9, 1),
(17, '2020-01-18 13:00:46.813938', '5', 'dress', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 9, 1),
(18, '2020-01-18 13:00:51.114348', '5', 'dress', 2, '[]', 9, 1),
(19, '2020-01-18 13:00:59.060157', '4', 'top', 2, '[{\"changed\": {\"fields\": [\"category\"]}}]', 9, 1),
(20, '2020-01-18 13:01:09.757660', '3', 'hat', 2, '[{\"changed\": {\"fields\": [\"category\", \"features\"]}}]', 9, 1),
(21, '2020-01-18 18:13:14.228354', 'accesories', 'accesories', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 7, 1),
(22, '2020-01-18 18:13:24.749658', 'clothes', 'clothes', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 7, 1),
(23, '2020-01-18 18:13:31.399541', 'food', 'food', 2, '[]', 7, 1),
(24, '2020-01-18 18:13:36.201954', 'medicines', 'medicines', 2, '[]', 7, 1),
(25, '2020-01-18 18:13:40.672330', 'clothes', 'clothes', 2, '[]', 7, 1),
(26, '2020-01-19 03:06:05.695458', 'medicines', 'medicines', 2, '[]', 7, 1),
(27, '2020-01-19 03:06:12.079130', 'food', 'food', 2, '[]', 7, 1),
(28, '2020-01-19 03:08:00.587499', 'clothes', 'clothes', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(29, '2020-01-19 03:08:06.658473', 'clothes', 'clothes', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(7, 'sale', 'category'),
(8, 'sale', 'customer'),
(9, 'sale', 'detail'),
(10, 'saloni', 'question'),
(11, 'saloni', 'choice'),
(12, 'accounts', 'userprofileinfo');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-16 13:31:57.633703'),
(2, 'auth', '0001_initial', '2020-01-16 13:32:00.086602'),
(3, 'admin', '0001_initial', '2020-01-16 13:33:09.221482'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-16 13:33:11.246433'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-16 13:33:11.301889'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-16 13:33:12.551936'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-16 13:33:12.720809'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-16 13:33:12.890176'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-16 13:33:12.962387'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-16 13:33:13.669026'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-16 13:33:13.714844'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-16 13:33:13.775128'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-16 13:33:13.915128'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-16 13:33:14.072138'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-16 13:33:14.217255'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-16 13:33:14.278036'),
(17, 'sale', '0001_initial', '2020-01-16 13:34:22.381865'),
(18, 'sessions', '0001_initial', '2020-01-16 13:34:22.778772'),
(19, 'sale', '0002_auto_20200116_1350', '2020-01-16 13:50:17.242645'),
(20, 'saloni', '0001_initial', '2020-01-16 17:40:19.137113'),
(21, 'sale', '0003_auto_20200118_1117', '2020-01-18 11:17:21.086241'),
(22, 'accounts', '0001_initial', '2020-01-20 18:05:10.047075');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0evlsawo79xkjdb3im7053po4dr9pwpm', 'MTBjNDkxZjc0MTI0NjkzNmQ1YjA5ZTY4NTkxMTkwY2UxNmFmMGNhODp7fQ==', '2020-02-04 08:21:34.051939'),
('atzhcxka5wi98uo2p5j2t1mkwxy7r7wz', 'MTBjNDkxZjc0MTI0NjkzNmQ1YjA5ZTY4NTkxMTkwY2UxNmFmMGNhODp7fQ==', '2020-02-04 08:14:20.306642'),
('ildyw974wzw6dbrlp4sig7q0zlucnkdl', 'MTBjNDkxZjc0MTI0NjkzNmQ1YjA5ZTY4NTkxMTkwY2UxNmFmMGNhODp7fQ==', '2020-02-04 04:11:03.606610'),
('vxhz8qp8kflrnelusl9qjwessis0gu1a', 'MTBjNDkxZjc0MTI0NjkzNmQ1YjA5ZTY4NTkxMTkwY2UxNmFmMGNhODp7fQ==', '2020-02-04 07:58:27.086588');

-- --------------------------------------------------------

--
-- Table structure for table `sale_category`
--

CREATE TABLE `sale_category` (
  `category_name` varchar(50) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_category`
--

INSERT INTO `sale_category` (`category_name`, `img`, `slug`) VALUES
('accesories', 'sale/categry-back.jpg', 'accesories'),
('clothes', 'sale/cloth-2.webp', 'clothes'),
('food', 'sale/food.jpeg', 'food'),
('medicines', 'sale/SickCat.jpg', 'medicines');

-- --------------------------------------------------------

--
-- Table structure for table `sale_customer`
--

CREATE TABLE `sale_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sr_no` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `availability` varchar(25) DEFAULT NULL,
  `features` longtext,
  `img` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `name`, `sr_no`, `price`, `availability`, `features`, `img`, `category_id`, `slug`) VALUES
(1, 'mug', 1, '500.00', 'yes', 'glazed porcelain\r\n150 ml-250ml milk', 'sale/cat-mug.jpg', 1, 'mug'),
(2, 'bow', 1, '100.00', 'yes', 'available in all colors\r\nsoft', 'sale/cat-bow.webp', 2, 'bow'),
(3, 'hat', 1, '250.00', 'no', 'cute\r\nsoft', 'sale/cat-hat.jpg', NULL, 'hat'),
(4, 'top', 1, '1000.00', 'yes', 'branded\r\nvarious colors availables\r\nexclusive\r\nlimited', 'sale/cat-top.jpg', NULL, 'top'),
(5, 'dress', 1, '1500.00', 'limited', 'unique', 'sale/cloth1_DfLe9D2.jpg', NULL, 'dress');

-- --------------------------------------------------------

--
-- Table structure for table `saloni_choice`
--

CREATE TABLE `saloni_choice` (
  `id` int(11) NOT NULL,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloni_choice`
--

INSERT INTO `saloni_choice` (`id`, `choice_text`, `votes`, `question_id`) VALUES
(1, 'yes', 6, 2),
(2, 'very much', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `saloni_question`
--

CREATE TABLE `saloni_question` (
  `id` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloni_question`
--

INSERT INTO `saloni_question` (`id`, `question_text`, `pub_date`) VALUES
(2, 'do you like it', '2020-01-16 17:45:24.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_userprofileinfo`
--
ALTER TABLE `accounts_userprofileinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`);

--
-- Indexes for table `sale_category`
--
ALTER TABLE `sale_category`
  ADD PRIMARY KEY (`category_name`),
  ADD UNIQUE KEY `sale_category_category_name_fa718011_uniq` (`category_name`),
  ADD KEY `sale_category_slug_2e03bd5e` (`slug`);

--
-- Indexes for table `sale_customer`
--
ALTER TABLE `sale_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_customer_slug_4b2443d7` (`slug`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_detail_slug_52814d5c` (`slug`);

--
-- Indexes for table `saloni_choice`
--
ALTER TABLE `saloni_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saloni_choice_question_id_ec721c23_fk_saloni_question_id` (`question_id`);

--
-- Indexes for table `saloni_question`
--
ALTER TABLE `saloni_question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_userprofileinfo`
--
ALTER TABLE `accounts_userprofileinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `sale_customer`
--
ALTER TABLE `sale_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `saloni_choice`
--
ALTER TABLE `saloni_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `saloni_question`
--
ALTER TABLE `saloni_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofileinfo`
--
ALTER TABLE `accounts_userprofileinfo`
  ADD CONSTRAINT `accounts_userprofileinfo_user_id_2585e82c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `saloni_choice`
--
ALTER TABLE `saloni_choice`
  ADD CONSTRAINT `saloni_choice_question_id_ec721c23_fk_saloni_question_id` FOREIGN KEY (`question_id`) REFERENCES `saloni_question` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
