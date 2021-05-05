-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2021 at 03:53 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techpres_deliveries`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add auth group', 7, 'add_authgroup'),
(26, 'Can change auth group', 7, 'change_authgroup'),
(27, 'Can delete auth group', 7, 'delete_authgroup'),
(28, 'Can view auth group', 7, 'view_authgroup'),
(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 9, 'add_authpermission'),
(34, 'Can change auth permission', 9, 'change_authpermission'),
(35, 'Can delete auth permission', 9, 'delete_authpermission'),
(36, 'Can view auth permission', 9, 'view_authpermission'),
(37, 'Can add auth user', 10, 'add_authuser'),
(38, 'Can change auth user', 10, 'change_authuser'),
(39, 'Can delete auth user', 10, 'delete_authuser'),
(40, 'Can view auth user', 10, 'view_authuser'),
(41, 'Can add auth user groups', 11, 'add_authusergroups'),
(42, 'Can change auth user groups', 11, 'change_authusergroups'),
(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(44, 'Can view auth user groups', 11, 'view_authusergroups'),
(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
(49, 'Can add ci sessions', 13, 'add_cisessions'),
(50, 'Can change ci sessions', 13, 'change_cisessions'),
(51, 'Can delete ci sessions', 13, 'delete_cisessions'),
(52, 'Can view ci sessions', 13, 'view_cisessions'),
(53, 'Can add client areas', 14, 'add_clientareas'),
(54, 'Can change client areas', 14, 'change_clientareas'),
(55, 'Can delete client areas', 14, 'delete_clientareas'),
(56, 'Can view client areas', 14, 'view_clientareas'),
(57, 'Can add clients', 15, 'add_clients'),
(58, 'Can change clients', 15, 'change_clients'),
(59, 'Can delete clients', 15, 'delete_clients'),
(60, 'Can view clients', 15, 'view_clients'),
(61, 'Can add deliveries', 16, 'add_deliveries'),
(62, 'Can change deliveries', 16, 'change_deliveries'),
(63, 'Can delete deliveries', 16, 'delete_deliveries'),
(64, 'Can view deliveries', 16, 'view_deliveries'),
(65, 'Can add django admin log', 17, 'add_djangoadminlog'),
(66, 'Can change django admin log', 17, 'change_djangoadminlog'),
(67, 'Can delete django admin log', 17, 'delete_djangoadminlog'),
(68, 'Can view django admin log', 17, 'view_djangoadminlog'),
(69, 'Can add django content type', 18, 'add_djangocontenttype'),
(70, 'Can change django content type', 18, 'change_djangocontenttype'),
(71, 'Can delete django content type', 18, 'delete_djangocontenttype'),
(72, 'Can view django content type', 18, 'view_djangocontenttype'),
(73, 'Can add django migrations', 19, 'add_djangomigrations'),
(74, 'Can change django migrations', 19, 'change_djangomigrations'),
(75, 'Can delete django migrations', 19, 'delete_djangomigrations'),
(76, 'Can view django migrations', 19, 'view_djangomigrations'),
(77, 'Can add django session', 20, 'add_djangosession'),
(78, 'Can change django session', 20, 'change_djangosession'),
(79, 'Can delete django session', 20, 'delete_djangosession'),
(80, 'Can view django session', 20, 'view_djangosession'),
(81, 'Can add file upload', 21, 'add_fileupload'),
(82, 'Can change file upload', 21, 'change_fileupload'),
(83, 'Can delete file upload', 21, 'delete_fileupload'),
(84, 'Can view file upload', 21, 'view_fileupload'),
(85, 'Can add roles', 22, 'add_roles'),
(86, 'Can change roles', 22, 'change_roles'),
(87, 'Can delete roles', 22, 'delete_roles'),
(88, 'Can view roles', 22, 'view_roles'),
(89, 'Can add users', 23, 'add_users'),
(90, 'Can change users', 23, 'change_users'),
(91, 'Can delete users', 23, 'delete_users'),
(92, 'Can view users', 23, 'view_users'),
(93, 'Can add mine', 24, 'add_mine'),
(94, 'Can change mine', 24, 'change_mine'),
(95, 'Can delete mine', 24, 'delete_mine'),
(96, 'Can view mine', 24, 'view_mine');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('08f97650501416d61023570e90932e7d83423192', '196.201.210.75', 1617806193, ''),
('11d3b710a4f613bdf1dd563c360c71a1e6cfe2ad', '41.80.10.101', 1617879982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373837393935393b),
('15474c46dee9925e79e92253f5917532296d7ab3', '196.201.210.75', 1617806013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830363031333b),
('232b10441b7fe7b3053beff33e2e2857dcfc66ef', '196.201.210.75', 1617806200, ''),
('2982e0fe296e869910239131848b72cbb532fcd6', '196.201.210.75', 1617806129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830363132393b),
('2a5768130765946703f4c22eb0f5b935304b0824', '196.201.210.75', 1617805714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830353731343b),
('2bdea09c7211ed886a45906584d0b4a50a26668c', '196.201.210.75', 1617806193, ''),
('2e4531160b7176985fd3329eacc72f26291a8481', '154.77.34.181', 1617809330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830393132333b),
('2ef602970f63d574cf53e30b0b90d54f95ac8513', '196.201.210.75', 1617806188, ''),
('2faad13f4222176948747d46acc13366e8230eea', '196.201.210.75', 1617806200, ''),
('2fac76085cffcfb3da58beffbcc0ae6e45aa671d', '41.80.10.101', 1617879141, ''),
('335d9cdd8c5fda7d61ed991855a373432d137f12', '196.201.210.75', 1617806200, ''),
('39g94ff4b9r15uo5j403i6c0qv6pcc0c', '34.77.162.10', 1618611284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383631313238343b),
('3be811fc4fc426b1810b0d71e23b3bf6217af57f', '196.201.210.75', 1617806193, ''),
('4203a4ccdf6e5705f80f625da4b03aaf7b2e117d', '196.201.210.75', 1617806200, ''),
('45r3d9but402ved0442pq8ogf6lm2lqm', '3.249.238.24', 1618300371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383330303337313b),
('4ec6bbd1a43676b8641a3347ab4346b6f898785d', '196.201.210.75', 1617805961, ''),
('51bb3369d5c14f49ca74b2e790501ac904db35bf', '197.248.50.74', 1617866176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373836363036343b),
('643a507c0e82d1dd010bf8651ffa62c01dad74c1', '197.248.50.74', 1617864057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373836343033393b),
('6a37d48705265b5bd75aa247bd857d6e9a9731a4', '196.201.210.75', 1617806155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830363135353b),
('6c81cda455de8efa51b436fdb2b08be429283061', '196.201.210.75', 1617806188, ''),
('6e36206124b2631a1f287bc4d4401ccd679ae836', '196.201.210.75', 1617805690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830353639303b),
('713e77258a0b7ca0fe7b55a566bb438d1ecb39ff', '196.201.210.75', 1617806193, ''),
('739kjtq5vveqk33hiojaiflk3cnr2hcv', '41.80.6.70', 1618086204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383038363230343b),
('875c9daad85a86515a8df7cb3b2caddaea7d6304', '41.80.72.141', 1617806060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830363035303b696e765f6d6f62696c657c733a31333a222b323534373030363638323237223b696e765f7573657269647c733a313a2231223b696e765f757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2231223b726f6c655f6e616d657c733a31313a2273757065725f61646d696e223b),
('89bfeaa9fa9f105a270d0bed384fa17b7c3a01b0', '196.201.210.75', 1617806205, ''),
('9571d143b7eca05ea32e5d66a5397f81326674f8', '196.201.210.75', 1617806188, ''),
('9abb260cb00c4382597eb36afc044fff9616267c', '196.201.210.75', 1617805961, ''),
('9ae034eea6571dd49d80ed8d5e251f318d0f832d', '196.201.210.75', 1617806188, ''),
('9b6694ae550af24921f55c143e87a8af1a13d16f', '41.90.4.189', 1617870458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373837303435383b),
('9bee877022627760f812199a2e454e51046808e6', '41.80.10.101', 1617879141, ''),
('an262fokanake70032a1hdgksve16g8t', '41.80.97.215', 1618011051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383031313035313b),
('b9d7c56aa264ed7b6e969d4e0c52b931bdc44ca4', '41.80.10.101', 1617879141, ''),
('c0a73c29dad62a7f8e5da1b6846c645d0a0b3346', '196.201.210.75', 1617806193, ''),
('c17f6b964c7e317f3256a83eee7808ad940600b0', '196.201.210.75', 1617806205, ''),
('ca0708ba8251198602c1e8c30a74cc021f090c2a', '196.201.210.75', 1617805961, ''),
('cc3b1359bf3b114043294e730986f065a914ca5e', '196.201.210.75', 1617805961, ''),
('cd31e0a9d6342bcc2ab852dfbc68c99804446bee', '196.201.210.75', 1617806205, ''),
('cd90cfcd26026eda8c40a0d1fb56781d5953a06b', '41.80.10.101', 1617879141, ''),
('d2c3b86022f9dd6a3ef9e6eee80c7c72d699ddbd', '196.201.210.75', 1617806205, ''),
('d2dbc188b337513cb05d0ff99d6cbfb835b64f5a', '196.201.210.75', 1617805961, ''),
('d4q71v9pm6hvdu02ehjm8jsbmuu5crh2', '217.23.3.96', 1618011391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383031313339313b),
('d679f229e9345d9a7d3b14b7e33777d4a636d683', '196.201.210.75', 1617805915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830353931353b),
('da1aa66dcbb070870a72841e4f8feeb626434f13', '196.201.210.75', 1617806200, ''),
('dac787a29ae9d1f9e733fa04536d786a9c98bccf', '196.201.210.75', 1617806205, ''),
('dba80729ff19931e309e273573f474d63a79b1ec', '196.201.210.75', 1617805895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830353839353b),
('de461be486f1776ec81965593cbe5fe09f164c30', '196.201.210.75', 1617806188, ''),
('de5b2eece18f64b65dd19b82dbe92512ffff8adc', '196.201.210.75', 1617805947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830353934373b),
('e4fb5a928c83662eb95fadbc474d0433d58fd227', '197.248.50.74', 1617869166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373836393136363b),
('ea799ef736c885e8b544e7788199cb413f1163fd', '196.201.210.75', 1617806098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373830363039383b),
('ebrj88i35gkoqhefup240e99fqe7as44', '217.23.3.96', 1618013873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383031333837333b),
('f09b671d87b43b196a056af274d101e70e000fbb', '41.80.68.207', 1617878326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373837383234333b696e765f6d6f62696c657c733a31333a222b323534373030363638323237223b696e765f7573657269647c733a313a2231223b696e765f757365726e616d657c733a353a2261646d696e223b6c6f676765645f696e7c623a313b726f6c655f69647c733a313a2231223b726f6c655f6e616d657c733a31313a2273757065725f61646d696e223b),
('f3p6jaoea5f2a2qiqll6fc8umj3rkuv3', '41.80.96.50', 1618048837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383034383833373b),
('f65a480a3504850858974e93011151a47ef2785e', '41.80.10.101', 1617879145, ''),
('t68p7nl3nslo2o5pr0dln7fhrtcp2bti', '34.77.162.21', 1618611595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383631313539353b);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` varchar(50) NOT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_area` varchar(50) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `allocated_bags` int(7) DEFAULT NULL,
  `bag_type` varchar(10) DEFAULT NULL,
  `extra_bags` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_name`, `client_area`, `latitude`, `longitude`, `allocated_bags`, `bag_type`, `extra_bags`, `status`, `created_by`, `updated_by`, `date_created`, `date_deleted`) VALUES
