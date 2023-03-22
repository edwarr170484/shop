-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 02:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'T1Z96wxD7gXyZlxXV4794dVh5LCSWaYOcEFuQT3wPiQW6leaAczSb93dyBDkpM7uNu01jvVwJN1RBIuvL9f98o2c0CUM0yVNVEJ5oOWefvhJGJn12DDUCD4Uku2O1qKtxke03QeietpT76k7mGlMs9lphkQ09hvtZpkRYAMcFOihRzrq64tfHltsPLeT36NcThYPOX2TRn4be4Xn9Vdp57ITB17ha6BSDC5WiHUMJYIcIzyhNdCmKZhPsZKXuNAK', 1, '2017-11-11 14:59:23', '2017-11-11 14:59:23'),
(2, 'Default', 'yIMyBMbT1RzasXinBb6rCyDreFP3glT399z8VmW53DeL1qAnq6Z2szTkNMCJGh0aAPhmcoYNnXJ2LJaxT4wqqytrgwqhKI7Ok9w79yVYjZrKcX75D6xF2dMYneEAEt0LZDOohIX1AzcJTNIEYptBk9sa4XFpRMaBXVRAnzjcZmzUSc8gk0V4gwzb10hCfWGxDoveCxhVifn3fp0IU061AgEHGNx62VSLf6ylqJrTG9nDAqRIDEeejMclAiomVto7', 1, '2022-12-19 22:24:47', '2022-12-19 22:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 2, '127.0.0.1'),
(2, 2, '93.84.109.76');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(22, 2, '1b2b83e3c1cd5e1792ac0a28da', '127.0.0.1', '2023-01-09 23:48:16', '2023-01-09 23:48:21'),
(21, 2, '226dc5387dad8b0843c6747007', '127.0.0.1', '2023-01-09 23:48:12', '2023-01-09 23:48:16'),
(3, 2, '3ab40108bd1d30a0f703ccb8e7', '127.0.0.1', '2023-01-09 23:01:44', '2023-01-09 23:01:44'),
(4, 2, '3eb0082911c6e1250fe9d06b25', '127.0.0.1', '2023-01-09 23:02:22', '2023-01-09 23:02:22'),
(5, 2, '7b5b08a122df190def74a49ff6', '127.0.0.1', '2023-01-09 23:17:30', '2023-01-09 23:17:30'),
(6, 2, 'fbd9b7409fdda23fb3dcec7c0e', '127.0.0.1', '2023-01-09 23:17:33', '2023-01-09 23:17:33'),
(7, 2, '2cc91c6c5fbcf7f3ff190ac8d1', '127.0.0.1', '2023-01-09 23:18:22', '2023-01-09 23:18:22'),
(8, 2, 'd79dfe521987adeef91e85a0be', '127.0.0.1', '2023-01-09 23:18:25', '2023-01-09 23:18:25'),
(9, 2, 'c47b3075afd15d9e3a4e453ba1', '127.0.0.1', '2023-01-09 23:19:09', '2023-01-09 23:19:09'),
(10, 2, '08255fcbfa0d729648c3ba245d', '127.0.0.1', '2023-01-09 23:19:17', '2023-01-09 23:19:17'),
(11, 2, '9231d8e543e43c2cddd807b9f6', '127.0.0.1', '2023-01-09 23:37:54', '2023-01-09 23:37:54'),
(12, 2, '61d48411639e92336176d3d2bd', '127.0.0.1', '2023-01-09 23:37:56', '2023-01-09 23:37:56'),
(13, 2, '382cdce20345f34556e2812a94', '127.0.0.1', '2023-01-09 23:43:05', '2023-01-09 23:43:05'),
(14, 2, '3b5600bcf4322f2013be72b468', '127.0.0.1', '2023-01-09 23:43:06', '2023-01-09 23:43:06'),
(15, 2, '8fc7435ab13a428840b2711f88', '127.0.0.1', '2023-01-09 23:45:44', '2023-01-09 23:45:44'),
(16, 2, '6574e6df4d409cb1c0a9804105', '127.0.0.1', '2023-01-09 23:45:47', '2023-01-09 23:45:47'),
(17, 2, 'e07def6ef12bf815735b1c0c1a', '127.0.0.1', '2023-01-09 23:46:06', '2023-01-09 23:46:06'),
(18, 2, '5add1d31c508edb77992b73ee0', '127.0.0.1', '2023-01-09 23:46:11', '2023-01-09 23:46:11'),
(19, 2, 'cd880bd3acda01c5a47a5b62b2', '127.0.0.1', '2023-01-09 23:46:30', '2023-01-09 23:46:30'),
(20, 2, '291a6dcd6e8934ce9fd3ca089e', '127.0.0.1', '2023-01-09 23:47:58', '2023-01-09 23:48:11'),
(23, 2, 'ccca07aad2a6822229cb41222c', '127.0.0.1', '2023-01-09 23:48:21', '2023-01-09 23:48:24'),
(24, 2, 'fe1fd2303150092b7380158ab1', '127.0.0.1', '2023-01-09 23:48:24', '2023-01-09 23:48:27'),
(25, 2, 'f83eedbc0cf0b7d20769f2a33e', '127.0.0.1', '2023-01-09 23:48:27', '2023-01-09 23:48:30'),
(26, 2, '040a8834c8a389c73027758383', '127.0.0.1', '2023-01-09 23:48:30', '2023-01-09 23:48:34'),
(27, 2, '7514f4c5f49f5b1879969880da', '127.0.0.1', '2023-01-09 23:48:34', '2023-01-09 23:48:34'),
(28, 2, '15b06678ab6e1f50790ee3e238', '93.84.109.76', '2023-01-13 11:52:02', '2023-01-13 11:52:02'),
(29, 2, '31dbdaf3c1732ccfeefabb1168', '93.84.109.76', '2023-01-13 11:52:12', '2023-01-13 11:52:12'),
(30, 2, 'a69560efbb1c768deb8afee85e', '93.84.109.76', '2023-01-13 11:54:56', '2023-01-13 11:54:56'),
(31, 2, 'b4e14191f41ec7ca80859b2122', '93.84.109.76', '2023-01-13 11:54:58', '2023-01-13 11:54:58'),
(32, 2, '28cdee90c1ddc99fecb7dbcf87', '93.84.109.76', '2023-01-13 11:55:03', '2023-01-13 11:55:03'),
(33, 2, '6af02d518662c3bb2eaa9e527f', '93.84.109.76', '2023-01-13 11:55:59', '2023-01-13 11:55:59'),
(34, 2, '09fd609f10c5655b5b90075880', '93.84.109.76', '2023-01-13 11:56:03', '2023-01-13 11:56:03'),
(35, 2, '55762306c32df51907691d0b55', '93.84.109.76', '2023-01-13 11:56:22', '2023-01-13 11:56:22'),
(36, 2, 'e8661740c018ecaec84d3afa18', '93.84.109.76', '2023-01-13 11:56:55', '2023-01-13 11:56:55'),
(37, 2, 'ce331d6ab722c92d6ef68cf634', '93.84.109.76', '2023-01-13 11:56:58', '2023-01-13 11:56:58'),
(38, 2, '483402040a80b970eab3986f8b', '93.84.109.76', '2023-01-13 11:58:13', '2023-01-13 11:58:13'),
(39, 2, 'fc5c105046165e7d12c0d220b2', '93.84.109.76', '2023-01-13 11:58:14', '2023-01-13 11:58:14'),
(40, 2, '1dd7f3c0f3b3e8381b66cf2b58', '93.84.109.76', '2023-01-13 11:58:18', '2023-01-13 11:58:18'),
(41, 2, '95b5632f844dc719352a0d8ca3', '93.84.109.76', '2023-01-13 12:01:46', '2023-01-13 12:01:46'),
(42, 2, 'b5f21b17c3fcfb0e3291035cf0', '93.84.109.76', '2023-01-13 12:01:48', '2023-01-13 12:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `import_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`, `import_id`) VALUES
(12, 7, 1, '000000008'),
(13, 7, 1, '000000015'),
(14, 7, 1, '000000014'),
(15, 7, 1, '000000004'),
(16, 7, 1, '000000018'),
(17, 7, 1, '000000001'),
(18, 7, 1, '000000010'),
(19, 7, 1, '000000009'),
(20, 7, 1, '000000006'),
(21, 7, 1, '000000011'),
(22, 7, 1, '000000017'),
(23, 7, 1, '000000013'),
(24, 7, 1, '000000003'),
(25, 7, 1, '000000007'),
(26, 7, 1, '000000016'),
(27, 7, 1, '000000012'),
(28, 7, 1, '000000002'),
(29, 7, 1, '000000005');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 2, 'Вес'),
(13, 2, 'Внутренний диаметр'),
(14, 2, 'Диаметр'),
(15, 2, 'Длина'),
(16, 2, 'Количество в рулоне'),
(17, 2, 'Количество в упаковке'),
(18, 2, 'Количество отверстий'),
(19, 2, 'Количество проколов'),
(20, 2, 'Материал'),
(21, 2, 'Намотка'),
(22, 2, 'Номер иглы'),
(23, 2, 'Плотность'),
(24, 2, 'Размер'),
(25, 2, 'Состав'),
(26, 2, 'Тип молний'),
(27, 2, 'Толщина'),
(28, 2, 'Цвет'),
(29, 2, 'Ширина');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(7, 2, 'Характеристики');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Слайдер на главной', 1),
(9, 'Clients', 1),
(10, 'Сертификаты', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(139, 9, 2, 'Клиент 5', '', 'catalog/clients/logo.png', 5),
(138, 9, 2, 'Клиент 4', '', 'catalog/clients/kupalinka.png', 4),
(145, 10, 2, 'Сертфикат4', '', 'catalog/site/Rectangle 310.png', 4),
(144, 10, 2, 'Сертфикат3', '', 'catalog/site/Rectangle 310.png', 3),
(143, 10, 2, 'Сертфикат2', '', 'catalog/site/Rectangle 310.png', 2),
(142, 10, 2, 'Сертфикат1', '', 'catalog/site/Rectangle 310.png', 1),
(137, 9, 2, 'Клиент 3', '', 'catalog/clients/8340ce4f2e8183bee98a60bd6a2d476f.png', 3),
(136, 9, 2, 'Клиент 2', '', 'catalog/clients/8marta-removebg-preview.png', 2),
(135, 9, 2, 'Клиент 1', '', 'catalog/clients/svitanak_logo_ru.png', 1),
(147, 6, 2, 'Качественная швейная фурнитура по доступным ценам', '/index.php?route=extension/d_blog_module/category&amp;category_id=9', 'catalog/main-banner.png', 2),
(146, 6, 2, 'Качественная швейная фурнитура по доступным ценам', '/index.php?route=extension/d_blog_module/post&amp;post_id=11', 'catalog/main-banner.png', 1),
(140, 9, 2, 'Клиент 6', '', 'catalog/clients/mf.png', 6),
(141, 9, 2, 'Клиент 7', '', 'catalog/clients/logo_8.png', 7),
(148, 6, 2, 'Качественная швейная фурнитура по доступным ценам', '/index.php?route=extension/d_blog_module/category&amp;category_id=10', 'catalog/main-banner.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_author`
--

CREATE TABLE `oc_bm_author` (
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_group_id` int(11) NOT NULL,
  `custom` int(1) DEFAULT 0,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_author`
--

INSERT INTO `oc_bm_author` (`author_id`, `user_id`, `author_group_id`, `custom`, `setting`) VALUES
(1, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_author_description`
--

CREATE TABLE `oc_bm_author_description` (
  `author_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `short_description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `author_description_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_author_description`
--

INSERT INTO `oc_bm_author_description` (`author_id`, `language_id`, `name`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `author_description_id`) VALUES
(1, 2, 'Author', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', 'Author', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_author_group`
--

CREATE TABLE `oc_bm_author_group` (
  `author_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_author_group`
--

INSERT INTO `oc_bm_author_group` (`author_group_id`, `name`, `permission`) VALUES
(1, 'admin', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(2, 'editor', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(3, 'author', '[\"add_posts\",\"edit_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\"]'),
(4, 'moderator', '[\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\"]');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_category`
--

CREATE TABLE `oc_bm_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `limit_access_user` int(1) NOT NULL DEFAULT 0,
  `limit_users` text DEFAULT NULL,
  `limit_access_user_group` int(1) NOT NULL DEFAULT 0,
  `limit_user_groups` text DEFAULT NULL,
  `custom` int(1) DEFAULT 0,
  `setting` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_category`
--

INSERT INTO `oc_bm_category` (`category_id`, `parent_id`, `sort_order`, `image`, `status`, `limit_access_user`, `limit_users`, `limit_access_user_group`, `limit_user_groups`, `custom`, `setting`, `date_added`, `date_modified`) VALUES
(1, 0, 1, 'catalog/blog/news-svgrepo-com 1.png', 1, 0, '', 0, '', 0, '\"\"', '2016-04-09 11:28:15', '2023-01-05 12:11:25'),
(10, 0, 4, 'catalog/blog/refresh-svgrepo-com 1.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:11:54', '2023-01-05 12:11:54'),
(11, 0, 5, 'catalog/blog/search-svgrepo-com (10) 1.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:12:22', '2023-01-05 12:12:22'),
(8, 0, 2, 'catalog/blog/comment-svgrepo-com 1.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:10:33', '2023-01-05 12:10:33'),
(9, 0, 3, 'catalog/blog/Group 2.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:11:07', '2023-01-05 12:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_category_description`
--

CREATE TABLE `oc_bm_category_description` (
  `category_description_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_category_description`
--

INSERT INTO `oc_bm_category_description` (`category_description_id`, `category_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(19, 1, 2, 'Новости', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Новости', '', ''),
(16, 8, 2, 'Полезные советы', '', '', 'Полезные советы', '', ''),
(18, 9, 2, 'Обзор новинок', '', '', 'Обзор новинок', '', ''),
(20, 10, 2, 'Жизнь наизнанку', '', '', 'Жизнь наизнанку', '', ''),
(21, 11, 2, 'Активные вакансии', '', '', 'Активные вакансии', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_category_path`
--

CREATE TABLE `oc_bm_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_category_path`
--

INSERT INTO `oc_bm_category_path` (`category_id`, `path_id`, `level`) VALUES
(1, 1, 0),
(10, 10, 0),
(11, 11, 0),
(9, 9, 0),
(8, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_category_to_layout`
--

CREATE TABLE `oc_bm_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_category_to_layout`
--

INSERT INTO `oc_bm_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(10, 0, 0),
(9, 0, 0),
(11, 0, 0),
(8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_category_to_store`
--

CREATE TABLE `oc_bm_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_category_to_store`
--

INSERT INTO `oc_bm_category_to_store` (`category_id`, `store_id`) VALUES
(1, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post`
--

CREATE TABLE `oc_bm_post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `review_display` int(1) DEFAULT 0,
  `images_review` int(1) DEFAULT 0,
  `viewed` int(11) DEFAULT 1,
  `status` int(1) DEFAULT 1,
  `limit_access_user` int(1) NOT NULL DEFAULT 0,
  `limit_users` text DEFAULT NULL,
  `limit_access_user_group` int(1) NOT NULL DEFAULT 0,
  `limit_user_groups` text DEFAULT NULL,
  `custom` int(1) DEFAULT 0,
  `setting` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_published` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_post`
--

INSERT INTO `oc_bm_post` (`post_id`, `user_id`, `image`, `image_title`, `image_alt`, `review_display`, `images_review`, `viewed`, `status`, `limit_access_user`, `limit_users`, `limit_access_user_group`, `limit_user_groups`, `custom`, `setting`, `date_added`, `date_published`, `date_modified`) VALUES
(11, 1, 'catalog/blog/январь.png', NULL, NULL, 0, 0, 13, 1, 0, NULL, 0, NULL, 0, '', '2023-01-12 22:57:22', '2023-01-12 19:54:42', '2023-01-12 22:57:22'),
(12, 1, 'catalog/blog/16.png', NULL, NULL, 0, 0, 6, 1, 0, '', 0, '', 0, '', '2023-01-12 22:58:53', '2023-01-12 19:58:02', '2023-01-12 22:59:44'),
(13, 1, 'catalog/blog/ДЮСПА.png', NULL, NULL, 0, 0, 4, 1, 0, NULL, 0, NULL, 0, '', '2023-01-12 23:01:39', '2023-01-12 20:00:45', '2023-01-12 23:01:39'),
(14, 1, 'catalog/blog/IMG_0873.jpeg', NULL, NULL, 0, 0, 4, 1, 0, NULL, 0, NULL, 0, '', '2023-01-12 23:03:28', '2023-01-12 20:02:31', '2023-01-12 23:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_description`
--

CREATE TABLE `oc_bm_post_description` (
  `post_description_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_post_description`
--

INSERT INTO `oc_bm_post_description` (`post_description_id`, `post_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `tag`) VALUES
(143, 12, 2, 'Катушечные нитки имеют нумерацию', 'Катушечные нитки имеют нумерацию. Разберемся, что она означает и от чего зависит.', '&lt;p&gt;&lt;b&gt;Метрическая нумерация (Nm).&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Показывает сколько метров в одном грамме ниток и сопровождается информацией о структуре нити (количестве сложений).&lt;/p&gt;&lt;p&gt;Например: Nm 40/2 означает, что в одном грамме нити 40 метров, а таких нитей в нитке две. Получается, что 40 метров нитки 40/2 весят 2 грамма.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Этикеточная нумерация (этикеточный номер — №).&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Вытекает из метрической нумерации, но не рассказывает о количестве сложений.&lt;/p&gt;&lt;p&gt;Например: №20, №60, №80, №120.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;И для метрического, и для этикетного номера действует одно правило: чем ниже число, тем толще нить.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Международная нумерация (tex).&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Номер показывает, сколько грамм весит 1000 м (1 км) нити. Количество сложений указывают после знака «х».&lt;/p&gt;&lt;p&gt;Например: 123х3, 25х2&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Здесь чем больше номер, тем толще нить.&lt;/p&gt;', 'Катушечные нитки имеют нумерацию', '', '', ''),
(144, 13, 2, 'Встречайте новинку — курточная ткань Дюспо 240 Т &quot;PU MILKY&quot;', 'Приятная на ощупь, мягкая, ткань Дюспо не изменяет насыщенности цвета и не выгорает.', '&lt;p&gt;Приятная на ощупь, мягкая, ткань Дюспо не изменяет насыщенности цвета и не выгорает.&lt;/p&gt;&lt;p&gt;Износостойкая, прочная, с водоотталкивающей пропиткой.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Куртки и пальто из Дюспо можно носить от +5°С до -15°С, при этом они хорошо сохраняют тепло, позволяют телу дышать, прочны и красивы.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Ткань устойчива к загрязнениям и не требует особого ухода.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;✔️плотность: 80 г/м²;&lt;/p&gt;&lt;p&gt;✔️ширина ткани: 150 см;&lt;/p&gt;&lt;p&gt;✔️намотка: 100 м;&lt;/p&gt;&lt;p&gt;✔️цена: от 7,59 BYN/м без НДС.&lt;/p&gt;', 'Встречайте новинку — курточная ткань Дюспо 240 Т &quot;PU MILKY&quot;', '', '', ''),
(145, 14, 2, 'Мы ввели ежегодную традицию', 'Мы ввели ежегодную традицию — одним фото подводить итоги уходящего года.', '&lt;p&gt;Мы ввели ежегодную традицию — одним фото подводить итоги уходящего года.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;В этом году мы решили выделить:&amp;nbsp;&lt;/p&gt;&lt;p&gt;* Столица Казахстана вновь переименована в Астану;&lt;/p&gt;&lt;p&gt;* Закрытие «МакДональдс»&amp;nbsp; в Беларуси и России;&lt;/p&gt;&lt;p&gt;* Скачки курсов валют;&lt;/p&gt;&lt;p&gt;* Чемпионат мира по футболу в Катаре&lt;/p&gt;', 'Мы ввели ежегодную традицию', '', '', ''),
(141, 11, 2, 'Начинаем год со специального предложения', 'Начинаем год со специального предложения', '&lt;p&gt;резинка вязаная за⚡️3,25 BYN вместо 3,74 BYN/рулон без НДС&lt;/p&gt;&lt;p&gt;☑️ в 1 рулоне 25 м;&lt;br&gt;&lt;/p&gt;&lt;p&gt;☑️ ширина: 20 мм;&lt;/p&gt;&lt;p&gt;☑️ цвет: белый&lt;/p&gt;&lt;p&gt;Не пропустите — закажите сегодня.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Предложение действует до конца месяца&lt;/p&gt;', 'Начинаем год со специального предложения', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_related`
--

CREATE TABLE `oc_bm_post_related` (
  `post_id` int(11) NOT NULL,
  `post_related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_to_category`
--

CREATE TABLE `oc_bm_post_to_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_post_to_category`
--

INSERT INTO `oc_bm_post_to_category` (`post_id`, `category_id`) VALUES
(11, 1),
(12, 8),
(13, 9),
(14, 10);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_to_layout`
--

CREATE TABLE `oc_bm_post_to_layout` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_post_to_layout`
--

INSERT INTO `oc_bm_post_to_layout` (`post_id`, `store_id`, `layout_id`) VALUES
(14, 0, 0),
(11, 0, 0),
(13, 0, 0),
(12, 0, 0),
(11, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_to_product`
--

CREATE TABLE `oc_bm_post_to_product` (
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_to_store`
--

CREATE TABLE `oc_bm_post_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_bm_post_to_store`
--

INSERT INTO `oc_bm_post_to_store` (`post_id`, `store_id`) VALUES
(14, 0),
(11, 0),
(13, 0),
(12, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_post_video`
--

CREATE TABLE `oc_bm_post_video` (
  `post_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_review`
--

CREATE TABLE `oc_bm_review` (
  `review_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply_to_review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `guest_email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(1) DEFAULT 1,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_bm_review_to_image`
--

CREATE TABLE `oc_bm_review_to_image` (
  `review_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `import_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `import_id`) VALUES
(25, '', 0, 1, 1, 2, 1, '2009-01-31 01:04:25', '2023-02-13 12:03:05', NULL),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2023-02-10 09:35:34', NULL),
(20, '', 0, 1, 1, 3, 1, '2009-01-05 21:49:43', '2023-02-13 12:03:20', NULL),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2023-02-13 12:04:15', NULL),
(18, '', 0, 1, 0, 4, 1, '2009-01-05 21:49:15', '2023-02-13 12:03:39', NULL),
(17, '', 0, 1, 1, 6, 1, '2009-01-03 21:08:57', '2023-02-13 12:04:30', NULL),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2023-02-10 09:33:18', NULL),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2023-02-10 09:35:47', NULL),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2023-02-10 09:33:01', NULL),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2023-02-10 09:33:35', NULL),
(76, '', 18, 0, 1, 0, 1, '2023-02-10 09:35:15', '2023-02-10 09:35:15', NULL),
(75, '', 18, 0, 1, 0, 1, '2023-02-10 09:34:49', '2023-02-10 09:34:49', NULL),
(33, '', 0, 1, 1, 1, 1, '2009-02-03 14:17:55', '2023-02-13 12:02:48', NULL),
(34, '', 0, 1, 4, 4, 1, '2009-02-03 14:18:11', '2023-02-13 12:03:53', NULL),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2023-02-10 09:38:50', NULL),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2023-02-10 09:38:27', NULL),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2023-02-10 09:39:10', NULL),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2023-02-10 09:39:26', NULL),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2023-02-10 09:39:46', NULL),
(82, '', 33, 0, 1, 0, 1, '2023-02-10 09:41:05', '2023-02-10 09:41:05', NULL),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2023-02-10 09:34:23', NULL),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2023-02-10 09:34:07', NULL),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2023-02-10 09:38:07', NULL),
(57, '', 0, 1, 1, 7, 1, '2011-04-26 08:53:16', '2023-02-14 09:51:28', NULL),
(59, '', 0, 0, 1, 8, 1, '2023-02-10 09:07:44', '2023-02-14 09:51:57', NULL),
(60, '', 0, 0, 1, 9, 1, '2023-02-10 09:07:54', '2023-02-13 12:05:46', NULL),
(61, '', 0, 0, 1, 10, 1, '2023-02-10 09:08:07', '2023-02-13 12:05:59', NULL),
(62, '', 0, 0, 1, 11, 1, '2023-02-10 09:08:22', '2023-02-13 12:06:15', NULL),
(63, '', 0, 0, 1, 12, 1, '2023-02-10 09:08:37', '2023-02-13 12:06:29', NULL),
(64, '', 0, 0, 1, 13, 1, '2023-02-10 09:08:51', '2023-02-13 12:06:47', NULL),
(65, '', 0, 0, 1, 14, 1, '2023-02-10 09:09:08', '2023-02-13 12:07:05', NULL),
(66, '', 0, 0, 1, 15, 1, '2023-02-10 09:09:26', '2023-02-13 12:07:26', NULL),
(67, '', 0, 0, 1, 16, 1, '2023-02-10 09:09:53', '2023-02-13 12:07:41', NULL),
(68, '', 0, 0, 1, 17, 1, '2023-02-10 09:10:10', '2023-02-13 12:08:05', NULL),
(69, '', 0, 0, 1, 18, 1, '2023-02-10 09:10:20', '2023-02-13 12:08:29', NULL),
(70, '', 0, 0, 1, 19, 1, '2023-02-10 09:10:37', '2023-02-13 12:08:44', NULL),
(71, '', 0, 0, 1, 20, 1, '2023-02-10 09:10:59', '2023-02-13 12:09:05', NULL),
(72, '', 0, 0, 1, 21, 1, '2023-02-10 09:11:10', '2023-02-13 12:09:15', NULL),
(73, '', 0, 0, 1, 22, 1, '2023-02-10 09:11:26', '2023-02-13 12:09:30', NULL),
(74, '', 0, 0, 1, 23, 1, '2023-02-10 09:11:37', '2023-02-13 12:09:42', NULL),
(77, '', 20, 0, 1, 0, 1, '2023-02-10 09:36:14', '2023-02-10 09:36:14', NULL),
(78, '', 20, 0, 1, 0, 1, '2023-02-10 09:36:33', '2023-02-10 09:36:33', NULL),
(79, '', 20, 0, 1, 0, 1, '2023-02-10 09:36:52', '2023-02-10 09:36:52', NULL),
(80, '', 20, 0, 1, 0, 1, '2023-02-10 09:37:19', '2023-02-10 09:37:19', NULL),
(81, '', 20, 0, 1, 0, 1, '2023-02-10 09:37:41', '2023-02-10 09:37:41', NULL),
(83, '', 33, 0, 1, 0, 1, '2023-02-10 09:41:25', '2023-02-10 09:41:25', NULL),
(84, '', 24, 0, 1, 0, 1, '2023-02-10 09:42:12', '2023-02-10 09:42:12', NULL),
(85, '', 24, 0, 1, 0, 1, '2023-02-10 09:42:31', '2023-02-10 09:42:31', NULL),
(86, '', 24, 0, 1, 0, 1, '2023-02-10 09:42:52', '2023-02-10 09:42:52', NULL),
(87, '', 24, 0, 1, 0, 1, '2023-02-10 09:43:09', '2023-02-10 09:43:09', NULL),
(88, '', 24, 0, 1, 0, 1, '2023-02-10 09:43:32', '2023-02-10 09:43:32', NULL),
(89, '', 24, 0, 1, 0, 1, '2023-02-10 09:43:46', '2023-02-10 09:43:46', NULL),
(90, '', 24, 0, 1, 0, 1, '2023-02-10 09:44:14', '2023-02-10 09:44:14', NULL),
(91, '', 24, 0, 1, 0, 1, '2023-02-10 09:44:31', '2023-02-10 09:44:31', NULL),
(92, '', 24, 0, 1, 0, 1, '2023-02-10 09:44:52', '2023-02-10 09:44:52', NULL),
(93, '', 17, 0, 1, 0, 1, '2023-02-10 09:45:33', '2023-02-10 09:45:33', NULL),
(94, '', 17, 0, 1, 0, 1, '2023-02-10 09:45:52', '2023-02-10 09:45:52', NULL),
(95, '', 17, 0, 1, 0, 1, '2023-02-10 09:46:09', '2023-02-10 09:46:09', NULL),
(96, '', 17, 0, 1, 0, 1, '2023-02-10 09:46:31', '2023-02-10 09:46:31', NULL),
(97, '', 17, 0, 1, 0, 1, '2023-02-10 09:46:55', '2023-02-10 09:46:55', NULL),
(98, '', 17, 0, 1, 0, 1, '2023-02-10 09:47:21', '2023-02-10 09:47:21', NULL),
(99, '', 17, 0, 1, 0, 1, '2023-02-10 09:47:40', '2023-02-10 09:47:40', NULL),
(100, '', 57, 0, 1, 0, 1, '2023-02-10 09:49:52', '2023-02-10 09:49:52', NULL),
(101, '', 57, 0, 1, 0, 1, '2023-02-10 09:50:11', '2023-02-10 09:50:11', NULL),
(102, '', 57, 0, 1, 0, 1, '2023-02-10 09:50:29', '2023-02-10 09:50:29', NULL),
(103, '', 57, 0, 1, 0, 1, '2023-02-10 09:50:47', '2023-02-10 09:50:47', NULL),
(104, '', 57, 0, 1, 0, 1, '2023-02-10 09:51:07', '2023-02-10 09:51:07', NULL),
(105, '', 57, 0, 1, 0, 1, '2023-02-10 09:51:25', '2023-02-10 09:51:25', NULL),
(106, '', 57, 0, 1, 0, 1, '2023-02-10 09:51:46', '2023-02-10 09:51:46', NULL),
(107, '', 57, 0, 1, 0, 1, '2023-02-10 09:52:08', '2023-02-10 09:52:08', NULL),
(108, '', 57, 0, 1, 0, 1, '2023-02-10 09:52:31', '2023-02-10 09:52:31', NULL),
(109, '', 57, 0, 1, 0, 1, '2023-02-10 09:52:48', '2023-02-10 09:52:48', NULL),
(110, '', 57, 0, 1, 0, 1, '2023-02-10 09:53:07', '2023-02-10 09:53:07', NULL),
(111, '', 57, 0, 1, 0, 1, '2023-02-10 09:53:21', '2023-02-10 09:53:21', NULL),
(112, '', 57, 0, 1, 0, 1, '2023-02-10 09:53:41', '2023-02-14 09:50:26', NULL),
(113, '', 57, 0, 1, 0, 1, '2023-02-10 09:54:08', '2023-02-10 09:54:08', NULL),
(114, '', 57, 0, 1, 0, 1, '2023-02-10 09:54:26', '2023-02-10 09:54:26', NULL),
(115, '', 59, 0, 1, 0, 1, '2023-02-10 09:56:22', '2023-02-10 09:56:22', NULL),
(116, '', 59, 0, 1, 0, 1, '2023-02-10 09:56:39', '2023-02-10 09:56:39', NULL),
(117, '', 59, 0, 1, 0, 1, '2023-02-10 09:56:58', '2023-02-10 09:56:58', NULL),
(118, '', 59, 0, 1, 0, 1, '2023-02-10 09:57:11', '2023-02-10 09:57:11', NULL),
(119, '', 60, 0, 1, 0, 1, '2023-02-10 10:38:03', '2023-02-10 10:38:03', NULL),
(120, '', 60, 0, 1, 0, 1, '2023-02-10 10:38:20', '2023-02-10 10:38:20', NULL),
(121, '', 60, 0, 1, 0, 1, '2023-02-10 10:38:34', '2023-02-10 10:38:34', NULL),
(122, '', 60, 0, 1, 0, 1, '2023-02-10 10:38:47', '2023-02-10 10:38:47', NULL),
(123, '', 60, 0, 1, 0, 1, '2023-02-10 10:39:01', '2023-02-10 10:39:01', NULL),
(124, '', 60, 0, 1, 0, 1, '2023-02-10 10:39:14', '2023-02-10 10:39:14', NULL),
(125, '', 60, 0, 1, 0, 1, '2023-02-10 10:39:27', '2023-02-10 10:39:27', NULL),
(126, '', 61, 0, 1, 0, 1, '2023-02-10 10:39:49', '2023-02-10 10:39:49', NULL),
(127, '', 61, 0, 1, 0, 1, '2023-02-10 10:40:06', '2023-02-10 10:40:06', NULL),
(128, '', 61, 0, 1, 0, 1, '2023-02-10 10:40:20', '2023-02-10 10:40:20', NULL),
(129, '', 61, 0, 1, 0, 1, '2023-02-10 10:40:36', '2023-02-10 10:40:36', NULL),
(130, '', 62, 0, 1, 0, 1, '2023-02-10 10:40:57', '2023-02-10 10:40:57', NULL),
(131, '', 62, 0, 1, 0, 1, '2023-02-10 10:41:14', '2023-02-10 10:41:14', NULL),
(132, '', 62, 0, 1, 0, 1, '2023-02-10 10:41:28', '2023-02-10 10:41:28', NULL),
(133, '', 62, 0, 1, 0, 1, '2023-02-10 10:41:46', '2023-02-10 10:41:46', NULL),
(134, '', 63, 0, 1, 0, 1, '2023-02-10 10:42:08', '2023-02-10 10:42:08', NULL),
(135, '', 63, 0, 1, 0, 1, '2023-02-10 10:42:21', '2023-02-10 10:42:21', NULL),
(137, '', 64, 0, 1, 0, 1, '2023-02-10 10:43:13', '2023-02-10 10:43:13', NULL),
(138, '', 64, 0, 1, 0, 1, '2023-02-10 10:43:28', '2023-02-10 10:43:28', NULL),
(139, '', 65, 0, 1, 0, 1, '2023-02-10 10:43:48', '2023-02-10 10:43:48', NULL),
(140, '', 65, 0, 1, 0, 1, '2023-02-10 10:44:08', '2023-02-10 10:44:08', NULL),
(141, '', 66, 0, 1, 0, 1, '2023-02-10 10:44:33', '2023-02-10 10:44:33', NULL),
(142, '', 66, 0, 1, 0, 1, '2023-02-10 10:44:46', '2023-02-10 10:44:46', NULL),
(143, '', 67, 0, 1, 0, 1, '2023-02-10 10:45:01', '2023-02-10 10:45:01', NULL),
(144, '', 67, 0, 1, 0, 1, '2023-02-10 10:45:14', '2023-02-10 10:45:14', NULL),
(145, '', 67, 0, 1, 0, 1, '2023-02-10 10:45:31', '2023-02-10 10:45:31', NULL),
(146, '', 70, 0, 1, 0, 1, '2023-02-10 10:45:55', '2023-02-10 10:45:55', NULL),
(147, '', 70, 0, 1, 0, 1, '2023-02-10 10:46:10', '2023-02-10 10:46:10', NULL),
(148, '', 70, 0, 1, 0, 1, '2023-02-10 10:46:26', '2023-02-10 10:46:26', NULL),
(149, '', 71, 0, 1, 0, 1, '2023-02-10 10:46:46', '2023-02-10 10:46:46', NULL),
(150, '', 71, 0, 1, 0, 1, '2023-02-10 10:47:02', '2023-02-10 10:47:02', NULL),
(151, '', 71, 0, 1, 0, 1, '2023-02-10 10:47:18', '2023-02-10 10:47:18', NULL),
(152, '', 72, 0, 1, 0, 1, '2023-02-10 10:47:31', '2023-02-10 10:47:31', NULL),
(153, '', 72, 0, 1, 0, 1, '2023-02-10 10:47:45', '2023-02-10 10:47:45', NULL),
(154, '', 72, 0, 1, 0, 1, '2023-02-10 10:48:01', '2023-02-10 10:48:01', NULL),
(155, '', 72, 0, 1, 0, 1, '2023-02-10 10:48:16', '2023-02-10 10:48:16', NULL),
(156, '', 72, 0, 1, 0, 1, '2023-02-10 10:48:38', '2023-02-10 10:48:38', NULL),
(157, '', 72, 0, 1, 0, 1, '2023-02-10 10:48:51', '2023-02-10 10:48:51', NULL),
(158, '', 72, 0, 1, 0, 1, '2023-02-10 10:49:06', '2023-02-10 10:49:06', NULL),
(159, '', 72, 0, 1, 0, 1, '2023-02-10 10:49:25', '2023-02-10 10:49:25', NULL),
(160, '', 72, 0, 1, 0, 1, '2023-02-10 10:49:40', '2023-02-10 10:49:40', NULL),
(161, '', 72, 0, 1, 0, 1, '2023-02-10 10:50:24', '2023-02-10 10:50:24', NULL),
(162, '', 72, 0, 1, 0, 1, '2023-02-10 10:50:38', '2023-02-10 10:50:38', NULL),
(163, '', 72, 0, 1, 0, 1, '2023-02-10 10:50:55', '2023-02-10 10:50:55', NULL),
(164, '', 72, 0, 1, 0, 1, '2023-02-10 10:51:11', '2023-02-10 10:51:11', NULL),
(165, '', 72, 0, 1, 0, 1, '2023-02-10 10:51:29', '2023-02-10 10:51:29', NULL),
(166, '', 74, 0, 1, 0, 1, '2023-02-10 10:51:49', '2023-02-10 10:51:49', NULL),
(167, '', 74, 0, 1, 0, 1, '2023-02-10 10:52:08', '2023-02-10 10:52:08', NULL),
(168, '', 74, 0, 1, 0, 1, '2023-02-10 10:52:24', '2023-02-10 10:52:24', NULL),
(169, '', 0, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000001'),
(170, '', 0, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000002'),
(171, '', 0, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000003'),
(172, '', 169, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000004'),
(173, '', 169, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000005'),
(174, '', 169, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000006'),
(175, '', 170, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000007'),
(176, '', 170, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000008'),
(177, '', 172, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000009'),
(178, '', 171, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000010'),
(179, '', 175, 0, 1, 1, 1, '2023-03-17 11:07:29', '2023-03-22 15:57:50', '000000011');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(75, 2, 'Кнопки пришивные', '', 'Кнопки пришивные', '', ''),
(24, 2, 'Металлофурнитура', '', 'Металлофурнитура', '', ''),
(17, 2, 'Пластиковая фурнитура', '', 'Пластиковая фурнитура', '', ''),
(65, 2, 'Товары для вязания', '', 'Товары для вязания', '', ''),
(66, 2, 'Синтепон и наполнитель', '', 'Синтепон и наполнитель', '', ''),
(67, 2, 'Упаковочные материалы', '', 'Упаковочные материалы', '', ''),
(68, 2, 'Украшения', '', 'Украшения', '', ''),
(69, 2, 'Лейблы', '', 'Лейблы', '', ''),
(70, 2, 'Швейное оборудование и инструменты', '', 'Швейное оборудование и инструменты', '', ''),
(71, 2, 'Насадки, пуансоны, матрицы', '', 'Насадки, пуансоны, матрицы', '', ''),
(72, 2, 'Аксессуары', '', 'Аксессуары', '', ''),
(73, 2, 'Товары для уборки', '', 'Товары для уборки', '', ''),
(74, 2, 'Разное', '', 'Разное', '', ''),
(76, 2, 'Кнопки сорочечные (книппер)', '', 'Кнопки сорочечные (книппер)', '', ''),
(28, 2, 'спираль', '', 'спираль', '', ''),
(30, 2, 'трактор', '', 'трактор', '', ''),
(29, 2, 'металл', '', 'металл', '', ''),
(27, 2, 'Универсальные', '', 'Универсальные', '', ''),
(26, 2, 'Армированные', '', 'Армированные', '', ''),
(20, 2, 'Нитки', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Нитки', '', ''),
(37, 2, 'Металлизированный пластик', '', 'Металлизированный пластик', '', ''),
(38, 2, 'Из натуральных материалов', '', 'Из натуральных материалов', '', ''),
(39, 2, 'Пластик на ножке', '', 'Пластик на ножке', '', ''),
(40, 2, 'Пластик на прокол', '', 'Пластик на прокол', '', ''),
(41, 2, 'Джинсовые', '', 'Джинсовые', '', ''),
(82, 2, 'Молнии (Россия) TM \'ALI\' ', '', 'Молнии (Россия) TM \'ALI\' ', '', ''),
(34, 2, 'Пуговицы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Пуговицы', '', ''),
(59, 2, 'Шнур, резинка, канты', '', 'Шнур, резинка, канты', '', ''),
(60, 2, 'Ткани', '', 'Ткани', '', ''),
(61, 2, 'Трикотаж', '', 'Трикотаж', '', ''),
(62, 2, 'Клеевые материалы', '', 'Клеевые материалы', '', ''),
(63, 2, 'Бельевая фурнитура', '', 'Бельевая фурнитура', '', ''),
(64, 2, 'Регилин', '', 'Регилин', '', ''),
(18, 2, 'Кнопки', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Кнопки', '', ''),
(77, 2, 'Мононить', '', 'Мононить', '', ''),
(78, 2, 'Джинсовые нитки', '', 'Джинсовые нитки', '', ''),
(79, 2, 'Вышивальные', '', 'Вышивальные', '', ''),
(80, 2, 'Люрекс', '', 'Люрекс', '', ''),
(81, 2, 'Особо прочные', '', 'Особо прочные', '', ''),
(45, 2, 'Кнопки пластиковые', '', 'Кнопки пластиковые', '', ''),
(46, 2, 'Кнопки металлические', '', 'Кнопки металлические', '', ''),
(56, 2, 'Для спецодежды', '', 'Для спецодежды', '', ''),
(57, 2, 'Ленты и кружева', '', 'Ленты и кружева', '', ''),
(33, 2, 'Застежки-молнии', '', 'Застежки-молнии', '', ''),
(25, 2, 'Бегунки, пуллеры', '', 'Бегунки, пуллеры', '', ''),
(83, 2, 'Молнии (Китай)', '', 'Молнии (Китай)', '', ''),
(84, 2, 'Заготовки для обтяжки пуговиц', '', 'Заготовки для обтяжки пуговиц', '', ''),
(85, 2, 'Крючки брючные', '', 'Крючки брючные', '', ''),
(86, 2, 'Крючки декоративные', '', 'Крючки декоративные', '', ''),
(87, 2, 'Люверсы', '', 'Люверсы', '', ''),
(88, 2, 'Наконечники', '', 'Наконечники', '', ''),
(89, 2, 'Пряжки', '', 'Пряжки', '', ''),
(90, 2, 'Рамки, кольца, полукольца', '', 'Рамки, кольца, полукольца', '', ''),
(91, 2, 'Фиксаторы', '', 'Фиксаторы', '', ''),
(92, 2, 'Хольнитены', '', 'Хольнитены', '', ''),
(93, 2, 'Козырьки', '', 'Козырьки', '', ''),
(94, 2, 'Люверсы', '', 'Люверсы', '', ''),
(95, 2, 'Наконечники', '', 'Наконечники', '', ''),
(96, 2, 'Пряжки регулировочные', '', 'Пряжки регулировочные', '', ''),
(97, 2, 'Рамки, кольца, полукольца', '', 'Рамки, кольца, полукольца', '', ''),
(98, 2, 'Фистексы', '', 'Фистексы', '', ''),
(99, 2, 'Фиксаторы', '', 'Фиксаторы', '', ''),
(100, 2, 'Велькро', '', 'Велькро', '', ''),
(101, 2, 'Косая бейка', '', 'Косая бейка', '', ''),
(102, 2, 'Лента атласная', '', 'Лента атласная', '', ''),
(103, 2, 'Лента киперная', '', 'Лента киперная', '', ''),
(104, 2, 'Лента окантовочная', '', 'Лента окантовочная', '', ''),
(105, 2, 'Лента ременная (стропа)', '', 'Лента ременная (стропа)', '', ''),
(106, 2, 'Лента репсовая', '', 'Лента репсовая', '', ''),
(107, 2, 'Лента светооражающая', '', 'Лента светооражающая', '', ''),
(108, 2, 'Лента силиковая', '', 'Лента силиковая', '', ''),
(109, 2, 'Лента со стразами', '', 'Лента со стразами', '', ''),
(110, 2, 'Лента эластичная', '', 'Лента эластичная', '', ''),
(111, 2, 'Кружева', '', 'Кружева', '', ''),
(112, 2, 'Декоративные ленты', '', 'Декторативные ленты', '', ''),
(113, 2, 'Размерные ленты', '', 'Размерные ленты', '', ''),
(114, 2, 'Ленты брючные', '', 'Ленты брючные', '', ''),
(115, 2, 'Поясная резинка', '', 'Поясная резинка', '', ''),
(116, 2, 'Шляпная резинка', '', 'Шляпная резинка', '', ''),
(117, 2, 'Шнур', '', 'Шнур', '', ''),
(118, 2, 'Кант', '', 'Кант', '', ''),
(119, 2, 'Подкладочная', '', 'Подкладочная', '', ''),
(120, 2, 'Фильц', '', 'Фильц', '', ''),
(121, 2, 'Оксфорд', '', 'Оксфорд', '', ''),
(122, 2, 'Грета', '', 'Грета', '', ''),
(123, 2, 'Габардин', '', 'Габардин', '', ''),
(124, 2, 'Бязь', '', 'Бязь', '', ''),
(125, 2, 'ТС', '', 'ТС', '', ''),
(126, 2, 'Футер', '', 'Футер', '', ''),
(127, 2, 'Кашкорсе', '', 'Кашкорсе', '', ''),
(128, 2, 'Рибана', '', 'Рибана', '', ''),
(129, 2, 'Кулирка', '', 'Кулирка', '', ''),
(130, 2, 'Дублерин', '', 'Дублерин', '', ''),
(131, 2, 'Паутинка', '', 'Паутинка', '', ''),
(132, 2, 'Флизелин', '', 'Флизелин', '', ''),
(133, 2, 'Полоска нитепрошивная', '', 'Полоска нитепрошивная', '', ''),
(134, 2, 'Кольца', '', 'Кольца', '', ''),
(135, 2, 'Пряжки', '', 'Кольца', '', ''),
(137, 2, 'Регилин-сетка', '', 'Регилин-сетка', '', ''),
(138, 2, 'Жесткий регилин', '', 'Жесткий регилин', '', ''),
(139, 2, 'Пряжа', '', 'Пряжа', '', ''),
(140, 2, 'Спицы', '', 'Спицы', '', ''),
(141, 2, 'синтепон', '', 'синтепон', '', ''),
(142, 2, 'наполнитель', '', 'наполнитель', '', ''),
(143, 2, 'Пакеты', '', 'Пакеты', '', ''),
(144, 2, 'Скотч', '', 'Скотч', '', ''),
(145, 2, 'Стрейч-пленка', '', 'Стрейч-пленка', '', ''),
(146, 2, 'Швейные машины', '', 'Швейные машины', '', ''),
(147, 2, 'Пресс', '', 'Пресс', '', ''),
(148, 2, 'Дырокол', '', 'Дырокол', '', ''),
(149, 2, 'Насадки', '', 'Насадки', '', ''),
(150, 2, 'Переходники', '', 'Переходники', '', ''),
(151, 2, 'Пробойники', '', 'Пробойники', '', ''),
(152, 2, 'Вешалки', '', 'Вешалки', '', ''),
(153, 2, 'Иглы', '', 'Иглы', '', ''),
(154, 2, 'Булавки и игольницы', '', 'Булавки и игольницы', '', ''),
(155, 2, 'Мел и маркеры', '', 'Мел и маркеры', '', ''),
(156, 2, 'Линейка, лекала, сантиметры', '', 'Линейка, лекала, сантиметры', '', ''),
(157, 2, 'Пяльцы', '', 'Пяльцы', '', ''),
(158, 2, 'Шпульки', '', 'Шпульки', '', ''),
(159, 2, 'Нитевдеватели', '', 'Нитевдеватели', '', ''),
(160, 2, 'Клеевой пистолет', '', 'Клеевой пистолет', '', ''),
(161, 2, 'Клей', '', 'Клей', '', ''),
(162, 2, 'Вспарыватель', '', 'Вспарыватель', '', ''),
(163, 2, 'Наперстки', '', 'Наперстки', '', ''),
(164, 2, 'Наборы для вышивания', '', 'Наборы для вышивания', '', ''),
(165, 2, 'Биркодержатели, пломбы', '', 'Биркодержатели, пломбы', '', ''),
(166, 2, 'Плечевые накладки', '', 'Плечевые накладки', '', ''),
(167, 2, 'Подокатники', '', 'Подокатники', '', ''),
(168, 2, 'Напульсники', '', 'Напульсники', '', ''),
(169, 2, 'Группа 1', 'Группа 1', 'Группа 1', 'Группа 1', ''),
(170, 2, 'Группа 2', 'Группа 2', 'Группа 2', 'Группа 2', ''),
(171, 2, 'Группа 3', 'Группа 3', 'Группа 3', 'Группа 3', ''),
(172, 2, 'Группа 1.1', 'Группа 1.1', 'Группа 1.1', 'Группа 1.1', ''),
(173, 2, 'Группа 1.2', 'Группа 1.2', 'Группа 1.2', 'Группа 1.2', ''),
(174, 2, 'Группа 1.3', 'Группа 1.3', 'Группа 1.3', 'Группа 1.3', ''),
(175, 2, 'Группа 2.1', 'Группа 2.1', 'Группа 2.1', 'Группа 2.1', ''),
(176, 2, 'Группа 2.2', 'Группа 2.2', 'Группа 2.2', 'Группа 2.2', ''),
(177, 2, 'Номенклатурная группа 1', 'Номенклатурная группа 1', 'Номенклатурная группа 1', 'Номенклатурная группа 1', ''),
(178, 2, 'Булавки', 'Булавки', 'Булавки', 'Булавки', ''),
(179, 2, 'Группа номенклатуры с остатками', 'Группа номенклатуры с остатками', 'Группа номенклатуры с остатками', 'Группа номенклатуры с остатками', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(76, 76, 1),
(76, 18, 0),
(75, 75, 1),
(75, 18, 0),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(82, 82, 1),
(82, 33, 0),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0),
(59, 59, 0),
(60, 60, 0),
(61, 61, 0),
(62, 62, 0),
(63, 63, 0),
(64, 64, 0),
(65, 65, 0),
(66, 66, 0),
(67, 67, 0),
(68, 68, 0),
(69, 69, 0),
(70, 70, 0),
(71, 71, 0),
(72, 72, 0),
(73, 73, 0),
(74, 74, 0),
(77, 20, 0),
(77, 77, 1),
(78, 20, 0),
(78, 78, 1),
(79, 20, 0),
(79, 79, 1),
(80, 20, 0),
(80, 80, 1),
(81, 20, 0),
(81, 81, 1),
(83, 33, 0),
(83, 83, 1),
(84, 24, 0),
(84, 84, 1),
(85, 24, 0),
(85, 85, 1),
(86, 24, 0),
(86, 86, 1),
(87, 24, 0),
(87, 87, 1),
(88, 24, 0),
(88, 88, 1),
(89, 24, 0),
(89, 89, 1),
(90, 24, 0),
(90, 90, 1),
(91, 24, 0),
(91, 91, 1),
(92, 24, 0),
(92, 92, 1),
(93, 17, 0),
(93, 93, 1),
(94, 17, 0),
(94, 94, 1),
(95, 17, 0),
(95, 95, 1),
(96, 17, 0),
(96, 96, 1),
(97, 17, 0),
(97, 97, 1),
(98, 17, 0),
(98, 98, 1),
(99, 17, 0),
(99, 99, 1),
(100, 57, 0),
(100, 100, 1),
(101, 57, 0),
(101, 101, 1),
(102, 57, 0),
(102, 102, 1),
(103, 57, 0),
(103, 103, 1),
(104, 57, 0),
(104, 104, 1),
(105, 57, 0),
(105, 105, 1),
(106, 57, 0),
(106, 106, 1),
(107, 57, 0),
(107, 107, 1),
(108, 57, 0),
(108, 108, 1),
(109, 57, 0),
(109, 109, 1),
(110, 57, 0),
(110, 110, 1),
(111, 57, 0),
(111, 111, 1),
(112, 57, 0),
(112, 112, 1),
(113, 57, 0),
(113, 113, 1),
(114, 57, 0),
(114, 114, 1),
(115, 59, 0),
(115, 115, 1),
(116, 59, 0),
(116, 116, 1),
(117, 59, 0),
(117, 117, 1),
(118, 59, 0),
(118, 118, 1),
(119, 60, 0),
(119, 119, 1),
(120, 60, 0),
(120, 120, 1),
(121, 60, 0),
(121, 121, 1),
(122, 60, 0),
(122, 122, 1),
(123, 60, 0),
(123, 123, 1),
(124, 60, 0),
(124, 124, 1),
(125, 60, 0),
(125, 125, 1),
(126, 61, 0),
(126, 126, 1),
(127, 61, 0),
(127, 127, 1),
(128, 61, 0),
(128, 128, 1),
(129, 61, 0),
(129, 129, 1),
(130, 62, 0),
(130, 130, 1),
(131, 62, 0),
(131, 131, 1),
(132, 62, 0),
(132, 132, 1),
(133, 62, 0),
(133, 133, 1),
(134, 63, 0),
(134, 134, 1),
(135, 63, 0),
(135, 135, 1),
(170, 170, 0),
(169, 169, 0),
(137, 64, 0),
(137, 137, 1),
(138, 64, 0),
(138, 138, 1),
(139, 65, 0),
(139, 139, 1),
(140, 65, 0),
(140, 140, 1),
(141, 66, 0),
(141, 141, 1),
(142, 66, 0),
(142, 142, 1),
(143, 67, 0),
(143, 143, 1),
(144, 67, 0),
(144, 144, 1),
(145, 67, 0),
(145, 145, 1),
(146, 70, 0),
(146, 146, 1),
(147, 70, 0),
(147, 147, 1),
(148, 70, 0),
(148, 148, 1),
(149, 71, 0),
(149, 149, 1),
(150, 71, 0),
(150, 150, 1),
(151, 71, 0),
(151, 151, 1),
(152, 72, 0),
(152, 152, 1),
(153, 72, 0),
(153, 153, 1),
(154, 72, 0),
(154, 154, 1),
(155, 72, 0),
(155, 155, 1),
(156, 72, 0),
(156, 156, 1),
(157, 72, 0),
(157, 157, 1),
(158, 72, 0),
(158, 158, 1),
(159, 72, 0),
(159, 159, 1),
(160, 72, 0),
(160, 160, 1),
(161, 72, 0),
(161, 161, 1),
(162, 72, 0),
(162, 162, 1),
(163, 72, 0),
(163, 163, 1),
(164, 72, 0),
(164, 164, 1),
(165, 72, 0),
(165, 165, 1),
(166, 74, 0),
(166, 166, 1),
(167, 74, 0),
(167, 167, 1),
(168, 74, 0),
(168, 168, 1),
(171, 171, 0),
(172, 169, 0),
(172, 172, 1),
(173, 169, 0),
(173, 173, 1),
(174, 169, 0),
(174, 174, 1),
(175, 170, 0),
(175, 175, 1),
(176, 170, 0),
(176, 176, 1),
(177, 172, 1),
(177, 169, 0),
(177, 177, 2),
(178, 171, 0),
(178, 178, 1),
(179, 175, 1),
(179, 170, 0),
(179, 179, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(33, 0, 0),
(25, 0, 0),
(20, 0, 0),
(18, 0, 0),
(34, 0, 0),
(24, 0, 0),
(17, 0, 0),
(57, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(29, 0, 0),
(28, 0, 0),
(30, 0, 0),
(46, 0, 0),
(45, 0, 0),
(75, 0, 0),
(76, 0, 0),
(27, 0, 0),
(26, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(56, 0, 0),
(38, 0, 0),
(37, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(33, 0),
(34, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(45, 0),
(46, 0),
(56, 0),
(57, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Belarus', 'BY', 'BLR', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Рубль', 'BYN', '', ' BYN', '0', 1.00000000, 1, '2023-03-17 08:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Физические лица', 'Физические лица'),
(2, 2, 'Юридические лица', 'Юридические лица');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download`
--

INSERT INTO `oc_download` (`download_id`, `filename`, `mask`, `date_added`) VALUES
(5, 'dog.pdf.zL2R6DaqXQFlucW9d5L9xjeAjVNKXUdZ', 'dog.pdf', '2023-03-22 15:49:51'),
(6, 'dog.docx.pC1hOgtWWeyqkFWhjS5FqrJ3CdZCEpPR', 'dog.docx', '2023-03-22 15:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download_description`
--

INSERT INTO `oc_download_description` (`download_id`, `language_id`, `name`) VALUES
(5, 2, 'Договор.pdf'),
(6, 2, 'Договор.docx');

-- --------------------------------------------------------

--
-- Table structure for table `oc_d_validator`
--

CREATE TABLE `oc_d_validator` (
  `validator_id` int(11) NOT NULL,
  `codename` varchar(191) NOT NULL,
  `date_show` datetime NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'd_validator', 'admin/view/extension/module/d_quick_order/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(35, 'd_validator', 'admin/view/extension/d_ajax_filter/layout/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(36, 'd_validator', 'admin/view/extension/module/d_quickcheckout/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(37, 'd_validator', 'admin/view/extension/module/d_blog_module/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(38, 'd_validator', 'admin/view/extension/d_blog_module/post_list/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(39, 'd_validator', 'admin/view/extension/d_blog_module/category_list/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(40, 'd_validator', 'admin/view/extension/d_visual_designer/setting/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(41, 'd_validator', 'admin/view/extension/module/d_visual_designer_module/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(42, 'd_validator', 'admin/view/extension/d_visual_designer/designer/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(43, 'd_validator', 'admin/view/extension/d_visual_designer_landing/page_list/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(44, 'd_validator', 'admin/view/extension/module/d_download_manager_pro/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(45, 'd_validator', 'admin/view/extension/module/d_seo_module_manager/setting', 'extension/d_shopunity/d_validator/view', 1, 0),
(46, 'd_validator', 'admin/view/extension/module/d_seo_module_url/setting', 'extension/d_shopunity/d_validator/view', 1, 0),
(47, 'd_validator', 'admin/view/extension/module/d_seo_module_blog/setting', 'extension/d_shopunity/d_validator/view', 1, 0),
(48, 'd_validator', 'admin/view/extension/module/d_seo_module/dashboard', 'extension/d_shopunity/d_validator/view', 1, 0),
(49, 'd_validator', 'admin/view/extension/module/d_social_login/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(50, 'd_validator', 'admin/view/extension/d_export_import/excel/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(51, 'd_validator', 'admin/view/extension/d_gdpr_module/d_gdpr_module', 'extension/d_shopunity/d_validator/view', 1, 0),
(52, 'd_validator', 'admin/view/extension/d_security_module/d_security_module/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(53, 'd_validator', 'admin/view/extension/module/d_social_like/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(54, 'd_validator', 'admin/view/extension/feed/d_google_sitemap/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(55, 'd_validator', 'admin/view/extension/module/d_cart_related/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(56, 'd_validator', 'admin/view/extension/module/d_gift_with_purchase/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(57, 'd_validator', 'admin/view/extension/shipping/d_multiflat/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(58, 'd_validator', 'admin/view/extension/module/d_image_product_tag/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(59, 'd_validator', 'admin/view/extension/module/d_shipping_based_payment/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(60, 'd_validator', 'admin/view/extension/module/d_payment_by_customer_group/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(61, 'd_validator', 'admin/view/extension/module/d_shipping_by_customer_group/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(62, 'd_validator', 'admin/view/extension/total/d_payment_fee/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(63, 'd_validator', 'admin/view/extension/module/d_link_cart/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(64, 'd_validator', 'admin/view/extension/module/d_seo_module_adviser/setting/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(65, 'd_validator', 'admin/view/extension/module/d_contact_map/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(66, 'd_validator', 'admin/view/extension/shipping/d_free_shipping_advanced/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(67, 'd_validator', 'admin/view/extension/module/d_ajax_search/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(68, 'd_validator', 'admin/view/extension/module/d_spin_product/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(212, 'd_blog_module', 'catalog/model/design/layout/getLayout/after', 'extension/event/d_blog_module/model_design_layout_getLayout_after', 1, 0),
(211, 'd_blog_module', 'admin/model/localisation/language/deleteLanguage/after', 'extension/event/d_blog_module/model_localisation_language_deleteLanguage_after', 1, 0),
(210, 'd_blog_module', 'admin/model/localisation/language/addLanguage/after', 'extension/event/d_blog_module/model_localisation_language_addLanguage_after', 1, 0),
(209, 'd_blog_module', 'catalog/model/extension/module/d_visual_designer/getOptions/after', 'extension/event/d_blog_module/controller_after_d_visual_designer_menu', 1, 0),
(208, 'd_blog_module', 'catalog/view/common/menu/before', 'extension/event/d_blog_module/view_common_menu_before', 1, 0),
(207, 'd_blog_module', 'catalog/view/common/header/before', 'extension/event/d_blog_module/view_common_header_before', 1, 0),
(206, 'd_blog_module', 'admin/view/setting/setting/before', 'extension/event/d_blog_module/view_setting_setting_captcha_before', 1, 0),
(205, 'd_blog_module', 'admin/view/common/column_left/before', 'extension/event/d_blog_module/view_common_column_left_before', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(48, 'total', 'sub_total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(9, 'shipping', 'flat'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(47, 'shipping', 'pickup'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'd_blog_module'),
(43, 'payment', 'hutkigrosh'),
(44, 'module', 'html'),
(49, 'shipping', 'citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'dblogmodulecompiledoc3v3.1.8.ocmod.zip', '2022-12-26 22:37:48'),
(2, 0, 'cmsgate-opencart-hutkigrosh.ocmod.zip', '2022-12-26 22:56:56'),
(3, 0, 'sendpulse.ocmod.zip', '2022-12-30 14:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/language/english', '2022-12-26 22:37:49'),
(2, 1, 'catalog/language/english', '2022-12-26 22:37:49'),
(3, 1, 'image/catalog/d_blog_module', '2022-12-26 22:37:49'),
(4, 1, 'image/catalog/d_visual_designer', '2022-12-26 22:37:49'),
(5, 1, 'system/config/d_ajax_search', '2022-12-26 22:37:49'),
(6, 1, 'system/config/d_blog_module.php', '2022-12-26 22:37:49'),
(7, 1, 'system/config/d_blog_module_demo', '2022-12-26 22:37:49'),
(8, 1, 'system/config/d_blog_module_layout', '2022-12-26 22:37:49'),
(9, 1, 'system/config/d_event_manager.php', '2022-12-26 22:37:49'),
(10, 1, 'system/config/d_validator.php', '2022-12-26 22:37:49'),
(11, 1, 'system/config/d_visual_designer', '2022-12-26 22:37:49'),
(12, 1, 'system/config/d_visual_designer_route', '2022-12-26 22:37:49'),
(13, 1, 'system/library/d_shopunity', '2022-12-26 22:37:49'),
(14, 1, 'system/library/d_simple_html_dom.php', '2022-12-26 22:37:49'),
(15, 1, 'admin/controller/extension/d_ajax_search', '2022-12-26 22:37:49'),
(16, 1, 'admin/controller/extension/d_blog_module', '2022-12-26 22:37:49'),
(17, 1, 'admin/controller/extension/d_shopunity', '2022-12-26 22:37:49'),
(18, 1, 'admin/controller/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(19, 1, 'admin/controller/extension/event', '2022-12-26 22:37:49'),
(20, 1, 'admin/language/english/extension', '2022-12-26 22:37:49'),
(21, 1, 'admin/model/extension/d_admin_style', '2022-12-26 22:37:49'),
(22, 1, 'admin/model/extension/d_blog_module', '2022-12-26 22:37:49'),
(23, 1, 'admin/model/extension/d_opencart_patch', '2022-12-26 22:37:49'),
(24, 1, 'admin/model/extension/d_shopunity', '2022-12-26 22:37:49'),
(25, 1, 'admin/model/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(26, 1, 'admin/model/extension/module', '2022-12-26 22:37:49'),
(27, 1, 'admin/view/image/d_admin_style', '2022-12-26 22:37:49'),
(28, 1, 'admin/view/image/d_blog_module', '2022-12-26 22:37:49'),
(29, 1, 'admin/view/javascript/d_admin_style', '2022-12-26 22:37:49'),
(30, 1, 'admin/view/javascript/d_bootstrap_bootbox', '2022-12-26 22:37:49'),
(31, 1, 'admin/view/javascript/d_bootstrap_colorpicker', '2022-12-26 22:37:49'),
(32, 1, 'admin/view/javascript/d_bootstrap_rating', '2022-12-26 22:37:49'),
(33, 1, 'admin/view/javascript/d_bootstrap_switch', '2022-12-26 22:37:49'),
(34, 1, 'admin/view/javascript/d_fileinput', '2022-12-26 22:37:49'),
(35, 1, 'admin/view/javascript/d_rubaxa_sortable', '2022-12-26 22:37:49'),
(36, 1, 'admin/view/javascript/d_tinysort', '2022-12-26 22:37:49'),
(37, 1, 'admin/view/stylesheet/d_admin_style', '2022-12-26 22:37:49'),
(38, 1, 'admin/view/stylesheet/d_bootstrap_extra', '2022-12-26 22:37:49'),
(39, 1, 'catalog/controller/extension/d_blog_module', '2022-12-26 22:37:49'),
(40, 1, 'catalog/controller/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(41, 1, 'catalog/controller/extension/event', '2022-12-26 22:37:49'),
(42, 1, 'catalog/language/english/extension', '2022-12-26 22:37:49'),
(43, 1, 'catalog/model/extension/d_blog_module', '2022-12-26 22:37:49'),
(44, 1, 'catalog/model/extension/d_opencart_patch', '2022-12-26 22:37:49'),
(45, 1, 'catalog/model/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(46, 1, 'catalog/view/javascript/d_blog_module', '2022-12-26 22:37:49'),
(47, 1, 'catalog/view/javascript/d_bootstrap_bootbox', '2022-12-26 22:37:49'),
(48, 1, 'catalog/view/javascript/d_bootstrap_colorpicker', '2022-12-26 22:37:49'),
(49, 1, 'catalog/view/javascript/d_bootstrap_rating', '2022-12-26 22:37:49'),
(50, 1, 'catalog/view/javascript/d_bootstrap_switch', '2022-12-26 22:37:49'),
(51, 1, 'catalog/view/javascript/d_fileinput', '2022-12-26 22:37:49'),
(52, 1, 'catalog/view/javascript/d_rubaxa_sortable', '2022-12-26 22:37:49'),
(53, 1, 'catalog/view/javascript/d_tinysort', '2022-12-26 22:37:49'),
(54, 1, 'image/catalog/d_blog_module/category', '2022-12-26 22:37:49'),
(55, 1, 'image/catalog/d_blog_module/no_profile_image.png', '2022-12-26 22:37:49'),
(56, 1, 'image/catalog/d_blog_module/post', '2022-12-26 22:37:49'),
(57, 1, 'image/catalog/d_blog_module/review', '2022-12-26 22:37:49'),
(58, 1, 'image/catalog/d_visual_designer/blog_post.svg', '2022-12-26 22:37:49'),
(59, 1, 'system/config/d_ajax_search/blog.php', '2022-12-26 22:37:49'),
(60, 1, 'system/config/d_blog_module_demo/d_blog_module.php', '2022-12-26 22:37:49'),
(61, 1, 'system/config/d_blog_module_demo/d_blog_module.sql', '2022-12-26 22:37:49'),
(62, 1, 'system/config/d_blog_module_layout/grid.php', '2022-12-26 22:37:49'),
(63, 1, 'system/config/d_visual_designer/blog_post.php', '2022-12-26 22:37:49'),
(64, 1, 'system/config/d_visual_designer_route/d_blog_module_author.php', '2022-12-26 22:37:49'),
(65, 1, 'system/config/d_visual_designer_route/d_blog_module_category.php', '2022-12-26 22:37:49'),
(66, 1, 'system/config/d_visual_designer_route/d_blog_module_post.php', '2022-12-26 22:37:49'),
(67, 1, 'system/library/d_shopunity/extension', '2022-12-26 22:37:49'),
(68, 1, 'system/library/d_shopunity/install', '2022-12-26 22:37:49'),
(69, 1, 'system/library/d_shopunity/readme', '2022-12-26 22:37:49'),
(70, 1, 'admin/controller/extension/d_ajax_search/blog.php', '2022-12-26 22:37:49'),
(71, 1, 'admin/controller/extension/d_blog_module/author.php', '2022-12-26 22:37:49'),
(72, 1, 'admin/controller/extension/d_blog_module/author_group.php', '2022-12-26 22:37:49'),
(73, 1, 'admin/controller/extension/d_blog_module/category.php', '2022-12-26 22:37:49'),
(74, 1, 'admin/controller/extension/d_blog_module/post.php', '2022-12-26 22:37:49'),
(75, 1, 'admin/controller/extension/d_blog_module/review.php', '2022-12-26 22:37:49'),
(76, 1, 'admin/controller/extension/d_shopunity/d_validator.php', '2022-12-26 22:37:49'),
(77, 1, 'admin/controller/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:49'),
(78, 1, 'admin/controller/extension/event/d_blog_module.php', '2022-12-26 22:37:49'),
(79, 1, 'admin/controller/extension/module/d_blog_module.php', '2022-12-26 22:37:49'),
(80, 1, 'admin/language/en-gb/extension/d_admin_style', '2022-12-26 22:37:49'),
(81, 1, 'admin/language/en-gb/extension/d_blog_module', '2022-12-26 22:37:49'),
(82, 1, 'admin/language/en-gb/extension/d_shopunity', '2022-12-26 22:37:49'),
(83, 1, 'admin/language/en-gb/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(84, 1, 'admin/language/en-gb/extension/event', '2022-12-26 22:37:49'),
(85, 1, 'admin/language/english/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(86, 1, 'admin/model/extension/d_admin_style/style.php', '2022-12-26 22:37:49'),
(87, 1, 'admin/model/extension/d_blog_module/author.php', '2022-12-26 22:37:49'),
(88, 1, 'admin/model/extension/d_blog_module/author_group.php', '2022-12-26 22:37:49'),
(89, 1, 'admin/model/extension/d_blog_module/category.php', '2022-12-26 22:37:49'),
(90, 1, 'admin/model/extension/d_blog_module/post.php', '2022-12-26 22:37:49'),
(91, 1, 'admin/model/extension/d_blog_module/review.php', '2022-12-26 22:37:49'),
(92, 1, 'admin/model/extension/d_opencart_patch/cache.php', '2022-12-26 22:37:49'),
(93, 1, 'admin/model/extension/d_opencart_patch/event.php', '2022-12-26 22:37:49'),
(94, 1, 'admin/model/extension/d_opencart_patch/extension.php', '2022-12-26 22:37:49'),
(95, 1, 'admin/model/extension/d_opencart_patch/load.php', '2022-12-26 22:37:49'),
(96, 1, 'admin/model/extension/d_opencart_patch/modification.php', '2022-12-26 22:37:49'),
(97, 1, 'admin/model/extension/d_opencart_patch/module.php', '2022-12-26 22:37:49'),
(98, 1, 'admin/model/extension/d_opencart_patch/setting.php', '2022-12-26 22:37:49'),
(99, 1, 'admin/model/extension/d_opencart_patch/store.php', '2022-12-26 22:37:49'),
(100, 1, 'admin/model/extension/d_opencart_patch/url.php', '2022-12-26 22:37:49'),
(101, 1, 'admin/model/extension/d_opencart_patch/user.php', '2022-12-26 22:37:49'),
(102, 1, 'admin/model/extension/d_opencart_patch/vqmod.php', '2022-12-26 22:37:49'),
(103, 1, 'admin/model/extension/d_shopunity/d_validator.php', '2022-12-26 22:37:49'),
(104, 1, 'admin/model/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:49'),
(105, 1, 'admin/model/extension/module/d_blog_module.php', '2022-12-26 22:37:49'),
(106, 1, 'admin/model/extension/module/d_event_manager.php', '2022-12-26 22:37:49'),
(107, 1, 'admin/model/extension/module/d_twig_manager.php', '2022-12-26 22:37:49'),
(108, 1, 'admin/view/image/d_admin_style/checkmark.png', '2022-12-26 22:37:49'),
(109, 1, 'admin/view/image/d_admin_style/checkmark.svg', '2022-12-26 22:37:49'),
(110, 1, 'admin/view/image/d_blog_module/awesome_layout_d_blog_module.svg', '2022-12-26 22:37:49'),
(111, 1, 'admin/view/image/d_blog_module/bg.svg', '2022-12-26 22:37:49'),
(112, 1, 'admin/view/image/d_blog_module/dozens_d_blog_module.svg', '2022-12-26 22:37:49'),
(113, 1, 'admin/view/image/d_blog_module/fullstack_d_blog_module.svg', '2022-12-26 22:37:49'),
(114, 1, 'admin/view/image/d_blog_module/main_icon_d_blog_module.svg', '2022-12-26 22:37:49'),
(115, 1, 'admin/view/image/d_blog_module/powerful_d_blog_module.svg', '2022-12-26 22:37:49'),
(116, 1, 'admin/view/image/d_blog_module/welcome.jpg', '2022-12-26 22:37:49'),
(117, 1, 'admin/view/image/d_blog_module/welcome.png', '2022-12-26 22:37:49'),
(118, 1, 'admin/view/javascript/d_admin_style/gulp', '2022-12-26 22:37:49'),
(119, 1, 'admin/view/javascript/d_bootstrap_bootbox/bootbox.js', '2022-12-26 22:37:49'),
(120, 1, 'admin/view/javascript/d_bootstrap_bootbox/bootbox.min.js', '2022-12-26 22:37:49'),
(121, 1, 'admin/view/javascript/d_bootstrap_colorpicker/css', '2022-12-26 22:37:49'),
(122, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img', '2022-12-26 22:37:49'),
(123, 1, 'admin/view/javascript/d_bootstrap_colorpicker/js', '2022-12-26 22:37:49'),
(124, 1, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.css', '2022-12-26 22:37:49'),
(125, 1, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.js', '2022-12-26 22:37:49'),
(126, 1, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js', '2022-12-26 22:37:49'),
(127, 1, 'admin/view/javascript/d_bootstrap_switch/css', '2022-12-26 22:37:49'),
(128, 1, 'admin/view/javascript/d_bootstrap_switch/js', '2022-12-26 22:37:49'),
(129, 1, 'admin/view/javascript/d_fileinput/CHANGE.md', '2022-12-26 22:37:49'),
(130, 1, 'admin/view/javascript/d_fileinput/LICENSE.md', '2022-12-26 22:37:49'),
(131, 1, 'admin/view/javascript/d_fileinput/bower.json', '2022-12-26 22:37:49'),
(132, 1, 'admin/view/javascript/d_fileinput/canvas-to-blob.js', '2022-12-26 22:37:49'),
(133, 1, 'admin/view/javascript/d_fileinput/composer.json', '2022-12-26 22:37:49'),
(134, 1, 'admin/view/javascript/d_fileinput/css', '2022-12-26 22:37:49'),
(135, 1, 'admin/view/javascript/d_fileinput/examples', '2022-12-26 22:37:49'),
(136, 1, 'admin/view/javascript/d_fileinput/fileinput.css', '2022-12-26 22:37:49'),
(137, 1, 'admin/view/javascript/d_fileinput/fileinput.js', '2022-12-26 22:37:49'),
(138, 1, 'admin/view/javascript/d_fileinput/img', '2022-12-26 22:37:49'),
(139, 1, 'admin/view/javascript/d_fileinput/js', '2022-12-26 22:37:49'),
(140, 1, 'admin/view/javascript/d_fileinput/nuget', '2022-12-26 22:37:49'),
(141, 1, 'admin/view/javascript/d_fileinput/package.json', '2022-12-26 22:37:49'),
(142, 1, 'admin/view/javascript/d_fileinput/sass', '2022-12-26 22:37:49'),
(143, 1, 'admin/view/javascript/d_fileinput/themes', '2022-12-26 22:37:49'),
(144, 1, 'admin/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2022-12-26 22:37:49'),
(145, 1, 'admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2022-12-26 22:37:49'),
(146, 1, 'admin/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2022-12-26 22:37:49'),
(147, 1, 'admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2022-12-26 22:37:49'),
(148, 1, 'admin/view/javascript/d_rubaxa_sortable/sortable.css', '2022-12-26 22:37:49'),
(149, 1, 'admin/view/javascript/d_rubaxa_sortable/sortable.js', '2022-12-26 22:37:49'),
(150, 1, 'admin/view/javascript/d_rubaxa_sortable/sortable.min.js', '2022-12-26 22:37:49'),
(151, 1, 'admin/view/javascript/d_tinysort/jquery.tinysort.js', '2022-12-26 22:37:49'),
(152, 1, 'admin/view/javascript/d_tinysort/jquery.tinysort.min.js', '2022-12-26 22:37:49'),
(153, 1, 'admin/view/javascript/d_tinysort/tinysort.charorder.js', '2022-12-26 22:37:49'),
(154, 1, 'admin/view/javascript/d_tinysort/tinysort.charorder.min.js', '2022-12-26 22:37:49'),
(155, 1, 'admin/view/javascript/d_tinysort/tinysort.js', '2022-12-26 22:37:49'),
(156, 1, 'admin/view/javascript/d_tinysort/tinysort.min.js', '2022-12-26 22:37:49'),
(157, 1, 'admin/view/stylesheet/d_admin_style/core', '2022-12-26 22:37:49'),
(158, 1, 'admin/view/stylesheet/d_admin_style/themes', '2022-12-26 22:37:49'),
(159, 1, 'admin/view/stylesheet/d_bootstrap_extra/bootstrap.css', '2022-12-26 22:37:49'),
(160, 1, 'admin/view/template/extension/d_admin_style', '2022-12-26 22:37:49'),
(161, 1, 'admin/view/template/extension/d_blog_module', '2022-12-26 22:37:49'),
(162, 1, 'admin/view/template/extension/d_shopunity', '2022-12-26 22:37:49'),
(163, 1, 'admin/view/template/extension/d_visual_designer', '2022-12-26 22:37:49'),
(164, 1, 'admin/view/template/extension/event', '2022-12-26 22:37:49'),
(165, 1, 'catalog/controller/extension/d_blog_module/author.php', '2022-12-26 22:37:49'),
(166, 1, 'catalog/controller/extension/d_blog_module/category.php', '2022-12-26 22:37:49'),
(167, 1, 'catalog/controller/extension/d_blog_module/post.php', '2022-12-26 22:37:49'),
(168, 1, 'catalog/controller/extension/d_blog_module/review.php', '2022-12-26 22:37:49'),
(169, 1, 'catalog/controller/extension/d_blog_module/search.php', '2022-12-26 22:37:49'),
(170, 1, 'catalog/controller/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:49'),
(171, 1, 'catalog/controller/extension/event/d_blog_module.php', '2022-12-26 22:37:49'),
(172, 1, 'catalog/language/en-gb/extension/d_blog_module', '2022-12-26 22:37:49'),
(173, 1, 'catalog/language/en-gb/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(174, 1, 'catalog/language/en-gb/extension/event', '2022-12-26 22:37:49'),
(175, 1, 'catalog/language/english/extension/d_visual_designer_module', '2022-12-26 22:37:49'),
(176, 1, 'catalog/model/extension/d_blog_module/author.php', '2022-12-26 22:37:49'),
(177, 1, 'catalog/model/extension/d_blog_module/category.php', '2022-12-26 22:37:49'),
(178, 1, 'catalog/model/extension/d_blog_module/post.php', '2022-12-26 22:37:49'),
(179, 1, 'catalog/model/extension/d_blog_module/review.php', '2022-12-26 22:37:49'),
(180, 1, 'catalog/model/extension/d_opencart_patch/load.php', '2022-12-26 22:37:49'),
(181, 1, 'catalog/model/extension/d_opencart_patch/user.php', '2022-12-26 22:37:49'),
(182, 1, 'catalog/model/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:49'),
(183, 1, 'catalog/model/extension/module/d_blog_module.php', '2022-12-26 22:37:49'),
(184, 1, 'catalog/view/javascript/d_blog_module/gulpfile.js', '2022-12-26 22:37:49'),
(185, 1, 'catalog/view/javascript/d_bootstrap_bootbox/bootbox.js', '2022-12-26 22:37:49'),
(186, 1, 'catalog/view/javascript/d_bootstrap_bootbox/bootbox.min.js', '2022-12-26 22:37:49'),
(187, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/css', '2022-12-26 22:37:49'),
(188, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img', '2022-12-26 22:37:49'),
(189, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/js', '2022-12-26 22:37:49'),
(190, 1, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.css', '2022-12-26 22:37:49'),
(191, 1, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.js', '2022-12-26 22:37:49'),
(192, 1, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js', '2022-12-26 22:37:49'),
(193, 1, 'catalog/view/javascript/d_bootstrap_switch/css', '2022-12-26 22:37:49'),
(194, 1, 'catalog/view/javascript/d_bootstrap_switch/js', '2022-12-26 22:37:49'),
(195, 1, 'catalog/view/javascript/d_fileinput/CHANGE.md', '2022-12-26 22:37:49'),
(196, 1, 'catalog/view/javascript/d_fileinput/LICENSE.md', '2022-12-26 22:37:49'),
(197, 1, 'catalog/view/javascript/d_fileinput/bower.json', '2022-12-26 22:37:49'),
(198, 1, 'catalog/view/javascript/d_fileinput/canvas-to-blob.js', '2022-12-26 22:37:49'),
(199, 1, 'catalog/view/javascript/d_fileinput/composer.json', '2022-12-26 22:37:49'),
(200, 1, 'catalog/view/javascript/d_fileinput/css', '2022-12-26 22:37:49'),
(201, 1, 'catalog/view/javascript/d_fileinput/examples', '2022-12-26 22:37:49'),
(202, 1, 'catalog/view/javascript/d_fileinput/fileinput.css', '2022-12-26 22:37:49'),
(203, 1, 'catalog/view/javascript/d_fileinput/fileinput.js', '2022-12-26 22:37:49'),
(204, 1, 'catalog/view/javascript/d_fileinput/img', '2022-12-26 22:37:49'),
(205, 1, 'catalog/view/javascript/d_fileinput/js', '2022-12-26 22:37:49'),
(206, 1, 'catalog/view/javascript/d_fileinput/nuget', '2022-12-26 22:37:49'),
(207, 1, 'catalog/view/javascript/d_fileinput/package.json', '2022-12-26 22:37:49'),
(208, 1, 'catalog/view/javascript/d_fileinput/sass', '2022-12-26 22:37:49'),
(209, 1, 'catalog/view/javascript/d_fileinput/themes', '2022-12-26 22:37:49'),
(210, 1, 'catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2022-12-26 22:37:49'),
(211, 1, 'catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2022-12-26 22:37:49'),
(212, 1, 'catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2022-12-26 22:37:49'),
(213, 1, 'catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2022-12-26 22:37:49'),
(214, 1, 'catalog/view/javascript/d_rubaxa_sortable/sortable.css', '2022-12-26 22:37:49'),
(215, 1, 'catalog/view/javascript/d_rubaxa_sortable/sortable.js', '2022-12-26 22:37:49'),
(216, 1, 'catalog/view/javascript/d_rubaxa_sortable/sortable.min.js', '2022-12-26 22:37:49'),
(217, 1, 'catalog/view/javascript/d_tinysort/jquery.tinysort.js', '2022-12-26 22:37:49'),
(218, 1, 'catalog/view/javascript/d_tinysort/jquery.tinysort.min.js', '2022-12-26 22:37:49'),
(219, 1, 'catalog/view/javascript/d_tinysort/tinysort.charorder.js', '2022-12-26 22:37:49'),
(220, 1, 'catalog/view/javascript/d_tinysort/tinysort.charorder.min.js', '2022-12-26 22:37:49'),
(221, 1, 'catalog/view/javascript/d_tinysort/tinysort.js', '2022-12-26 22:37:49'),
(222, 1, 'catalog/view/javascript/d_tinysort/tinysort.min.js', '2022-12-26 22:37:49'),
(223, 1, 'catalog/view/theme/default/javascript', '2022-12-26 22:37:49'),
(224, 1, 'image/catalog/d_blog_module/category/Photo_blog_11.jpg', '2022-12-26 22:37:49'),
(225, 1, 'image/catalog/d_blog_module/category/Photo_blog_12.jpg', '2022-12-26 22:37:49'),
(226, 1, 'image/catalog/d_blog_module/category/Photo_blog_13.jpg', '2022-12-26 22:37:49'),
(227, 1, 'image/catalog/d_blog_module/category/Photo_blog_14.jpg', '2022-12-26 22:37:49'),
(228, 1, 'image/catalog/d_blog_module/category/Photo_blog_15.jpg', '2022-12-26 22:37:49'),
(229, 1, 'image/catalog/d_blog_module/category/Photo_blog_16.jpg', '2022-12-26 22:37:49'),
(230, 1, 'image/catalog/d_blog_module/category/Photo_blog_17.jpg', '2022-12-26 22:37:49'),
(231, 1, 'image/catalog/d_blog_module/category/blog.jpg', '2022-12-26 22:37:49'),
(232, 1, 'image/catalog/d_blog_module/post/Photo_blog_1.jpg', '2022-12-26 22:37:49'),
(233, 1, 'image/catalog/d_blog_module/post/Photo_blog_10.jpg', '2022-12-26 22:37:49'),
(234, 1, 'image/catalog/d_blog_module/post/Photo_blog_2.jpg', '2022-12-26 22:37:50'),
(235, 1, 'image/catalog/d_blog_module/post/Photo_blog_3.jpg', '2022-12-26 22:37:50'),
(236, 1, 'image/catalog/d_blog_module/post/Photo_blog_4.jpg', '2022-12-26 22:37:50'),
(237, 1, 'image/catalog/d_blog_module/post/Photo_blog_5.jpg', '2022-12-26 22:37:50'),
(238, 1, 'image/catalog/d_blog_module/post/Photo_blog_6.jpg', '2022-12-26 22:37:50'),
(239, 1, 'image/catalog/d_blog_module/post/Photo_blog_7.jpg', '2022-12-26 22:37:50'),
(240, 1, 'image/catalog/d_blog_module/post/Photo_blog_8.jpg', '2022-12-26 22:37:50'),
(241, 1, 'image/catalog/d_blog_module/post/Photo_blog_9.jpg', '2022-12-26 22:37:50'),
(242, 1, 'image/catalog/d_blog_module/post/post-1.jpg', '2022-12-26 22:37:50'),
(243, 1, 'image/catalog/d_blog_module/review/index.html', '2022-12-26 22:37:50'),
(244, 1, 'system/library/d_shopunity/extension/d_admin_style.json', '2022-12-26 22:37:50'),
(245, 1, 'system/library/d_shopunity/extension/d_blog_module.json', '2022-12-26 22:37:50'),
(246, 1, 'system/library/d_shopunity/extension/d_bootstrap_bootbox.json', '2022-12-26 22:37:50'),
(247, 1, 'system/library/d_shopunity/extension/d_bootstrap_colorpicker.json', '2022-12-26 22:37:50'),
(248, 1, 'system/library/d_shopunity/extension/d_bootstrap_extra.json', '2022-12-26 22:37:50'),
(249, 1, 'system/library/d_shopunity/extension/d_bootstrap_rating.json', '2022-12-26 22:37:50'),
(250, 1, 'system/library/d_shopunity/extension/d_bootstrap_switch.json', '2022-12-26 22:37:50'),
(251, 1, 'system/library/d_shopunity/extension/d_event_manager.json', '2022-12-26 22:37:50'),
(252, 1, 'system/library/d_shopunity/extension/d_fileinput.json', '2022-12-26 22:37:50'),
(253, 1, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2022-12-26 22:37:50'),
(254, 1, 'system/library/d_shopunity/extension/d_rubaxa_sortable.json', '2022-12-26 22:37:50'),
(255, 1, 'system/library/d_shopunity/extension/d_simple_html_dom.json', '2022-12-26 22:37:50'),
(256, 1, 'system/library/d_shopunity/extension/d_tinysort.json', '2022-12-26 22:37:50'),
(257, 1, 'system/library/d_shopunity/extension/d_twig_manager.json', '2022-12-26 22:37:50'),
(258, 1, 'system/library/d_shopunity/extension/d_twig_partial.json', '2022-12-26 22:37:50'),
(259, 1, 'system/library/d_shopunity/extension/d_validator.json', '2022-12-26 22:37:50'),
(260, 1, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2022-12-26 22:37:50'),
(261, 1, 'system/library/d_shopunity/install/d_twig_manager.xml', '2022-12-26 22:37:50'),
(262, 1, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2022-12-26 22:37:50'),
(263, 1, 'admin/language/en-gb/extension/d_admin_style/style.php', '2022-12-26 22:37:50'),
(264, 1, 'admin/language/en-gb/extension/d_blog_module/author.php', '2022-12-26 22:37:50'),
(265, 1, 'admin/language/en-gb/extension/d_blog_module/author_group.php', '2022-12-26 22:37:50'),
(266, 1, 'admin/language/en-gb/extension/d_blog_module/category.php', '2022-12-26 22:37:50'),
(267, 1, 'admin/language/en-gb/extension/d_blog_module/post.php', '2022-12-26 22:37:50'),
(268, 1, 'admin/language/en-gb/extension/d_blog_module/review.php', '2022-12-26 22:37:50'),
(269, 1, 'admin/language/en-gb/extension/d_shopunity/d_validator.php', '2022-12-26 22:37:50'),
(270, 1, 'admin/language/en-gb/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:50'),
(271, 1, 'admin/language/en-gb/extension/event/d_blog_module.php', '2022-12-26 22:37:50'),
(272, 1, 'admin/language/en-gb/extension/module/d_blog_module.php', '2022-12-26 22:37:50'),
(273, 1, 'admin/language/english/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:50'),
(274, 1, 'admin/view/javascript/d_admin_style/gulp/gulpfile.js', '2022-12-26 22:37:50'),
(275, 1, 'admin/view/javascript/d_admin_style/gulp/package-lock.json', '2022-12-26 22:37:50'),
(276, 1, 'admin/view/javascript/d_admin_style/gulp/package.json', '2022-12-26 22:37:50'),
(277, 1, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2022-12-26 22:37:50'),
(278, 1, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2022-12-26 22:37:50'),
(279, 1, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2022-12-26 22:37:50'),
(280, 1, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2022-12-26 22:37:50'),
(281, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2022-12-26 22:37:50'),
(282, 1, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2022-12-26 22:37:50'),
(283, 1, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2022-12-26 22:37:50'),
(284, 1, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2022-12-26 22:37:50'),
(285, 1, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2022-12-26 22:37:50'),
(286, 1, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2022-12-26 22:37:50'),
(287, 1, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2022-12-26 22:37:50'),
(288, 1, 'admin/view/javascript/d_fileinput/css/fileinput-rtl.css', '2022-12-26 22:37:50'),
(289, 1, 'admin/view/javascript/d_fileinput/css/fileinput-rtl.min.css', '2022-12-26 22:37:50'),
(290, 1, 'admin/view/javascript/d_fileinput/css/fileinput.css', '2022-12-26 22:37:50'),
(291, 1, 'admin/view/javascript/d_fileinput/css/fileinput.min.css', '2022-12-26 22:37:50'),
(292, 1, 'admin/view/javascript/d_fileinput/examples/index.html', '2022-12-26 22:37:50'),
(293, 1, 'admin/view/javascript/d_fileinput/img/loading-sm.gif', '2022-12-26 22:37:50'),
(294, 1, 'admin/view/javascript/d_fileinput/img/loading.gif', '2022-12-26 22:37:50'),
(295, 1, 'admin/view/javascript/d_fileinput/js/fileinput.js', '2022-12-26 22:37:50'),
(296, 1, 'admin/view/javascript/d_fileinput/js/fileinput.min.js', '2022-12-26 22:37:50'),
(297, 1, 'admin/view/javascript/d_fileinput/js/locales', '2022-12-26 22:37:50'),
(298, 1, 'admin/view/javascript/d_fileinput/js/plugins', '2022-12-26 22:37:50'),
(299, 1, 'admin/view/javascript/d_fileinput/nuget/Package.nuspec', '2022-12-26 22:37:50'),
(300, 1, 'admin/view/javascript/d_fileinput/nuget/build.bat', '2022-12-26 22:37:50'),
(301, 1, 'admin/view/javascript/d_fileinput/sass/fileinput.scss', '2022-12-26 22:37:50'),
(302, 1, 'admin/view/javascript/d_fileinput/themes/explorer', '2022-12-26 22:37:50'),
(303, 1, 'admin/view/javascript/d_fileinput/themes/explorer-fa', '2022-12-26 22:37:50'),
(304, 1, 'admin/view/javascript/d_fileinput/themes/fa', '2022-12-26 22:37:50'),
(305, 1, 'admin/view/javascript/d_fileinput/themes/gly', '2022-12-26 22:37:50'),
(306, 1, 'admin/view/stylesheet/d_admin_style/core/_blog.scss', '2022-12-26 22:37:50'),
(307, 1, 'admin/view/stylesheet/d_admin_style/core/_common.scss', '2022-12-26 22:37:50'),
(308, 1, 'admin/view/stylesheet/d_admin_style/core/_compatible.scss', '2022-12-26 22:37:50'),
(309, 1, 'admin/view/stylesheet/d_admin_style/core/_notification.scss', '2022-12-26 22:37:50'),
(310, 1, 'admin/view/stylesheet/d_admin_style/core/_tables.scss', '2022-12-26 22:37:50'),
(311, 1, 'admin/view/stylesheet/d_admin_style/core/core.css', '2022-12-26 22:37:50'),
(312, 1, 'admin/view/stylesheet/d_admin_style/core/core.css.map', '2022-12-26 22:37:50'),
(313, 1, 'admin/view/stylesheet/d_admin_style/core/core.scss', '2022-12-26 22:37:50'),
(314, 1, 'admin/view/stylesheet/d_admin_style/core/header', '2022-12-26 22:37:50'),
(315, 1, 'admin/view/stylesheet/d_admin_style/core/normalize', '2022-12-26 22:37:50'),
(316, 1, 'admin/view/stylesheet/d_admin_style/core/scss', '2022-12-26 22:37:50'),
(317, 1, 'admin/view/stylesheet/d_admin_style/core/setup.css', '2022-12-26 22:37:50'),
(318, 1, 'admin/view/stylesheet/d_admin_style/core/setup.css.map', '2022-12-26 22:37:50'),
(319, 1, 'admin/view/stylesheet/d_admin_style/core/setup.scss', '2022-12-26 22:37:50'),
(320, 1, 'admin/view/stylesheet/d_admin_style/core/svg', '2022-12-26 22:37:50'),
(321, 1, 'admin/view/stylesheet/d_admin_style/core/welcome.css', '2022-12-26 22:37:50'),
(322, 1, 'admin/view/stylesheet/d_admin_style/core/welcome.css.map', '2022-12-26 22:37:50'),
(323, 1, 'admin/view/stylesheet/d_admin_style/core/welcome.scss', '2022-12-26 22:37:50'),
(324, 1, 'admin/view/stylesheet/d_admin_style/themes/dark', '2022-12-26 22:37:50'),
(325, 1, 'admin/view/stylesheet/d_admin_style/themes/default', '2022-12-26 22:37:50'),
(326, 1, 'admin/view/stylesheet/d_admin_style/themes/light', '2022-12-26 22:37:50'),
(327, 1, 'admin/view/template/extension/d_admin_style/setup.twig', '2022-12-26 22:37:50'),
(328, 1, 'admin/view/template/extension/d_blog_module/author_form.twig', '2022-12-26 22:37:50'),
(329, 1, 'admin/view/template/extension/d_blog_module/author_group_form.twig', '2022-12-26 22:37:50'),
(330, 1, 'admin/view/template/extension/d_blog_module/author_group_list.twig', '2022-12-26 22:37:50'),
(331, 1, 'admin/view/template/extension/d_blog_module/author_list.twig', '2022-12-26 22:37:50'),
(332, 1, 'admin/view/template/extension/d_blog_module/category_form.twig', '2022-12-26 22:37:50'),
(333, 1, 'admin/view/template/extension/d_blog_module/category_list.twig', '2022-12-26 22:37:50'),
(334, 1, 'admin/view/template/extension/d_blog_module/post_form.twig', '2022-12-26 22:37:50'),
(335, 1, 'admin/view/template/extension/d_blog_module/post_list.twig', '2022-12-26 22:37:50'),
(336, 1, 'admin/view/template/extension/d_blog_module/review_form.twig', '2022-12-26 22:37:50'),
(337, 1, 'admin/view/template/extension/d_blog_module/review_list.twig', '2022-12-26 22:37:50'),
(338, 1, 'admin/view/template/extension/d_blog_module/welcome.twig', '2022-12-26 22:37:50'),
(339, 1, 'admin/view/template/extension/d_shopunity/d_validator.twig', '2022-12-26 22:37:50'),
(340, 1, 'admin/view/template/extension/d_visual_designer/settings_block', '2022-12-26 22:37:50'),
(341, 1, 'admin/view/template/extension/event/d_blog_module.twig', '2022-12-26 22:37:50'),
(342, 1, 'admin/view/template/extension/module/d_blog_module.twig', '2022-12-26 22:37:50'),
(343, 1, 'catalog/language/en-gb/extension/d_blog_module/author.php', '2022-12-26 22:37:50'),
(344, 1, 'catalog/language/en-gb/extension/d_blog_module/category.php', '2022-12-26 22:37:50'),
(345, 1, 'catalog/language/en-gb/extension/d_blog_module/post.php', '2022-12-26 22:37:50'),
(346, 1, 'catalog/language/en-gb/extension/d_blog_module/review.php', '2022-12-26 22:37:50'),
(347, 1, 'catalog/language/en-gb/extension/d_blog_module/search.php', '2022-12-26 22:37:50'),
(348, 1, 'catalog/language/en-gb/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:50'),
(349, 1, 'catalog/language/en-gb/extension/event/d_blog_module.php', '2022-12-26 22:37:50'),
(350, 1, 'catalog/language/english/extension/d_visual_designer_module/blog_post.php', '2022-12-26 22:37:50'),
(351, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2022-12-26 22:37:50'),
(352, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2022-12-26 22:37:50'),
(353, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2022-12-26 22:37:50'),
(354, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2022-12-26 22:37:50'),
(355, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2022-12-26 22:37:50'),
(356, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2022-12-26 22:37:50'),
(357, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2022-12-26 22:37:50'),
(358, 1, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2022-12-26 22:37:50'),
(359, 1, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2022-12-26 22:37:50'),
(360, 1, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2022-12-26 22:37:50'),
(361, 1, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2022-12-26 22:37:50'),
(362, 1, 'catalog/view/javascript/d_fileinput/css/fileinput-rtl.css', '2022-12-26 22:37:50'),
(363, 1, 'catalog/view/javascript/d_fileinput/css/fileinput-rtl.min.css', '2022-12-26 22:37:50'),
(364, 1, 'catalog/view/javascript/d_fileinput/css/fileinput.css', '2022-12-26 22:37:50'),
(365, 1, 'catalog/view/javascript/d_fileinput/css/fileinput.min.css', '2022-12-26 22:37:50'),
(366, 1, 'catalog/view/javascript/d_fileinput/examples/index.html', '2022-12-26 22:37:50'),
(367, 1, 'catalog/view/javascript/d_fileinput/img/loading-sm.gif', '2022-12-26 22:37:50'),
(368, 1, 'catalog/view/javascript/d_fileinput/img/loading.gif', '2022-12-26 22:37:50'),
(369, 1, 'catalog/view/javascript/d_fileinput/js/fileinput.js', '2022-12-26 22:37:50'),
(370, 1, 'catalog/view/javascript/d_fileinput/js/fileinput.min.js', '2022-12-26 22:37:50'),
(371, 1, 'catalog/view/javascript/d_fileinput/js/locales', '2022-12-26 22:37:50'),
(372, 1, 'catalog/view/javascript/d_fileinput/js/plugins', '2022-12-26 22:37:50'),
(373, 1, 'catalog/view/javascript/d_fileinput/nuget/Package.nuspec', '2022-12-26 22:37:50'),
(374, 1, 'catalog/view/javascript/d_fileinput/nuget/build.bat', '2022-12-26 22:37:50'),
(375, 1, 'catalog/view/javascript/d_fileinput/sass/fileinput.scss', '2022-12-26 22:37:50'),
(376, 1, 'catalog/view/javascript/d_fileinput/themes/explorer', '2022-12-26 22:37:50'),
(377, 1, 'catalog/view/javascript/d_fileinput/themes/explorer-fa', '2022-12-26 22:37:50'),
(378, 1, 'catalog/view/javascript/d_fileinput/themes/fa', '2022-12-26 22:37:50'),
(379, 1, 'catalog/view/javascript/d_fileinput/themes/gly', '2022-12-26 22:37:50'),
(380, 1, 'catalog/view/theme/default/javascript/d_blog_module', '2022-12-26 22:37:50'),
(381, 1, 'catalog/view/theme/default/javascript/partial', '2022-12-26 22:37:50'),
(382, 1, 'catalog/view/theme/default/stylesheet/d_blog_module', '2022-12-26 22:37:50'),
(383, 1, 'catalog/view/theme/default/template/partial', '2022-12-26 22:37:50'),
(384, 1, 'system/library/template/Twig/Extension/DTwigManager.php', '2022-12-26 22:37:50'),
(385, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2022-12-26 22:37:50'),
(386, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2022-12-26 22:37:50'),
(387, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2022-12-26 22:37:50'),
(388, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2022-12-26 22:37:50'),
(389, 1, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2022-12-26 22:37:50'),
(390, 1, 'admin/view/javascript/d_fileinput/js/locales/LANG.js', '2022-12-26 22:37:50'),
(391, 1, 'admin/view/javascript/d_fileinput/js/locales/ar.js', '2022-12-26 22:37:50'),
(392, 1, 'admin/view/javascript/d_fileinput/js/locales/az.js', '2022-12-26 22:37:50'),
(393, 1, 'admin/view/javascript/d_fileinput/js/locales/bg.js', '2022-12-26 22:37:50'),
(394, 1, 'admin/view/javascript/d_fileinput/js/locales/ca.js', '2022-12-26 22:37:50'),
(395, 1, 'admin/view/javascript/d_fileinput/js/locales/cr.js', '2022-12-26 22:37:50'),
(396, 1, 'admin/view/javascript/d_fileinput/js/locales/cz.js', '2022-12-26 22:37:50'),
(397, 1, 'admin/view/javascript/d_fileinput/js/locales/da.js', '2022-12-26 22:37:50'),
(398, 1, 'admin/view/javascript/d_fileinput/js/locales/de.js', '2022-12-26 22:37:50'),
(399, 1, 'admin/view/javascript/d_fileinput/js/locales/el.js', '2022-12-26 22:37:50'),
(400, 1, 'admin/view/javascript/d_fileinput/js/locales/es.js', '2022-12-26 22:37:50'),
(401, 1, 'admin/view/javascript/d_fileinput/js/locales/et.js', '2022-12-26 22:37:50'),
(402, 1, 'admin/view/javascript/d_fileinput/js/locales/fa.js', '2022-12-26 22:37:50'),
(403, 1, 'admin/view/javascript/d_fileinput/js/locales/fi.js', '2022-12-26 22:37:50'),
(404, 1, 'admin/view/javascript/d_fileinput/js/locales/fr.js', '2022-12-26 22:37:50'),
(405, 1, 'admin/view/javascript/d_fileinput/js/locales/gl.js', '2022-12-26 22:37:50'),
(406, 1, 'admin/view/javascript/d_fileinput/js/locales/hu.js', '2022-12-26 22:37:50'),
(407, 1, 'admin/view/javascript/d_fileinput/js/locales/id.js', '2022-12-26 22:37:50'),
(408, 1, 'admin/view/javascript/d_fileinput/js/locales/it.js', '2022-12-26 22:37:50'),
(409, 1, 'admin/view/javascript/d_fileinput/js/locales/ja.js', '2022-12-26 22:37:50'),
(410, 1, 'admin/view/javascript/d_fileinput/js/locales/kr.js', '2022-12-26 22:37:50'),
(411, 1, 'admin/view/javascript/d_fileinput/js/locales/kz.js', '2022-12-26 22:37:50'),
(412, 1, 'admin/view/javascript/d_fileinput/js/locales/nl.js', '2022-12-26 22:37:50'),
(413, 1, 'admin/view/javascript/d_fileinput/js/locales/no.js', '2022-12-26 22:37:50'),
(414, 1, 'admin/view/javascript/d_fileinput/js/locales/pl.js', '2022-12-26 22:37:50'),
(415, 1, 'admin/view/javascript/d_fileinput/js/locales/pt-BR.js', '2022-12-26 22:37:50'),
(416, 1, 'admin/view/javascript/d_fileinput/js/locales/pt.js', '2022-12-26 22:37:50'),
(417, 1, 'admin/view/javascript/d_fileinput/js/locales/ro.js', '2022-12-26 22:37:50'),
(418, 1, 'admin/view/javascript/d_fileinput/js/locales/ru.js', '2022-12-26 22:37:50'),
(419, 1, 'admin/view/javascript/d_fileinput/js/locales/sk.js', '2022-12-26 22:37:50'),
(420, 1, 'admin/view/javascript/d_fileinput/js/locales/sl.js', '2022-12-26 22:37:50'),
(421, 1, 'admin/view/javascript/d_fileinput/js/locales/sv.js', '2022-12-26 22:37:50'),
(422, 1, 'admin/view/javascript/d_fileinput/js/locales/th.js', '2022-12-26 22:37:50'),
(423, 1, 'admin/view/javascript/d_fileinput/js/locales/tr.js', '2022-12-26 22:37:50'),
(424, 1, 'admin/view/javascript/d_fileinput/js/locales/uk.js', '2022-12-26 22:37:50'),
(425, 1, 'admin/view/javascript/d_fileinput/js/locales/vi.js', '2022-12-26 22:37:50'),
(426, 1, 'admin/view/javascript/d_fileinput/js/locales/zh-TW.js', '2022-12-26 22:37:50'),
(427, 1, 'admin/view/javascript/d_fileinput/js/locales/zh.js', '2022-12-26 22:37:50'),
(428, 1, 'admin/view/javascript/d_fileinput/js/plugins/piexif.js', '2022-12-26 22:37:50'),
(429, 1, 'admin/view/javascript/d_fileinput/js/plugins/piexif.min.js', '2022-12-26 22:37:50'),
(430, 1, 'admin/view/javascript/d_fileinput/js/plugins/purify.js', '2022-12-26 22:37:50'),
(431, 1, 'admin/view/javascript/d_fileinput/js/plugins/purify.min.js', '2022-12-26 22:37:50'),
(432, 1, 'admin/view/javascript/d_fileinput/js/plugins/sortable.js', '2022-12-26 22:37:50'),
(433, 1, 'admin/view/javascript/d_fileinput/js/plugins/sortable.min.js', '2022-12-26 22:37:50'),
(434, 1, 'admin/view/javascript/d_fileinput/themes/explorer/theme.css', '2022-12-26 22:37:50'),
(435, 1, 'admin/view/javascript/d_fileinput/themes/explorer/theme.js', '2022-12-26 22:37:50'),
(436, 1, 'admin/view/javascript/d_fileinput/themes/explorer/theme.min.css', '2022-12-26 22:37:50'),
(437, 1, 'admin/view/javascript/d_fileinput/themes/explorer/theme.min.js', '2022-12-26 22:37:50'),
(438, 1, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.css', '2022-12-26 22:37:50'),
(439, 1, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.js', '2022-12-26 22:37:50'),
(440, 1, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css', '2022-12-26 22:37:50'),
(441, 1, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js', '2022-12-26 22:37:50'),
(442, 1, 'admin/view/javascript/d_fileinput/themes/fa/theme.js', '2022-12-26 22:37:50'),
(443, 1, 'admin/view/javascript/d_fileinput/themes/fa/theme.min.js', '2022-12-26 22:37:50'),
(444, 1, 'admin/view/javascript/d_fileinput/themes/gly/theme.js', '2022-12-26 22:37:50'),
(445, 1, 'admin/view/javascript/d_fileinput/themes/gly/theme.min.js', '2022-12-26 22:37:50'),
(446, 1, 'admin/view/stylesheet/d_admin_style/core/header/header.css', '2022-12-26 22:37:50'),
(447, 1, 'admin/view/stylesheet/d_admin_style/core/header/header.css.map', '2022-12-26 22:37:50'),
(448, 1, 'admin/view/stylesheet/d_admin_style/core/header/header.scss', '2022-12-26 22:37:50'),
(449, 1, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css', '2022-12-26 22:37:50'),
(450, 1, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css.map', '2022-12-26 22:37:50'),
(451, 1, 'admin/view/stylesheet/d_admin_style/core/header/headerold.scss', '2022-12-26 22:37:50'),
(452, 1, 'admin/view/stylesheet/d_admin_style/core/normalize/normalize.css', '2022-12-26 22:37:50'),
(453, 1, 'admin/view/stylesheet/d_admin_style/core/scss/_mixin.scss', '2022-12-26 22:37:50'),
(454, 1, 'admin/view/stylesheet/d_admin_style/core/scss/_mixins.sass', '2022-12-26 22:37:50'),
(455, 1, 'admin/view/stylesheet/d_admin_style/core/scss/_variable.scss', '2022-12-26 22:37:50'),
(456, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification', '2022-12-26 22:37:50'),
(457, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication', '2022-12-26 22:37:50'),
(458, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section', '2022-12-26 22:37:50'),
(459, 1, 'admin/view/stylesheet/d_admin_style/core/scss/third_party', '2022-12-26 22:37:50'),
(460, 1, 'admin/view/stylesheet/d_admin_style/core/svg/loader.svg', '2022-12-26 22:37:50'),
(461, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css', '2022-12-26 22:37:50'),
(462, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css.map', '2022-12-26 22:37:50'),
(463, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.scss', '2022-12-26 22:37:50'),
(464, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss', '2022-12-26 22:37:50'),
(465, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css', '2022-12-26 22:37:50'),
(466, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css.map', '2022-12-26 22:37:50'),
(467, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.scss', '2022-12-26 22:37:50'),
(468, 1, 'admin/view/stylesheet/d_admin_style/themes/default/styles.css', '2022-12-26 22:37:50'),
(469, 1, 'admin/view/stylesheet/d_admin_style/themes/light/light.css', '2022-12-26 22:37:50'),
(470, 1, 'admin/view/stylesheet/d_admin_style/themes/light/light.css.map', '2022-12-26 22:37:50'),
(471, 1, 'admin/view/stylesheet/d_admin_style/themes/light/light.scss', '2022-12-26 22:37:50'),
(472, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification', '2022-12-26 22:37:50'),
(473, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss', '2022-12-26 22:37:50'),
(474, 1, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css', '2022-12-26 22:37:50'),
(475, 1, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css.map', '2022-12-26 22:37:50'),
(476, 1, 'admin/view/stylesheet/d_admin_style/themes/light/styles.scss', '2022-12-26 22:37:50'),
(477, 1, 'admin/view/template/extension/d_visual_designer/settings_block/vd-setting-block-blog_post.tag', '2022-12-26 22:37:50'),
(478, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2022-12-26 22:37:50'),
(479, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2022-12-26 22:37:50'),
(480, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2022-12-26 22:37:50'),
(481, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2022-12-26 22:37:50'),
(482, 1, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2022-12-26 22:37:50'),
(483, 1, 'catalog/view/javascript/d_fileinput/js/locales/LANG.js', '2022-12-26 22:37:50'),
(484, 1, 'catalog/view/javascript/d_fileinput/js/locales/ar.js', '2022-12-26 22:37:50'),
(485, 1, 'catalog/view/javascript/d_fileinput/js/locales/az.js', '2022-12-26 22:37:50'),
(486, 1, 'catalog/view/javascript/d_fileinput/js/locales/bg.js', '2022-12-26 22:37:50'),
(487, 1, 'catalog/view/javascript/d_fileinput/js/locales/ca.js', '2022-12-26 22:37:50'),
(488, 1, 'catalog/view/javascript/d_fileinput/js/locales/cr.js', '2022-12-26 22:37:50'),
(489, 1, 'catalog/view/javascript/d_fileinput/js/locales/cz.js', '2022-12-26 22:37:50'),
(490, 1, 'catalog/view/javascript/d_fileinput/js/locales/da.js', '2022-12-26 22:37:50'),
(491, 1, 'catalog/view/javascript/d_fileinput/js/locales/de.js', '2022-12-26 22:37:50'),
(492, 1, 'catalog/view/javascript/d_fileinput/js/locales/el.js', '2022-12-26 22:37:50'),
(493, 1, 'catalog/view/javascript/d_fileinput/js/locales/es.js', '2022-12-26 22:37:50'),
(494, 1, 'catalog/view/javascript/d_fileinput/js/locales/et.js', '2022-12-26 22:37:50'),
(495, 1, 'catalog/view/javascript/d_fileinput/js/locales/fa.js', '2022-12-26 22:37:50'),
(496, 1, 'catalog/view/javascript/d_fileinput/js/locales/fi.js', '2022-12-26 22:37:50'),
(497, 1, 'catalog/view/javascript/d_fileinput/js/locales/fr.js', '2022-12-26 22:37:50'),
(498, 1, 'catalog/view/javascript/d_fileinput/js/locales/gl.js', '2022-12-26 22:37:50'),
(499, 1, 'catalog/view/javascript/d_fileinput/js/locales/hu.js', '2022-12-26 22:37:50'),
(500, 1, 'catalog/view/javascript/d_fileinput/js/locales/id.js', '2022-12-26 22:37:50'),
(501, 1, 'catalog/view/javascript/d_fileinput/js/locales/it.js', '2022-12-26 22:37:50'),
(502, 1, 'catalog/view/javascript/d_fileinput/js/locales/ja.js', '2022-12-26 22:37:50'),
(503, 1, 'catalog/view/javascript/d_fileinput/js/locales/kr.js', '2022-12-26 22:37:50'),
(504, 1, 'catalog/view/javascript/d_fileinput/js/locales/kz.js', '2022-12-26 22:37:50'),
(505, 1, 'catalog/view/javascript/d_fileinput/js/locales/nl.js', '2022-12-26 22:37:50'),
(506, 1, 'catalog/view/javascript/d_fileinput/js/locales/no.js', '2022-12-26 22:37:50'),
(507, 1, 'catalog/view/javascript/d_fileinput/js/locales/pl.js', '2022-12-26 22:37:50'),
(508, 1, 'catalog/view/javascript/d_fileinput/js/locales/pt-BR.js', '2022-12-26 22:37:50'),
(509, 1, 'catalog/view/javascript/d_fileinput/js/locales/pt.js', '2022-12-26 22:37:50'),
(510, 1, 'catalog/view/javascript/d_fileinput/js/locales/ro.js', '2022-12-26 22:37:50'),
(511, 1, 'catalog/view/javascript/d_fileinput/js/locales/ru.js', '2022-12-26 22:37:50'),
(512, 1, 'catalog/view/javascript/d_fileinput/js/locales/sk.js', '2022-12-26 22:37:50'),
(513, 1, 'catalog/view/javascript/d_fileinput/js/locales/sl.js', '2022-12-26 22:37:50'),
(514, 1, 'catalog/view/javascript/d_fileinput/js/locales/sv.js', '2022-12-26 22:37:50'),
(515, 1, 'catalog/view/javascript/d_fileinput/js/locales/th.js', '2022-12-26 22:37:50'),
(516, 1, 'catalog/view/javascript/d_fileinput/js/locales/tr.js', '2022-12-26 22:37:50'),
(517, 1, 'catalog/view/javascript/d_fileinput/js/locales/uk.js', '2022-12-26 22:37:50'),
(518, 1, 'catalog/view/javascript/d_fileinput/js/locales/vi.js', '2022-12-26 22:37:50'),
(519, 1, 'catalog/view/javascript/d_fileinput/js/locales/zh-TW.js', '2022-12-26 22:37:50'),
(520, 1, 'catalog/view/javascript/d_fileinput/js/locales/zh.js', '2022-12-26 22:37:50'),
(521, 1, 'catalog/view/javascript/d_fileinput/js/plugins/piexif.js', '2022-12-26 22:37:50'),
(522, 1, 'catalog/view/javascript/d_fileinput/js/plugins/piexif.min.js', '2022-12-26 22:37:50'),
(523, 1, 'catalog/view/javascript/d_fileinput/js/plugins/purify.js', '2022-12-26 22:37:50'),
(524, 1, 'catalog/view/javascript/d_fileinput/js/plugins/purify.min.js', '2022-12-26 22:37:50'),
(525, 1, 'catalog/view/javascript/d_fileinput/js/plugins/sortable.js', '2022-12-26 22:37:50'),
(526, 1, 'catalog/view/javascript/d_fileinput/js/plugins/sortable.min.js', '2022-12-26 22:37:50'),
(527, 1, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.css', '2022-12-26 22:37:50'),
(528, 1, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.js', '2022-12-26 22:37:50'),
(529, 1, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.min.css', '2022-12-26 22:37:50'),
(530, 1, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.min.js', '2022-12-26 22:37:50'),
(531, 1, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.css', '2022-12-26 22:37:50'),
(532, 1, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.js', '2022-12-26 22:37:50'),
(533, 1, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css', '2022-12-26 22:37:50'),
(534, 1, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js', '2022-12-26 22:37:50'),
(535, 1, 'catalog/view/javascript/d_fileinput/themes/fa/theme.js', '2022-12-26 22:37:50'),
(536, 1, 'catalog/view/javascript/d_fileinput/themes/fa/theme.min.js', '2022-12-26 22:37:50'),
(537, 1, 'catalog/view/javascript/d_fileinput/themes/gly/theme.js', '2022-12-26 22:37:50'),
(538, 1, 'catalog/view/javascript/d_fileinput/themes/gly/theme.min.js', '2022-12-26 22:37:50'),
(539, 1, 'catalog/view/theme/default/javascript/d_blog_module/author.js', '2022-12-26 22:37:50'),
(540, 1, 'catalog/view/theme/default/javascript/d_blog_module/category.js', '2022-12-26 22:37:50'),
(541, 1, 'catalog/view/theme/default/javascript/d_blog_module/main.js', '2022-12-26 22:37:50'),
(542, 1, 'catalog/view/theme/default/javascript/d_blog_module/post.js', '2022-12-26 22:37:50'),
(543, 1, 'catalog/view/theme/default/javascript/d_blog_module/review.js', '2022-12-26 22:37:50'),
(544, 1, 'catalog/view/theme/default/javascript/partial/d_address_field.js', '2022-12-26 22:37:50'),
(545, 1, 'catalog/view/theme/default/javascript/partial/d_custom_field.js', '2022-12-26 22:37:50'),
(546, 1, 'catalog/view/theme/default/javascript/partial/d_product_sort.js', '2022-12-26 22:37:50'),
(547, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/animate.css', '2022-12-26 22:37:50'),
(548, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css', '2022-12-26 22:37:50'),
(549, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css.map', '2022-12-26 22:37:50'),
(550, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.scss', '2022-12-26 22:37:50'),
(551, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css', '2022-12-26 22:37:50'),
(552, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css.map', '2022-12-26 22:37:50'),
(553, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.scss', '2022-12-26 22:37:50'),
(554, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/theme', '2022-12-26 22:37:50'),
(555, 1, 'catalog/view/theme/default/template/extension/d_blog_module', '2022-12-26 22:37:50'),
(556, 1, 'catalog/view/theme/default/template/extension/d_visual_designer', '2022-12-26 22:37:50'),
(557, 1, 'catalog/view/theme/default/template/extension/d_visual_designer_module', '2022-12-26 22:37:50'),
(558, 1, 'catalog/view/theme/default/template/partial/button.twig', '2022-12-26 22:37:50'),
(559, 1, 'catalog/view/theme/default/template/partial/d_account_field.twig', '2022-12-26 22:37:50'),
(560, 1, 'catalog/view/theme/default/template/partial/d_address_field.twig', '2022-12-26 22:37:50'),
(561, 1, 'catalog/view/theme/default/template/partial/d_breadcrumb.twig', '2022-12-26 22:37:50'),
(562, 1, 'catalog/view/theme/default/template/partial/d_button.twig', '2022-12-26 22:37:50'),
(563, 1, 'catalog/view/theme/default/template/partial/d_button_continue.twig', '2022-12-26 22:37:50'),
(564, 1, 'catalog/view/theme/default/template/partial/d_button_submit.twig', '2022-12-26 22:37:50'),
(565, 1, 'catalog/view/theme/default/template/partial/d_cart.twig', '2022-12-26 22:37:50'),
(566, 1, 'catalog/view/theme/default/template/partial/d_custom_field.twig', '2022-12-26 22:37:50'),
(567, 1, 'catalog/view/theme/default/template/partial/d_empty.twig', '2022-12-26 22:37:50'),
(568, 1, 'catalog/view/theme/default/template/partial/d_layout_close.twig', '2022-12-26 22:37:50');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(569, 1, 'catalog/view/theme/default/template/partial/d_layout_open.twig', '2022-12-26 22:37:50'),
(570, 1, 'catalog/view/theme/default/template/partial/d_mini_cart.twig', '2022-12-26 22:37:50'),
(571, 1, 'catalog/view/theme/default/template/partial/d_name_field.twig', '2022-12-26 22:37:50'),
(572, 1, 'catalog/view/theme/default/template/partial/d_notification.twig', '2022-12-26 22:37:50'),
(573, 1, 'catalog/view/theme/default/template/partial/d_product_list.twig', '2022-12-26 22:37:50'),
(574, 1, 'catalog/view/theme/default/template/partial/d_product_sort.twig', '2022-12-26 22:37:50'),
(575, 1, 'catalog/view/theme/default/template/partial/d_product_thumb.twig', '2022-12-26 22:37:50'),
(576, 1, 'catalog/view/theme/default/template/partial/d_rating.twig', '2022-12-26 22:37:50'),
(577, 1, 'catalog/view/theme/default/template/partial/d_review.twig', '2022-12-26 22:37:50'),
(578, 1, 'catalog/view/theme/default/template/partial/d_search.twig', '2022-12-26 22:37:50'),
(579, 1, 'catalog/view/theme/default/template/partial/form_group.twig', '2022-12-26 22:37:50'),
(580, 1, 'catalog/view/theme/default/template/partial/input.twig', '2022-12-26 22:37:50'),
(581, 1, 'catalog/view/theme/default/template/partial/input_group.twig', '2022-12-26 22:37:50'),
(582, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_button.scss', '2022-12-26 22:37:50'),
(583, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_callout.scss', '2022-12-26 22:37:50'),
(584, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_checkbox.scss', '2022-12-26 22:37:50'),
(585, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_common.scss', '2022-12-26 22:37:50'),
(586, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_forms.scss', '2022-12-26 22:37:50'),
(587, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_import.scss', '2022-12-26 22:37:50'),
(588, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_info.scss', '2022-12-26 22:37:50'),
(589, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_navigation.scss', '2022-12-26 22:37:50'),
(590, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_pagination.scss', '2022-12-26 22:37:50'),
(591, 1, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_panels.scss', '2022-12-26 22:37:50'),
(592, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_button.scss', '2022-12-26 22:37:50'),
(593, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_callout.scss', '2022-12-26 22:37:50'),
(594, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_common.scss', '2022-12-26 22:37:50'),
(595, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_forms.scss', '2022-12-26 22:37:50'),
(596, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_import.scss', '2022-12-26 22:37:50'),
(597, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_navigation.scss', '2022-12-26 22:37:50'),
(598, 1, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_panels.scss', '2022-12-26 22:37:50'),
(599, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_dashboard.scss', '2022-12-26 22:37:50'),
(600, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_firewall.scss', '2022-12-26 22:37:50'),
(601, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_help.scss', '2022-12-26 22:37:50'),
(602, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_low_php.scss', '2022-12-26 22:37:50'),
(603, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_scan.scss', '2022-12-26 22:37:50'),
(604, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_setting.scss', '2022-12-26 22:37:50'),
(605, 1, 'admin/view/stylesheet/d_admin_style/core/scss/section/_statistic.scss', '2022-12-26 22:37:50'),
(606, 1, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_chart.scss', '2022-12-26 22:37:50'),
(607, 1, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_diff.scss', '2022-12-26 22:37:50'),
(608, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_mixin.scss', '2022-12-26 22:37:50'),
(609, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_variable.scss', '2022-12-26 22:37:50'),
(610, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section', '2022-12-26 22:37:50'),
(611, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party', '2022-12-26 22:37:50'),
(612, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_button.scss', '2022-12-26 22:37:50'),
(613, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_common.scss', '2022-12-26 22:37:50'),
(614, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_form.scss', '2022-12-26 22:37:50'),
(615, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_forms.scss', '2022-12-26 22:37:50'),
(616, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_info.scss', '2022-12-26 22:37:50'),
(617, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_modal.scss', '2022-12-26 22:37:50'),
(618, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_navigation.scss', '2022-12-26 22:37:50'),
(619, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_notification.scss', '2022-12-26 22:37:50'),
(620, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_pagination.scss', '2022-12-26 22:37:50'),
(621, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_panel.scss', '2022-12-26 22:37:50'),
(622, 1, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_table.scss', '2022-12-26 22:37:50'),
(623, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_mixin.scss', '2022-12-26 22:37:50'),
(624, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_variable.scss', '2022-12-26 22:37:50'),
(625, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section', '2022-12-26 22:37:50'),
(626, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party', '2022-12-26 22:37:50'),
(627, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default', '2022-12-26 22:37:50'),
(628, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default.css', '2022-12-26 22:37:50'),
(629, 1, 'catalog/view/theme/default/template/extension/d_blog_module/author.twig', '2022-12-26 22:37:50'),
(630, 1, 'catalog/view/theme/default/template/extension/d_blog_module/category.twig', '2022-12-26 22:37:50'),
(631, 1, 'catalog/view/theme/default/template/extension/d_blog_module/layout_grid.twig', '2022-12-26 22:37:50'),
(632, 1, 'catalog/view/theme/default/template/extension/d_blog_module/post.twig', '2022-12-26 22:37:50'),
(633, 1, 'catalog/view/theme/default/template/extension/d_blog_module/post_thumb.twig', '2022-12-26 22:37:50'),
(634, 1, 'catalog/view/theme/default/template/extension/d_blog_module/review.twig', '2022-12-26 22:37:50'),
(635, 1, 'catalog/view/theme/default/template/extension/d_blog_module/review_thumb.twig', '2022-12-26 22:37:50'),
(636, 1, 'catalog/view/theme/default/template/extension/d_blog_module/search.twig', '2022-12-26 22:37:50'),
(637, 1, 'catalog/view/theme/default/template/extension/d_visual_designer/content_blocks', '2022-12-26 22:37:50'),
(638, 1, 'catalog/view/theme/default/template/extension/d_visual_designer_module/blog_post.twig', '2022-12-26 22:37:50'),
(639, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_dashboard.scss', '2022-12-26 22:37:50'),
(640, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_firewall.scss', '2022-12-26 22:37:50'),
(641, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_help.scss', '2022-12-26 22:37:50'),
(642, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_low_php.scss', '2022-12-26 22:37:50'),
(643, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_scan.scss', '2022-12-26 22:37:50'),
(644, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_setting.scss', '2022-12-26 22:37:50'),
(645, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_statistic.scss', '2022-12-26 22:37:50'),
(646, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_chart.scss', '2022-12-26 22:37:50'),
(647, 1, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_diff.scss', '2022-12-26 22:37:50'),
(648, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_dashboard.scss', '2022-12-26 22:37:50'),
(649, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_firewall.scss', '2022-12-26 22:37:50'),
(650, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_help.scss', '2022-12-26 22:37:50'),
(651, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_low_php.scss', '2022-12-26 22:37:50'),
(652, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_scan.scss', '2022-12-26 22:37:50'),
(653, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_setting.scss', '2022-12-26 22:37:50'),
(654, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_statistic.scss', '2022-12-26 22:37:50'),
(655, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_chart.scss', '2022-12-26 22:37:50'),
(656, 1, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_diff.scss', '2022-12-26 22:37:50'),
(657, 1, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default/default.scss', '2022-12-26 22:37:50'),
(658, 1, 'catalog/view/theme/default/template/extension/d_visual_designer/content_blocks/vd-block-blog_post.tag', '2022-12-26 22:37:50'),
(659, 2, 'admin/language/russian', '2022-12-26 22:56:58'),
(660, 2, 'system/library/esas', '2022-12-26 22:56:58'),
(661, 2, 'admin/language/english/hutkigrosh.php', '2022-12-26 22:56:58'),
(662, 2, 'admin/language/russian/hutkigrosh.php', '2022-12-26 22:56:58'),
(663, 2, 'system/library/esas/cmsgate', '2022-12-26 22:56:58'),
(664, 2, 'admin/controller/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(665, 2, 'admin/view/image/payment/hgrosh.png', '2022-12-26 22:56:58'),
(666, 2, 'catalog/controller/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(667, 2, 'catalog/model/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(668, 2, 'system/library/esas/cmsgate/hutkigrosh', '2022-12-26 22:56:58'),
(669, 2, 'admin/language/en-gb/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(670, 2, 'admin/language/ru-ru/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(671, 2, 'admin/view/template/extension/payment/hutkigrosh.tpl', '2022-12-26 22:56:58'),
(672, 2, 'admin/view/template/extension/payment/hutkigrosh.twig', '2022-12-26 22:56:58'),
(673, 2, 'catalog/language/en-gb/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(674, 2, 'catalog/language/ru-ru/extension/payment/hutkigrosh.php', '2022-12-26 22:56:58'),
(675, 2, 'system/library/esas/cmsgate/hutkigrosh/RegistryHutkigroshOpencart.php', '2022-12-26 22:56:58'),
(676, 2, 'system/library/esas/cmsgate/hutkigrosh/init.php', '2022-12-26 22:56:58'),
(677, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor', '2022-12-26 22:56:58'),
(678, 2, 'system/library/esas/cmsgate/hutkigrosh/view', '2022-12-26 22:56:58'),
(679, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache', '2022-12-26 22:56:58'),
(680, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/autoload.php', '2022-12-26 22:56:58'),
(681, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/bin', '2022-12-26 22:56:58'),
(682, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer', '2022-12-26 22:56:58'),
(683, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas', '2022-12-26 22:56:58'),
(684, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom', '2022-12-26 22:56:58'),
(685, 2, 'system/library/esas/cmsgate/hutkigrosh/view/client', '2022-12-26 22:56:58'),
(686, 2, 'catalog/view/theme/default/template/extension/payment/hutkigrosh.tpl', '2022-12-26 22:56:58'),
(687, 2, 'catalog/view/theme/default/template/extension/payment/hutkigrosh.twig', '2022-12-26 22:56:58'),
(688, 2, 'catalog/view/theme/default/template/extension/payment/hutkigrosh_checkout_success.tpl', '2022-12-26 22:56:58'),
(689, 2, 'catalog/view/theme/default/template/extension/payment/hutkigrosh_checkout_success.twig', '2022-12-26 22:56:58'),
(690, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php', '2022-12-26 22:56:58'),
(691, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/ClassLoader.php', '2022-12-26 22:56:58'),
(692, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/InstalledVersions.php', '2022-12-26 22:56:58'),
(693, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/LICENSE', '2022-12-26 22:56:58'),
(694, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/autoload_classmap.php', '2022-12-26 22:56:58'),
(695, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/autoload_namespaces.php', '2022-12-26 22:56:58'),
(696, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/autoload_psr4.php', '2022-12-26 22:56:58'),
(697, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/autoload_real.php', '2022-12-26 22:56:58'),
(698, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/autoload_static.php', '2022-12-26 22:56:58'),
(699, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/installed.json', '2022-12-26 22:56:58'),
(700, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/installed.php', '2022-12-26 22:56:58'),
(701, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/composer/platform_check.php', '2022-12-26 22:56:58'),
(702, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core', '2022-12-26 22:56:58'),
(703, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib', '2022-12-26 22:56:58'),
(704, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib', '2022-12-26 22:56:58'),
(705, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode', '2022-12-26 22:56:58'),
(706, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color', '2022-12-26 22:56:58'),
(707, 2, 'system/library/esas/cmsgate/hutkigrosh/view/client/CompletionPanelHutkigroshOpencart.php', '2022-12-26 22:56:58'),
(708, 2, 'system/library/esas/cmsgate/hutkigrosh/view/client/hiddenRadio.css', '2022-12-26 22:56:58'),
(709, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/CHANGELOG', '2022-12-26 22:56:58'),
(710, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/INSTALL', '2022-12-26 22:56:58'),
(711, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/LICENSE', '2022-12-26 22:56:58'),
(712, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/NOTICE', '2022-12-26 22:56:58'),
(713, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/README', '2022-12-26 22:56:58'),
(714, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/apigen.neon', '2022-12-26 22:56:58'),
(715, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/build.xml', '2022-12-26 22:56:58'),
(716, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/composer.json', '2022-12-26 22:56:58'),
(717, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/doap_log4php.rdf', '2022-12-26 22:56:58'),
(718, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/package-config.php', '2022-12-26 22:56:58'),
(719, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/package.php', '2022-12-26 22:56:58'),
(720, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/phpdoc.xml', '2022-12-26 22:56:58'),
(721, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/phpunit.xml', '2022-12-26 22:56:58'),
(722, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/pom.xml', '2022-12-26 22:56:58'),
(723, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src', '2022-12-26 22:56:58'),
(724, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/README.md', '2022-12-26 22:56:58'),
(725, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/composer.json', '2022-12-26 22:56:58'),
(726, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src', '2022-12-26 22:56:58'),
(727, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/composer.json', '2022-12-26 22:56:58'),
(728, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src', '2022-12-26 22:56:58'),
(729, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/composer.json', '2022-12-26 22:56:58'),
(730, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src', '2022-12-26 22:56:58'),
(731, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/LICENSE', '2022-12-26 22:56:58'),
(732, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/Makefile', '2022-12-26 22:56:58'),
(733, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/README.md', '2022-12-26 22:56:58'),
(734, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/RELEASE', '2022-12-26 22:56:58'),
(735, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/VERSION', '2022-12-26 22:56:58'),
(736, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/composer.json', '2022-12-26 22:56:58'),
(737, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/example', '2022-12-26 22:56:58'),
(738, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/phpcompatinfo.json', '2022-12-26 22:56:58'),
(739, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/phpunit.xml.dist', '2022-12-26 22:56:58'),
(740, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources', '2022-12-26 22:56:58'),
(741, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src', '2022-12-26 22:56:58'),
(742, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test', '2022-12-26 22:56:58'),
(743, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/LICENSE', '2022-12-26 22:56:58'),
(744, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/Makefile', '2022-12-26 22:56:58'),
(745, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/README.md', '2022-12-26 22:56:58'),
(746, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/RELEASE', '2022-12-26 22:56:58'),
(747, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/VERSION', '2022-12-26 22:56:58'),
(748, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/composer.json', '2022-12-26 22:56:58'),
(749, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/example', '2022-12-26 22:56:58'),
(750, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/phpcompatinfo.json', '2022-12-26 22:56:58'),
(751, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/phpunit.xml.dist', '2022-12-26 22:56:58'),
(752, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources', '2022-12-26 22:56:58'),
(753, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src', '2022-12-26 22:56:58'),
(754, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test', '2022-12-26 22:56:58'),
(755, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/assembly', '2022-12-26 22:56:58'),
(756, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/changes', '2022-12-26 22:56:58'),
(757, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples', '2022-12-26 22:56:58'),
(758, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main', '2022-12-26 22:56:58'),
(759, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site', '2022-12-26 22:56:58'),
(760, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test', '2022-12-26 22:56:58'),
(761, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas', '2022-12-26 22:56:58'),
(762, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas', '2022-12-26 22:56:58'),
(763, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas', '2022-12-26 22:56:58'),
(764, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/example/index.php', '2022-12-26 22:56:58'),
(765, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/autoload.php', '2022-12-26 22:56:58'),
(766, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian', '2022-12-26 22:56:58'),
(767, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/phpmd', '2022-12-26 22:56:58'),
(768, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/rpm', '2022-12-26 22:56:58'),
(769, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Barcode.php', '2022-12-26 22:56:58'),
(770, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Exception.php', '2022-12-26 22:56:58'),
(771, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type', '2022-12-26 22:56:58'),
(772, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type.php', '2022-12-26 22:56:58'),
(773, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/BarcodeTest.php', '2022-12-26 22:56:58'),
(774, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear', '2022-12-26 22:56:58'),
(775, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Square', '2022-12-26 22:56:58'),
(776, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/TestStrings.php', '2022-12-26 22:56:58'),
(777, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/example/index.php', '2022-12-26 22:56:58'),
(778, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/autoload.php', '2022-12-26 22:56:58'),
(779, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian', '2022-12-26 22:56:58'),
(780, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/rpm', '2022-12-26 22:56:58'),
(781, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Css.php', '2022-12-26 22:56:58'),
(782, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Exception.php', '2022-12-26 22:56:58'),
(783, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model', '2022-12-26 22:56:58'),
(784, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model.php', '2022-12-26 22:56:58'),
(785, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Pdf.php', '2022-12-26 22:56:58'),
(786, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Spot.php', '2022-12-26 22:56:58'),
(787, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Web.php', '2022-12-26 22:56:58'),
(788, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/Model', '2022-12-26 22:56:58'),
(789, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/PdfTest.php', '2022-12-26 22:56:58'),
(790, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/SpotTest.php', '2022-12-26 22:56:58'),
(791, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/TestUtil.php', '2022-12-26 22:56:58'),
(792, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/WebTest.php', '2022-12-26 22:56:58'),
(793, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/assembly/src.xml', '2022-12-26 22:56:58'),
(794, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/changes/changes.xml', '2022-12-26 22:56:58'),
(795, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php', '2022-12-26 22:56:58'),
(796, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources', '2022-12-26 22:56:58'),
(797, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php', '2022-12-26 22:56:58'),
(798, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/apt', '2022-12-26 22:56:58'),
(799, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/cse.xml', '2022-12-26 22:56:58'),
(800, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources', '2022-12-26 22:56:58'),
(801, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/site.vm', '2022-12-26 22:56:58'),
(802, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/site.xml', '2022-12-26 22:56:58'),
(803, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc', '2022-12-26 22:56:58'),
(804, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/config', '2022-12-26 22:56:58'),
(805, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php', '2022-12-26 22:56:58'),
(806, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources', '2022-12-26 22:56:58'),
(807, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate', '2022-12-26 22:56:58'),
(808, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate', '2022-12-26 22:56:58'),
(809, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate', '2022-12-26 22:56:58'),
(810, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/changelog', '2022-12-26 22:56:58'),
(811, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/compat', '2022-12-26 22:56:58'),
(812, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/control', '2022-12-26 22:56:58'),
(813, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/copyright', '2022-12-26 22:56:58'),
(814, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/rules', '2022-12-26 22:56:58'),
(815, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/source', '2022-12-26 22:56:58'),
(816, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/phpmd/codesize.xml', '2022-12-26 22:56:58'),
(817, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/phpmd/design.xml', '2022-12-26 22:56:58'),
(818, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/rpm/rpm.spec', '2022-12-26 22:56:58'),
(819, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Convert.php', '2022-12-26 22:56:58'),
(820, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear', '2022-12-26 22:56:58'),
(821, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear.php', '2022-12-26 22:56:58'),
(822, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Raw.php', '2022-12-26 22:56:58'),
(823, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square', '2022-12-26 22:56:58'),
(824, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square.php', '2022-12-26 22:56:58'),
(825, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodabarTest.php', '2022-12-26 22:56:58'),
(826, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeNineThreeTest.php', '2022-12-26 22:56:58'),
(827, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeOneOneTest.php', '2022-12-26 22:56:58'),
(828, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeOneTwoEight', '2022-12-26 22:56:58'),
(829, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeOneTwoEightTest.php', '2022-12-26 22:56:58'),
(830, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeThreeNineCheckTest.php', '2022-12-26 22:56:58'),
(831, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeThreeNineExtCheckTest.php', '2022-12-26 22:56:58'),
(832, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeThreeNineExtTest.php', '2022-12-26 22:56:58'),
(833, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeThreeNineTest.php', '2022-12-26 22:56:58'),
(834, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/EanEightTest.php', '2022-12-26 22:56:58'),
(835, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/EanFiveTest.php', '2022-12-26 22:56:58'),
(836, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/EanOneThreeTest.php', '2022-12-26 22:56:58'),
(837, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/EanTwoTest.php', '2022-12-26 22:56:58'),
(838, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/ImbPreTest.php', '2022-12-26 22:56:58'),
(839, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/ImbTest.php', '2022-12-26 22:56:58'),
(840, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/InterleavedTwoOfFiveCheckTest.php', '2022-12-26 22:56:58'),
(841, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/InterleavedTwoOfFiveTest.php', '2022-12-26 22:56:58'),
(842, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/KlantIndexTest.php', '2022-12-26 22:56:58'),
(843, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/MsiCheckTest.php', '2022-12-26 22:56:58'),
(844, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/MsiTest.php', '2022-12-26 22:56:58'),
(845, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/PharmaTest.php', '2022-12-26 22:56:58'),
(846, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/PharmaTwoTracksTest.php', '2022-12-26 22:56:58'),
(847, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/PlanetTest.php', '2022-12-26 22:56:58'),
(848, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/PostnetTest.php', '2022-12-26 22:56:58'),
(849, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/RawTest.php', '2022-12-26 22:56:58'),
(850, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/RoyalMailFourCcTest.php', '2022-12-26 22:56:58'),
(851, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/StandardTwoOfFiveCheckTest.php', '2022-12-26 22:56:58'),
(852, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/StandardTwoOfFiveTest.php', '2022-12-26 22:56:59'),
(853, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/UpcATest.php', '2022-12-26 22:56:59'),
(854, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/UpcETest.php', '2022-12-26 22:56:59'),
(855, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Square/DatamatrixTest.php', '2022-12-26 22:56:59'),
(856, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Square/PdfFourOneSevenTest.php', '2022-12-26 22:56:59'),
(857, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Square/QrCodeTest.php', '2022-12-26 22:56:59'),
(858, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Square/RawTest.php', '2022-12-26 22:56:59'),
(859, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/changelog', '2022-12-26 22:56:59'),
(860, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/compat', '2022-12-26 22:56:59'),
(861, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/control', '2022-12-26 22:56:59'),
(862, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/copyright', '2022-12-26 22:56:59'),
(863, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/rules', '2022-12-26 22:56:59'),
(864, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/source', '2022-12-26 22:56:59'),
(865, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/rpm/rpm.spec', '2022-12-26 22:56:59'),
(866, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model/Cmyk.php', '2022-12-26 22:56:59'),
(867, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model/Gray.php', '2022-12-26 22:56:59'),
(868, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model/Hsl.php', '2022-12-26 22:56:59'),
(869, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model/Rgb.php', '2022-12-26 22:56:59'),
(870, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/src/Model/Template.php', '2022-12-26 22:56:59'),
(871, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/Model/CmykTest.php', '2022-12-26 22:56:59'),
(872, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/Model/GrayTest.php', '2022-12-26 22:56:59'),
(873, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/Model/HslTest.php', '2022-12-26 22:56:59'),
(874, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/test/Model/RgbTest.php', '2022-12-26 22:56:59'),
(875, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_console.php', '2022-12-26 22:56:59'),
(876, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_dailyfile.php', '2022-12-26 22:56:59'),
(877, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_echo.php', '2022-12-26 22:56:59'),
(878, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_file.php', '2022-12-26 22:56:59'),
(879, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_firephp.php', '2022-12-26 22:56:59'),
(880, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_mail.php', '2022-12-26 22:56:59'),
(881, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_mailevent.php', '2022-12-26 22:56:59'),
(882, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_mongodb.php', '2022-12-26 22:56:59'),
(883, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_null.php', '2022-12-26 22:56:59'),
(884, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_pdo.php', '2022-12-26 22:56:59'),
(885, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_php.php', '2022-12-26 22:56:59'),
(886, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_rollingfile.php', '2022-12-26 22:56:59'),
(887, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_socket.php', '2022-12-26 22:56:59'),
(888, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_socket_server.php', '2022-12-26 22:56:59'),
(889, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/appender_syslog.php', '2022-12-26 22:56:59'),
(890, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/cache.php', '2022-12-26 22:56:59'),
(891, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/configurator_basic.php', '2022-12-26 22:56:59'),
(892, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/configurator_php.php', '2022-12-26 22:56:59'),
(893, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/configurator_xml.php', '2022-12-26 22:56:59'),
(894, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/filter_denyall.php', '2022-12-26 22:56:59'),
(895, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/filter_levelmatch.php', '2022-12-26 22:56:59'),
(896, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/filter_levelrange.php', '2022-12-26 22:56:59'),
(897, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/filter_stringmatch.php', '2022-12-26 22:56:59'),
(898, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/layout_html.php', '2022-12-26 22:56:59'),
(899, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/layout_pattern.php', '2022-12-26 22:56:59'),
(900, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/layout_simple.php', '2022-12-26 22:56:59'),
(901, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/layout_ttcc.php', '2022-12-26 22:56:59'),
(902, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/layout_xml.php', '2022-12-26 22:56:59'),
(903, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/mdc.php', '2022-12-26 22:56:59'),
(904, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/ndc.php', '2022-12-26 22:56:59'),
(905, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/renderer_default.php', '2022-12-26 22:56:59'),
(906, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/renderer_map.php', '2022-12-26 22:56:59'),
(907, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/php/simple.php', '2022-12-26 22:56:59'),
(908, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_console.properties', '2022-12-26 22:56:59'),
(909, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_dailyfile.properties', '2022-12-26 22:56:59'),
(910, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_echo.properties', '2022-12-26 22:56:59'),
(911, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_file.properties', '2022-12-26 22:56:59'),
(912, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_firephp.xml', '2022-12-26 22:56:59'),
(913, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_mail.properties', '2022-12-26 22:56:59'),
(914, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_mailevent.properties', '2022-12-26 22:56:59'),
(915, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_mongodb.xml', '2022-12-26 22:56:59'),
(916, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_null.properties', '2022-12-26 22:56:59'),
(917, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_pdo.properties', '2022-12-26 22:56:59'),
(918, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_php.properties', '2022-12-26 22:56:59'),
(919, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_rollingfile.properties', '2022-12-26 22:56:59'),
(920, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_socket.properties', '2022-12-26 22:56:59'),
(921, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_socket_server.properties', '2022-12-26 22:56:59'),
(922, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/appender_syslog.properties', '2022-12-26 22:56:59'),
(923, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/cache.properties', '2022-12-26 22:56:59'),
(924, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/configurator_php.php', '2022-12-26 22:56:59'),
(925, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/configurator_xml.xml', '2022-12-26 22:56:59'),
(926, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/filter_denyall.xml', '2022-12-26 22:56:59'),
(927, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/filter_levelmatch.xml', '2022-12-26 22:56:59'),
(928, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/filter_levelrange.xml', '2022-12-26 22:56:59'),
(929, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/filter_stringmatch.xml', '2022-12-26 22:56:59'),
(930, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/layout_html.properties', '2022-12-26 22:56:59'),
(931, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/layout_pattern.properties', '2022-12-26 22:56:59'),
(932, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/layout_simple.properties', '2022-12-26 22:56:59'),
(933, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/layout_ttcc.properties', '2022-12-26 22:56:59'),
(934, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/layout_xml.properties', '2022-12-26 22:56:59'),
(935, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/mdc.properties', '2022-12-26 22:56:59'),
(936, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/ndc.properties', '2022-12-26 22:56:59'),
(937, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/renderer_default.properties', '2022-12-26 22:56:59'),
(938, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/examples/resources/renderer_map.properties', '2022-12-26 22:56:59'),
(939, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/Logger.php', '2022-12-26 22:56:59'),
(940, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerAppender.php', '2022-12-26 22:56:59'),
(941, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerAppenderPool.php', '2022-12-26 22:56:59'),
(942, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerAutoloader.php', '2022-12-26 22:56:59'),
(943, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerConfigurable.php', '2022-12-26 22:56:59'),
(944, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerConfigurator.php', '2022-12-26 22:56:59'),
(945, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerException.php', '2022-12-26 22:56:59'),
(946, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerFilter.php', '2022-12-26 22:56:59'),
(947, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerHierarchy.php', '2022-12-26 22:56:59'),
(948, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerLayout.php', '2022-12-26 22:56:59'),
(949, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerLevel.php', '2022-12-26 22:56:59'),
(950, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerLocationInfo.php', '2022-12-26 22:56:59'),
(951, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerLoggingEvent.php', '2022-12-26 22:56:59'),
(952, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerMDC.php', '2022-12-26 22:56:59'),
(953, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerNDC.php', '2022-12-26 22:56:59'),
(954, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerReflectionUtils.php', '2022-12-26 22:56:59'),
(955, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerRoot.php', '2022-12-26 22:56:59'),
(956, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/LoggerThrowableInformation.php', '2022-12-26 22:56:59'),
(957, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders', '2022-12-26 22:56:59'),
(958, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/configurators', '2022-12-26 22:56:59'),
(959, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/filters', '2022-12-26 22:56:59'),
(960, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/helpers', '2022-12-26 22:56:59'),
(961, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts', '2022-12-26 22:56:59'),
(962, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern', '2022-12-26 22:56:59'),
(963, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/renderers', '2022-12-26 22:56:59'),
(964, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/xml', '2022-12-26 22:56:59'),
(965, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/apt/contributingpatches.apt', '2022-12-26 22:56:59'),
(966, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/apt/download.apt', '2022-12-26 22:56:59'),
(967, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/apt/index.apt', '2022-12-26 22:56:59'),
(968, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/apt/privacy-policy.apt', '2022-12-26 22:56:59'),
(969, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/apt/volunteering.apt', '2022-12-26 22:56:59'),
(970, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/css', '2022-12-26 22:56:59'),
(971, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/images', '2022-12-26 22:56:59'),
(972, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/img', '2022-12-26 22:56:59'),
(973, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js', '2022-12-26 22:56:59'),
(974, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/changelog.xml', '2022-12-26 22:56:59'),
(975, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs', '2022-12-26 22:56:59'),
(976, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/install.xml', '2022-12-26 22:56:59'),
(977, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/privacy.xml', '2022-12-26 22:56:59'),
(978, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/quickstart.xml', '2022-12-26 22:56:59'),
(979, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/config/phpunit_to_surefire.xslt', '2022-12-26 22:56:59'),
(980, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerAppenderPoolTest.php', '2022-12-26 22:56:59'),
(981, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerAppenderTest.php', '2022-12-26 22:56:59'),
(982, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerConfiguratorTest.php', '2022-12-26 22:56:59'),
(983, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerExceptionTest.php', '2022-12-26 22:56:59'),
(984, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerFilterTest.php', '2022-12-26 22:56:59'),
(985, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerHierarchyTest.php', '2022-12-26 22:56:59'),
(986, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerLevelTest.php', '2022-12-26 22:56:59'),
(987, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerLoggingEventTest.php', '2022-12-26 22:56:59'),
(988, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerMDCTest.php', '2022-12-26 22:56:59'),
(989, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerNDCTest.php', '2022-12-26 22:56:59'),
(990, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerReflectionUtilsTest.php', '2022-12-26 22:56:59'),
(991, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerRootTest.php', '2022-12-26 22:56:59'),
(992, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerTest.php', '2022-12-26 22:56:59');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(993, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerTestHelper.php', '2022-12-26 22:56:59'),
(994, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/LoggerThrowableInformationTest.php', '2022-12-26 22:56:59'),
(995, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/README', '2022-12-26 22:56:59'),
(996, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders', '2022-12-26 22:56:59'),
(997, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/bootstrap.php', '2022-12-26 22:56:59'),
(998, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/configurators', '2022-12-26 22:56:59'),
(999, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/filters', '2022-12-26 22:56:59'),
(1000, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/helpers', '2022-12-26 22:56:59'),
(1001, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts', '2022-12-26 22:56:59'),
(1002, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/pattern', '2022-12-26 22:56:59'),
(1003, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/renderers', '2022-12-26 22:56:59'),
(1004, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs', '2022-12-26 22:56:59'),
(1005, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/CmsConnector.php', '2022-12-26 22:56:59'),
(1006, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/CmsPlugin.php', '2022-12-26 22:56:59'),
(1007, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/ConfigFields.php', '2022-12-26 22:56:59'),
(1008, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/ConfigStorageCms.php', '2022-12-26 22:56:59'),
(1009, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/ConfigStorageCmsArray.php', '2022-12-26 22:56:59'),
(1010, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/Hooks.php', '2022-12-26 22:56:59'),
(1011, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/OrderStatus.php', '2022-12-26 22:56:59'),
(1012, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/PaysystemConnector.php', '2022-12-26 22:56:59'),
(1013, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/Registry.php', '2022-12-26 22:56:59'),
(1014, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/controllers', '2022-12-26 22:56:59'),
(1015, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors', '2022-12-26 22:56:59'),
(1016, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang', '2022-12-26 22:56:59'),
(1017, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/messenger', '2022-12-26 22:56:59'),
(1018, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/protocol', '2022-12-26 22:56:59'),
(1019, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/service', '2022-12-26 22:56:59'),
(1020, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils', '2022-12-26 22:56:59'),
(1021, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view', '2022-12-26 22:56:59'),
(1022, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers', '2022-12-26 22:56:59'),
(1023, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh', '2022-12-26 22:56:59'),
(1024, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/CmsConnectorOpencart.php', '2022-12-26 22:56:59'),
(1025, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/ConfigFieldsOpencart.php', '2022-12-26 22:56:59'),
(1026, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/ConfigStorageOpencart.php', '2022-12-26 22:56:59'),
(1027, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/lang', '2022-12-26 22:56:59'),
(1028, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/opencart', '2022-12-26 22:56:59'),
(1029, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/utils', '2022-12-26 22:56:59'),
(1030, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view', '2022-12-26 22:56:59'),
(1031, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/wrappers', '2022-12-26 22:56:59'),
(1032, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/resources/debian/source/format', '2022-12-26 22:56:59'),
(1033, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Codabar.php', '2022-12-26 22:56:59'),
(1034, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeNineThree.php', '2022-12-26 22:56:59'),
(1035, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneOne.php', '2022-12-26 22:56:59'),
(1036, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneTwoEight', '2022-12-26 22:56:59'),
(1037, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneTwoEight.php', '2022-12-26 22:56:59'),
(1038, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeThreeNine.php', '2022-12-26 22:56:59'),
(1039, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeThreeNineCheck.php', '2022-12-26 22:56:59'),
(1040, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeThreeNineExt.php', '2022-12-26 22:56:59'),
(1041, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeThreeNineExtCheck.php', '2022-12-26 22:56:59'),
(1042, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/EanEight.php', '2022-12-26 22:56:59'),
(1043, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/EanFive.php', '2022-12-26 22:56:59'),
(1044, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/EanOneThree.php', '2022-12-26 22:56:59'),
(1045, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/EanTwo.php', '2022-12-26 22:56:59'),
(1046, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Imb.php', '2022-12-26 22:56:59'),
(1047, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/ImbPre.php', '2022-12-26 22:56:59'),
(1048, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/InterleavedTwoOfFive.php', '2022-12-26 22:56:59'),
(1049, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/InterleavedTwoOfFiveCheck.php', '2022-12-26 22:56:59'),
(1050, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/KlantIndex.php', '2022-12-26 22:56:59'),
(1051, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Msi.php', '2022-12-26 22:56:59'),
(1052, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/MsiCheck.php', '2022-12-26 22:56:59'),
(1053, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Pharma.php', '2022-12-26 22:56:59'),
(1054, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/PharmaTwoTracks.php', '2022-12-26 22:56:59'),
(1055, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Planet.php', '2022-12-26 22:56:59'),
(1056, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Postnet.php', '2022-12-26 22:56:59'),
(1057, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/Raw.php', '2022-12-26 22:56:59'),
(1058, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/RoyalMailFourCc.php', '2022-12-26 22:56:59'),
(1059, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/StandardTwoOfFive.php', '2022-12-26 22:56:59'),
(1060, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/StandardTwoOfFiveCheck.php', '2022-12-26 22:56:59'),
(1061, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/UpcA.php', '2022-12-26 22:56:59'),
(1062, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/UpcE.php', '2022-12-26 22:56:59'),
(1063, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix', '2022-12-26 22:56:59'),
(1064, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix.php', '2022-12-26 22:56:59'),
(1065, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/PdfFourOneSeven', '2022-12-26 22:56:59'),
(1066, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/PdfFourOneSeven.php', '2022-12-26 22:56:59'),
(1067, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode', '2022-12-26 22:56:59'),
(1068, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode.php', '2022-12-26 22:56:59'),
(1069, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Raw.php', '2022-12-26 22:56:59'),
(1070, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeOneTwoEight/ATest.php', '2022-12-26 22:56:59'),
(1071, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeOneTwoEight/BTest.php', '2022-12-26 22:56:59'),
(1072, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/test/Linear/CodeOneTwoEight/CTest.php', '2022-12-26 22:56:59'),
(1073, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-color/resources/debian/source/format', '2022-12-26 22:56:59'),
(1074, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderConsole.php', '2022-12-26 22:56:59'),
(1075, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderDailyFile.php', '2022-12-26 22:56:59'),
(1076, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderEcho.php', '2022-12-26 22:56:59'),
(1077, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderFile.php', '2022-12-26 22:56:59'),
(1078, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderFirePHP.php', '2022-12-26 22:56:59'),
(1079, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderMail.php', '2022-12-26 22:56:59'),
(1080, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderMailEvent.php', '2022-12-26 22:56:59'),
(1081, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderMongoDB.php', '2022-12-26 22:56:59'),
(1082, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderNull.php', '2022-12-26 22:56:59'),
(1083, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderPDO.php', '2022-12-26 22:56:59'),
(1084, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderPhp.php', '2022-12-26 22:56:59'),
(1085, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderRollingFile.php', '2022-12-26 22:56:59'),
(1086, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderSocket.php', '2022-12-26 22:56:59'),
(1087, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/appenders/LoggerAppenderSyslog.php', '2022-12-26 22:56:59'),
(1088, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/configurators/LoggerConfigurationAdapter.php', '2022-12-26 22:56:59'),
(1089, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/configurators/LoggerConfigurationAdapterINI.php', '2022-12-26 22:56:59'),
(1090, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/configurators/LoggerConfigurationAdapterPHP.php', '2022-12-26 22:56:59'),
(1091, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/configurators/LoggerConfigurationAdapterXML.php', '2022-12-26 22:56:59'),
(1092, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/configurators/LoggerConfiguratorDefault.php', '2022-12-26 22:56:59'),
(1093, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/filters/LoggerFilterDenyAll.php', '2022-12-26 22:56:59'),
(1094, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/filters/LoggerFilterLevelMatch.php', '2022-12-26 22:56:59'),
(1095, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/filters/LoggerFilterLevelRange.php', '2022-12-26 22:56:59'),
(1096, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/filters/LoggerFilterStringMatch.php', '2022-12-26 22:56:59'),
(1097, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/helpers/LoggerFormattingInfo.php', '2022-12-26 22:56:59'),
(1098, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/helpers/LoggerOptionConverter.php', '2022-12-26 22:56:59'),
(1099, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/helpers/LoggerPatternParser.php', '2022-12-26 22:56:59'),
(1100, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/helpers/LoggerUtils.php', '2022-12-26 22:56:59'),
(1101, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts/LoggerLayoutHtml.php', '2022-12-26 22:57:00'),
(1102, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts/LoggerLayoutPattern.php', '2022-12-26 22:57:00'),
(1103, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts/LoggerLayoutSerialized.php', '2022-12-26 22:57:00'),
(1104, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts/LoggerLayoutSimple.php', '2022-12-26 22:57:00'),
(1105, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts/LoggerLayoutTTCC.php', '2022-12-26 22:57:00'),
(1106, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/layouts/LoggerLayoutXml.php', '2022-12-26 22:57:00'),
(1107, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverter.php', '2022-12-26 22:57:00'),
(1108, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterClass.php', '2022-12-26 22:57:00'),
(1109, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterCookie.php', '2022-12-26 22:57:00'),
(1110, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterDate.php', '2022-12-26 22:57:00'),
(1111, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterEnvironment.php', '2022-12-26 22:57:00'),
(1112, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterFile.php', '2022-12-26 22:57:00'),
(1113, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterLevel.php', '2022-12-26 22:57:00'),
(1114, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterLine.php', '2022-12-26 22:57:00'),
(1115, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterLiteral.php', '2022-12-26 22:57:00'),
(1116, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterLocation.php', '2022-12-26 22:57:00'),
(1117, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterLogger.php', '2022-12-26 22:57:00'),
(1118, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterMDC.php', '2022-12-26 22:57:00'),
(1119, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterMessage.php', '2022-12-26 22:57:00'),
(1120, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterMethod.php', '2022-12-26 22:57:00'),
(1121, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterNDC.php', '2022-12-26 22:57:00'),
(1122, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterNewLine.php', '2022-12-26 22:57:00'),
(1123, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterProcess.php', '2022-12-26 22:57:00'),
(1124, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterRelative.php', '2022-12-26 22:57:00'),
(1125, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterRequest.php', '2022-12-26 22:57:00'),
(1126, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterServer.php', '2022-12-26 22:57:00'),
(1127, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterSession.php', '2022-12-26 22:57:00'),
(1128, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterSessionID.php', '2022-12-26 22:57:00'),
(1129, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterSuperglobal.php', '2022-12-26 22:57:00'),
(1130, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/pattern/LoggerPatternConverterThrowable.php', '2022-12-26 22:57:00'),
(1131, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/renderers/LoggerRenderer.php', '2022-12-26 22:57:00'),
(1132, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/renderers/LoggerRendererDefault.php', '2022-12-26 22:57:00'),
(1133, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/renderers/LoggerRendererException.php', '2022-12-26 22:57:00'),
(1134, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/renderers/LoggerRendererMap.php', '2022-12-26 22:57:00'),
(1135, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/main/php/xml/log4php.dtd', '2022-12-26 22:57:00'),
(1136, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/css/bootstrap.css', '2022-12-26 22:57:00'),
(1137, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/css/bootstrap.min.css', '2022-12-26 22:57:00'),
(1138, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/css/site.css', '2022-12-26 22:57:00'),
(1139, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/images/collapsed.gif', '2022-12-26 22:57:00'),
(1140, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/images/expanded.gif', '2022-12-26 22:57:00'),
(1141, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/images/logos', '2022-12-26 22:57:00'),
(1142, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/img/glyphicons-halflings-white.png', '2022-12-26 22:57:00'),
(1143, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/img/glyphicons-halflings.png', '2022-12-26 22:57:00'),
(1144, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/bootstrap.js', '2022-12-26 22:57:00'),
(1145, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/bootstrap.min.js', '2022-12-26 22:57:00'),
(1146, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/jquery.js', '2022-12-26 22:57:00'),
(1147, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/jquery.min.js', '2022-12-26 22:57:00'),
(1148, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/prettify.js', '2022-12-26 22:57:00'),
(1149, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/prettify.min.js', '2022-12-26 22:57:00'),
(1150, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/js/site.js', '2022-12-26 22:57:00'),
(1151, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders', '2022-12-26 22:57:00'),
(1152, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders.xml', '2022-12-26 22:57:00'),
(1153, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/configuration.xml', '2022-12-26 22:57:00'),
(1154, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/filters.xml', '2022-12-26 22:57:00'),
(1155, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/introduction.xml', '2022-12-26 22:57:00'),
(1156, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts', '2022-12-26 22:57:00'),
(1157, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts.xml', '2022-12-26 22:57:00'),
(1158, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/loggers.xml', '2022-12-26 22:57:00'),
(1159, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/renderers.xml', '2022-12-26 22:57:00'),
(1160, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderConsoleTest.php', '2022-12-26 22:57:00'),
(1161, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderDailyFileTest.php', '2022-12-26 22:57:00'),
(1162, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderEchoTest.php', '2022-12-26 22:57:00'),
(1163, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderFileTest.php', '2022-12-26 22:57:00'),
(1164, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderFirephpTest.php', '2022-12-26 22:57:00'),
(1165, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderMailEventTest.php', '2022-12-26 22:57:00'),
(1166, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderMailTest.php', '2022-12-26 22:57:00'),
(1167, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderMongoDBTest.php', '2022-12-26 22:57:00'),
(1168, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderNullTest.php', '2022-12-26 22:57:00'),
(1169, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderPDOTest.php', '2022-12-26 22:57:00'),
(1170, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderPhpTest.php', '2022-12-26 22:57:00'),
(1171, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderRollingFileTest.php', '2022-12-26 22:57:00'),
(1172, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderSocketTest.php', '2022-12-26 22:57:00'),
(1173, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/LoggerAppenderSyslogTest.php', '2022-12-26 22:57:00'),
(1174, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/appenders/socketServer.php', '2022-12-26 22:57:00'),
(1175, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/configurators/LoggerConfigurationAdapterINITest.php', '2022-12-26 22:57:00'),
(1176, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/configurators/LoggerConfigurationAdapterPHPTest.php', '2022-12-26 22:57:00'),
(1177, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/configurators/LoggerConfigurationAdapterXMLTest.php', '2022-12-26 22:57:00'),
(1178, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/filters/LoggerFilterDenyAllTest.php', '2022-12-26 22:57:00'),
(1179, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/filters/LoggerFilterLevelMatchTest.php', '2022-12-26 22:57:00'),
(1180, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/filters/LoggerFilterLevelRangeTest.php', '2022-12-26 22:57:00'),
(1181, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/filters/LoggerFilterStringMatchTest.php', '2022-12-26 22:57:00'),
(1182, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/helpers/LoggerOptionConverterTest.php', '2022-12-26 22:57:00'),
(1183, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/helpers/LoggerPatternParserTest.php', '2022-12-26 22:57:00'),
(1184, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/helpers/LoggerUtilsTest.php', '2022-12-26 22:57:00'),
(1185, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts/LoggerLayoutHtmlTest.php', '2022-12-26 22:57:00'),
(1186, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts/LoggerLayoutPatternTest.php', '2022-12-26 22:57:00'),
(1187, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts/LoggerLayoutSerializedTest.php', '2022-12-26 22:57:00'),
(1188, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts/LoggerLayoutSimpleTest.php', '2022-12-26 22:57:00'),
(1189, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts/LoggerLayoutTTCCTest.php', '2022-12-26 22:57:00'),
(1190, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/layouts/LoggerLayoutXmlTest.php', '2022-12-26 22:57:00'),
(1191, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/pattern/LoggerPatternConverterTest.php', '2022-12-26 22:57:00'),
(1192, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/php/renderers/LoggerRendererMapTest.php', '2022-12-26 22:57:00'),
(1193, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters', '2022-12-26 22:57:00'),
(1194, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders', '2022-12-26 22:57:00'),
(1195, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/config.yml', '2022-12-26 22:57:00'),
(1196, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/config1.xml', '2022-12-26 22:57:00'),
(1197, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/loggers', '2022-12-26 22:57:00'),
(1198, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/renderers', '2022-12-26 22:57:00'),
(1199, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/controllers/Controller.php', '2022-12-26 22:57:00'),
(1200, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors/AbstractDescriptor.php', '2022-12-26 22:57:00'),
(1201, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors/CmsConnectorDescriptor.php', '2022-12-26 22:57:00'),
(1202, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors/ModuleDescriptor.php', '2022-12-26 22:57:00'),
(1203, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors/PaySystemConnectorDescriptor.php', '2022-12-26 22:57:00'),
(1204, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors/VendorDescriptor.php', '2022-12-26 22:57:00'),
(1205, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/descriptors/VersionDescriptor.php', '2022-12-26 22:57:00'),
(1206, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang/Locale.php', '2022-12-26 22:57:00'),
(1207, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang/LocaleLoaderCms.php', '2022-12-26 22:57:00'),
(1208, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang/Translator.php', '2022-12-26 22:57:00'),
(1209, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang/TranslatorImpl.php', '2022-12-26 22:57:00'),
(1210, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang/en_EN.php', '2022-12-26 22:57:00'),
(1211, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/lang/ru_RU.php', '2022-12-26 22:57:00'),
(1212, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/messenger/Messages.php', '2022-12-26 22:57:00'),
(1213, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/messenger/Messenger.php', '2022-12-26 22:57:00'),
(1214, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/protocol/Amount.php', '2022-12-26 22:57:00'),
(1215, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/protocol/ProtocolCurl.php', '2022-12-26 22:57:00'),
(1216, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/protocol/ProtocolError.php', '2022-12-26 22:57:00'),
(1217, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/protocol/RqMethod.php', '2022-12-26 22:57:00'),
(1218, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/protocol/RsType.php', '2022-12-26 22:57:00'),
(1219, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/service/Service.php', '2022-12-26 22:57:00'),
(1220, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/ArrayUtils.php', '2022-12-26 22:57:00'),
(1221, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/CMSGateException.php', '2022-12-26 22:57:00'),
(1222, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/EncodingUtils.php', '2022-12-26 22:57:00'),
(1223, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/FileUtils.php', '2022-12-26 22:57:00'),
(1224, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/FileWrapper.php', '2022-12-26 22:57:00'),
(1225, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/JSONUtils.php', '2022-12-26 22:57:00'),
(1226, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/Logger.php', '2022-12-26 22:57:00'),
(1227, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/NumberUtils.php', '2022-12-26 22:57:00'),
(1228, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/RequestParams.php', '2022-12-26 22:57:00'),
(1229, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/ResourceUtils.php', '2022-12-26 22:57:00'),
(1230, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/SessionUtils.php', '2022-12-26 22:57:00'),
(1231, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/SimpleAutoloader.php', '2022-12-26 22:57:00'),
(1232, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/StringUtils.php', '2022-12-26 22:57:00'),
(1233, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/URLUtils.php', '2022-12-26 22:57:00'),
(1234, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/UploadedFileWrapper.php', '2022-12-26 22:57:00'),
(1235, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/XMLUtils.php', '2022-12-26 22:57:00'),
(1236, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder', '2022-12-26 22:57:00'),
(1237, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/ViewBuilder.php', '2022-12-26 22:57:00'),
(1238, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/ViewFields.php', '2022-12-26 22:57:00'),
(1239, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/ViewUtils.php', '2022-12-26 22:57:00'),
(1240, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin', '2022-12-26 22:57:00'),
(1241, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/client', '2022-12-26 22:57:00'),
(1242, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/ConfigWrapper.php', '2022-12-26 22:57:00'),
(1243, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/OrderProductSafeWrapper.php', '2022-12-26 22:57:00'),
(1244, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/OrderProductWrapper.php', '2022-12-26 22:57:00'),
(1245, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/OrderSafeWrapper.php', '2022-12-26 22:57:00'),
(1246, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/OrderWrapper.php', '2022-12-26 22:57:00'),
(1247, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/OrderWrapperImpl.php', '2022-12-26 22:57:00'),
(1248, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/SystemSettingsWrapper.php', '2022-12-26 22:57:00'),
(1249, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/wrappers/Wrapper.php', '2022-12-26 22:57:00'),
(1250, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/ConfigFieldsHutkigrosh.php', '2022-12-26 22:57:00'),
(1251, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/HooksHutkigrosh.php', '2022-12-26 22:57:00'),
(1252, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/PaysystemConnectorHutkigrosh.php', '2022-12-26 22:57:00'),
(1253, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/RegistryHutkigrosh.php', '2022-12-26 22:57:00'),
(1254, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers', '2022-12-26 22:57:00'),
(1255, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/image', '2022-12-26 22:57:00'),
(1256, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/lang', '2022-12-26 22:57:00'),
(1257, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/messenger', '2022-12-26 22:57:00'),
(1258, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol', '2022-12-26 22:57:00'),
(1259, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/utils', '2022-12-26 22:57:00'),
(1260, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view', '2022-12-26 22:57:00'),
(1261, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/wrappers', '2022-12-26 22:57:00'),
(1262, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/lang/LocaleLoaderOpencart.php', '2022-12-26 22:57:00'),
(1263, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/lang/en_EN.php', '2022-12-26 22:57:00'),
(1264, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/lang/ru_RU.php', '2022-12-26 22:57:00'),
(1265, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/opencart/AdminControllerExtensionPayment.php', '2022-12-26 22:57:00'),
(1266, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/opencart/CatalogControllerExtensionPayment.php', '2022-12-26 22:57:00'),
(1267, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/opencart/ControllerExtensionPayment.php', '2022-12-26 22:57:00'),
(1268, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/opencart/ModelExtensionPayment.php', '2022-12-26 22:57:00'),
(1269, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/utils/OpencartVersion.php', '2022-12-26 22:57:00'),
(1270, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view/ViewBuilderOpencart.php', '2022-12-26 22:57:00'),
(1271, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view/admin', '2022-12-26 22:57:00'),
(1272, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view/client', '2022-12-26 22:57:00'),
(1273, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/wrappers/OrderProductVoucherWrapperOpencart.php', '2022-12-26 22:57:00'),
(1274, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/wrappers/OrderProductWrapperOpencart.php', '2022-12-26 22:57:00'),
(1275, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/wrappers/OrderWrapperOpencart.php', '2022-12-26 22:57:00'),
(1276, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/wrappers/SystemSettingsWrapperOpencart.php', '2022-12-26 22:57:00'),
(1277, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneTwoEight/A.php', '2022-12-26 22:57:00'),
(1278, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneTwoEight/B.php', '2022-12-26 22:57:00'),
(1279, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneTwoEight/C.php', '2022-12-26 22:57:00'),
(1280, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Linear/CodeOneTwoEight/Process.php', '2022-12-26 22:57:00'),
(1281, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/Data.php', '2022-12-26 22:57:00'),
(1282, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/Encode.php', '2022-12-26 22:57:00'),
(1283, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/EncodeTxt.php', '2022-12-26 22:57:00'),
(1284, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/ErrorCorrection.php', '2022-12-26 22:57:00'),
(1285, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/Modes.php', '2022-12-26 22:57:00'),
(1286, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/Placement.php', '2022-12-26 22:57:00'),
(1287, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/Datamatrix/Steps.php', '2022-12-26 22:57:00'),
(1288, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/PdfFourOneSeven/Compaction.php', '2022-12-26 22:57:00'),
(1289, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/PdfFourOneSeven/Data.php', '2022-12-26 22:57:00'),
(1290, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/PdfFourOneSeven/Sequence.php', '2022-12-26 22:57:00'),
(1291, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/ByteStream.php', '2022-12-26 22:57:00'),
(1292, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Data.php', '2022-12-26 22:57:00'),
(1293, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Encode.php', '2022-12-26 22:57:00'),
(1294, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Encoder.php', '2022-12-26 22:57:00'),
(1295, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/EncodingMode.php', '2022-12-26 22:57:00'),
(1296, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Estimate.php', '2022-12-26 22:57:00'),
(1297, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Init.php', '2022-12-26 22:57:00'),
(1298, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/InputItem.php', '2022-12-26 22:57:00'),
(1299, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Mask.php', '2022-12-26 22:57:00'),
(1300, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/MaskNum.php', '2022-12-26 22:57:00'),
(1301, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Spec.php', '2022-12-26 22:57:00'),
(1302, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/SpecRs.php', '2022-12-26 22:57:00'),
(1303, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/tecnickcom/tc-lib-barcode/src/Type/Square/QrCode/Split.php', '2022-12-26 22:57:00'),
(1304, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/images/logos/ls-logo.jpg', '2022-12-26 22:57:00'),
(1305, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/resources/images/logos/maven-feather.png', '2022-12-26 22:57:00'),
(1306, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/console.xml', '2022-12-26 22:57:00'),
(1307, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/daily-file.xml', '2022-12-26 22:57:00'),
(1308, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/echo.xml', '2022-12-26 22:57:00'),
(1309, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/file.xml', '2022-12-26 22:57:00'),
(1310, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/firephp.xml', '2022-12-26 22:57:00'),
(1311, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/mail-event.xml', '2022-12-26 22:57:00'),
(1312, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/mail.xml', '2022-12-26 22:57:00'),
(1313, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/mongodb.xml', '2022-12-26 22:57:00'),
(1314, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/null.xml', '2022-12-26 22:57:00'),
(1315, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/pdo.xml', '2022-12-26 22:57:00'),
(1316, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/php.xml', '2022-12-26 22:57:00'),
(1317, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/rolling-file.xml', '2022-12-26 22:57:00'),
(1318, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/socket.xml', '2022-12-26 22:57:00'),
(1319, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/appenders/syslog.xml', '2022-12-26 22:57:00'),
(1320, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts/html.xml', '2022-12-26 22:57:00'),
(1321, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts/pattern.xml', '2022-12-26 22:57:00'),
(1322, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts/serialized.xml', '2022-12-26 22:57:00'),
(1323, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts/simple.xml', '2022-12-26 22:57:00'),
(1324, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts/ttcc.xml', '2022-12-26 22:57:00'),
(1325, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/site/xdoc/docs/layouts/xml.xml', '2022-12-26 22:57:00'),
(1326, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/ini', '2022-12-26 22:57:00'),
(1327, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/php', '2022-12-26 22:57:00'),
(1328, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/xml', '2022-12-26 22:57:00'),
(1329, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_invalid_appender_class.xml', '2022-12-26 22:57:00'),
(1330, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_invalid_filter_class.xml', '2022-12-26 22:57:00'),
(1331, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_invalid_filter_parameters.xml', '2022-12-26 22:57:00'),
(1332, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_invalid_layout_class.xml', '2022-12-26 22:57:00'),
(1333, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_no_class.xml', '2022-12-26 22:57:00'),
(1334, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_no_layout_class.xml', '2022-12-26 22:57:00'),
(1335, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_not_existing_class.xml', '2022-12-26 22:57:00'),
(1336, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_not_existing_filter_class.xml', '2022-12-26 22:57:00'),
(1337, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/appenders/config_not_existing_layout_class.xml', '2022-12-26 22:57:00'),
(1338, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/loggers/config_invalid_additivity.xml', '2022-12-26 22:57:00'),
(1339, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/loggers/config_not_existing_appenders.xml', '2022-12-26 22:57:00'),
(1340, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/renderers/config_default_renderer.xml', '2022-12-26 22:57:00'),
(1341, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/renderers/config_invalid_rendering_class.xml', '2022-12-26 22:57:00'),
(1342, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/renderers/config_no_rendered_class.xml', '2022-12-26 22:57:00'),
(1343, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/renderers/config_no_rendering_class.xml', '2022-12-26 22:57:00');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1344, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/renderers/config_not_existing_rendering_class.xml', '2022-12-26 22:57:00'),
(1345, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/Attribute.php', '2022-12-26 22:57:00'),
(1346, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/AttributeBoolean.php', '2022-12-26 22:57:00'),
(1347, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/Attributes.php', '2022-12-26 22:57:00'),
(1348, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/Content.php', '2022-12-26 22:57:00'),
(1349, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/Element.php', '2022-12-26 22:57:00'),
(1350, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/ElementVoid.php', '2022-12-26 22:57:00'),
(1351, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/Elements.php', '2022-12-26 22:57:00'),
(1352, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/IncludeFile.php', '2022-12-26 22:57:00'),
(1353, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/Page.php', '2022-12-26 22:57:00'),
(1354, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/ReadContentFile.php', '2022-12-26 22:57:00'),
(1355, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/presets', '2022-12-26 22:57:00'),
(1356, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/AdminViewFields.php', '2022-12-26 22:57:00'),
(1357, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/ConfigForm.php', '2022-12-26 22:57:00'),
(1358, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/ConfigFormArray.php', '2022-12-26 22:57:00'),
(1359, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/ConfigFormHtml.php', '2022-12-26 22:57:00'),
(1360, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/ConfigPage.php', '2022-12-26 22:57:00'),
(1361, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/ManagedFields.php', '2022-12-26 22:57:00'),
(1362, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/ManagedFieldsFactory.php', '2022-12-26 22:57:00'),
(1363, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields', '2022-12-26 22:57:00'),
(1364, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators', '2022-12-26 22:57:00'),
(1365, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/client/ClientViewFields.php', '2022-12-26 22:57:00'),
(1366, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/client/CompletionPage.php', '2022-12-26 22:57:00'),
(1367, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigrosh.php', '2022-12-26 22:57:00'),
(1368, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshAddBill.php', '2022-12-26 22:57:00'),
(1369, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshAlfaclick.php', '2022-12-26 22:57:00'),
(1370, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshCompletionPage.php', '2022-12-26 22:57:00'),
(1371, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshCompletionPanel.php', '2022-12-26 22:57:00'),
(1372, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshCompletionPanelWebpay.php', '2022-12-26 22:57:00'),
(1373, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshLogin.php', '2022-12-26 22:57:00'),
(1374, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshNotify.php', '2022-12-26 22:57:00'),
(1375, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/controllers/ControllerHutkigroshWebpayForm.php', '2022-12-26 22:57:00'),
(1376, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/image/ps_icons.png', '2022-12-26 22:57:00'),
(1377, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/lang/TranslatorHutkigrosh.php', '2022-12-26 22:57:00'),
(1378, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/lang/en_EN.php', '2022-12-26 22:57:00'),
(1379, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/lang/ru_RU.php', '2022-12-26 22:57:00'),
(1380, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/messenger/MessagesHutkigrosh.php', '2022-12-26 22:57:00'),
(1381, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/BillProduct.php', '2022-12-26 22:57:00'),
(1382, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshAlfaclickRq.php', '2022-12-26 22:57:00'),
(1383, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshAlfaclickRs.php', '2022-12-26 22:57:00'),
(1384, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshBillInfoRq.php', '2022-12-26 22:57:00'),
(1385, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshBillInfoRs.php', '2022-12-26 22:57:00'),
(1386, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshBillNewRq.php', '2022-12-26 22:57:00'),
(1387, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshBillNewRs.php', '2022-12-26 22:57:00'),
(1388, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshLoginRq.php', '2022-12-26 22:57:00'),
(1389, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshLoginRs.php', '2022-12-26 22:57:00'),
(1390, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshProtocol.php', '2022-12-26 22:57:00'),
(1391, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshRq.php', '2022-12-26 22:57:00'),
(1392, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshRs.php', '2022-12-26 22:57:00'),
(1393, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshWebPayRq.php', '2022-12-26 22:57:00'),
(1394, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/protocol/HutkigroshWebPayRs.php', '2022-12-26 22:57:00'),
(1395, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/utils/QRUtils.php', '2022-12-26 22:57:00'),
(1396, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/utils/RequestParamsHutkigrosh.php', '2022-12-26 22:57:00'),
(1397, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/admin', '2022-12-26 22:57:00'),
(1398, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client', '2022-12-26 22:57:00'),
(1399, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/wrappers/ConfigWrapperHutkigrosh.php', '2022-12-26 22:57:00'),
(1400, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view/admin/AdminViewFieldsOpencart.php', '2022-12-26 22:57:00'),
(1401, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view/admin/ConfigFormOpencart.php', '2022-12-26 22:57:00'),
(1402, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-opencart-lib/src/esas/cmsgate/view/client/ClientViewFieldsOpencart.php', '2022-12-26 22:57:00'),
(1403, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/ini/config_invalid_appender_declaration_1.ini', '2022-12-26 22:57:00'),
(1404, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/ini/config_invalid_appender_declaration_2.ini', '2022-12-26 22:57:00'),
(1405, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/ini/config_invalid_syntax.ini', '2022-12-26 22:57:00'),
(1406, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/ini/config_valid.ini', '2022-12-26 22:57:00'),
(1407, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/ini/values.ini', '2022-12-26 22:57:00'),
(1408, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/php/config_empty.php', '2022-12-26 22:57:00'),
(1409, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/php/config_invalid_syntax.php', '2022-12-26 22:57:00'),
(1410, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/php/config_not_an_array.php', '2022-12-26 22:57:00'),
(1411, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/php/config_valid.php', '2022-12-26 22:57:00'),
(1412, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/xml/config_duplicate_logger.xml', '2022-12-26 22:57:00'),
(1413, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/xml/config_duplicate_renderer.xml', '2022-12-26 22:57:00'),
(1414, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/xml/config_invalid_syntax.xml', '2022-12-26 22:57:00'),
(1415, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/xml/config_valid.xml', '2022-12-26 22:57:00'),
(1416, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/apache/log4php/src/test/resources/configs/adapters/xml/config_valid_underscore.xml', '2022-12-26 22:57:00'),
(1417, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/presets/CommonPreset.php', '2022-12-26 22:57:00'),
(1418, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/presets/CssPreset.php', '2022-12-26 22:57:00'),
(1419, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/utils/htmlbuilder/presets/ScriptsPreset.php', '2022-12-26 22:57:00'),
(1420, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigField.php', '2022-12-26 22:57:00'),
(1421, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldCheckbox.php', '2022-12-26 22:57:00'),
(1422, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldFile.php', '2022-12-26 22:57:00'),
(1423, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldList.php', '2022-12-26 22:57:00'),
(1424, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldNumber.php', '2022-12-26 22:57:00'),
(1425, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldPassword.php', '2022-12-26 22:57:00'),
(1426, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldRichtext.php', '2022-12-26 22:57:00'),
(1427, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldStatusList.php', '2022-12-26 22:57:00'),
(1428, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldText.php', '2022-12-26 22:57:00'),
(1429, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ConfigFieldTextarea.php', '2022-12-26 22:57:00'),
(1430, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/fields/ListOption.php', '2022-12-26 22:57:00'),
(1431, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidationResult.php', '2022-12-26 22:57:00'),
(1432, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/Validator.php', '2022-12-26 22:57:00'),
(1433, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorEmail.php', '2022-12-26 22:57:00'),
(1434, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorImpl.php', '2022-12-26 22:57:00'),
(1435, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorInteger.php', '2022-12-26 22:57:00'),
(1436, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorNotEmpty.php', '2022-12-26 22:57:00'),
(1437, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorNumeric.php', '2022-12-26 22:57:00'),
(1438, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorUploadFile.php', '2022-12-26 22:57:00'),
(1439, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorUploadFileExtension.php', '2022-12-26 22:57:00'),
(1440, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-core/src/esas/cmsgate/view/admin/validators/ValidatorUploadFileSize.php', '2022-12-26 22:57:00'),
(1441, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/admin/ManagedFieldsFactoryHutkigrosh.php', '2022-12-26 22:57:00'),
(1442, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/ClientViewFieldsHutkigrosh.php', '2022-12-26 22:57:00'),
(1443, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/CompletionPageHutkigrosh.php', '2022-12-26 22:57:00'),
(1444, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/CompletionPanelHutkigrosh.php', '2022-12-26 22:57:00'),
(1445, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/accordion.css', '2022-12-26 22:57:00'),
(1446, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/alfaclickJs.php', '2022-12-26 22:57:00'),
(1447, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/completion-default.css', '2022-12-26 22:57:00'),
(1448, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/webpayAutoSubmitJs.php', '2022-12-26 22:57:00'),
(1449, 2, 'system/library/esas/cmsgate/hutkigrosh/vendor/esas/cmsgate-hutkigrosh-lib/src/esas/cmsgate/hutkigrosh/view/client/webpayJs.php', '2022-12-26 22:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 0, 3, 1),
(5, 0, 4, 1),
(6, 1, 2, 1),
(7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 2, 'Условия пользовательского соглашения', '&lt;p&gt;\r\n	Условия пользовательского соглашения&lt;/p&gt;\r\n', 'Условия пользовательского соглашения', '', ''),
(6, 2, 'Доставка и оплата', '&lt;div class=&quot;delivery-info&quot;&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Наши базовые условия&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery1.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Минимальная сумма заказа – 50 бел. руб.&lt;/li&gt;\r\n                &lt;li&gt;При заказе от 300 бел. руб доставляем бесплатно по всей РБ на следующий рабочий день, если подтвердите до 12:00&lt;/li&gt;\r\n                &lt;li&gt;При заказе от 150 бел. руб. доставим бесплатно в Витебск по вторникам и четвергам.&lt;/li&gt;\r\n                &lt;li&gt;Утеплители и объемный товар бесплатно не доставляем.&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Уникальные условия для постоянных клиентов:&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery2.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Рассрочка на швейное оборудование до 6 мес.&lt;/li&gt;\r\n                &lt;li&gt;Наши постоянные клиенты первыми узнают о скидках и акциях&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Пользуемся следующими средствами доставки:&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery3.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Автолайтэкспресс – быстрая доставка в любой населенный пункт Республики Беларусь.&lt;/li&gt;\r\n                &lt;li&gt;DPD – транспортная компания.&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Способы оплаты:&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery4.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description centered&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Безналичный расчет&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-button&quot;&gt;\r\n          &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot; data-bs-toggle=&quot;modal&quot; data-bs-target=&quot;#delivery-data&quot;&gt;\r\n            &lt;svg width=&quot;35&quot; height=&quot;35&quot; viewBox=&quot;0 0 35 35&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot;&gt;\r\n              &lt;path d=&quot;M27.8406 1.59093H27.0452C26.6053 1.59093 26.2497 1.94729 26.2497 2.38636C26.2497 2.82543 26.6053 3.18179 27.0452 3.18179H27.8406C28.2797 3.18179 28.636 3.53896 28.636 3.97722V26.25C28.636 26.6883 28.2797 27.0454 27.8406 27.0454H7.15875C6.71968 27.0454 6.36332 26.6883 6.36332 26.25V3.97729C6.36332 3.53896 6.71968 3.18186 7.15875 3.18186H10.3405V4.19843C9.86722 4.47446 9.54511 4.98196 9.54511 5.56821C9.54511 6.44561 10.2586 7.15914 11.136 7.15914C12.0134 7.15914 12.727 6.44561 12.727 5.56821C12.727 4.98196 12.4048 4.47446 11.9315 4.19843V0.795498C11.9315 0.356357 11.5759 0 11.136 0C10.6961 0 10.3406 0.356357 10.3406 0.79543V1.59086H7.15882C5.84311 1.59086 4.77246 2.66157 4.77246 3.97722V26.25V32.6136C4.77246 33.9294 5.84317 35 7.15882 35H27.8406C29.1563 35 30.227 33.9293 30.227 32.6136V26.25V3.97729C30.227 2.66157 29.1562 1.59093 27.8406 1.59093ZM28.636 32.6136C28.636 33.052 28.2797 33.4091 27.8406 33.4091H7.15875C6.71968 33.4091 6.36332 33.0519 6.36332 32.6136V31.6719C6.61311 31.7609 6.87875 31.8182 7.15875 31.8182H27.8405C28.1205 31.8182 28.3862 31.7609 28.636 31.6719V32.6136H28.636ZM28.636 29.4318C28.636 29.8701 28.2797 30.2272 27.8406 30.2272H7.15875C6.71968 30.2272 6.36332 29.87 6.36332 29.4318V28.49C6.61311 28.5791 6.87875 28.6364 7.15875 28.6364H27.8405C28.1205 28.6364 28.3862 28.5791 28.636 28.49V29.4318H28.636Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M24.6594 4.19843V0.795498C24.6594 0.356357 24.3038 0 23.8639 0C23.424 0 23.0685 0.356357 23.0685 0.79543V1.59086H20.6821C20.2423 1.59086 19.8867 1.94722 19.8867 2.38629C19.8867 2.82536 20.2423 3.18172 20.6821 3.18172H23.0685V4.19829C22.5952 4.47433 22.2731 4.98183 22.2731 5.56808C22.2731 6.44547 22.9866 7.159 23.864 7.159C24.7414 7.159 25.4549 6.44547 25.4549 5.56808C25.4549 4.98196 25.1327 4.47446 24.6594 4.19843Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M18.2951 4.19843V0.795498C18.2951 0.356357 17.9396 0 17.4997 0C17.0598 0 16.7042 0.356357 16.7042 0.79543V1.59086H14.3179C13.878 1.59086 13.5225 1.94722 13.5225 2.38629C13.5225 2.82536 13.878 3.18172 14.3179 3.18172H16.7042V4.19829C16.2309 4.47433 15.9088 4.98183 15.9088 5.56808C15.9088 6.44547 16.6224 7.159 17.4997 7.159C18.3771 7.159 19.0907 6.44547 19.0907 5.56808C19.0906 4.98196 18.7684 4.47446 18.2951 4.19843Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M17.5 11.1362H9.54543C9.10554 11.1362 8.75 11.4926 8.75 11.9317C8.75 12.3707 9.10554 12.7271 9.54543 12.7271H17.5C17.9399 12.7271 18.2954 12.3707 18.2954 11.9317C18.2954 11.4926 17.9399 11.1362 17.5 11.1362Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M23.0678 14.3184H15.9087C15.4688 14.3184 15.1133 14.6747 15.1133 15.1138C15.1133 15.5529 15.4688 15.9092 15.9087 15.9092H23.0678C23.5077 15.9092 23.8632 15.5529 23.8632 15.1138C23.8633 14.6747 23.5077 14.3184 23.0678 14.3184Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M20.6818 20.6816H9.54543C9.10554 20.6816 8.75 21.038 8.75 21.4771C8.75 21.9161 9.10554 22.2725 9.54543 22.2725H20.6818C21.1217 22.2725 21.4772 21.9161 21.4772 21.4771C21.4772 21.038 21.1217 20.6816 20.6818 20.6816Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M25.4549 11.1362H20.6821C20.2423 11.1362 19.8867 11.4926 19.8867 11.9317C19.8867 12.3707 20.2423 12.7271 20.6821 12.7271H25.4549C25.8948 12.7271 26.2503 12.3707 26.2503 11.9317C26.2503 11.4926 25.8948 11.1362 25.4549 11.1362Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M16.7046 17.5H9.54543C9.10554 17.5 8.75 17.8564 8.75 18.2954C8.75 18.7345 9.10554 19.0909 9.54543 19.0909H16.7045C17.1444 19.0909 17.4999 18.7345 17.4999 18.2954C17.4999 17.8564 17.1445 17.5 16.7046 17.5Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M12.7272 14.3184H9.54543C9.10554 14.3184 8.75 14.6747 8.75 15.1138C8.75 15.5529 9.10554 15.9092 9.54543 15.9092H12.7272C13.1671 15.9092 13.5226 15.5529 13.5226 15.1138C13.5226 14.6747 13.1671 14.3184 12.7272 14.3184Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M25.4545 17.5H19.8862C19.4464 17.5 19.0908 17.8564 19.0908 18.2954C19.0908 18.7345 19.4464 19.0909 19.8862 19.0909H25.4545C25.8944 19.0909 26.2499 18.7345 26.2499 18.2954C26.2499 17.8564 25.8944 17.5 25.4545 17.5Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n            &lt;/svg&gt;\r\n            Наши реквизиты\r\n          &lt;/button&gt;\r\n        &lt;/div&gt;\r\n      &lt;/div&gt;\r\n', 'Доставка и оплата', '', ''),
(3, 2, 'Политика конфиденциальности', '&lt;p&gt;\r\n	Политика конфиденциальности&lt;/p&gt;\r\n', 'Политика конфиденциальности', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(7, 2, 'О компании', '&lt;p&gt;ООО «Зиптрейд» - первый поставщик и импортер швейной фурнитуры на территории Республики Беларусь. На нашем официальном сайте представлен каталог со швейной фурнитурой, тканями и трикотажем.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;За 2020 год 310 клиентов обратились к нам повторно и стали постоянными клиентами.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;«Свитанак», «Купалинка», «Полесье», «Белль Бимбо», «Калинка», «Формэль», «Стецкевич-спецодежда», «8 марта», «Славянка» и другие предприятия покупают швейную фурнитуру оптом в нашей компании.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Мы начинали только с молний. 1 января 2021г. на складе было в наличии 3840 наименований товаров, а пока вы читали этот текст, товаров стало больше.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Наша компания заботится о репутации клиентов, поэтому продукция имеет сертификат качества, выдерживает срок эксплуатации изделия, не ломается и не «подводит» бренд.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Доставляем заказы по всей Беларуси: Брест, Витебск, Гомель, Гродно, Минск, Могилёв и другие.&lt;/p&gt;&lt;div&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiRkRUOXowQU9VS1RDVVM3dDFJbER0dCIsInBhc3RlSUQiOjk4NjU4NTUyMCwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;span data-buffer=&quot;&lt;!--(figma)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(/figma)--&gt;&quot;&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiRkRUOXowQU9VS1RDVVM3dDFJbER0dCIsInBhc3RlSUQiOjk4NjU4NTUyMCwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;span data-buffer=&quot;&lt;!--(figma)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(/figma)--&gt;&quot;&gt;&lt;/span&gt;&lt;/div&gt;', 'О компании', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(6, 0, 0),
(5, 0, 0),
(3, 0, 0),
(7, 0, 104);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Русский', 'ru-ru', 'ru_RU.UTF-8,ru_RU,ru-ru,ru_ru,russian', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(100, 'Blog post'),
(101, 'Blog category'),
(102, 'Blog search'),
(103, 'Blog author'),
(104, 'Информация о компании'),
(105, 'Козина покупок');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(111, 1, 'carousel.29', 'content_bottom', 2),
(110, 1, 'html.33', 'content_bottom', 1),
(107, 1, 'banner.31', 'content_top', 1),
(79, 2, 'category', 'column_left', 0),
(78, 3, 'category', 'column_left', 1),
(109, 1, 'html.32', 'content_bottom', 0),
(108, 1, 'featured.28', 'content_top', 2),
(106, 1, 'category', 'column_left', 0),
(130, 104, 'carousel.34', 'content_bottom', 4),
(115, 8, 'html.35', 'content_bottom', 0),
(116, 105, 'html.33', 'content_bottom', 0),
(129, 104, 'html.38', 'content_bottom', 2),
(128, 104, 'html.36', 'content_bottom', 1),
(127, 104, 'html.39', 'content_bottom', 0),
(126, 13, 'category', 'column_left', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(55, 3, 0, 'product/category'),
(68, 1, 0, 'common/home'),
(56, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(69, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(71, 13, 0, 'product/search'),
(62, 100, 0, 'extension/d_blog_module/post'),
(58, 101, 0, 'extension/d_blog_module/category'),
(59, 102, 0, 'extension/d_blog_module/search'),
(60, 103, 0, 'extension/d_blog_module/author'),
(70, 105, 0, 'checkout/cart');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 1, 'd_opencart_patch', 'd_opencart_patch', 'Dreamvention', '3.1.6', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.1.6</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/extension.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\')){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND path LIKE \'%\".$this->db->escape($extension_name).\"%\' ORDER BY `date_added` ASC\");\n        }else{\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/modification.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\') !== false){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND `name` LIKE \'%\".$this->db->escape($extension_name).\"%\'\");\n\n        }else{\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></search>\n            <add position=\"replace\"><![CDATA[//d_opencart_patch.xml 1 moved down]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_modification->deleteModificationsByExtensionInstallId($extension_install_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                //d_opencart_patch.xml 2\n                $this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/filemanager.php\">\n        <operation>\n            <search><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></search>\n            <add position=\"replace\"><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,svg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'jpg\',]]></search>\n            <add position=\"after\"><![CDATA[\'svg\',]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'image/jpeg\',]]></search>\n            <add position=\"after\"><![CDATA[\'image/svg+xml\',]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/filemanager.twig\">\n        <operation>\n            <search><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" />]]></search>\n            <add position=\"replace\"><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" width=\"100\" height=\"100\" />]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[</header>]]></search>\n            <add position=\"before\"><![CDATA[\n                <style type=\"text/css\">\n                    a.img-thumbnail{\n                        min-width:100px;\n                    }\n                </style>\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_CATALOG;\n                } else {\n                    $server = HTTP_CATALOG;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_SERVER;\n                } else {\n                    $server = HTTP_SERVER;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/localisation/language.php\">\n        <operation error=\"skip\">\n$language_data = $this->cache->get(\'language\');\n            <search ><![CDATA[$language_data = $this->cache->get(\'language\');]]></search>\n            <add position=\"replace\"><![CDATA[\n        $language_data = $this->cache->get(\'catalog.language\');]]></add>\n        </operation>\n    </file>\n    <file path=\"system/config/catalog.php\">\n        <operation error=\"skip\">\n            <search index=\"1\" ><![CDATA[\'view/*/before\' => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                   //    \"view/*/before\" => array(\n                   //        1000  => \'event/debug/before\'\n                   //    ),\n                ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search ><![CDATA[\'controller/*/after\'  => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                    //  \'controller/*/after\'  => array(\n                    //\'event/debug/after\'\n                    //)\n                ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2022-12-26 22:37:50'),
(2, 0, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '2.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2022-12-26 22:39:06'),
(3, 2, 'Hutkigrosh ERIP Gateway Module', 'esas_hutkigrosh', 'esas', '1.17.0', '', '<modification>\n    <name>Hutkigrosh ERIP Gateway Module</name>\n    <version>1.17.0</version>\n    <author>esas</author>\n    <code>esas_hutkigrosh</code>\n</modification>', 1, '2022-12-26 22:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Наши клиенты', 'carousel', '{\"name\":\"\\u041d\\u0430\\u0448\\u0438 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b\",\"banner_id\":\"9\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"42\",\"30\",\"49\",\"29\",\"46\",\"44\"],\"limit\":\"8\",\"width\":\"177\",\"height\":\"189\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Main page banner', 'banner', '{\"name\":\"Main page banner\",\"banner_id\":\"6\",\"width\":\"996\",\"height\":\"400\",\"status\":\"1\"}'),
(32, 'Homepage text', 'html', '{\"name\":\"Homepage text\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;p&gt;\\u041e\\u041e\\u041e \\u00ab\\u0417\\u0438\\u043f\\u0442\\u0440\\u0435\\u0439\\u0434\\u00bb - \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a \\u0438 \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440 \\u0448\\u0432\\u0435\\u0439\\u043d\\u043e\\u0439 \\u0444\\u0443\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u044b \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c. \\u041d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e \\u0448\\u0432\\u0435\\u0439\\u043d\\u043e\\u0439 \\u0444\\u0443\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u043e\\u0439, \\u0442\\u043a\\u0430\\u043d\\u044f\\u043c\\u0438 \\u0438 \\u0442\\u0440\\u0438\\u043a\\u043e\\u0442\\u0430\\u0436\\u0435\\u043c. \\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0437\\u0430\\u0431\\u043e\\u0442\\u0438\\u0442\\u0441\\u044f \\u043e \\u0440\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430, \\u0432\\u044b\\u0434\\u0435\\u0440\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f, \\u043d\\u0435 \\u043b\\u043e\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0435 \\u00ab\\u043f\\u043e\\u0434\\u0432\\u043e\\u0434\\u0438\\u0442\\u00bb \\u0431\\u0440\\u0435\\u043d\\u0434.&lt;\\/p&gt;\"}},\"status\":\"1\"}'),
(33, 'Homepage why', 'html', '{\"name\":\"Homepage why\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;col-12&quot;&gt;\\r\\n        &lt;div class=&quot;homepage-why d-flex align-items-center justify-content-between&quot;&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/call.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u041f\\u0420\\u0418\\u0415\\u041c \\u0417\\u0412\\u041e\\u041d\\u041a\\u041e\\u0412&lt;br&gt;8.30 : 17.00&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/delivery.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u0411\\u0415\\u0421\\u041f\\u041b\\u0410\\u0422\\u041d\\u0410\\u042f \\u0414\\u041e\\u0421\\u0422\\u0410\\u0412\\u041a\\u0410&lt;br&gt;\\u041f\\u041e \\u0420\\u0411 - \\u041e\\u0422 300 BYN,&lt;br&gt;\\u041f\\u041e \\u0412\\u0418\\u0422\\u0415\\u0411\\u0421\\u041a\\u0423 - \\u041e\\u0422 150 BYN&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/guarantee.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u0413\\u0410\\u0420\\u0410\\u041d\\u0422\\u0418\\u042f \\u041a\\u0410\\u0427\\u0415\\u0421\\u0422\\u0412\\u0410&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/return.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u0412\\u041e\\u0417\\u0412\\u0420\\u0410\\u0422 \\u041f\\u0420\\u0418&lt;br&gt;\\u041d\\u0415\\u0421\\u041e\\u041e\\u0422\\u0412\\u0415\\u0422\\u0421\\u0422\\u0412\\u0418\\u0418&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(34, 'Сертификаты и награды', 'carousel', '{\"name\":\"\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b \\u0438 \\u043d\\u0430\\u0433\\u0440\\u0430\\u0434\\u044b\",\"banner_id\":\"10\",\"width\":\"180\",\"height\":\"234\",\"status\":\"1\"}'),
(35, 'Сотрудники', 'html', '{\"name\":\"\\u0421\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0438\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;col-12&quot;&gt;\\r\\n              &lt;div class=&quot;row&quot;&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee1.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u041a\\u043e\\u043d\\u0441\\u0442\\u0430\\u043d\\u0442\\u0438\\u043d \\u0413\\u043e\\u043b\\u0443\\u0431\\u0435\\u0432&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;golubev@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee2.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0411\\u0443\\u0445\\u0433\\u0430\\u043b\\u0442\\u0435\\u0440&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u041a\\u043e\\u043d\\u0441\\u0442\\u0430\\u043d\\u0442\\u0438\\u043d \\u041b\\u0438\\u0442\\u0432\\u0438\\u043d\\u043e\\u0432&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;info@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee3.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u041d\\u0430\\u0447\\u0430\\u043b\\u044c\\u043d\\u0438\\u043a \\u043a\\u043e\\u043c\\u043c\\u0435\\u0440\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u0442\\u0434\\u0435\\u043b\\u0430&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u0415\\u043b\\u0435\\u043d\\u0430 \\u0427\\u0435\\u0440\\u043a\\u0430\\u0448\\u0438\\u043d\\u0430&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;snab@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee4.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430\\u043c&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u0421\\u0432\\u0435\\u0442\\u043b\\u0430\\u043d\\u0430 \\u041a\\u0430\\u0447\\u0430\\u043d&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;201@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee5.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430\\u043c&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u0412\\u0438\\u043a\\u0442\\u043e\\u0440\\u0438\\u044f \\u041a\\u0443\\u0434\\u0440\\u0430\\u0448\\u043e\\u0432\\u0430&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;212@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee6.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430\\u043c&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u041e\\u043b\\u044c\\u0433\\u0430 \\u041a\\u0440\\u0443\\u0447\\u0435\\u043d\\u044e\\u043a&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;info@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(36, 'Заголовок почему выбируют нас', 'html', '{\"name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u043f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0443\\u044e\\u0442 \\u043d\\u0430\\u0441\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;h2&gt;\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u043d\\u0430\\u0441 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u044e\\u0442&lt;\\/h2&gt;\"}},\"status\":\"1\"}'),
(37, 'Заголовок сертификаты', 'html', '{\"name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;h2&gt;\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b \\u0438 \\u043d\\u0430\\u0433\\u0440\\u0430\\u0434\\u044b&lt;\\/h2&gt;\"}},\"status\":\"1\"}'),
(38, 'Почему выбирают нас', 'html', '{\"name\":\"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u044e\\u0442 \\u043d\\u0430\\u0441\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;about-why&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;10 \\u043b\\u0435\\u0442&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u0423\\u0436\\u0435 10 \\u043b\\u0435\\u0442 \\u043c\\u044b \\u0441 \\u0412\\u0430\\u043c\\u0438! \\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e \\u0412\\u0430\\u043c, \\u0447\\u0442\\u043e \\u0434\\u043e\\u0432\\u0435\\u0440\\u044f\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0435\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438!\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;38&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u041c\\u044b \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0430\\u0435\\u043c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 38 \\u0444\\u0438\\u0440\\u043c\\u0430\\u043c\\u0438-\\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u0430\\u043c\\u0438\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;4500&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u0411\\u043e\\u043b\\u0435\\u0435 4500 \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u0437\\u0430\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043d\\u0442\\u0440\\u0430\\u043a\\u0442\\u043e\\u0432 \\u0441 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;&lt;span style=&quot;font-size:19px&quot;&gt;\\u0431\\u043e\\u043b\\u0435\\u0435&lt;\\/span&gt;&lt;br&gt;8000&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u0412\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0435 8000 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438, \\u0438 \\u044d\\u0442\\u043e \\u043d\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0435\\u043b!\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(39, 'Галлерея на странице о нас', 'html', '{\"name\":\"\\u0413\\u0430\\u043b\\u043b\\u0435\\u0440\\u0435\\u044f \\u043d\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u043e \\u043d\\u0430\\u0441\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;about-gallery&quot;&gt;\\r\\n        &lt;div class=&quot;gallery-image image1 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image2&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image3 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image4 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image5 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(14, 'radio', 2),
(13, 'select', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(14, 2, 'Цвет'),
(13, 2, 'Размер');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(55, 14, '', 0),
(54, 14, '', 3),
(53, 14, '', 2),
(52, 14, '', 1),
(51, 13, '', 0),
(50, 13, '', 0),
(49, 13, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(55, 2, 14, 'Зеленый:#00ff00'),
(53, 2, 14, 'Красный:#ff0000'),
(52, 2, 14, 'Черный:#000000'),
(54, 2, 14, 'Синий:#0000ff'),
(51, 2, 13, '30см'),
(50, 2, 13, '20см'),
(49, 2, 13, '10см');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:19:37', '2022-12-30 09:19:37'),
(2, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:20:13', '2022-12-30 09:20:13'),
(3, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:21:52', '2022-12-30 09:21:52'),
(4, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:21:57', '2022-12-30 09:21:57'),
(5, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:23:11', '2022-12-30 09:23:11'),
(6, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:30:37', '2022-12-30 09:30:37'),
(7, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:33:49', '2022-12-30 09:33:49'),
(8, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:37:04', '2022-12-30 09:37:04'),
(9, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:37:54', '2022-12-30 09:37:54'),
(10, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:39:51', '2022-12-30 09:39:51'),
(11, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:40:32', '2022-12-30 09:40:32'),
(12, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:41:39', '2022-12-30 09:41:39'),
(13, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:41:42', '2022-12-30 09:41:42'),
(14, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:44:58', '2022-12-30 09:44:58'),
(15, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:45:33', '2022-12-30 09:45:33'),
(16, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:45:51', '2022-12-30 09:45:51'),
(17, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:47:05', '2022-12-30 09:47:05'),
(18, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:47:24', '2022-12-30 09:47:24'),
(19, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:51:44', '2022-12-30 09:51:44'),
(20, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:54:51', '2022-12-30 09:54:51'),
(21, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:55:38', '2022-12-30 09:55:38'),
(22, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:56:12', '2022-12-30 09:56:12'),
(23, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:57:37', '2022-12-30 09:57:37'),
(24, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 09:59:24', '2022-12-30 09:59:24'),
(25, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 10:00:48', '2022-12-30 10:00:48'),
(26, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 10:03:11', '2022-12-30 10:03:11'),
(27, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 10:03:53', '2022-12-30 10:03:53'),
(28, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 10:15:00', '2022-12-30 10:15:00'),
(29, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '602.0000', 0, 0, '0.0000', 0, '', 2, 4, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-30 10:17:53', '2022-12-30 10:17:53'),
(30, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '200.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-06 00:26:29', '2023-01-06 00:26:29'),
(31, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:34:24', '2023-01-06 09:34:24'),
(32, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:35:18', '2023-01-06 09:35:18'),
(33, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:50:44', '2023-01-06 09:50:44'),
(34, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:52:53', '2023-01-06 09:52:53'),
(35, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:53:12', '2023-01-06 09:53:12'),
(36, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:53:42', '2023-01-06 09:53:42'),
(37, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:54:00', '2023-01-06 09:54:00'),
(38, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:56:01', '2023-01-06 09:56:01'),
(39, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:58:04', '2023-01-06 09:58:04'),
(40, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 09:59:18', '2023-01-06 09:59:18'),
(41, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 10:00:05', '2023-01-06 10:00:05'),
(42, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 10:00:56', '2023-01-06 10:00:56'),
(43, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 10:03:54', '2023-01-06 10:03:54'),
(44, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 10:07:39', '2023-01-06 10:07:39'),
(45, 0, 'INV-2022-00', 0, 'Your Store', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-06 10:08:03', '2023-01-06 10:08:03'),
(46, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:02:29', '2023-01-09 09:02:29'),
(47, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:03:48', '2023-01-09 09:03:48'),
(48, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:22:44', '2023-01-09 09:22:44'),
(49, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:24:28', '2023-01-09 09:24:28'),
(50, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:25:36', '2023-01-09 09:25:36'),
(51, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:26:02', '2023-01-09 09:26:02'),
(52, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:26:30', '2023-01-09 09:26:30'),
(53, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:26:51', '2023-01-09 09:26:51'),
(54, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:29:01', '2023-01-09 09:29:01'),
(55, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:29:32', '2023-01-09 09:29:32'),
(56, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:29:35', '2023-01-09 09:29:35'),
(57, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:33:41', '2023-01-09 09:33:41'),
(58, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:54:08', '2023-01-09 09:54:08'),
(59, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 09:57:08', '2023-01-09 09:57:08'),
(60, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:05:04', '2023-01-09 10:05:04'),
(61, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:11:24', '2023-01-09 10:11:24'),
(62, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:12:30', '2023-01-09 10:12:30'),
(63, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:14:26', '2023-01-09 10:14:26'),
(64, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:14:50', '2023-01-09 10:14:50'),
(65, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:15:28', '2023-01-09 10:15:28'),
(66, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:16:19', '2023-01-09 10:16:19'),
(67, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:17:15', '2023-01-09 10:17:15'),
(68, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:18:30', '2023-01-09 10:18:30'),
(69, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:19:24', '2023-01-09 10:19:24'),
(70, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:22:06', '2023-01-09 10:22:06'),
(71, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:23:28', '2023-01-09 10:23:28'),
(72, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:23:34', '2023-01-09 10:23:34'),
(73, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:23:55', '2023-01-09 10:23:55'),
(74, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:25:01', '2023-01-09 10:25:01'),
(75, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:25:55', '2023-01-09 10:25:55'),
(76, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:27:41', '2023-01-09 10:27:41'),
(77, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:28:59', '2023-01-09 10:28:59'),
(78, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:29:43', '2023-01-09 10:29:43'),
(79, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:30:52', '2023-01-09 10:30:52'),
(80, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:33:37', '2023-01-09 10:33:37'),
(81, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:34:47', '2023-01-09 10:34:47'),
(82, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:36:06', '2023-01-09 10:36:06'),
(83, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:37:20', '2023-01-09 10:37:20'),
(84, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:37:44', '2023-01-09 10:37:44'),
(85, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:38:04', '2023-01-09 10:38:04'),
(86, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:38:45', '2023-01-09 10:38:45'),
(87, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:39:16', '2023-01-09 10:39:16'),
(88, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:39:52', '2023-01-09 10:39:52'),
(89, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:41:43', '2023-01-09 10:41:43'),
(90, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:42:28', '2023-01-09 10:42:28');
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(91, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:43:07', '2023-01-09 10:43:07'),
(92, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:43:21', '2023-01-09 10:43:21'),
(93, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:43:32', '2023-01-09 10:43:32'),
(94, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:46:33', '2023-01-09 10:46:33'),
(95, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:47:31', '2023-01-09 10:47:31'),
(96, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:47:53', '2023-01-09 10:47:53'),
(97, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:49:04', '2023-01-09 10:49:04'),
(98, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:49:26', '2023-01-09 10:49:26'),
(99, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:49:59', '2023-01-09 10:49:59'),
(100, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:51:09', '2023-01-09 10:51:09'),
(101, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:51:27', '2023-01-09 10:51:27'),
(102, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:52:44', '2023-01-09 10:52:44'),
(103, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:53:47', '2023-01-09 10:53:47'),
(104, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:56:29', '2023-01-09 10:56:29'),
(105, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:57:45', '2023-01-09 10:57:45'),
(106, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:58:23', '2023-01-09 10:58:23'),
(107, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 10:59:00', '2023-01-09 10:59:00'),
(108, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:00:22', '2023-01-09 11:00:22'),
(109, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:18:03', '2023-01-09 11:18:03'),
(110, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:38:08', '2023-01-09 11:38:08'),
(111, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:39:24', '2023-01-09 11:39:24'),
(112, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:40:09', '2023-01-09 11:40:09'),
(113, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:41:06', '2023-01-09 11:41:06'),
(114, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:41:16', '2023-01-09 11:41:16'),
(115, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:43:15', '2023-01-09 11:43:15'),
(116, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:43:46', '2023-01-09 11:43:46'),
(117, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:45:08', '2023-01-09 11:45:08'),
(118, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:45:19', '2023-01-09 11:45:19'),
(119, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:45:43', '2023-01-09 11:45:43'),
(120, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:47:19', '2023-01-09 11:47:19'),
(121, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:49:34', '2023-01-09 11:49:34'),
(122, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:51:04', '2023-01-09 11:51:04'),
(123, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:51:36', '2023-01-09 11:51:36'),
(124, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:51:58', '2023-01-09 11:51:58'),
(125, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:52:28', '2023-01-09 11:52:28'),
(126, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:53:54', '2023-01-09 11:53:54'),
(127, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 11:55:49', '2023-01-09 11:55:49'),
(128, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 12:04:48', '2023-01-09 12:04:48'),
(129, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 12:07:02', '2023-01-09 12:07:02'),
(130, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 12:07:55', '2023-01-09 12:07:55'),
(131, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-09 12:49:10', '2023-01-09 12:49:10'),
(132, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:34:03', '2023-01-09 22:34:03'),
(133, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:35:56', '2023-01-09 22:35:56'),
(134, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:38:50', '2023-01-09 22:38:50'),
(135, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:39:26', '2023-01-09 22:39:26'),
(136, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:39:42', '2023-01-09 22:39:42'),
(137, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:40:26', '2023-01-09 22:40:26'),
(138, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:54:58', '2023-01-09 22:54:58'),
(139, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 22:59:58', '2023-01-09 22:59:58'),
(140, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:00:27', '2023-01-09 23:00:27'),
(141, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 1, '', '', '', '', '', '[]', '', '', '', '', '', 'Минск', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', 'cod', '', '', '', '', '', 'Минск', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', 'flat.flat', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:01:29', '2023-01-09 23:01:29'),
(142, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 1, '', '', '', '', '', '[]', '', '', '', '', '', 'Минск', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', 'cod', '', '', '', '', '', 'Минск', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', 'flat.flat', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:02:34', '2023-01-09 23:02:34'),
(143, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:07:50', '2023-01-09 23:07:50'),
(144, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:16:04', '2023-01-09 23:16:04'),
(163, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '200.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-10 00:06:53', '2023-01-10 00:06:53'),
(164, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:37:11', '2023-01-12 23:37:11'),
(165, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:38:26', '2023-01-12 23:38:26'),
(166, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:39:55', '2023-01-12 23:39:55'),
(167, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:40:15', '2023-01-12 23:40:15'),
(148, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:23:02', '2023-01-09 23:23:02'),
(149, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:24:00', '2023-01-09 23:24:00'),
(150, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:24:11', '2023-01-09 23:24:11'),
(151, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:25:09', '2023-01-09 23:25:09'),
(152, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:25:44', '2023-01-09 23:25:44'),
(153, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:26:15', '2023-01-09 23:26:15'),
(154, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:26:57', '2023-01-09 23:26:57'),
(155, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:28:32', '2023-01-09 23:28:32'),
(156, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:28:49', '2023-01-09 23:28:49'),
(157, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:35:00', '2023-01-09 23:35:00'),
(158, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:35:44', '2023-01-09 23:35:44'),
(168, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:42:09', '2023-01-12 23:42:09'),
(169, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:47:03', '2023-01-12 23:47:03'),
(170, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-12 23:51:57', '2023-01-12 23:51:57'),
(171, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 00:04:48', '2023-01-13 00:04:48'),
(172, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 00:05:52', '2023-01-13 00:05:52'),
(173, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 00:20:40', '2023-01-13 00:20:40'),
(174, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 00:22:33', '2023-01-13 00:22:33'),
(175, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 00:25:13', '2023-01-13 00:25:13'),
(176, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 11:32:09', '2023-01-13 11:32:09'),
(177, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:50:35', '2023-01-13 11:50:35'),
(178, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 1, 'Edgar Zhiznevski', ', Компания: Advansys, ИНН: , УНП', 'edgarz@advansys.com', '+375291236064', '', '[]', 'Edgar Zhiznevski', '', '', 'Минск, Независимости', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', 'Безналичный расчет', 'cod', 'Edgar Zhiznevski', '', '', 'Минск, Независимости', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', '', 'flat.flat', '', '80.0000', 1, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:51:56', '2023-01-13 11:51:56'),
(179, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:54:24', '2023-01-13 11:54:24'),
(180, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 1, 'Edgar', ', Компания: Advansys, ИНН: , УНП', 'edgarz@advansys.com', '+375291236064', '', '[]', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', 'Безналичный расчет', 'cod', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', '', 'flat.flat', '', '100.0000', 1, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:54:51', '2023-01-13 11:54:51'),
(181, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:55:40', '2023-01-13 11:55:40');
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(182, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 1, 'Edgar', ', Компания: Advansys, УНП: 12312', 'edgarz@advansys.com', '123123', '', '[]', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', 'Безналичный расчет', 'cod', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', '', 'flat.flat', '', '100.0000', 1, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:55:56', '2023-01-13 11:55:56'),
(183, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:56:34', '2023-01-13 11:56:34'),
(184, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 1, 'Edgar', ', Компания: Advansys, УНП: 12312', 'edgarz@advansys.com', '123123', '', '[]', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', 'Безналичный расчет', 'cod', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', '', 'flat.flat', '', '100.0000', 1, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:56:49', '2023-01-13 11:56:50'),
(185, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:57:56', '2023-01-13 11:57:56'),
(186, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 1, 'Edgar', ', Компания: Advansys, УНП: 13123', 'edgarz@advansys.com', '123123', '', '[]', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', 'Безналичный расчет', 'cod', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', '', 'flat.flat', '', '100.0000', 1, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 11:58:09', '2023-01-13 11:58:10'),
(187, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 12:01:27', '2023-01-13 12:01:27'),
(188, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 1, 'Edgar', ', Компания: Advansys, УНП: 313123311233123', 'edgarz@advansys.com', '123123', '', '[]', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', 'Безналичный расчет', 'cod', 'Edgar', '', '', 'London, Baker street 229', '', '', '', 'Республика Беларусь', 20, '', 343, '', '[]', '', 'flat.flat', '', '100.0000', 1, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 12:01:41', '2023-01-13 12:01:42'),
(189, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 13:36:23', '2023-01-13 13:36:23'),
(190, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '301.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 13:39:53', '2023-01-13 13:39:53'),
(191, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 13:51:18', '2023-01-13 13:51:18'),
(192, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 14:02:02', '2023-01-13 14:02:02'),
(193, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 15:54:25', '2023-01-13 15:54:25'),
(194, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '180.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 15:54:44', '2023-01-13 15:54:44'),
(195, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 15:54:54', '2023-01-13 15:54:54'),
(196, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '80.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 15:55:35', '2023-01-13 15:55:35'),
(197, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:18:22', '2023-01-13 16:18:22'),
(198, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:20:09', '2023-01-13 16:20:09'),
(199, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:21:00', '2023-01-13 16:21:00'),
(200, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:21:56', '2023-01-13 16:21:56'),
(201, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:28:11', '2023-01-13 16:28:11'),
(202, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:33:40', '2023-01-13 16:33:40'),
(203, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 16:43:58', '2023-01-13 16:43:58'),
(204, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 17:06:06', '2023-01-13 17:06:06'),
(205, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-13 17:06:11', '2023-01-13 17:06:11'),
(206, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.125.107.6', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 17:08:12', '2023-01-13 17:08:12'),
(207, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 17:08:45', '2023-01-13 17:08:45'),
(208, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 17:09:00', '2023-01-13 17:09:00'),
(209, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.125.107.6', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-13 17:09:07', '2023-01-13 17:09:07'),
(210, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '200.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-16 11:37:35', '2023-01-16 11:37:35'),
(211, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-16 11:40:13', '2023-01-16 11:40:13'),
(212, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '300.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-16 11:40:55', '2023-01-16 11:40:55'),
(213, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-16 12:06:38', '2023-01-16 12:06:38'),
(214, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-16 15:36:43', '2023-01-16 15:36:43'),
(215, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-17 08:25:49', '2023-01-17 08:25:49'),
(216, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-17 08:29:07', '2023-01-17 08:29:07'),
(217, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 08:39:28', '2023-01-17 08:39:28'),
(218, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 08:39:32', '2023-01-17 08:39:32'),
(219, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 08:39:49', '2023-01-17 08:39:49'),
(220, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 08:40:21', '2023-01-17 08:40:21'),
(221, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-17 08:54:01', '2023-01-17 08:54:01'),
(222, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-17 08:57:16', '2023-01-17 08:57:16'),
(223, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '101.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-17 08:57:19', '2023-01-17 08:57:19'),
(224, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-17 11:03:40', '2023-01-17 11:03:40'),
(225, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 11:13:22', '2023-01-17 11:13:22'),
(226, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '500.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 11:14:22', '2023-01-17 11:14:22'),
(227, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.109.76', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-17 12:07:24', '2023-01-17 12:07:24'),
(228, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9', '2023-01-17 12:15:56', '2023-01-17 12:15:56'),
(229, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '201.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9', '2023-01-17 12:16:32', '2023-01-17 12:16:32'),
(230, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '200.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '93.84.103.182', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-18 13:45:00', '2023-01-18 13:45:00'),
(231, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '1000.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '213.184.250.158', '', 'Mozilla/5.0 (Linux; Android 12; RMX3195) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-18 15:05:23', '2023-01-18 15:05:23'),
(232, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://ziptrade.veon-tech.ru/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '200.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '46.53.180.61', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/109.0.5414.83 Mobile/15E148 Safari/604.1', 'ru', '2023-01-23 09:33:44', '2023-01-23 09:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(15, 178, 1, 0, '', '2023-01-13 11:51:56'),
(16, 180, 1, 0, '', '2023-01-13 11:54:51'),
(17, 182, 1, 0, '', '2023-01-13 11:55:56'),
(18, 184, 1, 0, '', '2023-01-13 11:56:50'),
(19, 186, 1, 0, '', '2023-01-13 11:58:10'),
(20, 188, 1, 0, '', '2023-01-13 12:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 164, 165, 226, 15, 'Select', 'Red', 'select'),
(2, 165, 167, 226, 15, 'Select', 'Red', 'select'),
(3, 166, 169, 226, 15, 'Select', 'Red', 'select'),
(4, 167, 171, 226, 15, 'Select', 'Red', 'select'),
(5, 168, 173, 226, 15, 'Select', 'Red', 'select'),
(6, 169, 175, 226, 15, 'Select', 'Red', 'select'),
(7, 170, 177, 226, 15, 'Select', 'Red', 'select'),
(8, 171, 179, 226, 15, 'Select', 'Red', 'select'),
(9, 172, 181, 226, 15, 'Select', 'Red', 'select'),
(10, 173, 182, 226, 15, 'Select', 'Red', 'select'),
(11, 174, 183, 226, 15, 'Select', 'Red', 'select'),
(12, 175, 184, 226, 15, 'Select', 'Red', 'select'),
(13, 176, 185, 226, 15, 'Select', 'Red', 'select'),
(14, 177, 186, 226, 15, 'Select', 'Red', 'select'),
(15, 178, 187, 226, 15, 'Select', 'Red', 'select'),
(16, 193, 203, 226, 15, 'Select', 'Red', 'select'),
(17, 194, 205, 226, 15, 'Select', 'Red', 'select'),
(18, 195, 207, 226, 15, 'Select', 'Red', 'select'),
(19, 196, 208, 226, 15, 'Select', 'Red', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(2, 2, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(3, 3, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(4, 4, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(5, 5, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(6, 6, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(7, 7, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(8, 8, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(9, 9, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(10, 10, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(11, 11, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(12, 12, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(13, 13, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(14, 14, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(15, 15, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(16, 16, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(17, 17, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(18, 18, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(19, 19, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(20, 20, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(21, 21, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(22, 22, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(23, 23, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(24, 24, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(25, 25, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(26, 26, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(27, 27, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(28, 28, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(29, 29, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(30, 30, 41, 'iMac', 'Product 14', 2, '100.0000', '200.0000', '0.0000', 0),
(31, 31, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(32, 32, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(33, 33, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(34, 34, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(35, 35, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(36, 36, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(37, 37, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(38, 38, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(39, 39, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(40, 40, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(41, 41, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(42, 42, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(43, 43, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(44, 44, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(45, 45, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(46, 46, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(47, 47, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(48, 48, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(49, 49, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(50, 50, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(51, 51, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(52, 52, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(53, 53, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(54, 54, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(55, 55, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(56, 56, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(57, 57, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(58, 58, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(59, 59, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(60, 60, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(61, 61, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(62, 62, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(63, 63, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(64, 64, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(65, 65, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(66, 66, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(67, 67, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(68, 68, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(69, 69, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(70, 70, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(71, 71, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(72, 72, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(73, 73, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(74, 74, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(75, 75, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(76, 76, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(77, 77, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(78, 78, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(79, 79, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(80, 80, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(81, 81, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(82, 82, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(83, 83, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(84, 84, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(85, 85, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(86, 86, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(87, 87, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(88, 88, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(89, 89, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(90, 90, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(91, 91, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(92, 92, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(93, 93, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(94, 94, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(95, 95, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(96, 96, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(97, 97, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(98, 98, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(99, 99, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(100, 100, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(101, 101, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(102, 102, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(103, 103, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(104, 104, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(105, 105, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(106, 106, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(107, 107, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(108, 108, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(109, 109, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(110, 110, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(111, 111, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(112, 112, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(113, 113, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(114, 114, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(115, 115, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(116, 116, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(117, 117, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(118, 118, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(119, 119, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(120, 120, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(121, 121, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(122, 122, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(123, 123, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(124, 124, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(125, 125, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(126, 126, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(127, 127, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(128, 128, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(129, 129, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(130, 130, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(131, 131, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(132, 132, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(133, 133, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(134, 134, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(135, 135, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(136, 136, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(137, 137, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(138, 138, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(139, 139, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(140, 140, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(141, 141, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(142, 142, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(143, 143, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(144, 144, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(163, 163, 41, 'iMac', 'Product 14', 2, '100.0000', '200.0000', '0.0000', 0),
(164, 164, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(165, 164, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(148, 148, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(149, 149, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(150, 150, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(151, 151, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(152, 152, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(153, 153, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(154, 154, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(155, 155, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(156, 156, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(157, 157, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(158, 158, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(166, 165, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(167, 165, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(168, 166, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(169, 166, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(170, 167, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(171, 167, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(172, 168, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(173, 168, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(174, 169, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(175, 169, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(176, 170, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(177, 170, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(178, 171, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(179, 171, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(180, 172, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(181, 172, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(182, 173, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(183, 174, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(184, 175, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(185, 176, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(186, 177, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(187, 178, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(188, 179, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(189, 180, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(190, 181, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(191, 182, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(192, 183, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(193, 184, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(194, 185, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(195, 186, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(196, 187, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(197, 188, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(198, 189, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(199, 190, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(200, 190, 41, 'iMac', 'Product 14', 2, '100.0000', '200.0000', '0.0000', 0),
(201, 191, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(202, 192, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(203, 193, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(204, 193, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(205, 194, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(206, 194, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(207, 195, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(208, 196, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(209, 197, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(210, 198, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(211, 199, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(212, 200, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(213, 201, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(214, 202, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(215, 203, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(216, 204, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(217, 205, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(218, 206, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(219, 207, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(220, 208, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(221, 209, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(222, 210, 41, 'iMac', 'Product 14', 2, '100.0000', '200.0000', '0.0000', 0),
(223, 211, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(224, 212, 41, 'iMac', 'Product 14', 3, '100.0000', '300.0000', '0.0000', 0),
(225, 213, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(226, 214, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(227, 215, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(228, 216, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(229, 217, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(230, 218, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(231, 219, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(232, 220, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(233, 221, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(234, 222, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(235, 223, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(236, 224, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(237, 225, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(238, 226, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(239, 227, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(240, 228, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(241, 229, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(242, 229, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(243, 230, 41, 'iMac', 'Product 14', 2, '100.0000', '200.0000', '0.0000', 0),
(244, 231, 46, 'Sony VAIO', 'Product 19', 1, '1000.0000', '1000.0000', '0.0000', 0),
(245, 232, 41, 'iMac', 'Product 14', 2, '100.0000', '200.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Сумма', '500.0000', 1),
(2, 1, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(3, 1, 'tax', 'VAT (20%)', '100.0000', 5),
(4, 1, 'total', 'Итого', '602.0000', 9),
(5, 2, 'sub_total', 'Сумма', '500.0000', 1),
(6, 2, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(7, 2, 'tax', 'VAT (20%)', '100.0000', 5),
(8, 2, 'total', 'Итого', '602.0000', 9),
(9, 3, 'sub_total', 'Сумма', '500.0000', 1),
(10, 3, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(11, 3, 'tax', 'VAT (20%)', '100.0000', 5),
(12, 3, 'total', 'Итого', '602.0000', 9),
(13, 4, 'sub_total', 'Сумма', '500.0000', 1),
(14, 4, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(15, 4, 'tax', 'VAT (20%)', '100.0000', 5),
(16, 4, 'total', 'Итого', '602.0000', 9),
(17, 5, 'sub_total', 'Сумма', '500.0000', 1),
(18, 5, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(19, 5, 'tax', 'VAT (20%)', '100.0000', 5),
(20, 5, 'total', 'Итого', '602.0000', 9),
(21, 6, 'sub_total', 'Сумма', '500.0000', 1),
(22, 6, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(23, 6, 'tax', 'VAT (20%)', '100.0000', 5),
(24, 6, 'total', 'Итого', '602.0000', 9),
(25, 7, 'sub_total', 'Сумма', '500.0000', 1),
(26, 7, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(27, 7, 'tax', 'VAT (20%)', '100.0000', 5),
(28, 7, 'total', 'Итого', '602.0000', 9),
(29, 8, 'sub_total', 'Сумма', '500.0000', 1),
(30, 8, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(31, 8, 'tax', 'VAT (20%)', '100.0000', 5),
(32, 8, 'total', 'Итого', '602.0000', 9),
(33, 9, 'sub_total', 'Сумма', '500.0000', 1),
(34, 9, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(35, 9, 'tax', 'VAT (20%)', '100.0000', 5),
(36, 9, 'total', 'Итого', '602.0000', 9),
(37, 10, 'sub_total', 'Сумма', '500.0000', 1),
(38, 10, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(39, 10, 'tax', 'VAT (20%)', '100.0000', 5),
(40, 10, 'total', 'Итого', '602.0000', 9),
(41, 11, 'sub_total', 'Сумма', '500.0000', 1),
(42, 11, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(43, 11, 'tax', 'VAT (20%)', '100.0000', 5),
(44, 11, 'total', 'Итого', '602.0000', 9),
(45, 12, 'sub_total', 'Сумма', '500.0000', 1),
(46, 12, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(47, 12, 'tax', 'VAT (20%)', '100.0000', 5),
(48, 12, 'total', 'Итого', '602.0000', 9),
(49, 13, 'sub_total', 'Сумма', '500.0000', 1),
(50, 13, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(51, 13, 'tax', 'VAT (20%)', '100.0000', 5),
(52, 13, 'total', 'Итого', '602.0000', 9),
(53, 14, 'sub_total', 'Сумма', '500.0000', 1),
(54, 14, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(55, 14, 'tax', 'VAT (20%)', '100.0000', 5),
(56, 14, 'total', 'Итого', '602.0000', 9),
(57, 15, 'sub_total', 'Сумма', '500.0000', 1),
(58, 15, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(59, 15, 'tax', 'VAT (20%)', '100.0000', 5),
(60, 15, 'total', 'Итого', '602.0000', 9),
(61, 16, 'sub_total', 'Сумма', '500.0000', 1),
(62, 16, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(63, 16, 'tax', 'VAT (20%)', '100.0000', 5),
(64, 16, 'total', 'Итого', '602.0000', 9),
(65, 17, 'sub_total', 'Сумма', '500.0000', 1),
(66, 17, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(67, 17, 'tax', 'VAT (20%)', '100.0000', 5),
(68, 17, 'total', 'Итого', '602.0000', 9),
(69, 18, 'sub_total', 'Сумма', '500.0000', 1),
(70, 18, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(71, 18, 'tax', 'VAT (20%)', '100.0000', 5),
(72, 18, 'total', 'Итого', '602.0000', 9),
(73, 19, 'sub_total', 'Сумма', '500.0000', 1),
(74, 19, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(75, 19, 'tax', 'VAT (20%)', '100.0000', 5),
(76, 19, 'total', 'Итого', '602.0000', 9),
(77, 20, 'sub_total', 'Сумма', '500.0000', 1),
(78, 20, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(79, 20, 'tax', 'VAT (20%)', '100.0000', 5),
(80, 20, 'total', 'Итого', '602.0000', 9),
(81, 21, 'sub_total', 'Сумма', '500.0000', 1),
(82, 21, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(83, 21, 'tax', 'VAT (20%)', '100.0000', 5),
(84, 21, 'total', 'Итого', '602.0000', 9),
(85, 22, 'sub_total', 'Сумма', '500.0000', 1),
(86, 22, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(87, 22, 'tax', 'VAT (20%)', '100.0000', 5),
(88, 22, 'total', 'Итого', '602.0000', 9),
(89, 23, 'sub_total', 'Сумма', '500.0000', 1),
(90, 23, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(91, 23, 'tax', 'VAT (20%)', '100.0000', 5),
(92, 23, 'total', 'Итого', '602.0000', 9),
(93, 24, 'sub_total', 'Сумма', '500.0000', 1),
(94, 24, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(95, 24, 'tax', 'VAT (20%)', '100.0000', 5),
(96, 24, 'total', 'Итого', '602.0000', 9),
(97, 25, 'sub_total', 'Сумма', '500.0000', 1),
(98, 25, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(99, 25, 'tax', 'VAT (20%)', '100.0000', 5),
(100, 25, 'total', 'Итого', '602.0000', 9),
(101, 26, 'sub_total', 'Сумма', '500.0000', 1),
(102, 26, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(103, 26, 'tax', 'VAT (20%)', '100.0000', 5),
(104, 26, 'total', 'Итого', '602.0000', 9),
(105, 27, 'sub_total', 'Сумма', '500.0000', 1),
(106, 27, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(107, 27, 'tax', 'VAT (20%)', '100.0000', 5),
(108, 27, 'total', 'Итого', '602.0000', 9),
(109, 28, 'sub_total', 'Сумма', '500.0000', 1),
(110, 28, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(111, 28, 'tax', 'VAT (20%)', '100.0000', 5),
(112, 28, 'total', 'Итого', '602.0000', 9),
(113, 29, 'sub_total', 'Сумма', '500.0000', 1),
(114, 29, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(115, 29, 'tax', 'VAT (20%)', '100.0000', 5),
(116, 29, 'total', 'Итого', '602.0000', 9),
(117, 30, 'sub_total', 'К оплате', '200.0000', 0),
(118, 31, 'sub_total', 'К оплате', '500.0000', 0),
(119, 32, 'sub_total', 'К оплате', '500.0000', 0),
(120, 33, 'sub_total', 'К оплате', '100.0000', 0),
(121, 34, 'sub_total', 'К оплате', '100.0000', 0),
(122, 35, 'sub_total', 'К оплате', '100.0000', 0),
(123, 36, 'sub_total', 'К оплате', '100.0000', 0),
(124, 37, 'sub_total', 'К оплате', '100.0000', 0),
(125, 38, 'sub_total', 'К оплате', '100.0000', 0),
(126, 39, 'sub_total', 'К оплате', '100.0000', 0),
(127, 40, 'sub_total', 'К оплате', '100.0000', 0),
(128, 41, 'sub_total', 'К оплате', '100.0000', 0),
(129, 42, 'sub_total', 'К оплате', '100.0000', 0),
(130, 43, 'sub_total', 'К оплате', '100.0000', 0),
(131, 44, 'sub_total', 'К оплате', '100.0000', 0),
(132, 45, 'sub_total', 'К оплате', '100.0000', 0),
(133, 46, 'sub_total', 'К оплате', '100.0000', 0),
(134, 47, 'sub_total', 'К оплате', '100.0000', 0),
(135, 48, 'sub_total', 'К оплате', '100.0000', 0),
(136, 49, 'sub_total', 'К оплате', '100.0000', 0),
(137, 50, 'sub_total', 'К оплате', '100.0000', 0),
(138, 51, 'sub_total', 'К оплате', '100.0000', 0),
(139, 52, 'sub_total', 'К оплате', '100.0000', 0),
(140, 53, 'sub_total', 'К оплате', '100.0000', 0),
(141, 54, 'sub_total', 'К оплате', '100.0000', 0),
(142, 55, 'sub_total', 'К оплате', '100.0000', 0),
(143, 56, 'sub_total', 'К оплате', '100.0000', 0),
(144, 57, 'sub_total', 'К оплате', '100.0000', 0),
(145, 58, 'sub_total', 'К оплате', '100.0000', 0),
(146, 59, 'sub_total', 'К оплате', '100.0000', 0),
(147, 60, 'sub_total', 'К оплате', '100.0000', 0),
(148, 61, 'sub_total', 'К оплате', '100.0000', 0),
(149, 62, 'sub_total', 'К оплате', '100.0000', 0),
(150, 63, 'sub_total', 'К оплате', '100.0000', 0),
(151, 64, 'sub_total', 'К оплате', '100.0000', 0),
(152, 65, 'sub_total', 'К оплате', '100.0000', 0),
(153, 66, 'sub_total', 'К оплате', '100.0000', 0),
(154, 67, 'sub_total', 'К оплате', '100.0000', 0),
(155, 68, 'sub_total', 'К оплате', '100.0000', 0),
(156, 69, 'sub_total', 'К оплате', '100.0000', 0),
(157, 70, 'sub_total', 'К оплате', '100.0000', 0),
(158, 71, 'sub_total', 'К оплате', '100.0000', 0),
(159, 72, 'sub_total', 'К оплате', '100.0000', 0),
(160, 73, 'sub_total', 'К оплате', '100.0000', 0),
(161, 74, 'sub_total', 'К оплате', '100.0000', 0),
(162, 75, 'sub_total', 'К оплате', '100.0000', 0),
(163, 76, 'sub_total', 'К оплате', '100.0000', 0),
(164, 77, 'sub_total', 'К оплате', '100.0000', 0),
(165, 78, 'sub_total', 'К оплате', '100.0000', 0),
(166, 79, 'sub_total', 'К оплате', '100.0000', 0),
(167, 80, 'sub_total', 'К оплате', '100.0000', 0),
(168, 81, 'sub_total', 'К оплате', '100.0000', 0),
(169, 82, 'sub_total', 'К оплате', '100.0000', 0),
(170, 83, 'sub_total', 'К оплате', '100.0000', 0),
(171, 84, 'sub_total', 'К оплате', '100.0000', 0),
(172, 85, 'sub_total', 'К оплате', '100.0000', 0),
(173, 86, 'sub_total', 'К оплате', '100.0000', 0),
(174, 87, 'sub_total', 'К оплате', '100.0000', 0),
(175, 88, 'sub_total', 'К оплате', '100.0000', 0),
(176, 89, 'sub_total', 'К оплате', '100.0000', 0),
(177, 90, 'sub_total', 'К оплате', '100.0000', 0),
(178, 91, 'sub_total', 'К оплате', '100.0000', 0),
(179, 92, 'sub_total', 'К оплате', '100.0000', 0),
(180, 93, 'sub_total', 'К оплате', '100.0000', 0),
(181, 94, 'sub_total', 'К оплате', '100.0000', 0),
(182, 95, 'sub_total', 'К оплате', '100.0000', 0),
(183, 96, 'sub_total', 'К оплате', '100.0000', 0),
(184, 97, 'sub_total', 'К оплате', '100.0000', 0),
(185, 98, 'sub_total', 'К оплате', '100.0000', 0),
(186, 99, 'sub_total', 'К оплате', '100.0000', 0),
(187, 100, 'sub_total', 'К оплате', '100.0000', 0),
(188, 101, 'sub_total', 'К оплате', '100.0000', 0),
(189, 102, 'sub_total', 'К оплате', '100.0000', 0),
(190, 103, 'sub_total', 'К оплате', '100.0000', 0),
(191, 104, 'sub_total', 'К оплате', '100.0000', 0),
(192, 105, 'sub_total', 'К оплате', '100.0000', 0),
(193, 106, 'sub_total', 'К оплате', '100.0000', 0),
(194, 107, 'sub_total', 'К оплате', '100.0000', 0),
(195, 108, 'sub_total', 'К оплате', '100.0000', 0),
(196, 109, 'sub_total', 'К оплате', '100.0000', 0),
(197, 110, 'sub_total', 'К оплате', '100.0000', 0),
(198, 111, 'sub_total', 'К оплате', '100.0000', 0),
(199, 112, 'sub_total', 'К оплате', '100.0000', 0),
(200, 113, 'sub_total', 'К оплате', '100.0000', 0),
(201, 114, 'sub_total', 'К оплате', '100.0000', 0),
(202, 115, 'sub_total', 'К оплате', '100.0000', 0),
(203, 116, 'sub_total', 'К оплате', '100.0000', 0),
(204, 117, 'sub_total', 'К оплате', '100.0000', 0),
(205, 118, 'sub_total', 'К оплате', '100.0000', 0),
(206, 119, 'sub_total', 'К оплате', '100.0000', 0),
(207, 120, 'sub_total', 'К оплате', '100.0000', 0),
(208, 121, 'sub_total', 'К оплате', '100.0000', 0),
(209, 122, 'sub_total', 'К оплате', '100.0000', 0),
(210, 123, 'sub_total', 'К оплате', '100.0000', 0),
(211, 124, 'sub_total', 'К оплате', '100.0000', 0),
(212, 125, 'sub_total', 'К оплате', '100.0000', 0),
(213, 126, 'sub_total', 'К оплате', '100.0000', 0),
(214, 127, 'sub_total', 'К оплате', '100.0000', 0),
(215, 128, 'sub_total', 'К оплате', '100.0000', 0),
(216, 129, 'sub_total', 'К оплате', '100.0000', 0),
(217, 130, 'sub_total', 'К оплате', '100.0000', 0),
(218, 131, 'sub_total', 'К оплате', '100.0000', 0),
(219, 132, 'sub_total', 'К оплате', '100.0000', 0),
(220, 133, 'sub_total', 'К оплате', '100.0000', 0),
(221, 134, 'sub_total', 'К оплате', '100.0000', 0),
(222, 135, 'sub_total', 'К оплате', '100.0000', 0),
(223, 136, 'sub_total', 'К оплате', '100.0000', 0),
(224, 137, 'sub_total', 'К оплате', '100.0000', 0),
(225, 138, 'sub_total', 'К оплате', '100.0000', 0),
(226, 139, 'sub_total', 'К оплате', '100.0000', 0),
(227, 140, 'sub_total', 'К оплате', '100.0000', 0),
(228, 141, 'sub_total', 'К оплате', '100.0000', 0),
(229, 142, 'sub_total', 'К оплате', '100.0000', 0),
(230, 143, 'sub_total', 'К оплате', '100.0000', 0),
(231, 144, 'sub_total', 'К оплате', '100.0000', 0),
(250, 163, 'sub_total', 'К оплате', '200.0000', 0),
(251, 164, 'sub_total', 'К оплате', '180.0000', 0),
(235, 148, 'sub_total', 'К оплате', '100.0000', 0),
(236, 149, 'sub_total', 'К оплате', '100.0000', 0),
(237, 150, 'sub_total', 'К оплате', '100.0000', 0),
(238, 151, 'sub_total', 'К оплате', '100.0000', 0),
(239, 152, 'sub_total', 'К оплате', '100.0000', 0),
(240, 153, 'sub_total', 'К оплате', '100.0000', 0),
(241, 154, 'sub_total', 'К оплате', '100.0000', 0),
(242, 155, 'sub_total', 'К оплате', '100.0000', 0),
(243, 156, 'sub_total', 'К оплате', '100.0000', 0),
(244, 157, 'sub_total', 'К оплате', '100.0000', 0),
(245, 158, 'sub_total', 'К оплате', '100.0000', 0),
(252, 165, 'sub_total', 'К оплате', '180.0000', 0),
(253, 166, 'sub_total', 'К оплате', '180.0000', 0),
(254, 167, 'sub_total', 'К оплате', '180.0000', 0),
(255, 168, 'sub_total', 'К оплате', '180.0000', 0),
(256, 169, 'sub_total', 'К оплате', '180.0000', 0),
(257, 170, 'sub_total', 'К оплате', '180.0000', 0),
(258, 171, 'sub_total', 'К оплате', '180.0000', 0),
(259, 172, 'sub_total', 'К оплате', '180.0000', 0),
(260, 173, 'sub_total', 'К оплате', '80.0000', 0),
(261, 174, 'sub_total', 'К оплате', '80.0000', 0),
(262, 175, 'sub_total', 'К оплате', '80.0000', 0),
(263, 176, 'sub_total', 'К оплате', '80.0000', 0),
(264, 177, 'sub_total', 'К оплате', '80.0000', 0),
(265, 178, 'sub_total', 'К оплате', '80.0000', 0),
(266, 179, 'sub_total', 'К оплате', '100.0000', 0),
(267, 180, 'sub_total', 'К оплате', '100.0000', 0),
(268, 181, 'sub_total', 'К оплате', '100.0000', 0),
(269, 182, 'sub_total', 'К оплате', '100.0000', 0),
(270, 183, 'sub_total', 'К оплате', '100.0000', 0),
(271, 184, 'sub_total', 'К оплате', '100.0000', 0),
(272, 185, 'sub_total', 'К оплате', '100.0000', 0),
(273, 186, 'sub_total', 'К оплате', '100.0000', 0),
(274, 187, 'sub_total', 'К оплате', '100.0000', 0),
(275, 188, 'sub_total', 'К оплате', '100.0000', 0),
(276, 189, 'sub_total', 'К оплате', '100.0000', 0),
(277, 190, 'sub_total', 'К оплате', '301.0000', 0),
(278, 191, 'sub_total', 'К оплате', '101.0000', 0),
(279, 192, 'sub_total', 'К оплате', '101.0000', 0),
(280, 193, 'sub_total', 'К оплате', '180.0000', 0),
(281, 194, 'sub_total', 'К оплате', '180.0000', 0),
(282, 195, 'sub_total', 'К оплате', '80.0000', 0),
(283, 196, 'sub_total', 'К оплате', '80.0000', 0),
(284, 197, 'sub_total', 'К оплате', '100.0000', 0),
(285, 198, 'sub_total', 'К оплате', '100.0000', 0),
(286, 199, 'sub_total', 'К оплате', '100.0000', 0),
(287, 200, 'sub_total', 'К оплате', '100.0000', 0),
(288, 201, 'sub_total', 'К оплате', '100.0000', 0),
(289, 202, 'sub_total', 'К оплате', '100.0000', 0),
(290, 203, 'sub_total', 'К оплате', '100.0000', 0),
(291, 204, 'sub_total', 'К оплате', '100.0000', 0),
(292, 205, 'sub_total', 'К оплате', '100.0000', 0),
(293, 206, 'sub_total', 'К оплате', '100.0000', 0),
(294, 207, 'sub_total', 'К оплате', '100.0000', 0),
(295, 208, 'sub_total', 'К оплате', '100.0000', 0),
(296, 209, 'sub_total', 'К оплате', '100.0000', 0),
(297, 210, 'sub_total', 'К оплате', '200.0000', 0),
(298, 211, 'sub_total', 'К оплате', '100.0000', 0),
(299, 212, 'sub_total', 'К оплате', '300.0000', 0),
(300, 213, 'sub_total', 'К оплате', '100.0000', 0),
(301, 214, 'sub_total', 'К оплате', '100.0000', 0),
(302, 215, 'sub_total', 'К оплате (с НДС)', '101.0000', 0),
(303, 216, 'sub_total', 'К оплате (с НДС)', '101.0000', 0),
(304, 217, 'sub_total', 'К оплате (с НДС)', '500.0000', 0),
(305, 218, 'sub_total', 'К оплате (с НДС)', '500.0000', 0),
(306, 219, 'sub_total', 'К оплате (с НДС)', '500.0000', 0),
(307, 220, 'sub_total', 'К оплате (с НДС)', '500.0000', 0),
(308, 221, 'sub_total', 'К оплате (с НДС)', '101.0000', 0),
(309, 222, 'sub_total', 'К оплате (с НДС)', '101.0000', 0),
(310, 223, 'sub_total', 'К оплате (с НДС)', '101.0000', 0),
(311, 224, 'sub_total', 'К оплате (с НДС)', '100.0000', 0),
(312, 225, 'sub_total', 'К оплате (с НДС)', '500.0000', 0),
(313, 226, 'sub_total', 'К оплате (с НДС)', '500.0000', 0),
(314, 227, 'sub_total', 'К оплате (с НДС)', '100.0000', 0),
(315, 228, 'sub_total', 'К оплате (с НДС)', '100.0000', 0),
(316, 229, 'sub_total', 'К оплате (с НДС)', '201.0000', 0),
(317, 230, 'sub_total', 'К оплате (с НДС)', '200.0000', 0),
(318, 231, 'sub_total', 'К оплате (с НДС)', '1000.0000', 0),
(319, 232, 'sub_total', 'К оплате (с НДС)', '200.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date DEFAULT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `import_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `import_id`) VALUES
(116, '№ 277', '', '', '', '', '', '', '', 7, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(115, '№ 257', '', '', '', '', '', '', '', 5, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(113, '№ 231', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(114, '№ 243', '', '', '', '', '', '', '', 7, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(89, '6816', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '16.2240', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000002272'),
(90, '15 Зеленый', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '0.0000', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000006048'),
(91, '20 Красный', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '0.0000', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000006048'),
(92, '', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '0.0000', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000006049'),
(93, 'Золото', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '18.1830', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000006044'),
(94, 'Серебро', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '18.1830', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000006044'),
(95, '', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '18.5687', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001667'),
(96, '', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '44.3443', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001668'),
(97, '', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '4.2360', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001673'),
(98, '', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '0.0861', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000005461'),
(99, '101 белый', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.5755', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(100, '110 желтый', '', '', '', '', '', '', '', 5, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(101, '№ 134 (розовый)', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(102, '148', '', '', '', '', '', '', '', 10, 5, NULL, 0, 1, '1.5617', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(103, '№ 157', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.7140', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(104, '№ 145 (малиновый)', '', '', '', '', '', '', '', 7, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(105, '№ 166', '', '', '', '', '', '', '', 3, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(106, '№ 170', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(107, '№ 178', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.7140', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(108, '№ 179', '', '', '', '', '', '', '', 9, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(109, '№ 184', '', '', '', '', '', '', '', 2, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(110, '№ 201', '', '', '', '', '', '', '', 6, 5, NULL, 0, 1, '1.4907', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(111, '№ 208', '', '', '', '', '', '', '', 2, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(112, '№ 213', '', '', '', '', '', '', '', 7, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(122, '№ 338', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.4907', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818'),
(120, '№ 334', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818'),
(119, '№ 316', '', '', '', '', '', '', '', 6, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818'),
(118, '№ 312', '', '', '', '', '', '', '', 8, 5, NULL, 0, 1, '1.5105', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(117, '№ 310', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000001818'),
(123, '322 чёрный', '', '', '', '', '', '', '', 8, 5, NULL, 0, 1, '1.3694', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818'),
(121, '№ 335', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.4907', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818'),
(88, '6816', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '3.7560', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:50', '2023-03-22 15:57:50', 'БП000002271'),
(124, '№160 (025)', '', '', '', '', '', '', '', 0, 5, NULL, 0, 1, '1.5617', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818'),
(125, '№270', '', '', '', '', '', '', '', 8, 5, NULL, 0, 1, '1.5920', 0, 9, '2023-03-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2023-03-22 15:57:51', '2023-03-22 15:57:51', 'БП000001818');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(92, 14, 2, '13 мм'),
(91, 28, 2, '1234 (Красный) '),
(90, 28, 2, '4321 (Зеленый) '),
(92, 17, 2, '5 шт');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(88, 2, 'Нитки 100ЛЛ  1000м', 'Нитки 100ЛЛ  1000м', '', 'Нитки 100ЛЛ  1000м', '', ''),
(89, 2, 'Нитки 100ЛЛ  5000м', 'Нитки 100ЛЛ  5000м', '', 'Нитки 100ЛЛ  5000м', '', ''),
(90, 2, 'Тест', 'Тест', '', 'Тест', '', ''),
(91, 2, 'Тест', 'Тест', '', 'Тест', '', ''),
(92, 2, 'Тест2', 'Тест2', '', 'Тест2', '', ''),
(93, 2, 'Булавка безопасная  уп.1000 шт.', 'Булавка безопасная  уп.1000 шт.', '', 'Булавка безопасная  уп.1000 шт.', '', ''),
(94, 2, 'Булавка безопасная  уп.1000 шт.', 'Булавка безопасная  уп.1000 шт.', '', 'Булавка безопасная  уп.1000 шт.', '', ''),
(95, 2, 'Булавки пластик. 37 мм (упак. 100шт.), ассорти', 'Булавки пластик. 37 мм (упак. 100шт.), ассорти', '', 'Булавки пластик. 37 мм (упак. 100шт.), ассорти', '', ''),
(96, 2, 'Булавка английская (сталь) никель/2000 шт.', 'Булавка английская (сталь) никель/2000 шт.', '', 'Булавка английская (сталь) никель/2000 шт.', '', ''),
(97, 2, 'Булавки декор \"Ромашка\" 40 шт комплект 36 пластин (кор.40 комплектов)', 'Булавки декор \"Ромашка\" 40 шт комплект 36 пластин (кор.40 комплектов)', '', 'Булавки декор \"Ромашка\" 40 шт комплект 36 пластин (кор.40 комплектов)', '', ''),
(98, 2, 'F18 / МВ73111 18мм  Прозрачная 2 пркл. (пуговицы)', 'F18 / МВ73111 18мм  Прозрачная 2 пркл. (пуговицы)', '', 'F18 / МВ73111 18мм  Прозрачная 2 пркл. (пуговицы)', '', ''),
(99, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(100, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(101, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(102, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(103, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(104, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(105, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(106, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(107, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(108, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(109, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(110, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(111, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(112, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(113, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(114, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(115, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(116, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(117, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(118, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(119, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(120, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(121, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(122, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(123, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(124, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', ''),
(125, 2, 'Лента атласная 12мм ', 'Лента атласная 12мм ', '', 'Лента атласная 12мм ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `import_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(88, 177),
(89, 177),
(90, 177),
(91, 177),
(92, 177),
(93, 178),
(94, 178),
(95, 178),
(96, 178),
(97, 178),
(98, 179),
(99, 179),
(100, 179),
(101, 179),
(102, 179),
(103, 179),
(104, 179),
(105, 179),
(106, 179),
(107, 179),
(108, 179),
(109, 179),
(110, 179),
(111, 179),
(112, 179),
(113, 179),
(114, 179),
(115, 179),
(116, 179),
(117, 179),
(118, 179),
(119, 179),
(120, 179),
(121, 179),
(122, 179),
(123, 179),
(124, 179),
(125, 179);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('0093c6f8869aa894d704725d97', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:20'),
('02734bb4021fc56a9bb6f8db24', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-18 14:12:15'),
('040a8834c8a389c73027758383', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:34'),
('0469fc72ec384bfcb3eaf67a6c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 02:03:05'),
('04aadde9d094ce2c9b704d4e28', '{\"user_id\":\"1\",\"user_token\":\"Lkynassot8ryPD7zJ8if9Q9RPQZLEtdK\"}', '2023-02-15 13:28:49'),
('053545a20004260f3ac4d70eba', '{\"user_id\":\"1\",\"user_token\":\"4E7WZ5Jbr5lxeHs9LzbIGppPIY6EvwwN\"}', '2023-01-16 11:11:38'),
('05c7a752285d6a4dc3540c53a9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-01 16:49:06'),
('06365e998b8495456b45327ea0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"jJzQh6H9nw7xoyizWH7ZUyRi0U2ZPbqc\"}', '2023-01-03 12:06:04'),
('06877dd897cc68c0c610247103', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('069dbe4a23446baf4a2a38397c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:52:54'),
('07864d53519559e32d126a54a6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('08255fcbfa0d729648c3ba245d', '{\"api_id\":\"2\"}', '2023-01-09 20:43:17'),
('0832e4e301e9bf4d13d070c909', 'false', '2023-02-20 06:49:31'),
('0871c20103c4bf7159d2039bbf', 'false', '2023-01-18 12:07:50'),
('0885fba3355155da71a0a9efd2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:52:53'),
('094496b3f5b9365f56424ba533', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:31'),
('09d4ebbab160560c825b2b93f5', 'false', '2023-02-16 08:51:45'),
('09fd609f10c5655b5b90075880', '{\"api_id\":\"2\"}', '2023-01-13 09:20:03'),
('0ab3a10644c8b901604f99cff8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:49:48'),
('0ab4f9eb47a8a8233efc5755f9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('0b39e228c03f2879cb2f426355', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 15:17:30'),
('0b3a5546e3d2e56c3b93401fc3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('0b4877e358f48702c6c2a4f040', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-02 13:23:48'),
('0c045932a92f0ecfebc51e781a', '{\"user_id\":\"1\",\"user_token\":\"V6cBH75AuAkx5JrmtFU0qoVIAOmiOVl1\"}', '2023-01-24 10:36:03'),
('0cc7ae7badd899fa89dfcf7e7a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 12:06:15'),
('0cf420a09600a65059066e8452', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('0d1ac424946d91578fbb791cf1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('0d642629fb1f469b88c10f5f03', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('0d9ac7ab9fa0e473b9542d9a0b', 'false', '2023-03-22 07:00:01'),
('0eaa3d88ac212fae3ed1352e07', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('0f1a611c281bee8534fe2ff205', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:14:52'),
('10883458d50f01456fa154192f', '{\"user_id\":\"1\",\"user_token\":\"mHgYpsgPWhiwvQ96GWZTpNV5hAKkVhAr\"}', '2023-02-15 13:29:28'),
('112be1ec0daf5a5ea45af35c38', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-21 13:42:53'),
('124bbaf4308340eae056d7c98d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"hn8jEpIfYm7X1KQamSDceRsBNimFbZ4M\",\"order_id\":29,\"install\":\"7Q9EKCLvqx\"}', '2022-12-30 12:13:31'),
('12b963a6b862112726dd008c6a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 08:00:13'),
('132863a02d9ee9dc512cb166c6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('1386658493f3cd91f60c8e90f8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('1434e871cc6da79154efaf7f73', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:53:23'),
('14484cb0b1a18808883eece78f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:56'),
('1497a45029eb58b2d4043745fd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('15407c85b43b830616b8fd75b0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 11:32:15'),
('158375c82209cc9de28dd22e5b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-21 13:41:27'),
('15b06678ab6e1f50790ee3e238', '{\"api_id\":\"2\"}', '2023-01-13 09:16:02'),
('167a9064f6c46a5df654534b80', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('180af208ae6168881aad754325', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:54:00'),
('18843244ee0a1d6f6ce3117db4', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:56:04'),
('18bc54f5280532e25561e8fbce', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:10'),
('1901219b3e9755fd954bed0ddc', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('19e00260dd9e3fe02782241439', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:54:17'),
('1b2b83e3c1cd5e1792ac0a28da', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:21'),
('1b477d950567ae6c3551afaba7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":214,\"d_blog_module_debug\":0,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-16 13:00:43'),
('1b4f42d6196322ad0f6818a3d6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('1bb36a99c8a58fefae821f8d46', '{\"user_id\":\"1\",\"user_token\":\"QxYYoqEgK0pg5oBAf4uMwDxs5vavOPn3\"}', '2023-02-22 07:31:48'),
('1cdac2151c94ed204a76957b8f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('1dd2d1458b6b0c904495a4143c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:33:52'),
('1dd7f3c0f3b3e8381b66cf2b58', '{\"api_id\":\"2\"}', '2023-01-13 09:22:18'),
('1df7dcafecc13de409e4498c25', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-10 05:28:30'),
('1df841f9d8f26ac46288e397eb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:37'),
('1e06905d71e0578af790a7cf0a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 17:53:46'),
('1e5557f5fbfd1b5dcbf3a5cb7f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('1e8db15c94f0351b5a0c3930a6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-21 05:10:43'),
('1ee5f9d77c8ad6c1a52fb2d5a5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-01-13 09:31:09'),
('1f67e97a50c66f9fef18f8a449', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('1f8dc393084a2daabd9db79245', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('1f963ee19734a9c5fc0774d5c2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('2092b275449cd13d77d41fe6a7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 17:11:08'),
('212fc3438f684e5ae6de25e4be', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:46'),
('2158caaf52ca4590de6b3d2f49', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 16:52:02'),
('215f1b0c580a5dc2c6bbd67ba7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('21c7728e5d31d23a88727cd968', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('220a2c51741ec2556a40e53b8e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 07:46:51'),
('22396cb53abe31e571912afcf3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 10:49:20'),
('226dc5387dad8b0843c6747007', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:16'),
('2336ff1d4b822e2d51feaf8b16', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:02'),
('23a8bb0876da7ffb8bf5bba370', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('256221c0baaf3a63ba0bf8cd9d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"order_id\":224,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-18 12:49:11'),
('25f23e6cb26c01800743f6baa0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:48:40'),
('26cf7b38d8a43545575f2aa27e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:14:56'),
('27fc3320cd9a3a150128065ba4', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('284d9c202fdf9f8d6de7291e5e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 10:54:07'),
('286fa9bd7133106edd9f384766', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:46'),
('28cdee90c1ddc99fecb7dbcf87', '{\"api_id\":\"2\"}', '2023-01-13 09:19:03'),
('291a6dcd6e8934ce9fd3ca089e', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:11'),
('2a34f3db4e3053518da559f808', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('2ad191405a87e1984f73e85cf0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('2b63d36c8be9a34a6f8da1afeb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('2c077f1ed3854f130e4b2b6b0f', 'false', '2023-02-20 06:49:26'),
('2cc91c6c5fbcf7f3ff190ac8d1', '{\"api_id\":\"2\"}', '2023-01-09 20:42:22'),
('2cedf2677c01878b85e0164fdc', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:19'),
('2d2667e2a204d148c157d9c7da', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:48:15'),
('2d57cb26555d5026fb1ecbbe10', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-03 09:36:29'),
('2ef1eda2529fb4c1cc4d5e9e3e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:53:23'),
('2fb6fe60c8894d671420bf8501', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:51'),
('300e5a9b6e31e58058fdf1e4cd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('313e9375f70d8e2a2a2f7df411', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 14:29:45'),
('314d6248a81d9844f0c7bc7568', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('3152b8f1b68140cacffc320a81', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('31bd84b353a2611982895511eb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":223}', '2023-01-17 14:24:08'),
('31dbdaf3c1732ccfeefabb1168', '{\"api_id\":\"2\"}', '2023-01-13 09:16:12'),
('32edf681692bc46f47be689fb1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-08 13:09:08'),
('336574b0a65ca97c4ba2f5d85a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-06 23:15:24'),
('3371ef9c96da52a77277cbfd18', 'false', '2023-02-15 13:28:41'),
('3418254d9a2904d492db6e07ba', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('3422bcf479ada2a754e2e6b69b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('3447ff8116c014d6df027edb65', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 14:29:41'),
('345111a1443bcbb46e5b0dd6a0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('3546f78cb9d3ed9101fdc1ec02', 'false', '2023-02-22 07:31:53'),
('35573aeef355b1cd6f4f45dd0f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('35cf5da968f36f96ebd598727f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('361e300f71b20b439408ccfd5a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('36224b5c829993fcba17e99a13', 'false', '2023-02-15 13:27:02'),
('36c4107b75ffb9066b8267a1fe', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 10:50:09'),
('3706540ea51f1c03cf3c130f72', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:33'),
('3761c87569f3310d4a3b7c01f6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-02-09 12:14:41'),
('382cdce20345f34556e2812a94', '{\"api_id\":\"2\"}', '2023-01-09 21:07:05'),
('385ecb06cdec9a1d2236ecdce7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":131,\"user_id\":\"1\",\"user_token\":\"bbpD7vwhA4LHVYoCfXp52j7FMJEE78Ip\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-09 10:17:12'),
('399a51b22762481d64146e5d77', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('39b522decc8235a63bd5cda0f7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":229,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-17 12:41:09'),
('3a039a36ee07718b352d591dc1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('3a8c9d7b3c1752cbeecae2d677', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('3ab40108bd1d30a0f703ccb8e7', '{\"api_id\":\"2\"}', '2023-01-09 20:25:44'),
('3abe574cc81c60694fc24de4c5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-09 08:59:25'),
('3ad273a29e4146ae1247af0d4a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('3b4fb8a17dbb985ba9831558cd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('3b5600bcf4322f2013be72b468', '{\"api_id\":\"2\"}', '2023-01-09 21:07:06'),
('3b82a6e7054ed38241910a7c9d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('3c43c56b1bcfd5cf5522945177', '{\"user_id\":\"1\",\"user_token\":\"0KmFHV7JN5D5HsfjKiR18qRMfqD4ITix\",\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-01-24 11:44:41'),
('3cf5a69025ff6f6d887ea7e2d5', '{\"user_id\":\"1\",\"user_token\":\"pqpaF4lYpVULgAL9dVjr7KtnPNEQrABy\"}', '2023-01-18 12:07:55'),
('3d071ec60e8027c3de10af1da1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('3d0a0c46a09f3d64603a63de40', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('3e7d9475ba947425f88d43c447', 'false', '2023-02-15 13:28:29'),
('3e9b096d38d1e2354ac5953977', 'false', '2023-01-16 14:36:14'),
('3eb0082911c6e1250fe9d06b25', '{\"api_id\":\"2\"}', '2023-01-09 20:26:22'),
('3ed36ab8a1c9947fc7ae9b7683', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('3f57aad55032cda8097a0dc2fe', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('3fbb4fe8579df5f0ce3560c33e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-12 22:04:32'),
('40a1647afc8e6303e652725dd5', '{\"user_id\":\"1\",\"user_token\":\"jRt2Jn3Zc2nS13m7NBGK2B5c63sbBXya\"}', '2023-03-14 19:59:54'),
('40f2b4ece466250130357396f7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-10 05:28:56'),
('41194798a648b91d4663ae6df1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 21:15:23'),
('411edb22de490452a2f5da1f20', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('41ba8d38a12c332b3289525580', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 16:54:04'),
('41db407c7ec895bc7b1477e0c2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"Zosr8viwsWBJJhlPZY5WBaam2KFFzm4u\"}', '2023-01-06 22:14:16'),
('42c095be21cbeadf258e901828', '{\"user_id\":\"1\",\"user_token\":\"L2WIMCSdobHuTDLIbcOh0RBy5OK3PUI9\",\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"order_id\":196,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-13 13:19:35'),
('42d0925820764bf5298d103a7a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"ychPWQbbmenkKh8w3Z99Kni0O2LdSa4E\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"},\"order_id\":227}', '2023-01-17 09:31:24'),
('4325ed8fe63d0ca05c50fc0df7', 'false', '2023-01-13 09:03:21'),
('433cfb690f937856e54429b884', 'false', '2023-02-15 13:28:49'),
('43d729172525134c6aa3188552', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('440063460725293885c341bd13', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('45873007ef92a05f9ed2e3ed4a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:53'),
('45ea08b3e2ada321535d7ee5c7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:46'),
('46c715f033fc9542365265fb4e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:00'),
('47135f590b824e306a20a7b4e2', '{\"user_id\":\"1\",\"user_token\":\"jcRhWjHntoYkyJSfFezUkEv5WNle7g7n\"}', '2023-03-17 08:30:53'),
('47f85de4331f11af128668c897', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:31:32'),
('483402040a80b970eab3986f8b', '{\"api_id\":\"2\"}', '2023-01-13 09:22:13'),
('485af4c4452d2e5b3e0cfced4c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:53:23'),
('485b47691e4b19f43509f44819', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 19:25:19'),
('48f5e03c6e0e8d31ab4d2fa9c1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 19:01:09'),
('4a3faa8ccd176ded0dc2c28538', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:44'),
('4aeebadb2599576127b3ed51be', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:14:47'),
('4bc66fc1234871c3d1481b28be', 'false', '2023-02-22 13:41:06'),
('4bca40afb60251fd505eb028f3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('4bfc06de885582f5933374877c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:10'),
('4c53df1848f80fc89f5668a7f1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-09 12:43:01'),
('4cc698c9f13a72468ebc36ecae', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('4d601ebe6ef8fe57cdd507b1f4', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 19:25:18'),
('4d708548cefae1a3e0a3266fec', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('4d9b3a28b7a41ba82c7c730aa9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:34:03'),
('4dbcef254da78ef0c3d6f83177', 'false', '2023-01-17 08:46:46'),
('4e4467cfd3ebc0e6b86443192a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:46'),
('4e82fc43ac6042f60598a9f24f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('4e8607d8113ea7bbcf14f3a610', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:55:05'),
('4ee07c23c74452545e9c739396', 'false', '2023-01-16 14:36:19'),
('4f0b0b5f9345efa9044e70aa56', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 08:00:21'),
('501ea121ab458f32420a08a3f9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 15:17:30'),
('50c2306716065fdae05ddb450f', 'false', '2023-01-24 10:36:46'),
('51c4f4948226ced08b94081bbf', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:14'),
('521c20c8a9576be6dd98f81cf6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('52ca96521e19d60c3ddedf276f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('53655724cfe4fbbf3c28c1783e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('53d5221234d5ab9c5eb1088813', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-08 06:45:04'),
('54afdbe240e5cb428106edf792', 'false', '2023-01-16 11:11:33'),
('55762306c32df51907691d0b55', '{\"api_id\":\"2\"}', '2023-01-13 09:20:22'),
('56291b151794d8a6deb18e7868', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:51'),
('563749214aa4bbd19727b6c9cc', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 19:01:04'),
('564a9c65ee6a3da9f28a6f41d0', '{\"api_id\":\"2\"}', '2023-01-05 21:40:02'),
('565dcd8325820e37f252376847', '{\"user_id\":\"1\",\"user_token\":\"PBbGLiKway5TZFlQzVCiuiHZYgHbjg9z\"}', '2023-02-20 06:59:25'),
('56e21f84e393cd7383af0a5b43', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('572f36bddfdb70e666b6488f85', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('5842e73511b16c7eab438f0fc4', '{\"user_id\":\"1\",\"user_token\":\"dySnTiaN8sw5UM1qDTEqHD4zWbAQhWq3\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:19:47'),
('5867a0de7efd8a043d08a9266f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('5873d18e2213661572234c95dc', 'false', '2023-03-22 06:59:51'),
('594a2988ec4c95e0af292251b4', '{\"user_id\":\"1\",\"user_token\":\"F0FhTn39T1Mu97eFuL7bz5v4Emdbi0Hv\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-14 07:22:32'),
('5add1d31c508edb77992b73ee0', '{\"api_id\":\"2\"}', '2023-01-09 21:10:11'),
('5cc003fc8c56ab7de4dcd5a97c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('5d0efa480813865bcff5cc99b9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:19'),
('5d2239a57aefde79352af3d81c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:40'),
('5fbc64407988b773be2e4e2e64', '{\"user_id\":\"1\",\"user_token\":\"7UElDBcnx9cPoBDSxS9kaTGG8DTfP3F9\"}', '2023-02-15 13:28:29'),
('610da323e10f57aadfb988aff6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('61d48411639e92336176d3d2bd', '{\"api_id\":\"2\"}', '2023-01-09 21:01:56'),
('61f2e587fb147ef9ea3012d2ab', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('620dd73d6deeba20b41f845378', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-08 11:43:07'),
('620e72d02a270143aaaefc697a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2023-01-03 06:24:31'),
('621f739401180313d5448272b0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:15'),
('634ed326628f9cece3e4bcf858', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('642a72f1c471bd1baa4d73c1c6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 19:25:45'),
('6491c49b3602cd4ef635d767bb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('64e9be5b13d2f54e93eecc3616', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 12:06:36'),
('654ad9306a1fb646e333d27dc0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('6574e6df4d409cb1c0a9804105', '{\"api_id\":\"2\"}', '2023-01-09 21:09:48'),
('65dd65b2eeac530ed995168b12', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-25 11:12:17'),
('664280940d48d61e2d177c664a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('66a8c8897cc686407497b2bb71', '{\"user_id\":\"1\",\"user_token\":\"VrpfCXiV0w3kbaZq5NUwVp8ImU5h1ZVO\"}', '2023-02-15 13:28:24'),
('6834a180bd8d07addc38e5e6d7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:27'),
('68ea42cc3ba30cf80ebb077ee7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('68fb63b5bdab7985d7ba8c19ee', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('690507b2cc2b0a5afad2548796', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":231}', '2023-01-18 12:29:44'),
('692904dc2ed9f421c5c4b11069', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('69593a3e0dc8a38ec86e3fd366', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-10 05:28:37'),
('69943b7094cfa6d4f4ee35614c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_token\":\"4pBR2ySOlkrpOjhoVdjkDp7zqBHRueHF\"}', '2017-11-11 13:05:28'),
('69b4d79f921a217d949949e313', 'false', '2023-03-22 07:00:06'),
('6a74e48130e8b2cd1b9b2a85cb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-24 10:36:41'),
('6ad0a3bb18335e7e94ca9ec253', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('6af02d518662c3bb2eaa9e527f', '{\"api_id\":\"2\"}', '2023-01-13 09:19:59'),
('6b860c93a1e924873acef242af', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-20 00:09:45'),
('6c51961353436d8f59406faaff', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":226}', '2023-01-17 08:39:14'),
('6c58f21ac4070a311840f77ec0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-14 19:59:43'),
('6d1cfba1dd8ce5e313efc4d3c0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:54:10'),
('6d3c2edeb8a118a573c78e92cc', '{\"user_id\":\"1\",\"user_token\":\"6S2kOv7lkaMB58iBTBFgN8ZOj1768IUD\",\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2023-01-02 21:43:18'),
('6dc22a044eff2acde5754700ff', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('6de073c0e28daa1b164445bb68', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('6f75b9c8cdcebb7bd24bb4f504', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('70362ed1f19fe3a58b6ac553de', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('705aa0850b502b6f2f45eb4818', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 10:54:07'),
('7191ef8fd170769484045626f5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:30'),
('71f4fc135f88c84bc5b7f55a70', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:33:59'),
('72ad448d8fd1cde242af3df607', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:08'),
('72cd99bb8222f8c69a760ad89d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:54:12'),
('72ec34304c5e591da4284305e2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('7340ef6e1e42e4c655735ea022', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 15:19:51'),
('736fecfd94d8ecadf8b95f5096', 'false', '2023-03-22 07:00:15'),
('7514f4c5f49f5b1879969880da', '{\"api_id\":\"2\"}', '2023-01-09 21:12:34'),
('7616631415484df78784821152', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('76286ad438f75351da7f81bba1', 'false', '2023-03-22 07:00:21'),
('76fa4598a8fc688d54813d731b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('77ca6516c27c76c00e4b47f5f8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:52:53'),
('77f4d62a0014f5c0b138f71943', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 16:41:20'),
('78df09dc55f683de824f04c7ec', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('792ea1c228cb49da772ea72745', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-10 05:28:30'),
('7998fcd17f0449d48c309fab96', '{\"api_id\":\"2\"}', '2023-01-09 10:17:12'),
('79d8f0e22b35bdae6d45219ca2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:27'),
('79f3f9bb92c0efba9e2530db1a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('7a448e139c6fce5c90761e92bd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-12 22:03:52'),
('7b34404c9c1ed9da5e66e6b4fa', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('7b5b08a122df190def74a49ff6', '{\"api_id\":\"2\"}', '2023-01-09 20:41:30'),
('7b8abe135a8fed3dfb904b9cf7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:46:38'),
('7bcf384eb973a1a9806062dcd8', '{\"user_id\":\"1\",\"user_token\":\"zdK05M1AZSLSUDw6i2tmt2Kk3PnVV9H2\",\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-01-13 09:25:48'),
('7c74f7d3a7a4871cda40316e21', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('7c9f30084030e880df312d0b72', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('7d36e017ca88c596aab8d9a98a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-21 13:54:10'),
('7d49dbd45e94bf229130f835a1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('7d657cc98d9c23de0ef2866a00', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('7df7e646dfc07e652045d81671', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:20:23'),
('7e1df8267f7bf390b8338fb052', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:49:18'),
('7e67d72fa2b3285ab45382bde1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:48:19'),
('7ea7e8bd4b1ea95f7676b8948d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:53:23'),
('7ec43f1d446739f578e23d9173', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-25 11:12:17'),
('8119540eef6b2a925df2cf7c9e', '{\"user_id\":\"1\",\"user_token\":\"GfrJ2KuWtoTozKJq9bTpINMgkuPYPugo\"}', '2023-02-22 07:32:14'),
('81d5022cc2fad5292d0444c014', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('82ee33be4540742fb17a9aef1a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('83a2c50f2dab5f77403c82a54c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 12:20:26'),
('84975dbfa6e9990f25d02fff38', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:38'),
('8577a4116e2f58f64aa8dcdef8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-01-12 22:08:03'),
('85b14431dd3e00a46ff6b20751', 'false', '2023-03-22 06:59:57'),
('85b7a61829044ffcc912de232e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-22 12:40:17'),
('864fc1b6e1d6efb6ff2a48d519', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-01 16:49:06'),
('8760afc6a1726d60553e2ebf17', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('879a48be8db9b0f51dfc75af38', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('886c063808d5635544bbcdf38f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:51'),
('886ff6b0ef48daf2863ac4b9bf', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('8886e89724afb725187b0f9601', 'false', '2023-02-05 16:43:25'),
('8a04f9a89710811054e4e4c82c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:44:30'),
('8bae6802902c0984c09bec14f2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('8bf5332ffca7c832dd5c64c9a7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:30:29'),
('8cc097872c7d123f406e597989', 'false', '2023-03-14 19:59:49'),
('8e19ace5435c834292f02f1708', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-20 00:09:40'),
('8e1be1dcd4df43eaadc415594c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:52:53'),
('8e69bfb64906ac689e2cce6856', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('8e941eb10ac514e94c8523c06e', 'false', '2023-02-22 13:41:13'),
('8ee3a96f43363161bf4b4d8740', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('8f60e3bd8c9231a04277600b3f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-21 05:10:42'),
('8fc7435ab13a428840b2711f88', '{\"api_id\":\"2\"}', '2023-01-09 21:09:44'),
('9012760fe17d0fd29b693f4f02', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 15:19:45'),
('9054f50c2ff6120fdd5e1427c4', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('90556cf4cbd50599e1318cb114', 'false', '2023-02-16 08:51:39'),
('90cd9d3e28a49a5a2bec9151dd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('9120630c8be63e389b46a39e4e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('91b2e6c2ec4bb57171f5da846a', 'false', '2023-03-17 08:30:53'),
('9231d8e543e43c2cddd807b9f6', '{\"api_id\":\"2\"}', '2023-01-09 21:01:54'),
('92528aae744aabff1926bc802b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 10:54:04'),
('92f6699736ea399b4c0aeaac2d', 'false', '2023-03-17 08:30:41'),
('932655863456fbde7f2fab2c8d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 08:01:11'),
('93eb4bed86a0b3956621df9fb3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:52'),
('942e1fb9a152fc622697c5ccc1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('9569e7e60ea815000ae8aacafd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 14:29:42'),
('956d4ef7d0747f17cdd5c739b9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 11:32:13'),
('956dc4154b4d93d0293721ce2b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('957809fc785582986f796c2a83', '{\"language\":\"en-gb\",\"currency\":\"RUB\"}', '2017-11-11 13:05:32'),
('95b5632f844dc719352a0d8ca3', '{\"api_id\":\"2\"}', '2023-01-13 09:25:46'),
('971e1a5d44ed36a83f8c408360', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:48:17');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('9799eb5daba497bac3955a45a6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"},\"order_id\":205}', '2023-01-13 14:30:11'),
('98c782eb154c8535660674bd73', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('990e6a4c600c282ff0d2fdd798', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 19:25:46'),
('9953547c7e15ed4f9ae6750d3b', 'false', '2023-02-22 07:31:48'),
('99af2077efc023480b2080c84a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('9b585cff13b259d72746444bab', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-14 06:54:04'),
('9cd14c2d996658f3ce40f811d7', 'false', '2023-01-16 11:11:38'),
('9d483a086cd01aaded5154838d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-13 12:46:33'),
('9e28d223e7386487cbcedef02c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('9f232856d365d18f40b3a880b7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('a066d76e6ca65a218195aa9448', '{\"user_id\":\"1\",\"user_token\":\"DP0GkTw1WJ18HYDmhGWQa3Jfb7BSYhph\"}', '2023-02-16 08:51:45'),
('a0f692f9f863aa6be44294aabc', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('a120c8706fef51a793a56271d6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"},\"order_id\":209}', '2023-01-18 12:32:53'),
('a1957d8182091811895c0c779e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"user_id\":\"1\",\"user_token\":\"QfkUyoE9sClQ4sFE3ArFgwZOiuq1tUsx\",\"order_id\":30}', '2023-01-05 22:05:18'),
('a243835099e2f80e6cd506b59b', 'false', '2023-03-22 06:59:47'),
('a2c348b4931d3d5b65a481c120', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:48'),
('a32033785b55787e2193ad1016', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-10 06:34:32'),
('a41275809aae8ee1f96a71c103', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-22 12:40:14'),
('a4484f8c0365341835e097600a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"},\"order_id\":230}', '2023-01-18 12:52:55'),
('a4ef85254dccc6513d0ce23ccb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 12:04:59'),
('a5576c8aefbcaae8a50b17f1d8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:51'),
('a58546ad99bffbc2eaa27dc8aa', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('a6589afea5ef47b47575bd9c22', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('a69560efbb1c768deb8afee85e', '{\"api_id\":\"2\"}', '2023-01-13 09:18:56'),
('a7aeab4bd9fbd9d13275bd00c1', '{\"user_id\":\"1\",\"user_token\":\"k0yMolbM1QMlKHrwTTr0j56BnbonbObr\",\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-22 13:24:14'),
('a8769c963c785d1892797662b9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('a89ea5a7135f4d68c38430d252', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 11:20:13'),
('a8ba139192c5d31a63234b1b4b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('ac5a33ed3340ad023d54b357aa', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('ad9967b54779bebaf661f9a4f5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:45'),
('add8039fc17b38b7f32792b95a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 16:26:21'),
('ae4b788e505e0a9acf9159dcf3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('ae96f966c65ffcd9ceabec3529', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('aed62d1aab9dc9777c09501a90', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"RZpUmRLf41PBF9ZWH0hyh66KBlD65DGj\",\"d_blog_module_debug\":0,\"order_id\":45,\"shipping_methods\":{\"flat\":{\"title\":\"\\u0424\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437 \\u0438\\u0437 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-06 07:36:19'),
('afa43bb960f22c6ba500ceeec2', '{\"user_id\":\"1\",\"user_token\":\"PNPYn5Rd29K0lSyWRPUWnCfrw0XBr0kG\"}', '2023-02-16 08:52:26'),
('b1b450befa854c6afa62cca6b0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('b2191bec57cfbee29ce1c0a03f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"drwPcc8U8lx2fZVmusTORhd1twB3l13j\",\"d_blog_module_debug\":0,\"order_id\":163,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-09 21:38:27'),
('b2a95a12c7f85d07ec7acbf0fb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('b2f0b535ebef5515e85d314492', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-21 13:42:17'),
('b34157664b9c5816f80c9ff024', 'false', '2023-03-14 19:59:54'),
('b39523a6d9c57f7bcf2d61ad0d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('b3aed6ca4fe00d90aa4be742c7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('b46c012d1f36164e4b48d7f82f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 10:55:13'),
('b4aaf422aea0b6fe6604647575', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('b4b660c755cbb2ba12d82d10cb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"DyQSrax7NBtZ8clkMxnLGj8Jprb8DucW\",\"install\":\"ozo9DxDMRk\",\"d_blog_module_debug\":0}', '2022-12-28 22:38:34'),
('b4e14191f41ec7ca80859b2122', '{\"api_id\":\"2\"}', '2023-01-13 09:18:59'),
('b5f21b17c3fcfb0e3291035cf0', '{\"api_id\":\"2\"}', '2023-01-13 09:25:48'),
('b61f678eb9305c6e65735ca2d5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 16:54:02'),
('b63f375d9d244491e3a4527e46', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('b6f94c39e03fd9ce0c62219f64', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('b72a0dab7df7f3b18d92150e68', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:25'),
('b7a0e00c8e70f37b61e6609d96', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-02-10 09:34:04'),
('b933160116f76eda1aab529856', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:42'),
('ba0dabcb835ef39b94d0fdb871', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 10:54:02'),
('ba3443f6e4bf2b43cdf658c38a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('ba6f3e891f0fa69f168261a711', 'false', '2023-03-17 08:30:48'),
('baa00e1ff10f2478c93d06d523', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('bb435bb21cf8d23e5ccce6bcc9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('bc46d40d9b3dbcd8eba91a488f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"qKpKFHmI8r07E7rg4VVANyecPh97VdUI\"}', '2023-01-17 13:57:47'),
('bcb360188ec5e3b0bc18ee055c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('bcedb3abe34ae3d4f4d613ac0f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('bdbba8c006e070a9e0765039dd', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:53:29'),
('bfd46a4179de3c514a961394a3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('c043f10de1485850f19a38aa05', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 13:57:52'),
('c105c9e3db9c87843807e11960', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:44:25'),
('c11f17bc08aa41e2a610271dd2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('c14753d8cdaa06b89c03e760b8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('c2a2f04dda3f2b0651db57c0a6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"order_id\":208,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-13 14:33:03'),
('c319eab6d80b997697594a6d1d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('c34fdcce81ec8299967c45f0fe', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('c353fd3f4f164029978741ed31', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:16'),
('c46766c23fbdd8fea3a49f28b0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('c46b52787b35a3aee919ce81c3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('c4767e9506e4f990974167c8ec', 'false', '2023-02-22 07:31:40'),
('c47b3075afd15d9e3a4e453ba1', '{\"api_id\":\"2\"}', '2023-01-09 20:43:09'),
('c47fdd56f6eb86e86f07c42512', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 09:13:56'),
('c54d7f7a54b64d6a07a292defe', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 12:20:30'),
('c582058f325d1fb0b03a2f1d6d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('c715df3084fdf4e7b6ede5cb98', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:04'),
('c71a7ff550a190e956bdc6eaff', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:55'),
('c7579f1c9832b240a9ef506b0e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:33:57'),
('c9e40b09ed093d9c443684393a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('ca29e62b7b79431afeb9aa9315', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-31 12:42:53'),
('cb0e679c9bdba072d01439dd9b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('cb2575364498b25d01e55ac1b3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('cb58c6dc1ab546797336ac8ed5', '{\"user_id\":\"1\",\"user_token\":\"35UCsYpywNn6YyFJPifq7u0XX62faDso\"}', '2023-03-22 06:59:57'),
('cbf8bcee3c6a9b16f9f1ce2f75', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:54:13'),
('ccca07aad2a6822229cb41222c', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:24'),
('cccdd1a27bad6daba812167d9b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('ccea31f598f02a9c3c34f48a08', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 09:30:01'),
('ccebf33f4f2b3b5f06dbf03261', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('cd880bd3acda01c5a47a5b62b2', '{\"api_id\":\"2\"}', '2023-01-09 21:10:30'),
('ce293973e8c26516be128a95af', '{\"user_id\":\"1\",\"user_token\":\"e3cFmP1MeJqhZsUbF4gatjEK4vK5Igt1\"}', '2023-03-22 07:00:19'),
('ce30701ebad9e2a18aa2f2f04b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-14 13:22:16'),
('ce331d6ab722c92d6ef68cf634', '{\"api_id\":\"2\"}', '2023-01-13 09:20:58'),
('cf0713e35b65643cc8e8726799', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-09 12:43:01'),
('cf383b357ffa37379a5c88765f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-18 08:15:16'),
('cf3e1698f01babf13fac259dff', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('cf9108c7ee116c730e5f84b9c9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:46:40'),
('d05922d1ee2a51295acb849bcf', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('d153cb546f5eb466af778e2a76', '{\"user_id\":\"1\",\"user_token\":\"1Nj5w1LeP3a8DM4HLjitIVWmcbSVYm4g\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-17 08:33:02'),
('d2cd6a714a6fca73a354a3a25b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:54'),
('d404fe864accc071ab52dc31b0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:16'),
('d40a440fa3ff133666ce0cc97d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"5ckrqROpyIkniRWiBLpVLQeXXjPLUfvJ\"}', '2023-01-17 09:33:23'),
('d4557108eb8415b756734571cf', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:51'),
('d4949f71ec23d3aaf96d06b4ab', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:54'),
('d6017e6063068c76809aefb674', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('d646047fad315c63bc5d0171cc', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-04 20:18:30'),
('d6bc48f88fa7514d045e0c528a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('d6ef0997f92aa52d2c9f56a15e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('d733458c7d8f6c2bf4e4994944', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-14 13:40:48'),
('d79dfe521987adeef91e85a0be', '{\"api_id\":\"2\"}', '2023-01-09 20:42:25'),
('d8dc2815e8cf7ee93e962e2d2d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:53'),
('d9182b8f143a212e2cbc536608', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('d999a963ab88f2b573cbfad88d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:15:58'),
('d9c7f0784f75936bf5788c886f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-03-19 10:53:23'),
('da6217e31e6e491a3fcfd91728', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:54:06'),
('dab4676bdfb57f8b67c36baf27', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('dae8bffd2aff1edbf80b1f46ee', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 08:00:25'),
('dc5e3f05a12ff02ab74afd2894', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('dcbc1a8492e2393990a25daa5f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-30 04:00:19'),
('dcbcf967112b9e128eb9e98e57', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-21 03:14:05'),
('dd714541b40609b3f378385592', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-21 03:14:05'),
('de40b616ee468fc78f1a37d762', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:44:27'),
('deb830362de2cefe8afe0d23e7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:49:38'),
('df535d16d03f5e7a51cfa0514f', 'false', '2023-01-18 12:07:55'),
('e040fd0cf1a2ee41b1250658fb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:48:14'),
('e07def6ef12bf815735b1c0c1a', '{\"api_id\":\"2\"}', '2023-01-09 21:10:06'),
('e0ab794cb5873bc0662419405b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:46'),
('e12e0114044da6addcc071935e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:51:26'),
('e18ee7b53281fe7e86d65f833e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 12:05:25'),
('e1ba0bbac2be008e6d9f2357b8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-25 22:11:36'),
('e1c38cbf570390ccd786f7b627', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:46'),
('e24e58a4666bb7123c15586b93', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-26 10:08:03'),
('e2b0afbce10104ddb4cd3c8ea6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"},\"order_id\":232}', '2023-01-23 06:58:14'),
('e2fa523667c526021bc9e96b13', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:51'),
('e449d9d7704e4f88a616a67dd1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-18 11:11:45'),
('e4ddf0d61f1cf9e5c2977dc4cc', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('e66a554fefc4f5dafb0ef7aed1', '{\"user_id\":\"1\",\"user_token\":\"pg7Hdou7tMOG246KIOvMlUyO72RANQIH\"}', '2023-03-22 07:00:06'),
('e70400a5d5cd56f98bfa7af6df', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('e78e92c0eed2e7f2d9c1304f96', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('e80b8c28228b2b26048cab7b19', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:49:28'),
('e82ad74bd91bebc171ff602fc6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:46:33'),
('e82d1efad2789a1d77b7dd950a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 06:54:11'),
('e8661740c018ecaec84d3afa18', '{\"api_id\":\"2\"}', '2023-01-13 09:20:55'),
('e996acc473c0c5c8426195bcb1', 'false', '2023-02-15 13:28:24'),
('ea2f18f9d68204183b4b0e10f6', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:52:54'),
('eacc0c5de37bff858da2311d13', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 08:00:09'),
('eae08d81c47174ce0fa0ddc36f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-10 07:23:02'),
('ec6b43b18a612f8082b3c5ec0a', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-09 12:21:48'),
('ecf1b7bc2b8a299286e39db9eb', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('ed15e2dc63d15af1df0efa718b', '{\"user_id\":\"1\",\"user_token\":\"YygtLbF9GvJcWxncx3xXowTKN6UjCeNB\"}', '2023-01-13 09:03:30'),
('edfdb4a7549709f710e9d35da1', '{\"user_id\":\"1\",\"user_token\":\"KLentASuc6PLq2nmpL9huwpVotIAyJjC\"}', '2023-03-14 20:37:00'),
('ee08efaca42eca15fca1967709', '{\"user_id\":\"1\",\"user_token\":\"IW21IJLOGVjI7pVmbmBNtAgiHmZxy6BL\",\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-12-19 21:31:25'),
('ee47a3b8ac0eeaa9a4033e6c48', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:42'),
('ee8c64af62f57d5a5dfb96f13c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0}', '2023-01-13 01:04:46'),
('ee9f3d558d2439382ca9db15f5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 09:28:57'),
('ef67d6650e047b14fb6b3872b1', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"UO9g9BtVLYN6JOZIleKjsaUunDV6WZKj\"}', '2023-01-17 09:05:47'),
('efc6613141c4879ee6711f7cf9', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":220}', '2023-01-17 06:05:41'),
('eff38b1e417b4e92627f272617', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 09:05:39'),
('f025e1852c1356a879201ac237', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('f10c4a58354812a3affa975635', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-02-15 13:27:41'),
('f1891e91aaf9717ba10e61c799', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('f22c67d04149ea4c4846433fe8', 'false', '2023-03-22 07:00:19'),
('f23769f1b070b7ad59cc188382', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('f2e9e3679b4cdb89a5335cf662', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:34:01'),
('f3206ba384265a08cb19405c37', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:04:46'),
('f341077f5367f36ca568667d4b', 'false', '2023-01-13 09:03:30'),
('f3bfec016dafa98516274865e7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:33:47'),
('f52e6a90680d23ce7cf4f2d340', '{\"user_id\":\"1\",\"user_token\":\"6stsXpgiEf5rCU5dPnwFvJSpRUdZRoFG\"}', '2023-02-22 07:31:53'),
('f5c94d43faf68c9db3cb7a345b', '{\"user_id\":\"1\",\"user_token\":\"FeYajGQbg2iessL9vflBH44pTfqVlcvD\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 08:41:09'),
('f6083b4a704c443f5d46095ea3', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"yV1YVZTBckobFrJCvGHMiAyrChRMA2UR\",\"d_blog_module_debug\":0,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"},\"order_id\":175}', '2023-01-12 21:50:38'),
('f6361827a3375c456fa925369f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-10 05:28:56'),
('f687229bb180e4fb6b26bf0fb0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-03 09:36:41'),
('f70e294f5ea9b7f9c1ffd118db', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:20'),
('f713effe7c20b17c18922c043d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":null}', '2023-03-19 10:53:23'),
('f788345559860dfe8834d25a09', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 01:05:34'),
('f7b860067f91313b54141d847d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('f7f9f887f216f869e0a3a63290', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('f83eedbc0cf0b7d20769f2a33e', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:30'),
('f87f89ad6c103ee1a515977f9b', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:21'),
('f880b4b4d578b4e9b46b2a6f1d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-14 19:59:37'),
('f8d19ddbe305858e57b5622faa', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('f92dc557db71423baa1fe59aa5', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-16 14:35:43'),
('f94c151fba7b7bb902ed69cfa7', '{\"user_id\":\"1\",\"user_token\":\"spS0GDXoHxmzzL2LuG2gXTiEg53VnXce\"}', '2023-01-16 14:36:18'),
('f98db0fa0f6c172f6bbe47106d', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 14:29:39'),
('fa244fb83873d3abe07772e7a0', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('fad85ed34a60b7b714df7f3751', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('fb6c3ed0d9d63f6a2bb94038c3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"b9PrSa64HNYo7yYq2zTheZ7O469xM1Jv\"}', '2017-11-11 12:59:21'),
('fbd9b7409fdda23fb3dcec7c0e', '{\"api_id\":\"2\"}', '2023-01-09 20:41:33'),
('fc5c105046165e7d12c0d220b2', '{\"api_id\":\"2\"}', '2023-01-13 09:22:14'),
('fcb43b401006e983d41c4c32f8', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:22'),
('fd26a09bbe0705e3297ed53122', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-17 13:58:01'),
('fda32d9b0f0d0a0a6f6d643a27', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-03-19 10:53:23'),
('fdc7b740640deb7840d63db5ed', 'false', '2023-02-22 07:31:44'),
('fe1fd2303150092b7380158ab1', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:27'),
('fe97377944e295d6e1412ea06c', '{\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-13 14:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(4770, 0, 'config', 'config_error_display', '1', 0),
(4698, 0, 'config', 'config_country_id', '20', 0),
(4699, 0, 'config', 'config_zone_id', '', 0),
(4700, 0, 'config', 'config_language', 'ru-ru', 0),
(4701, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(4702, 0, 'config', 'config_currency', 'BYN', 0),
(4703, 0, 'config', 'config_currency_auto', '1', 0),
(4704, 0, 'config', 'config_length_class_id', '1', 0),
(4705, 0, 'config', 'config_weight_class_id', '1', 0),
(4706, 0, 'config', 'config_product_count', '0', 0),
(4707, 0, 'config', 'config_limit_admin', '20', 0),
(4708, 0, 'config', 'config_review_status', '1', 0),
(2909, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(2908, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(2907, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(2887, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(2886, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(2885, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(2884, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(2188, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(643, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(383, 0, 'developer', 'developer_theme', '0', 0),
(4767, 0, 'config', 'config_file_max_size', '300000', 0),
(4768, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\ndocx', 0),
(4769, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\napplication/vnd.openxmlformats-officedocument.wordprocessingml.document\r\n&quot;application/vnd.openxmlformats-officedocument.wordprocessingml.document&quot;', 0),
(384, 0, 'developer', 'developer_sass', '1', 0),
(4759, 0, 'config', 'config_compression', '0', 0),
(4760, 0, 'config', 'config_endpoint', 'http://93.84.103.182/WebTest/ws/ExchangeWithSite?wsdl', 0),
(4761, 0, 'config', 'config_1clogin', 'Webconnect', 0),
(4762, 0, 'config', 'config_1cpassword', 'c0nnect', 0),
(4763, 0, 'config', 'config_secure', '0', 0),
(4764, 0, 'config', 'config_password', '1', 0),
(4765, 0, 'config', 'config_shared', '0', 0),
(4766, 0, 'config', 'config_encryption', 'hEiLgPirTWBJuHnkPL3oCVaJ8nfA5TwV8dL6c1smbJXQpFZbvyCRbgkskSe7S4Ks6Skwu8xYZMJHiGBcsihkm730JXHn8pfaqBOTHAqUrR65k1DqMxhIj4a51SA2KM3mVEuX74RbkSvYSA40HHeS42oO753iF4L3kf1BFif5IFU7jg1cmNOS37QCJSq7u0eByOpC3bwMGlQeq2ef8RLDcnlY1R2eHeOfutDDn7KdM1llwfMbckbg6vc8U33H6obiD7lgIjbMDqYD0iJOLzhqrQZqqQeRdaGbg7lAf3HJGSvNKduCNW5o3DXKDNfn9t87jEgmBkQTvyLxwbxcDPVo6bRJcyxIoBkzmPozKVR3ForzpwEmW0AjAYvw0vKb89hEkNQtBpObcqM4KaHRe2O9U0BAWXRxX9DgUpwUpjA2n3c0YnDy2fWyNo8ek49fgix5sza2bpQxbT6YazpJ3KuEytf2TOXn37vBRUWesKGrV71oW2nfeHZSjwwxuDW77IuaV2c2ivkqFFRchx5xyGFJOePDMlDUEo1hWxx6vjojhMoPWaYMU4Knd1LB1y5f96vt4WbWsIfO04J2BZeG2AYqmd5czHyp2VLyIsWXe17ohwamkTGG8L03Tabg9YFZr40X56uw4oJDw5lJ0HErznoyctps5jxREjPbV9fG52BLcPdp7yljByp3wzHoy8hPq0EXpN8ckBP6ncuJP9dXAViEfCJjjPjnfffIdQfKgyMJTSFGz9DBSTqRTlmhYw07p3LZ8iHhIjdqHtGCMu9PeqgpjjageuM5h4jHOdV5i8gKvrEfRO1r87JRK7Y8mNYmRrpAHhfgF525D5MafWZ0gDjHMNQBlrvCDGOSaN4qnlQBxq1uDwOEWzDRexVVnWVklRpxeDhP6Qq8zhTVsNYdD8Dw3snql1tntJ6WcmxkJivpHHP8HJGtqHSvIlSC0hWd2zymV7aAUlT0vMYoCek2rIeRU2TOq4i9zgjrhfwE58C7Ds8EgOcVpBm2hzsBjN8td4sQ', 0),
(4758, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4757, 0, 'config', 'config_seo_url', '0', 0),
(4755, 0, 'config', 'config_mail_alert_email', '', 0),
(4756, 0, 'config', 'config_maintenance', '0', 0),
(4753, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(4754, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(4752, 0, 'config', 'config_mail_smtp_port', '25', 0),
(4751, 0, 'config', 'config_mail_smtp_password', '', 0),
(4750, 0, 'config', 'config_mail_smtp_username', '', 0),
(4749, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(4748, 0, 'config', 'config_mail_parameter', '', 0),
(4747, 0, 'config', 'config_mail_engine', 'mail', 0),
(4746, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(4745, 0, 'config', 'config_logo', 'catalog/f_91757739ec412508.png', 0),
(4744, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(4743, 0, 'config', 'config_captcha', '', 0),
(4742, 0, 'config', 'config_return_status_id', '2', 0),
(4741, 0, 'config', 'config_return_id', '0', 0),
(4740, 0, 'config', 'config_affiliate_id', '5', 0),
(4739, 0, 'config', 'config_affiliate_commission', '0', 0),
(4738, 0, 'config', 'config_affiliate_auto', '0', 0),
(4737, 0, 'config', 'config_affiliate_approval', '0', 0),
(4736, 0, 'config', 'config_affiliate_group_id', '1', 0),
(4735, 0, 'config', 'config_stock_checkout', '0', 0),
(4729, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(4730, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(4731, 0, 'config', 'config_fraud_status_id', '7', 0),
(4732, 0, 'config', 'config_api_id', '2', 0),
(4733, 0, 'config', 'config_stock_display', '0', 0),
(4734, 0, 'config', 'config_stock_warning', '0', 0),
(3700, 0, 'module_d_blog_module', 'module_d_blog_module_status', '1', 0),
(3701, 0, 'module_d_blog_module', 'module_d_blog_module_setting', '{\"category\":{\"main_category_id\":\"0\",\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"7\",\"image_display\":\"0\",\"image_width\":\"1200\",\"image_height\":\"750\",\"sub_category_display\":\"0\",\"sub_category_col\":\"6\",\"sub_category_image\":\"0\",\"sub_category_post_count\":\"0\",\"sub_category_image_width\":\"120\",\"sub_category_image_height\":\"75\",\"limited_post_display\":\"0\",\"main_post_display\":\"0\"},\"post\":{\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"750\",\"popup_display\":\"0\",\"popup_width\":\"1400\",\"popup_height\":\"875\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y           \"},\"review_display\":\"0\",\"rating_display\":\"0\",\"tag_display\":\"0\",\"category_label_display\":\"0\",\"short_description_length\":\"150\",\"style_short_description_display\":\"0\",\"nav_display\":\"0\",\"nav_same_category\":\"0\"},\"post_thumb\":{\"image_width\":\"1200\",\"image_height\":\"750\",\"title_length\":\"100\",\"short_description_length\":\"300\",\"description_length\":\"300\",\"category_label_display\":\"0\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y             \"},\"rating_display\":\"0\",\"description_display\":\"1\",\"tag_display\":\"0\",\"views_display\":\"0\",\"review_display\":\"0\",\"read_more_display\":\"1\",\"animate\":\"fadeIn\"},\"review\":{\"guest\":\"0\",\"social_login\":\"0\",\"page_limit\":\"5\",\"rating_display\":\"0\",\"customer_display\":\"0\",\"moderate\":\"0\",\"image_user_display\":\"0\",\"image_limit\":\"5\",\"image_upload_width\":\"500\",\"image_upload_height\":\"500\"},\"review_thumb\":{\"image_width\":\"70\",\"image_height\":\"70\",\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":\"0\",\"image_display\":\"0\",\"rating_display\":\"0\",\"image_user_display\":\"0\",\"image_user_width\":\"70\",\"image_user_height\":\"70\"},\"author\":{\"layout_type\":\"grid\",\"layout\":[\"2\"],\"post_page_limit\":\"7\",\"image_width\":\"400\",\"image_height\":\"400\",\"category_display\":\"1\",\"category_col\":\"6\",\"category_image\":\"1\",\"category_post_count\":\"1\",\"category_image_width\":\"120\",\"category_image_height\":\"75\"},\"theme\":\"default\",\"admin_style\":\"light\",\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(3702, 0, 'd_blog_module', 'd_blog_module_status', '1', 0),
(3703, 0, 'd_blog_module', 'd_blog_module_setting', '{\"category\":{\"main_category_id\":\"0\",\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"7\",\"image_display\":\"0\",\"image_width\":\"1200\",\"image_height\":\"750\",\"sub_category_display\":\"0\",\"sub_category_col\":\"6\",\"sub_category_image\":\"0\",\"sub_category_post_count\":\"0\",\"sub_category_image_width\":\"120\",\"sub_category_image_height\":\"75\",\"limited_post_display\":\"0\",\"main_post_display\":\"0\"},\"post\":{\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"750\",\"popup_display\":\"0\",\"popup_width\":\"1400\",\"popup_height\":\"875\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y           \"},\"review_display\":\"0\",\"rating_display\":\"0\",\"tag_display\":\"0\",\"category_label_display\":\"0\",\"short_description_length\":\"150\",\"style_short_description_display\":\"0\",\"nav_display\":\"0\",\"nav_same_category\":\"0\"},\"post_thumb\":{\"image_width\":\"1200\",\"image_height\":\"750\",\"title_length\":\"100\",\"short_description_length\":\"300\",\"description_length\":\"300\",\"category_label_display\":\"0\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y             \"},\"rating_display\":\"0\",\"description_display\":\"1\",\"tag_display\":\"0\",\"views_display\":\"0\",\"review_display\":\"0\",\"read_more_display\":\"1\",\"animate\":\"fadeIn\"},\"review\":{\"guest\":\"0\",\"social_login\":\"0\",\"page_limit\":\"5\",\"rating_display\":\"0\",\"customer_display\":\"0\",\"moderate\":\"0\",\"image_user_display\":\"0\",\"image_limit\":\"5\",\"image_upload_width\":\"500\",\"image_upload_height\":\"500\"},\"review_thumb\":{\"image_width\":\"70\",\"image_height\":\"70\",\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":\"0\",\"image_display\":\"0\",\"rating_display\":\"0\",\"image_user_display\":\"0\",\"image_user_width\":\"70\",\"image_user_height\":\"70\"},\"author\":{\"layout_type\":\"grid\",\"layout\":[\"2\"],\"post_page_limit\":\"7\",\"image_width\":\"400\",\"image_height\":\"400\",\"category_display\":\"1\",\"category_col\":\"6\",\"category_image\":\"1\",\"category_post_count\":\"1\",\"category_image_width\":\"120\",\"category_image_height\":\"75\"},\"theme\":\"default\",\"admin_style\":\"light\",\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(2906, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(2905, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(2883, 0, 'shipping_flat', 'shipping_flat_cost', '150', 0),
(2888, 0, 'shipping_flat', 'shipping_flat_comment', 'Расчет срока и доставки будет произведен после звонка менеджера', 0),
(2904, 0, 'shipping_pickup', 'shipping_pickup_comment', 'Вы можете самостоятельно забрать свой заказ по адресу: ул.Титова 138', 0),
(2901, 0, 'shipping_pickup', 'shipping_pickup_geo_zone_id', '0', 0),
(2903, 0, 'shipping_pickup', 'shipping_pickup_sort_order', '2', 0),
(2902, 0, 'shipping_pickup', 'shipping_pickup_status', '1', 0),
(4728, 0, 'config', 'config_order_status_id', '1', 0),
(4726, 0, 'config', 'config_checkout_guest', '1', 0),
(4727, 0, 'config', 'config_checkout_id', '5', 0),
(4725, 0, 'config', 'config_cart_weight', '0', 0),
(4724, 0, 'config', 'config_order_min', '50', 0),
(4723, 0, 'config', 'config_invoice_prefix', 'INV-2022-00', 0),
(4722, 0, 'config', 'config_account_id', '3', 0),
(4709, 0, 'config', 'config_review_guest', '1', 0),
(4710, 0, 'config', 'config_voucher_min', '1', 0),
(4711, 0, 'config', 'config_voucher_max', '1000', 0),
(4712, 0, 'config', 'config_tax', '0', 0),
(4713, 0, 'config', 'config_tax_default', 'shipping', 0),
(4714, 0, 'config', 'config_tax_customer', 'shipping', 0),
(4715, 0, 'config', 'config_customer_online', '0', 0),
(4716, 0, 'config', 'config_customer_activity', '0', 0),
(4717, 0, 'config', 'config_customer_search', '0', 0),
(4718, 0, 'config', 'config_customer_group_id', '1', 0),
(4719, 0, 'config', 'config_customer_group_display', '[\"1\",\"2\"]', 1),
(4720, 0, 'config', 'config_customer_price', '0', 0),
(4721, 0, 'config', 'config_login_attempts', '5', 0),
(4697, 0, 'config', 'config_comment', '&lt;b&gt;Сокращенное наименование:&lt;/b&gt; ООО «Зиптрейд»\r\n&lt;b&gt;Юридический адрес:&lt;/b&gt; 210021, г. Витебск, ул. Титова, д. 138\r\n&lt;b&gt;УНП:&lt;/b&gt; 391269668\r\n&lt;b&gt;Расчетный счет:&lt;/b&gt; BY74BLBB30120391269668001001\r\n&lt;b&gt;Наименование банка:&lt;/b&gt; ОАО &quot;Белинвестбанк&quot;\r\n&lt;b&gt;Код банка:&lt;/b&gt; BLBBBY2X\r\n&lt;b&gt;E-mail:&lt;/b&gt; info@ziptrade.by\r\n&lt;b&gt;Телефоны:&lt;/b&gt;	+ 375 (29) 5-109-109, +375 (212) 53-85-08 (факс)', 0),
(4696, 0, 'config', 'config_lunch', 'обед с 12.30 до 13.00', 0),
(4695, 0, 'config', 'config_open', 'пн-пт с 8.30 до 17.00', 0),
(4694, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(4691, 0, 'config', 'config_email', 'info@ziptrade.by', 0),
(4692, 0, 'config', 'config_telephone', '+375 (29) 5-109-109', 0),
(4693, 0, 'config', 'config_fax', '+375 (212) 53-85-08 (факс)', 0),
(4690, 0, 'config', 'config_geocode', '', 0),
(4689, 0, 'config', 'config_address', ' г. Витебск,  ул. Титова, д. 138', 0),
(4688, 0, 'config', 'config_owner', 'Зиптрейд', 0),
(4686, 0, 'config', 'config_layout_id', '4', 0),
(4687, 0, 'config', 'config_name', 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 0),
(4685, 0, 'config', 'config_theme', 'default', 0),
(4684, 0, 'config', 'config_meta_keyword', '', 0),
(4682, 0, 'config', 'config_meta_title', 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 0),
(4683, 0, 'config', 'config_meta_description', 'Продажа швейной фурнитуры от лучших производителей. Ткани, нити, молнии, ремни и многое другое. Для заказа звоните: +375 (29) 5-109-109', 0),
(4771, 0, 'config', 'config_error_log', '1', 0),
(4772, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '1280.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscribe`
--

CREATE TABLE `oc_subscribe` (
  `subscribe_id` int(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oc_subscribe`
--

INSERT INTO `oc_subscribe` (`subscribe_id`, `email`, `date_added`) VALUES
(1, 'edgarz@advansys.com', '2022-12-30 13:45:34'),
(2, '21', '2023-01-03 00:16:54'),
(3, 'hello@visorit.com', '2023-01-09 22:55:44'),
(4, 'lenana0508@gmail.com', '2023-01-16 11:30:20'),
(5, 'snab@ziptrade.by', '2023-01-16 11:30:39'),
(6, 'krucola.zip@gmail.com', '2023-01-16 12:00:10'),
(7, 'апаы', '2023-01-17 08:24:42'),
(8, 'lenana05', '2023-01-17 08:50:37'),
(9, 'прреп', '2023-01-17 10:59:17'),
(10, 'пппппп', '2023-01-17 10:59:32'),
(11, 'clients@veon-tech.ru', '2023-02-09 11:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '9b82c2df6197eaeb5f38ce33492ab1c4e4b7109d', 'poofhzqsy', 'John', 'Doe', 'admin@shop.local', '', '', '127.0.0.1', 1, '2022-12-19 22:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_blog_module\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/hutkigrosh\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/import\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_blog_module\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/hutkigrosh\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/import\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),
(10, 'Demonstration', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `min_order` int(50) DEFAULT NULL,
  `min_order_text` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `min_order`, `min_order_text`) VALUES
(342, 20, 'Другой город по РБ', 'MI', 1, 300, 'До бесплатной доставки'),
(343, 20, 'Витебск', 'VI', 1, 150, 'До бесплатной доставки ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  ADD PRIMARY KEY (`author_description_id`);

--
-- Indexes for table `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  ADD PRIMARY KEY (`author_group_id`);

--
-- Indexes for table `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  ADD PRIMARY KEY (`category_description_id`);

--
-- Indexes for table `oc_bm_category_path`
--
ALTER TABLE `oc_bm_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_bm_category_to_store`
--
ALTER TABLE `oc_bm_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  ADD PRIMARY KEY (`post_description_id`);

--
-- Indexes for table `oc_bm_post_related`
--
ALTER TABLE `oc_bm_post_related`
  ADD PRIMARY KEY (`post_id`,`post_related_id`);

--
-- Indexes for table `oc_bm_post_to_category`
--
ALTER TABLE `oc_bm_post_to_category`
  ADD PRIMARY KEY (`category_id`,`post_id`);

--
-- Indexes for table `oc_bm_post_to_product`
--
ALTER TABLE `oc_bm_post_to_product`
  ADD PRIMARY KEY (`product_id`,`post_id`);

--
-- Indexes for table `oc_bm_post_video`
--
ALTER TABLE `oc_bm_post_video`
  ADD PRIMARY KEY (`post_id`,`video`);

--
-- Indexes for table `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `oc_bm_review_to_image`
--
ALTER TABLE `oc_bm_review_to_image`
  ADD PRIMARY KEY (`review_id`,`image`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_d_validator`
--
ALTER TABLE `oc_d_validator`
  ADD PRIMARY KEY (`validator_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  MODIFY `author_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  MODIFY `author_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  MODIFY `category_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  MODIFY `post_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_d_validator`
--
ALTER TABLE `oc_d_validator`
  MODIFY `validator_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2395;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4773;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  MODIFY `subscribe_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