('00f657072d1141cfacbf87dff8664b30', 'paula', '5b21fd24-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
('94ec09181cda48abbfdc9d4397cd9924', 'nate', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
('c78a5a9c-a6be-11eb-bcbc-0242ac130002', 'Accel Apartments (G.G Area)', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6208-a6be-11eb-bcbc-0242ac130002', 'ACK', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6370-a6be-11eb-bcbc-0242ac130002', 'Anne Gitau', '5b21cf48-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a646a-a6be-11eb-bcbc-0242ac130002', 'Anne Terazzo', '5b21d0c4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6550-a6be-11eb-bcbc-0242ac130002', 'Bishop Thomas', '5b21d1a0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6622-a6be-11eb-bcbc-0242ac130002', 'Blessed Apartments', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a66fe-a6be-11eb-bcbc-0242ac130002', 'ANNE (MAMA ANNETTE)', '5b21d588-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a67d0-a6be-11eb-bcbc-0242ac130002', 'ANNE KANITHI', '5b21d646-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6a46-a6be-11eb-bcbc-0242ac130002', 'LINDA GACHERU', '5b21d704-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6b2c-a6be-11eb-bcbc-0242ac130002', 'JAMES MURIGI / WALLACE KANYUIRA/ ANNE AWINJA', '5b21d7c2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6c08-a6be-11eb-bcbc-0242ac130002', 'IRENE KARENDI', '5b21d880-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6cc6-a6be-11eb-bcbc-0242ac130002', 'JANE MUGWE/ PETER KAMAU', '5b21d934-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6d84-a6be-11eb-bcbc-0242ac130002', 'DAVID KAGIRI', '5b21d9f2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6e42-a6be-11eb-bcbc-0242ac130002', 'FRANKS MUIRURI', '5b21dce0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6f00-a6be-11eb-bcbc-0242ac130002', 'SALOME NGARI / PETERSON RUKENYA', '5b21dd9e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a6fb4-a6be-11eb-bcbc-0242ac130002', 'ROSE NDUNDA', '5b21de5c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a71b2-a6be-11eb-bcbc-0242ac130002', 'ELIJAH MUCINA', '5b21df10-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a727a-a6be-11eb-bcbc-0242ac130002', 'MARY MWANGI /ANTONY MWANGI', '5b21dfce-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7338-a6be-11eb-bcbc-0242ac130002', 'MAMA RYAN/JAMES KAMAU', '5b21e082-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7400-a6be-11eb-bcbc-0242ac130002', 'CATHERINE SAWAYA /JOHN MUSA /ANTHONY NJAU', '5b21e136-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a74be-a6be-11eb-bcbc-0242ac130002', 'TIMOTHY SOLOMON', '5b21e49c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a757c-a6be-11eb-bcbc-0242ac130002', 'MARGARET MUENI MWANGI', '5b21e56e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a763a-a6be-11eb-bcbc-0242ac130002', 'PAUL GITUKU', '5b21e622-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7892-a6be-11eb-bcbc-0242ac130002', 'SAMUEL KARUINGI', '5b21e6e0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a795a-a6be-11eb-bcbc-0242ac130002', 'PATRICK MACHARIA', '5b21e794-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7a0e-a6be-11eb-bcbc-0242ac130002', 'Castle', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7ac2-a6be-11eb-bcbc-0242ac130002', 'Centric Court', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7b76-a6be-11eb-bcbc-0242ac130002', 'Charismatic Apartments', '5b21eba4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7c2a-a6be-11eb-bcbc-0242ac130002', 'Columbia Heights', '5b21ec6c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7e00-a6be-11eb-bcbc-0242ac130002', 'Coral Bells', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7ec8-a6be-11eb-bcbc-0242ac130002', 'Crosby Apartments', '5b21edde-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a7f86-a6be-11eb-bcbc-0242ac130002', 'Dainty', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8030-a6be-11eb-bcbc-0242ac130002', 'Danrose', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a80f8-a6be-11eb-bcbc-0242ac130002', 'Digro- Kirigiti', '5b21eba4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', 20, 1, NULL, NULL, NULL, NULL),
('c78a81ac-a6be-11eb-bcbc-0242ac130002', 'LEWIS NGANGA', '5b21effa-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', 0, 1, NULL, NULL, NULL, NULL),
('c78a826a-a6be-11eb-bcbc-0242ac130002', 'ALICE NYAMBURA', '5b21f0b8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a84f4-a6be-11eb-bcbc-0242ac130002', 'MRS. MACHARIA C/O CAROLINE MUMBI MIRIE', '5b21f4aa-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 28, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a85d0-a6be-11eb-bcbc-0242ac130002', 'JOEL GITONGA', '5b21f59a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8684-a6be-11eb-bcbc-0242ac130002', 'DUNCAN GICHOHI NJOROGE', '5b21f658-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8742-a6be-11eb-bcbc-0242ac130002', 'JOYCE KAMAU', '5b21f716-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8800-a6be-11eb-bcbc-0242ac130002', 'JOYCE WANJA', '5b21f7f2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a88c8-a6be-11eb-bcbc-0242ac130002', 'NANCY MWITHI', '5b21f8d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8986-a6be-11eb-bcbc-0242ac130002', 'PATRICK MACHARIA', '5b21f9b4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8a44-a6be-11eb-bcbc-0242ac130002', 'Eagles Nest- Gachie', '5b21fa90-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8c6a-a6be-11eb-bcbc-0242ac130002', 'Ephesians', '5b21ec6c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8d3c-a6be-11eb-bcbc-0242ac130002', 'Fahari', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8de6-a6be-11eb-bcbc-0242ac130002', 'Farasi Gardens', '5b21fd24-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 12, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8e9a-a6be-11eb-bcbc-0242ac130002', 'Fibo Apartments', '5b21ffae-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a8f4e-a6be-11eb-bcbc-0242ac130002', 'Frapu', '5b21eba4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9002-a6be-11eb-bcbc-0242ac130002', 'Fretap', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a90c0-a6be-11eb-bcbc-0242ac130002', 'Furniture Palace -Big Save', '5b22008a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 50, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a92b4-a6be-11eb-bcbc-0242ac130002', 'Furniture Palace HQ', '5b2201de-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9368-a6be-11eb-bcbc-0242ac130002', 'Furniture Palace Waiyaki Way', '5b220396-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 50, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a941c-a6be-11eb-bcbc-0242ac130002', 'Gachorwe', '5b220684-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a94d0-a6be-11eb-bcbc-0242ac130002', 'Garlot Main house', '5b220742-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a958e-a6be-11eb-bcbc-0242ac130002', 'Garlot- servant quarters', '5b220742-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78a964c-a6be-11eb-bcbc-0242ac130002', 'PURITY KENDI', '5b220800-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9818-a6be-11eb-bcbc-0242ac130002', 'ANTHONY MURIU', '5b2208b4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a98e0-a6be-11eb-bcbc-0242ac130002', 'FIRANJAH MAKAYA (MAMA KIARIE)', '5b220972-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a999e-a6be-11eb-bcbc-0242ac130002', 'JUDITH KAJUJU MUSYOKA', '5b220a30-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9a5c-a6be-11eb-bcbc-0242ac130002', 'SAMSON MWANGI', '5b220aee-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9b1a-a6be-11eb-bcbc-0242ac130002', 'JOE KAGEMA', '5b220bb6-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9bd8-a6be-11eb-bcbc-0242ac130002', 'MARY KAMAU', '5b220e86-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9dd6-a6be-11eb-bcbc-0242ac130002', 'MARTHA KARIMA KATHURI (MAMA BRIAN)', '5b220f4e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9e94-a6be-11eb-bcbc-0242ac130002', 'GLADYS MAINA', '5b22100c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9f52-a6be-11eb-bcbc-0242ac130002', 'JANET GATHERE', '5b2210ca-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78a9ffc-a6be-11eb-bcbc-0242ac130002', 'MARY NGETHE', '5b221188-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa0ba-a6be-11eb-bcbc-0242ac130002', 'MERCY WAMUCII', '5b221250-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa16e-a6be-11eb-bcbc-0242ac130002', 'STEPHEN NJOROGE', '5b221318-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa42a-a6be-11eb-bcbc-0242ac130002', 'JOYCE KIR.UMA', '5b2213cc-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa51a-a6be-11eb-bcbc-0242ac130002', 'ESTHER MUTHONI', '5b221674-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa5ce-a6be-11eb-bcbc-0242ac130002', 'STANLEY MUTUGI', '5b221732-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa696-a6be-11eb-bcbc-0242ac130002', 'CYNTHIA RUANJAU', '5b2217f0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa754-a6be-11eb-bcbc-0242ac130002', 'ANNASTASIA NJERI', '5b2218a4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aa808-a6be-11eb-bcbc-0242ac130002', 'KELVIN NG\'ANG\'A', '5b22196c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aaa6a-a6be-11eb-bcbc-0242ac130002', 'PETER WANYORO', '5b221a2a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aab32-a6be-11eb-bcbc-0242ac130002', 'ANNE MUHORO', '5b221ae8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aabdc-a6be-11eb-bcbc-0242ac130002', 'EVELYN GITACHU', '5b221d9a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aac90-a6be-11eb-bcbc-0242ac130002', 'PAUL GACHUKIA', '5b221e62-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aad44-a6be-11eb-bcbc-0242ac130002', 'VERONICA MUCHIRI', '5b221f2a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aadf8-a6be-11eb-bcbc-0242ac130002', 'ANDREW MWANGI/ TERESIA WAWERU', '5b221fe8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aaea2-a6be-11eb-bcbc-0242ac130002', 'JOHN MWANGI/ ANNE WANJIKU MWANGI', '5b2220a6-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aaf60-a6be-11eb-bcbc-0242ac130002', 'Grand Haven', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', 24, 1, NULL, NULL, NULL, NULL),
('c78ab1b8-a6be-11eb-bcbc-0242ac130002', 'Greenwood Estate -Rukubi', '5b222164-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab276-a6be-11eb-bcbc-0242ac130002', 'Haven Heights', '5b22222c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab32a-a6be-11eb-bcbc-0242ac130002', 'HD 60 Apartments', '5b2222ea-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab3e8-a6be-11eb-bcbc-0242ac130002', 'Heliconia', '5b222614-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 20, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab4a6-a6be-11eb-bcbc-0242ac130002', 'Highgrove', '5b222614-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 40, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab564-a6be-11eb-bcbc-0242ac130002', 'Home Sweet Apartments Ndenderu', '5b21d0c4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab622-a6be-11eb-bcbc-0242ac130002', 'Hurlingham Heights', '5b2226dc-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 10, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab82a-a6be-11eb-bcbc-0242ac130002', 'Irene SJI neighbour', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab8fc-a6be-11eb-bcbc-0242ac130002', 'Jayce', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ab9b0-a6be-11eb-bcbc-0242ac130002', 'Jorda 2 Ruaka', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', 4, 1, NULL, NULL, NULL, NULL),
('c78aba64-a6be-11eb-bcbc-0242ac130002', 'Jorda Apartments', '5b21d0c4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78abb18-a6be-11eb-bcbc-0242ac130002', 'Josephid', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78abbd6-a6be-11eb-bcbc-0242ac130002', 'Josephid Neighbour', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', 0, 1, NULL, NULL, NULL, NULL),
('c78abc8a-a6be-11eb-bcbc-0242ac130002', 'Julex', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78abf28-a6be-11eb-bcbc-0242ac130002', 'K.K Towers', '5b222858-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac018-a6be-11eb-bcbc-0242ac130002', 'Kalwani', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac0d6-a6be-11eb-bcbc-0242ac130002', 'Karuri Macharia', '5b222916-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', 4, 1, NULL, NULL, NULL, NULL),
('c78ac18a-a6be-11eb-bcbc-0242ac130002', 'Kayaba', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', 8, 1, NULL, NULL, NULL, NULL),
('c78ac234-a6be-11eb-bcbc-0242ac130002', 'Kerwa Boma', '5b21ec6c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac2e8-a6be-11eb-bcbc-0242ac130002', 'Kiano -Kirigiti', '5b222858-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', 20, 1, NULL, NULL, NULL, NULL),
('c78ac3a6-a6be-11eb-bcbc-0242ac130002', 'Kitisuru Gardens', '5b2229d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac586-a6be-11eb-bcbc-0242ac130002', 'Kitisuru View 2', '5b222a92-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', 8, 1, NULL, NULL, NULL, NULL),
('c78ac64e-a6be-11eb-bcbc-0242ac130002', 'Kitusuru View', '5b222a92-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac702-a6be-11eb-bcbc-0242ac130002', 'Krigiti Houses', '5b21eba4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac7c0-a6be-11eb-bcbc-0242ac130002', 'Lekamu', '5b2229d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac87e-a6be-11eb-bcbc-0242ac130002', 'Leon Heights 1bd', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 5, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac932-a6be-11eb-bcbc-0242ac130002', 'Leon Heights 2bd', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ac9f0-a6be-11eb-bcbc-0242ac130002', 'Lewin', '5b2229d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78acc16-a6be-11eb-bcbc-0242ac130002', 'Lifestyle Heights', '5b222e70-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78accd4-a6be-11eb-bcbc-0242ac130002', 'Lone Tree Apartments', '5b222f2e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78acd92-a6be-11eb-bcbc-0242ac130002', 'Lusa Apartments', '5b22321c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ace50-a6be-11eb-bcbc-0242ac130002', 'Maggie Apartments', '5b21eba4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78acf18-a6be-11eb-bcbc-0242ac130002', 'Malvern Apartments', '5b222a92-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad012-a6be-11eb-bcbc-0242ac130002', 'Mama Lucy-Karuri', '5b222916-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad0d0-a6be-11eb-bcbc-0242ac130002', 'Mama Purple', '5b222614-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad30a-a6be-11eb-bcbc-0242ac130002', 'Mary Wairimu', '5b222614-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad3d2-a6be-11eb-bcbc-0242ac130002', 'Maranatha', '5b21eba4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad490-a6be-11eb-bcbc-0242ac130002', 'Mary -Yellow Green houses', '5b223564-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad54e-a6be-11eb-bcbc-0242ac130002', 'Mayfair Heights', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad60c-a6be-11eb-bcbc-0242ac130002', 'Mercy Apartments', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad6c0-a6be-11eb-bcbc-0242ac130002', 'Migaa', '5b22379e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad774-a6be-11eb-bcbc-0242ac130002', 'Morland', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ad832-a6be-11eb-bcbc-0242ac130002', 'Morning Star', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ada08-a6be-11eb-bcbc-0242ac130002', 'Mugumo Apartments', '5b22385c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78adac6-a6be-11eb-bcbc-0242ac130002', 'Mulberry', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78adb7a-a6be-11eb-bcbc-0242ac130002', 'Mush two', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78adc38-a6be-11eb-bcbc-0242ac130002', 'JOEL KIARIE/ SAMANTHA NDEGWA', '5b22391a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78adcec-a6be-11eb-bcbc-0242ac130002', 'IRENE NDICHU', '5b223de8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78addaa-a6be-11eb-bcbc-0242ac130002', 'DAVID NJIRIRI WAWERU', '5b22391a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78adf94-a6be-11eb-bcbc-0242ac130002', 'ANDREW KAGUCIA KAGUCIA / AGNES', '5b223f0a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae05c-a6be-11eb-bcbc-0242ac130002', 'SAMUEL N NJIHIA', '5b223fd2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae110-a6be-11eb-bcbc-0242ac130002', 'MWENDA KIRERA', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae1ce-a6be-11eb-bcbc-0242ac130002', 'MS. ANNE KARANJA', '5b22414e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae28c-a6be-11eb-bcbc-0242ac130002', 'MONICAH NGANGA/ MUTHONI MARUVU', '5b224216-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae340-a6be-11eb-bcbc-0242ac130002', 'HARRISON GONGO', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae3f4-a6be-11eb-bcbc-0242ac130002', 'ERICK GIKONYO KAROBIA', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae5ac-a6be-11eb-bcbc-0242ac130002', 'ROSE K KARIRA', '5b224694-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae66a-a6be-11eb-bcbc-0242ac130002', 'MONICA WANJIRU', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae728-a6be-11eb-bcbc-0242ac130002', 'WINFRED KANINI', '5b224766-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae7e6-a6be-11eb-bcbc-0242ac130002', 'JANET KAMAU', '5b22481a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae89a-a6be-11eb-bcbc-0242ac130002', 'AGNES KIUMI', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ae958-a6be-11eb-bcbc-0242ac130002', 'ROSEMARY MUCHIRI', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aeb38-a6be-11eb-bcbc-0242ac130002', 'GRACE NJIHIA', '5b2248d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aebec-a6be-11eb-bcbc-0242ac130002', 'ESTHER MBURUNGA/VICTOR RAGWA/FRANCIS RAGWA/AMOS NAISHO', '5b224216-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aecaa-a6be-11eb-bcbc-0242ac130002', 'DENNIS MAGU', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aed5e-a6be-11eb-bcbc-0242ac130002', 'HARRISON NGANGA', '5b224a4a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78af72c-a6be-11eb-bcbc-0242ac130002', 'RUTH MUGO', '5b224afe-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78af8a8-a6be-11eb-bcbc-0242ac130002', 'MONICA GITONGA', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78afbe6-a6be-11eb-bcbc-0242ac130002', 'VERONICA MIHIU', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78afcc2-a6be-11eb-bcbc-0242ac130002', 'JACINTA IRUNGU', '5b2248d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78afd8a-a6be-11eb-bcbc-0242ac130002', 'PERIS KAMAU', '5b223f0a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78afe52-a6be-11eb-bcbc-0242ac130002', 'CATHERINE MUNGAI', '5b224d9c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78aff10-a6be-11eb-bcbc-0242ac130002', 'ALEXANDER SARIKAS', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78affce-a6be-11eb-bcbc-0242ac130002', 'GIDEON KINYUA/MOFFAT OMARE/DAVID WAMBUI/ MARY WANJIKU NJOROGE', '5b2248d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b008c-a6be-11eb-bcbc-0242ac130002', 'MARY NDUNGU', '5b223f0a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b02da-a6be-11eb-bcbc-0242ac130002', 'CAROLINE GATHECA', '5b224766-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b03a2-a6be-11eb-bcbc-0242ac130002', 'MOSES CHEGE', '5b224d9c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0460-a6be-11eb-bcbc-0242ac130002', 'DAVID KAMAU', '5b223de8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b051e-a6be-11eb-bcbc-0242ac130002', 'MARY MUGO', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b05dc-a6be-11eb-bcbc-0242ac130002', 'PETER KANAKE/ LOISE MUCHUI', '5b224d9c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b069a-a6be-11eb-bcbc-0242ac130002', 'TERESIA KANGETHE', '5b223de8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0758-a6be-11eb-bcbc-0242ac130002', 'JENNIFER KAGWE', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0974-a6be-11eb-bcbc-0242ac130002', 'ROSEMARY KAMAU', '5b22481a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0a32-a6be-11eb-bcbc-0242ac130002', 'ESTHER NDIRANGU', '5b224216-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0af0-a6be-11eb-bcbc-0242ac130002', 'SYMON KIMANI MWAURA', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0ba4-a6be-11eb-bcbc-0242ac130002', 'GEOFFREY NGIGI', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0c62-a6be-11eb-bcbc-0242ac130002', 'ALICE FRANCIS', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0d20-a6be-11eb-bcbc-0242ac130002', 'JOYCE KURARU / BERNARD MUCHIRI', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b0dd4-a6be-11eb-bcbc-0242ac130002', 'EDWARD KARIUKI MAINA', '5b223de8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1090-a6be-11eb-bcbc-0242ac130002', 'ANTONY GICHURU', '5b224694-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1162-a6be-11eb-bcbc-0242ac130002', 'ELIZABETH KAMAU', '5b224216-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1216-a6be-11eb-bcbc-0242ac130002', 'TERESIA MBURU', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b12d4-a6be-11eb-bcbc-0242ac130002', 'DAVID KINYUA', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1388-a6be-11eb-bcbc-0242ac130002', 'PETER NGANGA', '5b224d9c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b143c-a6be-11eb-bcbc-0242ac130002', 'CAROLINE MUTISYA', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b14e6-a6be-11eb-bcbc-0242ac130002', 'NANCY NDUATI', '5b224216-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b16d0-a6be-11eb-bcbc-0242ac130002', 'SAMUEL NGARI', '5b224694-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1798-a6be-11eb-bcbc-0242ac130002', 'STANLEY CHEGE/ JULIA KAGUNDA', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1842-a6be-11eb-bcbc-0242ac130002', 'EUNICE NGUGI/ GEORGE NGUGI', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b18f6-a6be-11eb-bcbc-0242ac130002', 'EPHANTUS NDERITU', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b19a0-a6be-11eb-bcbc-0242ac130002', 'HENRY NJUNGE', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1a54-a6be-11eb-bcbc-0242ac130002', 'JANEFFER WANGARE KARIUKI', '5b224766-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1b08-a6be-11eb-bcbc-0242ac130002', 'NGANGA MOSEKA', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1d56-a6be-11eb-bcbc-0242ac130002', 'ALICE KAMAU', '5b224e64-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1e1e-a6be-11eb-bcbc-0242ac130002', 'PETER GAKWA', '5b224216-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1edc-a6be-11eb-bcbc-0242ac130002', 'LYDIAH NJUGUNA/ MR NJUGUNA', '5b224694-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b1f90-a6be-11eb-bcbc-0242ac130002', 'ANNE KINYANJUI', '5b223f0a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b204e-a6be-11eb-bcbc-0242ac130002', 'BILHA MBURIA', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2102-a6be-11eb-bcbc-0242ac130002', 'GEOFFREY KAMAU WAMBUI', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b21b6-a6be-11eb-bcbc-0242ac130002', 'MARTIN KAMAU', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b244a-a6be-11eb-bcbc-0242ac130002', 'EDWARD MUNGAI/ ANNE WAIRIMU', '5b224392-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2526-a6be-11eb-bcbc-0242ac130002', 'CHARLES MWANGI', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b25e4-a6be-11eb-bcbc-0242ac130002', 'LEONARD NDEGWA WAMUI', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2698-a6be-11eb-bcbc-0242ac130002', 'LUCY WANJIKU GATHECHA', '5b224766-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2756-a6be-11eb-bcbc-0242ac130002', 'PETER GIKONYO/ HARRISON MAINA', '5b224afe-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2922-a6be-11eb-bcbc-0242ac130002', 'SILVANA KARANJA', '5b223de8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b29e0-a6be-11eb-bcbc-0242ac130002', 'JANE MUKABI', '5b224afe-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2a9e-a6be-11eb-bcbc-0242ac130002', 'ISAAC MUTHUNGA GIKERI/ FLESIAH MUTHUNGA', '5b2248d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2b5c-a6be-11eb-bcbc-0242ac130002', 'SIMON NGIGI', '5b223de8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2c10-a6be-11eb-bcbc-0242ac130002', 'JOHN KABIU', '5b224afe-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2de6-a6be-11eb-bcbc-0242ac130002', 'FLORIDA NYABERA', '5b224f2c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2ea4-a6be-11eb-bcbc-0242ac130002', 'GRACE GATHONI/THOMAS KAMAU', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b2f58-a6be-11eb-bcbc-0242ac130002', 'NANCY KAMAU', '5b224694-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3016-a6be-11eb-bcbc-0242ac130002', 'BENSON MATHU', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b30d4-a6be-11eb-bcbc-0242ac130002', 'RUTH NGA\'NGA\'', '5b224996-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3188-a6be-11eb-bcbc-0242ac130002', 'WILFRED MWETHERA /ROSE GITHUA', '5b2242d4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b332c-a6be-11eb-bcbc-0242ac130002', 'MONICA GITHUI', '5b223f0a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b33e0-a6be-11eb-bcbc-0242ac130002', 'ANNE MACHARIA', '5b224090-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b349e-a6be-11eb-bcbc-0242ac130002', 'IRENE MWIHAKI', '5b224fea-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b355c-a6be-11eb-bcbc-0242ac130002', 'MERCY GITHANJI', '5b2248d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b361a-a6be-11eb-bcbc-0242ac130002', 'JUDY MARANGA', '5b2248d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b37dc-a6be-11eb-bcbc-0242ac130002', 'MARY WANJIKU', '5b22515c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b38a4-a6be-11eb-bcbc-0242ac130002', 'NJOKI KIMOTHO', '5b22521a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3958-a6be-11eb-bcbc-0242ac130002', 'ROSE WAMBUI', '5b2252d8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3a16-a6be-11eb-bcbc-0242ac130002', 'LUCY NJERI KARANJA', '5b2255d0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3aca-a6be-11eb-bcbc-0242ac130002', 'MR. NGURE THIONGO', '5b2256a2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3b88-a6be-11eb-bcbc-0242ac130002', 'SAMSON MUHOHO', '5b22576a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3c3c-a6be-11eb-bcbc-0242ac130002', 'STEPHEN CHEGE', '5b225828-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3e08-a6be-11eb-bcbc-0242ac130002', 'MONICAH NGIGI', '5b2258e6-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3ebc-a6be-11eb-bcbc-0242ac130002', 'JOHN NJONGORO', '5b2259a4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b3f70-a6be-11eb-bcbc-0242ac130002', 'MARY MWANGOME', '5b225a62-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b402e-a6be-11eb-bcbc-0242ac130002', 'DAVID KAMAU /STEPHEN KINORO KAMAU', '5b225b20-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b40e2-a6be-11eb-bcbc-0242ac130002', 'MARGARET MWANGI', '5b225d50-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b41a0-a6be-11eb-bcbc-0242ac130002', 'MARGARET NDUTA MWAURA', '5b225e18-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4312-a6be-11eb-bcbc-0242ac130002', 'NANCY KAMAU', '5b225ed6-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b43d0-a6be-11eb-bcbc-0242ac130002', 'IRENE MAINA', '5b225f9e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b448e-a6be-11eb-bcbc-0242ac130002', 'NDIRANGU GICHUKI/LILY GICHUKI', '5b22605c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4542-a6be-11eb-bcbc-0242ac130002', 'MARGARET MWANGI', '5b22611a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b45f6-a6be-11eb-bcbc-0242ac130002', 'ANTONY WAIGANJO', '5b226412-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b47cc-a6be-11eb-bcbc-0242ac130002', 'ISABELLA MUSYOKA/NICHOLAS KAMERE/ GERALDINE SYOKAU', '5b2264e4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4894-a6be-11eb-bcbc-0242ac130002', 'PRISCILLA MATHENGE', '5b226598-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4948-a6be-11eb-bcbc-0242ac130002', 'EVERLINE OBONDO', '5b226656-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b49fc-a6be-11eb-bcbc-0242ac130002', 'CATHERINE NJUGUNA', '5b226714-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4ab0-a6be-11eb-bcbc-0242ac130002', 'DAVID MBUGUA/ JARED MOTURI/ JARED MENGE', '5b2267c8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4b64-a6be-11eb-bcbc-0242ac130002', 'ANN KUNGU', '5b22687c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4d58-a6be-11eb-bcbc-0242ac130002', 'LILIANNE KARURI', '5b22693a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4e20-a6be-11eb-bcbc-0242ac130002', 'JUDITH WAINAINA', '5b226b7e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4ede-a6be-11eb-bcbc-0242ac130002', 'STEPHEN NGANGA', '5b226c50-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b4f92-a6be-11eb-bcbc-0242ac130002', 'CHRIS WAIGANJO/ CHRISTOPHER WAIGANJO', '5b226d0e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5050-a6be-11eb-bcbc-0242ac130002', 'PETER WATHIGO/BEATRICE NDUNGU', '5b226dcc-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b51f4-a6be-11eb-bcbc-0242ac130002', 'FRECIA WANJIKU GATHOGO', '5b226e8a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b52b2-a6be-11eb-bcbc-0242ac130002', 'VERONICA MUHORO/GEORGE MUHORO', '5b226f48-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5370-a6be-11eb-bcbc-0242ac130002', 'JANE ANN NGUNJIRI', '5b227006-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5424-a6be-11eb-bcbc-0242ac130002', 'STEVEN KAIRU', '5b2270c4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b54d8-a6be-11eb-bcbc-0242ac130002', 'LANCE NDUNGU / ROSE WAGENI / PETER MWAURA', '5b227326-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b56a4-a6be-11eb-bcbc-0242ac130002', 'BONIFACE KAMAU/ PATSY KIHIU', '5b2273e4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5762-a6be-11eb-bcbc-0242ac130002', 'MARGARET MUCHINA', '5b227498-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b580c-a6be-11eb-bcbc-0242ac130002', 'CONSOLATA NJERI', '5b227556-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b58c0-a6be-11eb-bcbc-0242ac130002', 'JANE MWANGI', '5b22761e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b597e-a6be-11eb-bcbc-0242ac130002', 'MARGARET MWARIRI', '5b2276d2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5a32-a6be-11eb-bcbc-0242ac130002', 'AGNES WAITHIRA MWANGI', '5b22779a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5d02-a6be-11eb-bcbc-0242ac130002', 'JOHN KAMAU', '5b2279b6-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5dde-a6be-11eb-bcbc-0242ac130002', 'BRIAN SINGH', '5b227a7e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5e9c-a6be-11eb-bcbc-0242ac130002', 'DIANA ONCHIRI/PARDOEN PETER/JANE MOLENCAI', '5b227b46-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b5f50-a6be-11eb-bcbc-0242ac130002', 'GITICHE CHEGE/ DAVID MWANGI', '5b227c04-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6004-a6be-11eb-bcbc-0242ac130002', 'ANTHONY NDIRANGU', '5b227ccc-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b60b8-a6be-11eb-bcbc-0242ac130002', 'ROSE MUTURI', '5b227d8a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6202-a6be-11eb-bcbc-0242ac130002', 'PAULINE KIGECHA', '5b227e48-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b62c0-a6be-11eb-bcbc-0242ac130002', 'MATHEW KAHIU NGETHE', '5b227f06-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b637e-a6be-11eb-bcbc-0242ac130002', 'ALICE NDUNGU', '5b2281e0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b643c-a6be-11eb-bcbc-0242ac130002', 'CHRISTOPHER GATHINGU', '5b2282b2-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b661c-a6be-11eb-bcbc-0242ac130002', 'ANNE NJOROGE', '5b228366-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b66da-a6be-11eb-bcbc-0242ac130002', 'BENSON MUKOKO', '5b22841a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6798-a6be-11eb-bcbc-0242ac130002', 'ISABEL MWANGI', '5b2284ce-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6842-a6be-11eb-bcbc-0242ac130002', 'CATHERINE WAHOGO', '5b228596-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6900-a6be-11eb-bcbc-0242ac130002', 'SALOME MUNGAI', '5b22864a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6a9a-a6be-11eb-bcbc-0242ac130002', 'MICHAEL MBURU', '5b228712-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6cac-a6be-11eb-bcbc-0242ac130002', 'EMILY NJAU', '5b228988-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6d74-a6be-11eb-bcbc-0242ac130002', 'HANNAH MACHARIA', '5b228a5a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6e32-a6be-11eb-bcbc-0242ac130002', 'CHARLES NDIRANGU', '5b228b18-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b6ef0-a6be-11eb-bcbc-0242ac130002', 'AGNES KURIA', '5b228be0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7008-a6be-11eb-bcbc-0242ac130002', 'AGNES KAIGUA/ AGNES KAIGUA', '5b228c9e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b70c6-a6be-11eb-bcbc-0242ac130002', 'DAN WACHIRA', '5b228d52-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b718e-a6be-11eb-bcbc-0242ac130002', 'BERNICE MUNYUA', '5b228e10-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b724c-a6be-11eb-bcbc-0242ac130002', 'JAMES GICHACHI', '5b2290fe-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7364-a6be-11eb-bcbc-0242ac130002', 'PATRICK KAMAU', '5b2291c6-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b742c-a6be-11eb-bcbc-0242ac130002', 'ADIKA ODHIAMBO / DIANA SCHREIBE', '5b22927a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b74ea-a6be-11eb-bcbc-0242ac130002', 'LUCY GATAMBIA', '5b229338-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b75b2-a6be-11eb-bcbc-0242ac130002', 'GEORGE MUHIA', '5b2293ec-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b76de-a6be-11eb-bcbc-0242ac130002', 'MARGARET WANJIRU', '5b2294aa-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b77a6-a6be-11eb-bcbc-0242ac130002', 'ANTHONY KABOGO', '5b228712-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b785a-a6be-11eb-bcbc-0242ac130002', 'JUSTUS KIPROP KIMOSOP/ JUSTUS KIMOSOP', '5b229568-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7918-a6be-11eb-bcbc-0242ac130002', 'ERNEST KAMAU', '5b229630-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b79cc-a6be-11eb-bcbc-0242ac130002', 'LUCY NJOROGE', '5b229860-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7a8a-a6be-11eb-bcbc-0242ac130002', 'MARGARET MUIRU', '5b22991e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7b3e-a6be-11eb-bcbc-0242ac130002', 'CAXTON NGANGA', '5b2299dc-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7c56-a6be-11eb-bcbc-0242ac130002', 'DIANA MWANGI', '5b229a9a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7d14-a6be-11eb-bcbc-0242ac130002', 'JOHN WILLIAMS', '5b229b58-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7de6-a6be-11eb-bcbc-0242ac130002', 'PETER NDIRANGU', '5b229c20-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7e9a-a6be-11eb-bcbc-0242ac130002', 'JANET NGARI', '5b229cde-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b7f4e-a6be-11eb-bcbc-0242ac130002', 'JEREMIAH MUUTI WAMUYUI/ANNASTASIAH KAMAU / JOHN KARIUKI', '5b229fb8-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b80c0-a6be-11eb-bcbc-0242ac130002', 'PETER LPARNOI LENGEWA', '5b22a080-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8188-a6be-11eb-bcbc-0242ac130002', 'ANNE WAWERU', '5b22a148-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b823c-a6be-11eb-bcbc-0242ac130002', 'STEVE KIMANI', '5b22a206-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b82fa-a6be-11eb-bcbc-0242ac130002', 'WILSON MIRANGI WACUKA', '5b22a2ba-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b83ae-a6be-11eb-bcbc-0242ac130002', 'JOYCE WANGECHI MAINA', '5b22a378-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b846c-a6be-11eb-bcbc-0242ac130002', 'BRIAN MUIRURI NJOROGE', '5b22a5e4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b858e-a6be-11eb-bcbc-0242ac130002', 'PETER MARSHALL', '5b22a6ac-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b864c-a6be-11eb-bcbc-0242ac130002', 'CHRISTINE ESIPISU', '5b22761e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b870a-a6be-11eb-bcbc-0242ac130002', 'JANE NDUNGU', '5b22a760-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b882c-a6be-11eb-bcbc-0242ac130002', 'MERCY MUTHONI', '5b22a81e-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b88f4-a6be-11eb-bcbc-0242ac130002', 'JOHN NJOROGE', '5b22a8dc-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b89b2-a6be-11eb-bcbc-0242ac130002', 'PAULINE WANJIRU/ JULIUS NJAU', '5b22a99a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8a66-a6be-11eb-bcbc-0242ac130002', 'Mwanja (container)', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8c64-a6be-11eb-bcbc-0242ac130002', 'Nabri Heights', '672fd178-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8d22-a6be-11eb-bcbc-0242ac130002', 'Naomi', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8dd6-a6be-11eb-bcbc-0242ac130002', 'Neema Flats', '672fd498-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8f02-a6be-11eb-bcbc-0242ac130002', 'Nelion Height', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b8fc0-a6be-11eb-bcbc-0242ac130002', 'Nelion Heights Neighbour (Mama Cyrus)', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9074-a6be-11eb-bcbc-0242ac130002', 'Ngethes', '672fd574-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9132-a6be-11eb-bcbc-0242ac130002', 'Nziza', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `clients` (`id`, `client_name`, `client_area`, `latitude`, `longitude`, `allocated_bags`, `bag_type`, `extra_bags`, `status`, `created_by`, `updated_by`, `date_created`, `date_deleted`) VALUES
('c78b925e-a6be-11eb-bcbc-0242ac130002', 'One Redhill Villas', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b931c-a6be-11eb-bcbc-0242ac130002', 'Pami Court (Mugo apartments)', '5b222858-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b93da-a6be-11eb-bcbc-0242ac130002', 'Pazuri Place', '672fd178-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b948e-a6be-11eb-bcbc-0242ac130002', 'Peers Park', '672fd7c2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9830-a6be-11eb-bcbc-0242ac130002', 'Petra', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9970-a6be-11eb-bcbc-0242ac130002', 'Philly', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9aba-a6be-11eb-bcbc-0242ac130002', 'Phoenicia Hotel', '5b21cf48-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 12, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9b78-a6be-11eb-bcbc-0242ac130002', 'Pinewood', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9c36-a6be-11eb-bcbc-0242ac130002', 'Platinum II', '672fdb96-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9cea-a6be-11eb-bcbc-0242ac130002', 'Premier Realy', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9da8-a6be-11eb-bcbc-0242ac130002', 'Primerose', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9e66-a6be-11eb-bcbc-0242ac130002', 'Ramos Court', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78b9f92-a6be-11eb-bcbc-0242ac130002', 'Red hill Close', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba050-a6be-11eb-bcbc-0242ac130002', 'Redhill Heights', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba10e-a6be-11eb-bcbc-0242ac130002', 'Redrose Gardens', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba1d6-a6be-11eb-bcbc-0242ac130002', 'Pat Thindigua', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba294-a6be-11eb-bcbc-0242ac130002', 'Mama Waithera', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba3b6-a6be-11eb-bcbc-0242ac130002', 'Ridgerivers', '5b21d1a0-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba474-a6be-11eb-bcbc-0242ac130002', 'Rivers Edge', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 12, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba53c-a6be-11eb-bcbc-0242ac130002', 'Riverside Oak Villas', '672fde66-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba5fa-a6be-11eb-bcbc-0242ac130002', 'JENNIFER', '672fdf56-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba6c2-a6be-11eb-bcbc-0242ac130002', 'GRACE MURIITHI', '672fe00a-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba7f8-a6be-11eb-bcbc-0242ac130002', 'MR. DOMINIC MWANGI', '672fe0be-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba8b6-a6be-11eb-bcbc-0242ac130002', 'FLEVIAN MUDANYA', '672fe2e4-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78ba9b0-a6be-11eb-bcbc-0242ac130002', 'IVY NYAGUTHII MUNGAI', '672fe3a2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78baa78-a6be-11eb-bcbc-0242ac130002', 'CAROLINE MACHARIA WANJIRU', '672fe456-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bab2c-a6be-11eb-bcbc-0242ac130002', 'MARK KARIUKI', '672fe50a-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78babea-a6be-11eb-bcbc-0242ac130002', 'FRANKLIN GATHERU', '672fe5c8-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bad20-a6be-11eb-bcbc-0242ac130002', 'CHARLES MWANGI', '672fe67c-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78badd4-a6be-11eb-bcbc-0242ac130002', 'PRISCILLA MUREITHI/ KENNEDY NDWIGA WACHIRA', '672fe73a-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bae92-a6be-11eb-bcbc-0242ac130002', 'PRINCE BRUCE', '672fe9e2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78baf5a-a6be-11eb-bcbc-0242ac130002', 'HARRISON MUGO', '672feaaa-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb00e-a6be-11eb-bcbc-0242ac130002', 'TIMOTHY MATHENGE', '672feb68-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb0c2-a6be-11eb-bcbc-0242ac130002', 'PHYLLIS MBUGU', '672fec1c-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb1e4-a6be-11eb-bcbc-0242ac130002', 'HELLEN MUNGANIA', '672fecd0-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb2a2-a6be-11eb-bcbc-0242ac130002', 'ESTHER MUCHERU', '672fed7a-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb356-a6be-11eb-bcbc-0242ac130002', 'KENNEDY ASINULI', '672fee2e-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb414-a6be-11eb-bcbc-0242ac130002', 'GERALD KAGO', '672ff07c-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb4d2-a6be-11eb-bcbc-0242ac130002', 'CAROLINE MATU', '672ff144-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb590-a6be-11eb-bcbc-0242ac130002', 'JANE NJORA', '672ff1f8-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb6b2-a6be-11eb-bcbc-0242ac130002', 'NDEGWA MUCHERU', '672ff2b6-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb770-a6be-11eb-bcbc-0242ac130002', 'CHARLES GITAU/ CHARLES NGUGI', '672ff360-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb82e-a6be-11eb-bcbc-0242ac130002', 'RUTH WAITHIRA KINYANJUI', '672ff414-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb8ec-a6be-11eb-bcbc-0242ac130002', 'VIRGINIA MUNI', '672ff4d2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bb9a0-a6be-11eb-bcbc-0242ac130002', 'MICHAEL MUINDI', '672ff586-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bba5e-a6be-11eb-bcbc-0242ac130002', 'EVANS MUBEA', '672ff7a2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bbb80-a6be-11eb-bcbc-0242ac130002', 'RAJINDER DHUPAR /HARPREET DHUPAR', '672ff860-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bbc3e-a6be-11eb-bcbc-0242ac130002', 'NELSON MUGUNDA', '672ff914-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bbcfc-a6be-11eb-bcbc-0242ac130002', 'DAVID KINYUA', '672ff9d2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bbdb0-a6be-11eb-bcbc-0242ac130002', 'Riviera', '672fde66-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 20, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bbed2-a6be-11eb-bcbc-0242ac130002', 'RM Apartments', '5b22321c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bbf90-a6be-11eb-bcbc-0242ac130002', 'Rosewood', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc04e-a6be-11eb-bcbc-0242ac130002', 'Ruaka Best', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc10c-a6be-11eb-bcbc-0242ac130002', 'Ruaka Splendour', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc1c0-a6be-11eb-bcbc-0242ac130002', 'Ruaka View Apartments', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc35a-a6be-11eb-bcbc-0242ac130002', 'Rundaview', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc44a-a6be-11eb-bcbc-0242ac130002', 'Tabitha Ngina', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc508-a6be-11eb-bcbc-0242ac130002', 'Scenic View', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc5c6-a6be-11eb-bcbc-0242ac130002', 'Serene', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc67a-a6be-11eb-bcbc-0242ac130002', 'Serengetti Court', '672ffb30-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc7a6-a6be-11eb-bcbc-0242ac130002', 'Shani', '672ffbe4-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc86e-a6be-11eb-bcbc-0242ac130002', 'Shechem', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc92c-a6be-11eb-bcbc-0242ac130002', 'Shiku', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bc9e0-a6be-11eb-bcbc-0242ac130002', 'Sifa Apartments', '5b21ec6c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bca9e-a6be-11eb-bcbc-0242ac130002', 'MRS GRACE THUMBI', '672ffeaa-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bcb52-a6be-11eb-bcbc-0242ac130002', 'MR. JOHN MUGAMBI', '672fff5e-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bcc10-a6be-11eb-bcbc-0242ac130002', 'ANGELINE WANJIRU MWANGI', '67300012-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bcd32-a6be-11eb-bcbc-0242ac130002', 'MR JULIUS KIHIU /NANCY NDUTA KIHIU/ ERIC KIHIU', '673000c6-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bcdfa-a6be-11eb-bcbc-0242ac130002', 'JOSHUA MWAURA', '6730017a-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bceae-a6be-11eb-bcbc-0242ac130002', 'PAUL KIMANI / LUCY WAIRIMU KARIMI', '6730022e-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bcf62-a6be-11eb-bcbc-0242ac130002', 'JOHN KIGGIA', '673002e2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd084-a6be-11eb-bcbc-0242ac130002', 'PATRICK TONUI', '673004fe-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd142-a6be-11eb-bcbc-0242ac130002', 'JOSPHINE MURITU / JOSEPH CHAU', '673005bc-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd200-a6be-11eb-bcbc-0242ac130002', 'RUTH NDIRITU/GEOFFREY MUCHERU', '67300670-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd2b4-a6be-11eb-bcbc-0242ac130002', 'JOB MWANGI MAKUMI', '6730072e-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd372-a6be-11eb-bcbc-0242ac130002', 'JOYCE MBUGUA/ ELAINE KINYA', '673007e2-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd430-a6be-11eb-bcbc-0242ac130002', 'SJI Apartments', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd566-a6be-11eb-bcbc-0242ac130002', 'Smart Printers', '67300896-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd624-a6be-11eb-bcbc-0242ac130002', 'Sovereign Suites', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd6e2-a6be-11eb-bcbc-0242ac130002', 'Spearnet', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd7a0-a6be-11eb-bcbc-0242ac130002', 'Spearnet Ruaka', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd85e-a6be-11eb-bcbc-0242ac130002', 'SR102', '5b21ec6c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bd912-a6be-11eb-bcbc-0242ac130002', 'Subaru', '5b222858-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 6, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bda2a-a6be-11eb-bcbc-0242ac130002', 'Sujnam', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bdaf2-a6be-11eb-bcbc-0242ac130002', 'Sweet Homes', '5b222858-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 5, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bdba6-a6be-11eb-bcbc-0242ac130002', 'Sycamore Apartments', '5b223564-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78bdc6e-a6be-11eb-bcbc-0242ac130002', 'Temus Court 1 Bd', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 4, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bdd22-a6be-11eb-bcbc-0242ac130002', 'Temus Court -main', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bde62-a6be-11eb-bcbc-0242ac130002', 'The moon', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78bdfac-a6be-11eb-bcbc-0242ac130002', 'The West', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be06a-a6be-11eb-bcbc-0242ac130002', 'The West Neighbour', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 0, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be128-a6be-11eb-bcbc-0242ac130002', 'Thome', '67300b98-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be1e6-a6be-11eb-bcbc-0242ac130002', 'Tropical Heat', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 150, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78be29a-a6be-11eb-bcbc-0242ac130002', 'Twin Court', '5b21ec6c-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be3b2-a6be-11eb-bcbc-0242ac130002', 'Universal', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be47a-a6be-11eb-bcbc-0242ac130002', 'Victor Springs -Ndenderu', '5b21d0c4-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be538-a6be-11eb-bcbc-0242ac130002', 'Windsor Creek', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('c78be5f6-a6be-11eb-bcbc-0242ac130002', 'Windsor View', '5b21c868-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78be6b4-a6be-11eb-bcbc-0242ac130002', 'Zereniti Gardens', '672fd632-a6bd-11eb-bcbc-0242ac130002', NULL, NULL, 16, 'LARGE', NULL, 1, NULL, NULL, NULL, NULL),
('c78c0ef0-a6be-11eb-bcbc-0242ac130002', 'Zipporah Heights', '5b22279a-a6b9-11eb-bcbc-0242ac130002', NULL, NULL, 8, 'SMALL', NULL, 1, NULL, NULL, NULL, NULL),
('ca3016f4b4c3449099c161e6c9776e9c', 'pam', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
('dbda6b6543ca45d18fa865b98fd932f0', 'kesi', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
('f799065ef33547d095c7df9950ce5ac7', 'rita', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
('f8ed19b3be0c4648a24de3349b2ca5bc', 'peter', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_areas`
--

CREATE TABLE `client_areas` (
  `id` varchar(36) NOT NULL,
  `area_name` varchar(54) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `updated_by` varchar(10) DEFAULT NULL,
  `date_created` varchar(10) DEFAULT NULL,
  `date_deleted` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_areas`
--

INSERT INTO `client_areas` (`id`, `area_name`, `status`, `updated_by`, `date_created`, `date_deleted`) VALUES
('5b21c868-a6b9-11eb-bcbc-0242ac130002', 'Thindigua', 1, NULL, NULL, NULL),
('5b21cf48-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Road', 1, NULL, NULL, NULL),
('5b21d0c4-a6b9-11eb-bcbc-0242ac130002', 'Ndenderu', 1, NULL, NULL, NULL),
('5b21d1a0-a6b9-11eb-bcbc-0242ac130002', 'Muchatha', 1, NULL, NULL, NULL),
('5b21d588-a6b9-11eb-bcbc-0242ac130002', 'Kijani Estate-2', 1, NULL, NULL, NULL),
('5b21d646-a6b9-11eb-bcbc-0242ac130002', 'Kijani Estate-1', 1, NULL, NULL, NULL),
('5b21d704-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-7', 1, NULL, NULL, NULL),
('5b21d7c2-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-22', 1, NULL, NULL, NULL),
('5b21d880-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-11', 1, NULL, NULL, NULL),
('5b21d934-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-29', 1, NULL, NULL, NULL),
('5b21d9f2-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-39', 1, NULL, NULL, NULL),
('5b21dce0-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-23', 1, NULL, NULL, NULL),
('5b21dd9e-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-8', 1, NULL, NULL, NULL),
('5b21de5c-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-34', 1, NULL, NULL, NULL),
('5b21df10-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-19', 1, NULL, NULL, NULL),
('5b21dfce-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-35', 1, NULL, NULL, NULL),
('5b21e082-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-2', 1, NULL, NULL, NULL),
('5b21e136-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-20', 1, NULL, NULL, NULL),
('5b21e49c-a6b9-11eb-bcbc-0242ac130002', 'Bustani Shop-', 1, NULL, NULL, NULL),
('5b21e56e-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-18', 1, NULL, NULL, NULL),
('5b21e622-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-31', 1, NULL, NULL, NULL),
('5b21e6e0-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-33B', 1, NULL, NULL, NULL),
('5b21e794-a6b9-11eb-bcbc-0242ac130002', 'Bustani Estate-16', 1, NULL, NULL, NULL),
('5b21eba4-a6b9-11eb-bcbc-0242ac130002', 'Kirigiti', 1, NULL, NULL, NULL),
('5b21ec6c-a6b9-11eb-bcbc-0242ac130002', 'Kikuyu', 1, NULL, NULL, NULL),
('5b21edde-a6b9-11eb-bcbc-0242ac130002', 'Zambezi', 1, NULL, NULL, NULL),
('5b21effa-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -8', 1, NULL, NULL, NULL),
('5b21f0b8-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -6', 1, NULL, NULL, NULL),
('5b21f4aa-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -5', 1, NULL, NULL, NULL),
('5b21f59a-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -7', 1, NULL, NULL, NULL),
('5b21f658-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -4', 1, NULL, NULL, NULL),
('5b21f716-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -9', 1, NULL, NULL, NULL),
('5b21f7f2-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -10', 1, NULL, NULL, NULL),
('5b21f8d8-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -3', 1, NULL, NULL, NULL),
('5b21f9b4-a6b9-11eb-bcbc-0242ac130002', 'Double Tree -2', 1, NULL, NULL, NULL),
('5b21fa90-a6b9-11eb-bcbc-0242ac130002', 'Gachie', 1, NULL, NULL, NULL),
('5b21fd24-a6b9-11eb-bcbc-0242ac130002', 'Farasi Lane', 1, NULL, NULL, NULL),
('5b21ffae-a6b9-11eb-bcbc-0242ac130002', 'Kingeero', 1, NULL, NULL, NULL),
('5b22008a-a6b9-11eb-bcbc-0242ac130002', 'North Airport Road', 1, NULL, NULL, NULL),
('5b2201de-a6b9-11eb-bcbc-0242ac130002', 'Mombasa Road', 1, NULL, NULL, NULL),
('5b220396-a6b9-11eb-bcbc-0242ac130002', 'Waiyaki Way', 1, NULL, NULL, NULL),
('5b220684-a6b9-11eb-bcbc-0242ac130002', 'Gachorwe', 1, NULL, NULL, NULL),
('5b220742-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road', 1, NULL, NULL, NULL),
('5b220800-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-1', 1, NULL, NULL, NULL),
('5b2208b4-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-2', 1, NULL, NULL, NULL),
('5b220972-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-3', 1, NULL, NULL, NULL),
('5b220a30-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-4', 1, NULL, NULL, NULL),
('5b220aee-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-5', 1, NULL, NULL, NULL),
('5b220bb6-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-6', 1, NULL, NULL, NULL),
('5b220e86-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-7', 1, NULL, NULL, NULL),
('5b220f4e-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-8', 1, NULL, NULL, NULL),
('5b22100c-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-9', 1, NULL, NULL, NULL),
('5b2210ca-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-10', 1, NULL, NULL, NULL),
('5b221188-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-11', 1, NULL, NULL, NULL),
('5b221250-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-12', 1, NULL, NULL, NULL),
('5b221318-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-13', 1, NULL, NULL, NULL),
('5b2213cc-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-14', 1, NULL, NULL, NULL),
('5b221674-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-15', 1, NULL, NULL, NULL),
('5b221732-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-16', 1, NULL, NULL, NULL),
('5b2217f0-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-17', 1, NULL, NULL, NULL),
('5b2218a4-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-18', 1, NULL, NULL, NULL),
('5b22196c-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-19', 1, NULL, NULL, NULL),
('5b221a2a-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-20', 1, NULL, NULL, NULL),
('5b221ae8-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-21', 1, NULL, NULL, NULL),
('5b221d9a-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-22', 1, NULL, NULL, NULL),
('5b221e62-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-23', 1, NULL, NULL, NULL),
('5b221f2a-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-24', 1, NULL, NULL, NULL),
('5b221fe8-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-25', 1, NULL, NULL, NULL),
('5b2220a6-a6b9-11eb-bcbc-0242ac130002', 'Golden Palm-26', 1, NULL, NULL, NULL),
('5b222164-a6b9-11eb-bcbc-0242ac130002', 'Rukubi', 1, NULL, NULL, NULL),
('5b22222c-a6b9-11eb-bcbc-0242ac130002', 'Behind Bustani Estate', 1, NULL, NULL, NULL),
('5b2222ea-a6b9-11eb-bcbc-0242ac130002', 'Rumenye', 1, NULL, NULL, NULL),
('5b222614-a6b9-11eb-bcbc-0242ac130002', 'Lower Kabete Road', 1, NULL, NULL, NULL),
('5b2226dc-a6b9-11eb-bcbc-0242ac130002', 'Ring Road', 1, NULL, NULL, NULL),
('5b22279a-a6b9-11eb-bcbc-0242ac130002', 'Ruaka', 1, NULL, NULL, NULL),
('5b222858-a6b9-11eb-bcbc-0242ac130002', 'Kiambu Town', 1, NULL, NULL, NULL),
('5b222916-a6b9-11eb-bcbc-0242ac130002', 'Karuri', 1, NULL, NULL, NULL),
('5b2229d4-a6b9-11eb-bcbc-0242ac130002', 'Kibichiku', 1, NULL, NULL, NULL),
('5b222a92-a6b9-11eb-bcbc-0242ac130002', 'Mwimuto', 1, NULL, NULL, NULL),
('5b222e70-a6b9-11eb-bcbc-0242ac130002', 'Off Ruiru Kamiti Road', 1, NULL, NULL, NULL),
('5b222f2e-a6b9-11eb-bcbc-0242ac130002', 'Nazareth Area', 1, NULL, NULL, NULL),
('5b22321c-a6b9-11eb-bcbc-0242ac130002', 'Gitaru', 1, NULL, NULL, NULL),
('5b223564-a6b9-11eb-bcbc-0242ac130002', 'Gacharage', 1, NULL, NULL, NULL),
('5b22379e-a6b9-11eb-bcbc-0242ac130002', 'Riabai Road', 1, NULL, NULL, NULL),
('5b22385c-a6b9-11eb-bcbc-0242ac130002', 'Dagoretti Corner', 1, NULL, NULL, NULL),
('5b22391a-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Kugeria South', 1, NULL, NULL, NULL),
('5b223de8-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Mugumo Drive', 1, NULL, NULL, NULL),
('5b223f0a-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Pine Drive', 1, NULL, NULL, NULL),
('5b223fd2-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Maple Dirve', 1, NULL, NULL, NULL),
('5b224090-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Hazel Drive', 1, NULL, NULL, NULL),
('5b22414e-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Chuda Close', 1, NULL, NULL, NULL),
('5b224216-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Palm Drive', 1, NULL, NULL, NULL),
('5b2242d4-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Jacaranda Close', 1, NULL, NULL, NULL),
('5b224392-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Mvuli Drive', 1, NULL, NULL, NULL),
('5b224694-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Maple Drive', 1, NULL, NULL, NULL),
('5b224766-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Cider Close', 1, NULL, NULL, NULL),
('5b22481a-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Aspen Close', 1, NULL, NULL, NULL),
('5b2248d8-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Ebony Close', 1, NULL, NULL, NULL),
('5b224996-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Tulip Drive', 1, NULL, NULL, NULL),
('5b224a4a-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Golden Court Kugeria', 1, NULL, NULL, NULL),
('5b224afe-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Juniper Close', 1, NULL, NULL, NULL),
('5b224d9c-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Fig Tree', 1, NULL, NULL, NULL),
('5b224e64-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Acacia Drive', 1, NULL, NULL, NULL),
('5b224f2c-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Team Challenge', 1, NULL, NULL, NULL),
('5b224fea-a6b9-11eb-bcbc-0242ac130002', 'Mushroom Estate-Mushroom Road, MUSHROOM GARDENS ESTATE', 1, NULL, NULL, NULL),
('5b22515c-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Waireri Drive-37', 1, NULL, NULL, NULL),
('5b22521a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Waireri Drive-34', 1, NULL, NULL, NULL),
('5b2252d8-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Waireri Drive-39', 1, NULL, NULL, NULL),
('5b2255d0-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Waireri Drive-38', 1, NULL, NULL, NULL),
('5b2256a2-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Waireri Drive-36', 1, NULL, NULL, NULL),
('5b22576a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Acacia Drive-47', 1, NULL, NULL, NULL),
('5b225828-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Acacia Drive-48', 1, NULL, NULL, NULL),
('5b2258e6-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Acacia Drive-49', 1, NULL, NULL, NULL),
('5b2259a4-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUGUMO DRIVE, Mugumo Drive-15', 1, NULL, NULL, NULL),
('5b225a62-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUGUMO DRIVE, Mugumo Drive-16', 1, NULL, NULL, NULL),
('5b225b20-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUGUMO DRIVE, Mugumo Drive-17', 1, NULL, NULL, NULL),
('5b225d50-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUGUMO DRIVE, Mugumo Drive-22', 1, NULL, NULL, NULL),
('5b225e18-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Sub urban drive-12', 1, NULL, NULL, NULL),
('5b225ed6-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Munyaka Drive-31', 1, NULL, NULL, NULL),
('5b225f9e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Munyaka Drive-29', 1, NULL, NULL, NULL),
('5b22605c-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Muiri Drive-46', 1, NULL, NULL, NULL),
('5b22611a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, Muiri Drive-43', 1, NULL, NULL, NULL),
('5b226412-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-65', 1, NULL, NULL, NULL),
('5b2264e4-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-48', 1, NULL, NULL, NULL),
('5b226598-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-40', 1, NULL, NULL, NULL),
('5b226656-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-77', 1, NULL, NULL, NULL),
('5b226714-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-25', 1, NULL, NULL, NULL),
('5b2267c8-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-Professor', 1, NULL, NULL, NULL),
('5b22687c-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-85', 1, NULL, NULL, NULL),
('5b22693a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-205', 1, NULL, NULL, NULL),
('5b226b7e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-54', 1, NULL, NULL, NULL),
('5b226c50-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-64', 1, NULL, NULL, NULL),
('5b226d0e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-3', 1, NULL, NULL, NULL),
('5b226dcc-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-7', 1, NULL, NULL, NULL),
('5b226e8a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-115', 1, NULL, NULL, NULL),
('5b226f48-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-72', 1, NULL, NULL, NULL),
('5b227006-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-50', 1, NULL, NULL, NULL),
('5b2270c4-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-78', 1, NULL, NULL, NULL),
('5b227326-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-52', 1, NULL, NULL, NULL),
('5b2273e4-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-21', 1, NULL, NULL, NULL),
('5b227498-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-34', 1, NULL, NULL, NULL),
('5b227556-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-22', 1, NULL, NULL, NULL),
('5b22761e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-16', 1, NULL, NULL, NULL),
('5b2276d2-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-23', 1, NULL, NULL, NULL),
('5b22779a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-71', 1, NULL, NULL, NULL),
('5b2279b6-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-114', 1, NULL, NULL, NULL),
('5b227a7e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-19', 1, NULL, NULL, NULL),
('5b227b46-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-9', 1, NULL, NULL, NULL),
('5b227c04-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-51', 1, NULL, NULL, NULL),
('5b227ccc-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-47', 1, NULL, NULL, NULL),
('5b227d8a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-44', 1, NULL, NULL, NULL),
('5b227e48-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-29', 1, NULL, NULL, NULL),
('5b227f06-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-129', 1, NULL, NULL, NULL),
('5b2281e0-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-60', 1, NULL, NULL, NULL),
('5b2282b2-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-216', 1, NULL, NULL, NULL),
('5b228366-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-74', 1, NULL, NULL, NULL),
('5b22841a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-56', 1, NULL, NULL, NULL),
('5b2284ce-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-20', 1, NULL, NULL, NULL),
('5b228596-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-17', 1, NULL, NULL, NULL),
('5b22864a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-55', 1, NULL, NULL, NULL),
('5b228712-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-14', 1, NULL, NULL, NULL),
('5b228988-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-6', 1, NULL, NULL, NULL),
('5b228a5a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-49', 1, NULL, NULL, NULL),
('5b228b18-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-28', 1, NULL, NULL, NULL),
('5b228be0-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-61', 1, NULL, NULL, NULL),
('5b228c9e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-27', 1, NULL, NULL, NULL),
('5b228d52-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-Summerfield', 1, NULL, NULL, NULL),
('5b228e10-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-203', 1, NULL, NULL, NULL),
('5b2290fe-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-43', 1, NULL, NULL, NULL),
('5b2291c6-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-13', 1, NULL, NULL, NULL),
('5b22927a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-18', 1, NULL, NULL, NULL),
('5b229338-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-57', 1, NULL, NULL, NULL),
('5b2293ec-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-89', 1, NULL, NULL, NULL),
('5b2294aa-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-4', 1, NULL, NULL, NULL),
('5b229568-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-26', 1, NULL, NULL, NULL),
('5b229630-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-62', 1, NULL, NULL, NULL),
('5b229860-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-86', 1, NULL, NULL, NULL),
('5b22991e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-5', 1, NULL, NULL, NULL),
('5b2299dc-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-76', 1, NULL, NULL, NULL),
('5b229a9a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-Roba', 1, NULL, NULL, NULL),
('5b229b58-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-80', 1, NULL, NULL, NULL),
('5b229c20-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-36', 1, NULL, NULL, NULL),
('5b229cde-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-98', 1, NULL, NULL, NULL),
('5b229fb8-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-67', 1, NULL, NULL, NULL),
('5b22a080-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-207', 1, NULL, NULL, NULL),
('5b22a148-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-90', 1, NULL, NULL, NULL),
('5b22a206-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-30', 1, NULL, NULL, NULL),
('5b22a2ba-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-117', 1, NULL, NULL, NULL),
('5b22a378-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-97', 1, NULL, NULL, NULL),
('5b22a5e4-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-74B', 1, NULL, NULL, NULL),
('5b22a6ac-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-210', 1, NULL, NULL, NULL),
('5b22a760-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-82', 1, NULL, NULL, NULL),
('5b22a81e-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-125', 1, NULL, NULL, NULL),
('5b22a8dc-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-120', 1, NULL, NULL, NULL),
('5b22a99a-a6b9-11eb-bcbc-0242ac130002', 'Njathaini Road, MUTHITHI GARDENS-15', 1, NULL, NULL, NULL),
('672fd178-a6bd-11eb-bcbc-0242ac130002', 'Rumenye', 1, NULL, NULL, NULL),
('672fd498-a6bd-11eb-bcbc-0242ac130002', 'Turitu', 1, NULL, NULL, NULL),
('672fd574-a6bd-11eb-bcbc-0242ac130002', 'Kugeria South Raod', 1, NULL, NULL, NULL),
('672fd632-a6bd-11eb-bcbc-0242ac130002', 'Redhill', 1, NULL, NULL, NULL),
('672fd7c2-a6bd-11eb-bcbc-0242ac130002', 'Kikambala Road', 1, NULL, NULL, NULL),
('672fdb96-a6bd-11eb-bcbc-0242ac130002', 'Banana', 1, NULL, NULL, NULL),
('672fde66-a6bd-11eb-bcbc-0242ac130002', 'Lower Kabete', 1, NULL, NULL, NULL),
('672fdf56-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-1', 1, NULL, NULL, NULL),
('672fe00a-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-2', 1, NULL, NULL, NULL),
('672fe0be-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-3', 1, NULL, NULL, NULL),
('672fe2e4-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-4', 1, NULL, NULL, NULL),
('672fe3a2-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-5', 1, NULL, NULL, NULL),
('672fe456-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-6', 1, NULL, NULL, NULL),
('672fe50a-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-7', 1, NULL, NULL, NULL),
('672fe5c8-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-8', 1, NULL, NULL, NULL),
('672fe67c-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-9', 1, NULL, NULL, NULL),
('672fe73a-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-10', 1, NULL, NULL, NULL),
('672fe9e2-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-11', 1, NULL, NULL, NULL),
('672feaaa-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-12', 1, NULL, NULL, NULL),
('672feb68-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-13', 1, NULL, NULL, NULL),
('672fec1c-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-14', 1, NULL, NULL, NULL),
('672fecd0-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-15', 1, NULL, NULL, NULL),
('672fed7a-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-16', 1, NULL, NULL, NULL),
('672fee2e-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-17', 1, NULL, NULL, NULL),
('672ff07c-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-18', 1, NULL, NULL, NULL),
('672ff144-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-19', 1, NULL, NULL, NULL),
('672ff1f8-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-20', 1, NULL, NULL, NULL),
('672ff2b6-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-21', 1, NULL, NULL, NULL),
('672ff360-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-22', 1, NULL, NULL, NULL),
('672ff414-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-23', 1, NULL, NULL, NULL),
('672ff4d2-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-24', 1, NULL, NULL, NULL),
('672ff586-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-25', 1, NULL, NULL, NULL),
('672ff7a2-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-26', 1, NULL, NULL, NULL),
('672ff860-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-27', 1, NULL, NULL, NULL),
('672ff914-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-28', 1, NULL, NULL, NULL),
('672ff9d2-a6bd-11eb-bcbc-0242ac130002', 'Riverview Waterside Estate-29', 1, NULL, NULL, NULL),
('672ffb30-a6bd-11eb-bcbc-0242ac130002', 'Nyeri Road', 1, NULL, NULL, NULL),
('672ffbe4-a6bd-11eb-bcbc-0242ac130002', 'Gikambura', 1, NULL, NULL, NULL),
('672ffeaa-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1009', 1, NULL, NULL, NULL),
('672fff5e-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1019A', 1, NULL, NULL, NULL),
('67300012-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1016', 1, NULL, NULL, NULL),
('673000c6-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1019', 1, NULL, NULL, NULL),
('6730017a-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1026', 1, NULL, NULL, NULL),
('6730022e-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1011', 1, NULL, NULL, NULL),
('673002e2-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1003', 1, NULL, NULL, NULL),
('673004fe-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1005', 1, NULL, NULL, NULL),
('673005bc-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1027', 1, NULL, NULL, NULL),
('67300670-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1032', 1, NULL, NULL, NULL),
('6730072e-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1017', 1, NULL, NULL, NULL),
('673007e2-a6bd-11eb-bcbc-0242ac130002', 'SILVER GARDEN ESTATE-1014', 1, NULL, NULL, NULL),
('67300896-a6bd-11eb-bcbc-0242ac130002', 'Mogotio Road 17', 1, NULL, NULL, NULL),
('67300b98-a6bd-11eb-bcbc-0242ac130002', 'Thome', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` varchar(50) NOT NULL,
  `client_area` varchar(255) DEFAULT NULL,
  `client` varchar(50) DEFAULT NULL,
  `bags_issued` int(7) DEFAULT NULL,
  `bags_size` varchar(10) DEFAULT NULL,
  `occupied_units` int(11) DEFAULT NULL,
  `total_bags_issued` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `client_area`, `client`, `bags_issued`, `bags_size`, `occupied_units`, `total_bags_issued`, `created_by`, `updated_by`, `date_created`, `date_deleted`, `updated_at`, `created_at`) VALUES
('335b900f-9eb4-4972-9927-32120ea8cfaa', '5b22321c-a6b9-11eb-bcbc-0242ac130002', 'c78acd92-a6be-11eb-bcbc-0242ac130002', 8, 'Small', 3, 24, 'fkahindi', 'fkahindi', '2021-04-28 12:06:52', NULL, '2021-04-28 09:07:10', '2021-04-28 09:07:10'),
('7337e8d4-8a13-4e07-a98b-558d4f81f938', '5b21dce0-a6b9-11eb-bcbc-0242ac130002', 'c78a6e42-a6be-11eb-bcbc-0242ac130002', 8, 'Large', 20, 160, 'fkahindi', 'fkahindi', '2021-04-28 11:58:54', NULL, '2021-04-28 09:02:39', '2021-04-28 09:02:39'),
('ed4f1c87-60db-417c-86ad-3d84e368bc67', '5b22321c-a6b9-11eb-bcbc-0242ac130002', 'c78acd92-a6be-11eb-bcbc-0242ac130002', 8, 'Small', 30, 240, 'fkahindi', 'fkahindi', '2021-04-28 12:08:49', NULL, '2021-04-28 09:08:53', '2021-04-28 09:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'stock', 'authgroup'),
(8, 'stock', 'authgrouppermissions'),
(9, 'stock', 'authpermission'),
(10, 'stock', 'authuser'),
(11, 'stock', 'authusergroups'),
(12, 'stock', 'authuseruserpermissions'),
(13, 'stock', 'cisessions'),
(14, 'stock', 'clientareas'),
(15, 'stock', 'clients'),
(16, 'stock', 'deliveries'),
(17, 'stock', 'djangoadminlog'),
(18, 'stock', 'djangocontenttype'),
(19, 'stock', 'djangomigrations'),
(20, 'stock', 'djangosession'),
(21, 'stock', 'fileupload'),
(24, 'stock', 'mine'),
(22, 'stock', 'roles'),
(23, 'stock', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-27 08:28:34.909730'),
(2, 'auth', '0001_initial', '2021-04-27 08:28:37.296950'),
(3, 'admin', '0001_initial', '2021-04-27 08:28:46.769958'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-27 08:28:48.561365'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-27 08:28:48.634316'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-27 08:28:49.557507'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-27 08:28:50.798433'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-27 08:28:51.012161'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-27 08:28:51.081108'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-27 08:28:52.384561'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-27 08:28:52.428873'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-27 08:28:52.509823'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-27 08:28:52.664409'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-27 08:28:52.822812'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-27 08:28:53.057768'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-27 08:28:53.137101'),
(17, 'sessions', '0001_initial', '2021-04-27 08:28:53.505754'),
(18, 'stock', '0001_initial', '2021-04-27 11:36:11.631651'),
(19, 'stock', '0002_mine', '2021-04-27 12:18:51.532702'),
(20, 'stock', '0002_auto_20210427_1553', '2021-04-27 12:53:57.375581');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ah781s3ayv0m0qxx8euwlheuvk1032oe', 'OTI0ZTU5YjEyMWZiOGFiNmE5NmRlNjI3NmJmODk0ZjE3ZGVhNjkyYTp7fQ==', '2021-05-19 09:21:45.066858'),
('czjp0ysm4ojh0ts34g41yzx0ut96ldmb', 'OTI0ZTU5YjEyMWZiOGFiNmE5NmRlNjI3NmJmODk0ZjE3ZGVhNjkyYTp7fQ==', '2021-05-19 08:41:14.183683'),
('dxt5144l7dneykllwchwwuy1kfjhl05w', 'OTI0ZTU5YjEyMWZiOGFiNmE5NmRlNjI3NmJmODk0ZjE3ZGVhNjkyYTp7fQ==', '2021-05-19 08:48:44.572528'),
('ui4gmu0dspbd0pgz1kilcmpv40xkyju9', 'OTI0ZTU5YjEyMWZiOGFiNmE5NmRlNjI3NmJmODk0ZjE3ZGVhNjkyYTp7fQ==', '2021-05-19 09:01:04.886155'),
('wbu8qa8g9pvhwzk9aq0mlvwzht67sifz', 'OTI0ZTU5YjEyMWZiOGFiNmE5NmRlNjI3NmJmODk0ZjE3ZGVhNjkyYTp7fQ==', '2021-05-19 09:24:20.836353');

-- --------------------------------------------------------

--
-- Table structure for table `file_upload`
--

CREATE TABLE `file_upload` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_upload`
--

INSERT INTO `file_upload` (`id`, `file_name`, `created_at`, `updated_at`) VALUES
(1, '8757036e-6d6b-41c1-b937-0f2954cbb1d5.jpg', '2021-04-06 08:57:55', '2021-04-06 08:57:55'),
(2, 'ea9444f7-9020-44a2-ba22-41992af64920.jpg', '2021-04-06 09:12:45', '2021-04-06 09:12:45'),
(3, '0bf74828-a1a8-4b44-84f9-1fffa457b526.jpg', '2021-04-06 09:13:56', '2021-04-06 09:13:56'),
(4, '0bf74828-a1a8-4b44-84f9-1fffa457b526.jpg', '2021-04-06 09:14:03', '2021-04-06 09:14:03'),
(5, '9fdbe011-f4a9-49dd-a593-920d1397beca.jpg', '2021-04-06 09:49:25', '2021-04-06 09:49:25'),
(6, '9fdbe011-f4a9-49dd-a593-920d1397beca.jpg', '2021-04-06 09:49:28', '2021-04-06 09:49:28'),
(7, '4a61538f-f4bd-4caf-b77d-012e863a2e0d.jpg', '2021-04-06 10:07:24', '2021-04-06 10:07:24'),
(8, '73db22d2-62d4-4345-8f5e-6c92a97e7616.jpg', '2021-04-07 10:36:07', '2021-04-07 10:36:07'),
(9, '73db22d2-62d4-4345-8f5e-6c92a97e7616.jpg', '2021-04-07 10:36:20', '2021-04-07 10:36:20'),
(10, '73db22d2-62d4-4345-8f5e-6c92a97e7616.jpg', '2021-04-07 10:36:34', '2021-04-07 10:36:34'),
(11, '54c8367e-74f7-49e5-93be-ac4c199f117a.jpg', '2021-04-07 11:19:49', '2021-04-07 11:19:49'),
(12, '6fc5c0db-455f-4f48-af4b-92cea5a8d416.jpg', '2021-04-07 11:22:39', '2021-04-07 11:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(5) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_description` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_description`, `status`, `timestamp`) VALUES
(1, 'super_admin', 'All Rights Permitted', 1, '2021-03-24 07:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` tinytext NOT NULL,
  `role_id` int(5) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `mobile`, `email`, `password`, `status`, `firstname`, `lastname`) VALUES
(1, 'admin', 1, '+254700668227', 'kahindi@gmail.com', '654321', 1, NULL, NULL),
(2, 'dennis', 1, '010101', 'dennis', '123456', 1, 'dennis', 'test'),
(3, 'Bella', 1, '254706404301', '', '654321', 1, 'Bella', 'Ochola');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_areas`
--
ALTER TABLE `client_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `file_upload`
--
ALTER TABLE `file_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `file_upload`
--
ALTER TABLE `file_upload`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
