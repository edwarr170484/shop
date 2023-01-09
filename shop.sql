-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 09 2023 г., 21:48
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
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
-- Структура таблицы `oc_api`
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
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'T1Z96wxD7gXyZlxXV4794dVh5LCSWaYOcEFuQT3wPiQW6leaAczSb93dyBDkpM7uNu01jvVwJN1RBIuvL9f98o2c0CUM0yVNVEJ5oOWefvhJGJn12DDUCD4Uku2O1qKtxke03QeietpT76k7mGlMs9lphkQ09hvtZpkRYAMcFOihRzrq64tfHltsPLeT36NcThYPOX2TRn4be4Xn9Vdp57ITB17ha6BSDC5WiHUMJYIcIzyhNdCmKZhPsZKXuNAK', 1, '2017-11-11 14:59:23', '2017-11-11 14:59:23'),
(2, 'Default', 'yIMyBMbT1RzasXinBb6rCyDreFP3glT399z8VmW53DeL1qAnq6Z2szTkNMCJGh0aAPhmcoYNnXJ2LJaxT4wqqytrgwqhKI7Ok9w79yVYjZrKcX75D6xF2dMYneEAEt0LZDOohIX1AzcJTNIEYptBk9sa4XFpRMaBXVRAnzjcZmzUSc8gk0V4gwzb10hCfWGxDoveCxhVifn3fp0IU061AgEHGNx62VSLf6ylqJrTG9nDAqRIDEeejMclAiomVto7', 1, '2022-12-19 22:24:47', '2022-12-19 22:24:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 2, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
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
-- Дамп данных таблицы `oc_api_session`
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
(27, 2, '7514f4c5f49f5b1879969880da', '127.0.0.1', '2023-01-09 23:48:34', '2023-01-09 23:48:34');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Main page banner', 1),
(9, 'Clients', 1),
(10, 'Сертификаты', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
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
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(127, 9, 2, 'Клиент 3', '', 'catalog/clients/8340ce4f2e8183bee98a60bd6a2d476f.png', 3),
(132, 6, 2, 'Качественная швейная фурнитура по доступным ценам', '/', 'catalog/main-banner.png', 1),
(126, 9, 2, 'Клиент 2', '', 'catalog/clients/8marta.jpg', 2),
(125, 9, 2, 'Клиент 1', '', 'catalog/clients/019.jpg', 1),
(121, 10, 2, 'Сертфикат1', '', 'catalog/site/Rectangle 310.png', 1),
(122, 10, 2, 'Сертфикат2', '', 'catalog/site/Rectangle 310.png', 2),
(123, 10, 2, 'Сертфикат3', '', 'catalog/site/Rectangle 310.png', 3),
(124, 10, 2, 'Сертфикат4', '', 'catalog/site/Rectangle 310.png', 4),
(128, 9, 2, 'Клиент 4', '', 'catalog/clients/kupalinka.png', 4),
(129, 9, 2, 'Клиент 5', '', 'catalog/clients/logo.png', 5),
(130, 9, 2, 'Клиент 6', '', 'catalog/clients/mf.png', 6),
(131, 9, 2, 'Клиент 7', '', 'catalog/clients/Без названия.png', 7),
(133, 6, 2, 'Качественная швейная фурнитура по доступным ценам', '', 'catalog/main-banner.png', 2),
(134, 6, 2, 'Качественная швейная фурнитура по доступным ценам', '', 'catalog/main-banner.png', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author`
--

CREATE TABLE `oc_bm_author` (
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_group_id` int(11) NOT NULL,
  `custom` int(1) DEFAULT 0,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author`
--

INSERT INTO `oc_bm_author` (`author_id`, `user_id`, `author_group_id`, `custom`, `setting`) VALUES
(1, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author_description`
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
-- Дамп данных таблицы `oc_bm_author_description`
--

INSERT INTO `oc_bm_author_description` (`author_id`, `language_id`, `name`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `author_description_id`) VALUES
(1, 2, 'Author', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', 'Author', '', '', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author_group`
--

CREATE TABLE `oc_bm_author_group` (
  `author_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author_group`
--

INSERT INTO `oc_bm_author_group` (`author_group_id`, `name`, `permission`) VALUES
(1, 'admin', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(2, 'editor', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(3, 'author', '[\"add_posts\",\"edit_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\"]'),
(4, 'moderator', '[\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\"]');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category`
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
-- Дамп данных таблицы `oc_bm_category`
--

INSERT INTO `oc_bm_category` (`category_id`, `parent_id`, `sort_order`, `image`, `status`, `limit_access_user`, `limit_users`, `limit_access_user_group`, `limit_user_groups`, `custom`, `setting`, `date_added`, `date_modified`) VALUES
(1, 0, 1, 'catalog/blog/news-svgrepo-com 1.png', 1, 0, '', 0, '', 0, '\"\"', '2016-04-09 11:28:15', '2023-01-05 12:11:25'),
(10, 0, 4, 'catalog/blog/refresh-svgrepo-com 1.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:11:54', '2023-01-05 12:11:54'),
(11, 0, 5, 'catalog/blog/search-svgrepo-com (10) 1.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:12:22', '2023-01-05 12:12:22'),
(8, 0, 2, 'catalog/blog/comment-svgrepo-com 1.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:10:33', '2023-01-05 12:10:33'),
(9, 0, 3, 'catalog/blog/Group 2.png', 1, 0, '', 0, '', 0, '\"\"', '2023-01-05 12:11:07', '2023-01-05 12:11:16');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_description`
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
-- Дамп данных таблицы `oc_bm_category_description`
--

INSERT INTO `oc_bm_category_description` (`category_description_id`, `category_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(19, 1, 2, 'Новости', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Новости', '', ''),
(16, 8, 2, 'Полезные советы', '', '', 'Полезные советы', '', ''),
(18, 9, 2, 'Обзор новинок', '', '', 'Обзор новинок', '', ''),
(20, 10, 2, 'Жизнь наизнанку', '', '', 'Жизнь наизнанку', '', ''),
(21, 11, 2, 'Активные вакансии', '', '', 'Активные вакансии', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_path`
--

CREATE TABLE `oc_bm_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_path`
--

INSERT INTO `oc_bm_category_path` (`category_id`, `path_id`, `level`) VALUES
(1, 1, 0),
(10, 10, 0),
(11, 11, 0),
(9, 9, 0),
(8, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_to_layout`
--

CREATE TABLE `oc_bm_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_to_layout`
--

INSERT INTO `oc_bm_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(10, 0, 0),
(9, 0, 0),
(11, 0, 0),
(8, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_to_store`
--

CREATE TABLE `oc_bm_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_to_store`
--

INSERT INTO `oc_bm_category_to_store` (`category_id`, `store_id`) VALUES
(1, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post`
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
-- Дамп данных таблицы `oc_bm_post`
--

INSERT INTO `oc_bm_post` (`post_id`, `user_id`, `image`, `image_title`, `image_alt`, `review_display`, `images_review`, `viewed`, `status`, `limit_access_user`, `limit_users`, `limit_access_user_group`, `limit_user_groups`, `custom`, `setting`, `date_added`, `date_published`, `date_modified`) VALUES
(1, 1, 'catalog/d_blog_module/post/Photo_blog_6.jpg', NULL, NULL, 0, 0, 186, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:00:05', '2016-04-24 00:00:00', '2016-04-27 19:09:25'),
(2, 1, 'catalog/d_blog_module/post/Photo_blog_3.jpg', NULL, NULL, 0, 0, 22, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:15:37', '2016-04-23 00:00:00', '2016-04-27 19:08:17'),
(3, 1, 'catalog/d_blog_module/post/Photo_blog_8.jpg', NULL, NULL, 0, 0, 15, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:24:30', '2016-04-23 00:00:00', '2016-04-27 19:10:06'),
(4, 1, 'catalog/d_blog_module/post/Photo_blog_2.jpg', NULL, NULL, 0, 0, 13, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:27:08', '2016-04-23 00:00:00', '2016-04-27 19:08:54'),
(5, 1, 'catalog/d_blog_module/post/Photo_blog_1.jpg', NULL, NULL, 0, 0, 57, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:32:03', '2016-04-26 00:00:00', '2016-04-27 19:08:33'),
(6, 1, 'catalog/d_blog_module/post/Photo_blog_4.jpg', NULL, NULL, 0, 0, 12, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:35:22', '2016-04-24 00:00:00', '2016-04-27 19:10:21'),
(7, 1, 'catalog/d_blog_module/post/Photo_blog_5.jpg', NULL, NULL, 0, 0, 15, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:37:01', '2016-04-12 00:00:00', '2016-04-27 19:09:17'),
(8, 1, 'catalog/d_blog_module/post/Photo_blog_10.jpg', NULL, NULL, 0, 0, 14, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:38:46', '2016-04-23 00:00:00', '2016-04-27 18:29:00'),
(9, 1, 'catalog/d_blog_module/post/Photo_blog_7.jpg', NULL, NULL, 0, 0, 126, 1, 0, NULL, 0, NULL, 0, '', '2016-04-13 11:40:51', '2016-04-22 00:00:00', '2016-04-27 19:09:53'),
(10, 1, 'catalog/d_blog_module/post/Photo_blog_9.jpg', NULL, NULL, 2, 2, 148, 1, 0, '', 0, '', 0, '', '2016-04-17 11:42:08', '2016-03-16 00:00:00', '2023-01-05 14:43:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_description`
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
-- Дамп данных таблицы `oc_bm_post_description`
--

INSERT INTO `oc_bm_post_description` (`post_description_id`, `post_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `tag`) VALUES
(130, 9, 2, 'Shopping day', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shopping day', '', '', 'vocation,look,summer'),
(140, 10, 2, 'Amazing day', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Amazing day', '', '', 'vocation,holiday,day off,look'),
(132, 2, 2, 'Big sale this summer', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Big sale this summer', '', 'big-sale-this-summer', 'look'),
(133, 1, 2, 'My latest adventure', 'Vivamus efficitur libero quis arcu gravida, porttitor fermentum sapien suscipit. Nullam mattis, felis ut vehicula malesuada, nulla velit maximus velit, imperdiet tempus felis urna consequat mauris. Fusce et sollicitudin felis. In pulvinar ante eu arcu placerat mattis. Nunc quis aliquet augue.', '		\r\n&lt;p&gt;The purpose of this HTML is to help determine what default settings are with CSS and to make sure that all possible HTML Elements are included in this HTML so as to not miss any possible Elements when designing a site.&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h1&gt;Heading 1&lt;/h1&gt;\r\n&lt;h2&gt;Heading 2&lt;/h2&gt;\r\n&lt;h3&gt;Heading 3&lt;/h3&gt;\r\n&lt;h4&gt;Heading 4&lt;/h4&gt;\r\n&lt;h5&gt;Heading 5&lt;/h5&gt;\r\n&lt;h6&gt;Heading 6&lt;/h6&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;paragraph&quot;&gt;Paragraph&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, &lt;a href=&quot;#&quot; title=&quot;test link&quot;&gt;test link&lt;/a&gt; adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, &lt;em&gt;emphasis&lt;/em&gt; consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.&lt;/p&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;list_types&quot;&gt;List Types&lt;/h2&gt;\r\n&lt;h3&gt;Definition List&lt;/h3&gt;\r\n&lt;dl&gt;\r\n&lt;dt&gt;Definition List Title&lt;/dt&gt;\r\n&lt;dd&gt;This is a definition list division.&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n&lt;h3&gt;Ordered List&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;List Item 1&lt;/li&gt;\r\n&lt;li&gt;List Item 2&lt;/li&gt;\r\n&lt;li&gt;List Item 3&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3&gt;Unordered List&lt;/h3&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;List Item 1&lt;/li&gt;\r\n&lt;li&gt;List Item 2&lt;/li&gt;\r\n&lt;li&gt;List Item 3&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;form_elements&quot;&gt;Forms&lt;/h2&gt;\r\n&lt;fieldset&gt;\r\n&lt;legend&gt;Legend&lt;/legend&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;&lt;h2&gt;Image&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://opencart.dreamvention.com/220/d_blog_module/image/cache/catalog/d_blog_module/post/Photo_blog_3-1400x875.jpg&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/fieldset&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;tables&quot;&gt;Tables&lt;/h2&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n&lt;tbody&gt;&lt;tr&gt;\r\n&lt;th&gt;Table Header 1&lt;/th&gt;\r\n&lt;th&gt;Table Header 2&lt;/th&gt;\r\n&lt;th&gt;Table Header 3&lt;/th&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr class=&quot;even&quot;&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr&gt;\r\n&lt;td&gt;Division 1&lt;/td&gt;\r\n&lt;td&gt;Division 2&lt;/td&gt;\r\n&lt;td&gt;Division 3&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;&lt;/table&gt;\r\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;hr&gt;\r\n&lt;h2 id=&quot;misc&quot;&gt;Misc Stuff – abbr, acronym, pre, code, sub, sup, etc.&lt;/h2&gt;\r\n&lt;p&gt;Lorem &lt;sup&gt;superscript&lt;/sup&gt; dolor &lt;sub&gt;subscript&lt;/sub&gt; amet, consectetuer adipiscing elit. Nullam dignissim convallis est. Quisque aliquam. &lt;cite&gt;cite&lt;/cite&gt;. Nunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Maecenas ornare tortor. Donec sed tellus eget sapien fringilla nonummy. &lt;acronym title=&quot;National Basketball Association&quot;&gt;NBA&lt;/acronym&gt; Mauris a ante. Suspendisse quam sem, consequat at, commodo vitae, feugiat in, nunc. Morbi imperdiet augue quis tellus.  &lt;abbr title=&quot;Avenue&quot;&gt;AVE&lt;/abbr&gt;&lt;/p&gt;\r\n&lt;pre&gt;&lt;p&gt;\r\nLorem ipsum dolor sit amet,\r\n consectetuer adipiscing elit.\r\n Nullam dignissim convallis est.\r\n Quisque aliquam. Donec faucibus. \r\nNunc iaculis suscipit dui. \r\nNam sit amet sem. \r\nAliquam libero nisi, imperdiet at,\r\n tincidunt nec, gravida vehicula,\r\n nisl. \r\nPraesent mattis, massa quis \r\nluctus fermentum, turpis mi \r\nvolutpat justo, eu volutpat \r\nenim diam eget metus. \r\nMaecenas ornare tortor. \r\nDonec sed tellus eget sapien\r\n fringilla nonummy. \r\n&lt;acronym title=&quot;National Basketball Association&quot;&gt;NBA&lt;/acronym&gt; \r\nMauris a ante. Suspendisse\r\n quam sem, consequat at, \r\ncommodo vitae, feugiat in, \r\nnunc. Morbi imperdiet augue\r\n quis tellus.  \r\n&lt;abbr title=&quot;Avenue&quot;&gt;AVE&lt;/abbr&gt;&lt;/p&gt;&lt;/pre&gt;\r\n&lt;blockquote&gt;&lt;p&gt;\r\n	“This stylesheet is going to help so freaking much.” &lt;br&gt;-Blockquote\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;p&gt;&lt;br&gt;\r\n&lt;!-- End of Sample Content --&gt;&lt;/p&gt;\r\n', 'My latest adventure', '', '', 'summer,sale,day off'),
(134, 5, 2, 'Fashion in city', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fashion in city', '', '', '	vocation,summer,day off'),
(135, 4, 2, 'Favorite look', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Favorite look', '', '', '	photo,day off,look'),
(136, 8, 2, 'Favorite photo', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Favorite photo', '', '', 'day off,vocation,look'),
(137, 7, 2, 'Fragments of life', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fragments of life', '', '', 'look,photo'),
(138, 6, 2, 'Photography', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Photography', '', '', 'shopping,dresses,look'),
(139, 3, 2, 'Spring mood', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Spring mood', '', '', '	vocation, dresses,summer');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_related`
--

CREATE TABLE `oc_bm_post_related` (
  `post_id` int(11) NOT NULL,
  `post_related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_related`
--

INSERT INTO `oc_bm_post_related` (`post_id`, `post_related_id`) VALUES
(1, 3),
(1, 7),
(1, 10),
(2, 7),
(2, 9),
(3, 1),
(3, 10),
(4, 5),
(4, 7),
(5, 3),
(5, 8),
(6, 2),
(6, 9),
(6, 10),
(7, 1),
(7, 4),
(8, 4),
(8, 5),
(8, 6),
(9, 4),
(9, 5),
(9, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_category`
--

CREATE TABLE `oc_bm_post_to_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_category`
--

INSERT INTO `oc_bm_post_to_category` (`post_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_layout`
--

CREATE TABLE `oc_bm_post_to_layout` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_layout`
--

INSERT INTO `oc_bm_post_to_layout` (`post_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_product`
--

CREATE TABLE `oc_bm_post_to_product` (
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_product`
--

INSERT INTO `oc_bm_post_to_product` (`post_id`, `product_id`) VALUES
(3, 28),
(5, 28),
(7, 28),
(8, 28),
(1, 30),
(2, 30),
(4, 30),
(6, 30),
(1, 41),
(2, 41),
(3, 41),
(4, 41),
(6, 41),
(7, 41),
(9, 41),
(8, 42),
(9, 42),
(5, 47),
(6, 47),
(7, 47);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_store`
--

CREATE TABLE `oc_bm_post_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_store`
--

INSERT INTO `oc_bm_post_to_store` (`post_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_video`
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
-- Структура таблицы `oc_bm_review`
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

--
-- Дамп данных таблицы `oc_bm_review`
--

INSERT INTO `oc_bm_review` (`review_id`, `post_id`, `reply_to_review_id`, `language_id`, `customer_id`, `guest_email`, `image`, `author`, `description`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-14 14:40:46', '2016-04-27 23:02:07'),
(2, 1, 1, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-22 09:08:10', '2016-04-27 23:02:03'),
(3, 1, 0, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-22 09:08:42', '2016-04-27 23:01:59'),
(4, 10, 0, 0, 0, '', '', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 4, 1, '2016-04-24 22:37:11', '2016-04-27 23:01:34'),
(5, 10, 4, 0, 0, '', 'catalog/logo.png', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-24 23:34:22', '2016-04-27 23:01:39'),
(6, 9, 0, 0, 0, '', 'catalog/logo.png', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 4, 1, '2016-04-27 01:04:57', '2016-04-27 23:01:43'),
(7, 10, 5, 0, 0, '', 'catalog/logo.png', 'admin', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea', 5, 1, '2016-04-27 02:38:21', '2016-04-27 23:01:48'),
(8, 10, 0, 0, 0, '', '', 'Antony', 'Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. Selfies iPhone Kickstarter, drinking vinegar jean shorts fixie consequat flexitarian four loko.', 4, 1, '2016-04-27 02:48:57', '2016-04-27 23:01:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_review_to_image`
--

CREATE TABLE `oc_bm_review_to_image` (
  `review_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
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

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(24, 0, 0, 'b2191bec57cfbee29ce1c0a03f', 41, 0, '[]', 1, '2023-01-09 23:34:57');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
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
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(33, 1, 'Cameras', '', 'Cameras', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(17, 1, 'Software', '', 'Software', '', ''),
(25, 1, 'Components', '', 'Components', '', ''),
(24, 1, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(37, 1, 'test 5', '', 'test 5', '', ''),
(38, 1, 'test 4', '', 'test 4', '', ''),
(39, 1, 'test 6', '', 'test 6', '', ''),
(40, 1, 'test 7', '', 'test 7', '', ''),
(41, 1, 'test 8', '', 'test 8', '', ''),
(42, 1, 'test 9', '', 'test 9', '', ''),
(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(56, 1, 'test 24', '', 'test 24', '', ''),
(57, 1, 'Tablets', '', 'Tablets', '', ''),
(28, 2, 'Monitors', '', 'Monitors', '', ''),
(33, 2, 'Cameras', '', 'Cameras', '', ''),
(32, 2, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 2, 'Scanners', '', 'Scanners', '', ''),
(30, 2, 'Printers', '', 'Printers', '', ''),
(29, 2, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 2, 'Mac', '', 'Mac', '', ''),
(26, 2, 'PC', '', 'PC', '', ''),
(17, 2, 'Software', '', 'Software', '', ''),
(25, 2, 'Components', '', 'Components', '', ''),
(24, 2, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(20, 2, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(37, 2, 'test 5', '', 'test 5', '', ''),
(38, 2, 'test 4', '', 'test 4', '', ''),
(39, 2, 'test 6', '', 'test 6', '', ''),
(40, 2, 'test 7', '', 'test 7', '', ''),
(41, 2, 'test 8', '', 'test 8', '', ''),
(42, 2, 'test 9', '', 'test 9', '', ''),
(34, 2, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 2, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(45, 2, 'Windows', '', 'Windows', '', ''),
(46, 2, 'Macs', '', 'Macs', '', ''),
(56, 2, 'test 24', '', 'test 24', '', ''),
(57, 2, 'Tablets', '', 'Tablets', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
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
(42, 34, 0),
(42, 42, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
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
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(45, 0),
(46, 0),
(56, 0),
(57, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
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
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
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
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
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
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
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
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Рубль', 'BYN', '', ' BYN', '0', 1.00000000, 1, '2023-01-09 08:16:33');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
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
-- Структура таблицы `oc_customer_activity`
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
-- Структура таблицы `oc_customer_affiliate`
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
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Физические лица', 'Физические лица'),
(2, 2, 'Юридические лица', 'Юридические лица');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
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
-- Структура таблицы `oc_customer_online`
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
-- Структура таблицы `oc_customer_reward`
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
-- Структура таблицы `oc_customer_search`
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
-- Структура таблицы `oc_customer_transaction`
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
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
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
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_download`
--

INSERT INTO `oc_download` (`download_id`, `filename`, `mask`, `date_added`) VALUES
(1, 'dog.pdf.IN7WrUQVCkNZjG8QcMxb7xk98nD16ltN', 'dog.pdf', '2023-01-09 22:04:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_download_description`
--

INSERT INTO `oc_download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 2, 'Договор присоединения');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_d_validator`
--

CREATE TABLE `oc_d_validator` (
  `validator_id` int(11) NOT NULL,
  `codename` varchar(191) NOT NULL,
  `date_show` datetime NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
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
-- Дамп данных таблицы `oc_event`
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
(200, 'd_blog_module', 'catalog/view/common/menu/before', 'extension/event/d_blog_module/view_common_menu_before', 1, 0),
(201, 'd_blog_module', 'catalog/model/extension/module/d_visual_designer/getOptions/after', 'extension/event/d_blog_module/controller_after_d_visual_designer_menu', 1, 0),
(202, 'd_blog_module', 'admin/model/localisation/language/addLanguage/after', 'extension/event/d_blog_module/model_localisation_language_addLanguage_after', 1, 0),
(203, 'd_blog_module', 'admin/model/localisation/language/deleteLanguage/after', 'extension/event/d_blog_module/model_localisation_language_deleteLanguage_after', 1, 0),
(204, 'd_blog_module', 'catalog/model/design/layout/getLayout/after', 'extension/event/d_blog_module/model_design_layout_getLayout_after', 1, 0),
(199, 'd_blog_module', 'catalog/view/common/header/before', 'extension/event/d_blog_module/view_common_header_before', 1, 0),
(198, 'd_blog_module', 'admin/view/setting/setting/before', 'extension/event/d_blog_module/view_setting_setting_captcha_before', 1, 0),
(197, 'd_blog_module', 'admin/view/common/column_left/before', 'extension/event/d_blog_module/view_common_column_left_before', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
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
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'dblogmodulecompiledoc3v3.1.8.ocmod.zip', '2022-12-26 22:37:48'),
(2, 0, 'cmsgate-opencart-hutkigrosh.ocmod.zip', '2022-12-26 22:56:56'),
(3, 0, 'sendpulse.ocmod.zip', '2022-12-30 14:44:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
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
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 0, 3, 1),
(5, 0, 4, 1),
(6, 1, 2, 1),
(7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
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
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 2, 'Условия пользовательского соглашения', '&lt;p&gt;\r\n	Условия пользовательского соглашения&lt;/p&gt;\r\n', 'Условия пользовательского соглашения', '', ''),
(6, 2, 'Доставка и оплата', '&lt;div class=&quot;delivery-info&quot;&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Наши базовые условия&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery1.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Минимальная сумма заказа – 50 бел. руб.&lt;/li&gt;\r\n                &lt;li&gt;При заказе от 300 бел. руб доставляем бесплатно по всей РБ на следующий рабочий день, если подтвердите до 12:00&lt;/li&gt;\r\n                &lt;li&gt;При заказе от 150 бел. руб. доставим бесплатно в Витебск по вторникам и четвергам.&lt;/li&gt;\r\n                &lt;li&gt;Утеплители и объемный товар бесплатно не доставляем.&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Уникальные условия для постоянных клиентов:&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery2.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Рассрочка на швейное оборудование до 6 мес.&lt;/li&gt;\r\n                &lt;li&gt;Наши постоянные клиенты первыми узнают о скидках и акциях&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Пользуемся следующими средставами доставки:&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery3.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Автолайтэкспресс – быстрая доставка в любой населенный пункт Республики Беларусь.&lt;/li&gt;\r\n                &lt;li&gt;DPD – транспортная компания.&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-block&quot;&gt;\r\n          &lt;div class=&quot;delivery-header&quot;&gt;\r\n            &lt;h2&gt;Способы оплаты:&lt;/h2&gt;\r\n          &lt;/div&gt;\r\n          &lt;div class=&quot;delivery-inner&quot;&gt;\r\n            &lt;div class=&quot;delivery-image&quot;&gt;\r\n              &lt;div class=&quot;delivery-icon&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/delivery/delivery4.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;\r\n              &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;delivery-description&quot;&gt;\r\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\r\n                &lt;li&gt;Расчетный счет&lt;/li&gt;\r\n                &lt;li&gt;ЕРИП&lt;/li&gt;\r\n              &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n          &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;delivery-button&quot;&gt;\r\n          &lt;button class=&quot;btn btn-primary&quot; type=&quot;button&quot; data-bs-toggle=&quot;modal&quot; data-bs-target=&quot;#delivery-data&quot;&gt;\r\n            &lt;svg width=&quot;35&quot; height=&quot;35&quot; viewBox=&quot;0 0 35 35&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot;&gt;\r\n              &lt;path d=&quot;M27.8406 1.59093H27.0452C26.6053 1.59093 26.2497 1.94729 26.2497 2.38636C26.2497 2.82543 26.6053 3.18179 27.0452 3.18179H27.8406C28.2797 3.18179 28.636 3.53896 28.636 3.97722V26.25C28.636 26.6883 28.2797 27.0454 27.8406 27.0454H7.15875C6.71968 27.0454 6.36332 26.6883 6.36332 26.25V3.97729C6.36332 3.53896 6.71968 3.18186 7.15875 3.18186H10.3405V4.19843C9.86722 4.47446 9.54511 4.98196 9.54511 5.56821C9.54511 6.44561 10.2586 7.15914 11.136 7.15914C12.0134 7.15914 12.727 6.44561 12.727 5.56821C12.727 4.98196 12.4048 4.47446 11.9315 4.19843V0.795498C11.9315 0.356357 11.5759 0 11.136 0C10.6961 0 10.3406 0.356357 10.3406 0.79543V1.59086H7.15882C5.84311 1.59086 4.77246 2.66157 4.77246 3.97722V26.25V32.6136C4.77246 33.9294 5.84317 35 7.15882 35H27.8406C29.1563 35 30.227 33.9293 30.227 32.6136V26.25V3.97729C30.227 2.66157 29.1562 1.59093 27.8406 1.59093ZM28.636 32.6136C28.636 33.052 28.2797 33.4091 27.8406 33.4091H7.15875C6.71968 33.4091 6.36332 33.0519 6.36332 32.6136V31.6719C6.61311 31.7609 6.87875 31.8182 7.15875 31.8182H27.8405C28.1205 31.8182 28.3862 31.7609 28.636 31.6719V32.6136H28.636ZM28.636 29.4318C28.636 29.8701 28.2797 30.2272 27.8406 30.2272H7.15875C6.71968 30.2272 6.36332 29.87 6.36332 29.4318V28.49C6.61311 28.5791 6.87875 28.6364 7.15875 28.6364H27.8405C28.1205 28.6364 28.3862 28.5791 28.636 28.49V29.4318H28.636Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M24.6594 4.19843V0.795498C24.6594 0.356357 24.3038 0 23.8639 0C23.424 0 23.0685 0.356357 23.0685 0.79543V1.59086H20.6821C20.2423 1.59086 19.8867 1.94722 19.8867 2.38629C19.8867 2.82536 20.2423 3.18172 20.6821 3.18172H23.0685V4.19829C22.5952 4.47433 22.2731 4.98183 22.2731 5.56808C22.2731 6.44547 22.9866 7.159 23.864 7.159C24.7414 7.159 25.4549 6.44547 25.4549 5.56808C25.4549 4.98196 25.1327 4.47446 24.6594 4.19843Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M18.2951 4.19843V0.795498C18.2951 0.356357 17.9396 0 17.4997 0C17.0598 0 16.7042 0.356357 16.7042 0.79543V1.59086H14.3179C13.878 1.59086 13.5225 1.94722 13.5225 2.38629C13.5225 2.82536 13.878 3.18172 14.3179 3.18172H16.7042V4.19829C16.2309 4.47433 15.9088 4.98183 15.9088 5.56808C15.9088 6.44547 16.6224 7.159 17.4997 7.159C18.3771 7.159 19.0907 6.44547 19.0907 5.56808C19.0906 4.98196 18.7684 4.47446 18.2951 4.19843Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M17.5 11.1362H9.54543C9.10554 11.1362 8.75 11.4926 8.75 11.9317C8.75 12.3707 9.10554 12.7271 9.54543 12.7271H17.5C17.9399 12.7271 18.2954 12.3707 18.2954 11.9317C18.2954 11.4926 17.9399 11.1362 17.5 11.1362Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M23.0678 14.3184H15.9087C15.4688 14.3184 15.1133 14.6747 15.1133 15.1138C15.1133 15.5529 15.4688 15.9092 15.9087 15.9092H23.0678C23.5077 15.9092 23.8632 15.5529 23.8632 15.1138C23.8633 14.6747 23.5077 14.3184 23.0678 14.3184Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M20.6818 20.6816H9.54543C9.10554 20.6816 8.75 21.038 8.75 21.4771C8.75 21.9161 9.10554 22.2725 9.54543 22.2725H20.6818C21.1217 22.2725 21.4772 21.9161 21.4772 21.4771C21.4772 21.038 21.1217 20.6816 20.6818 20.6816Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M25.4549 11.1362H20.6821C20.2423 11.1362 19.8867 11.4926 19.8867 11.9317C19.8867 12.3707 20.2423 12.7271 20.6821 12.7271H25.4549C25.8948 12.7271 26.2503 12.3707 26.2503 11.9317C26.2503 11.4926 25.8948 11.1362 25.4549 11.1362Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M16.7046 17.5H9.54543C9.10554 17.5 8.75 17.8564 8.75 18.2954C8.75 18.7345 9.10554 19.0909 9.54543 19.0909H16.7045C17.1444 19.0909 17.4999 18.7345 17.4999 18.2954C17.4999 17.8564 17.1445 17.5 16.7046 17.5Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M12.7272 14.3184H9.54543C9.10554 14.3184 8.75 14.6747 8.75 15.1138C8.75 15.5529 9.10554 15.9092 9.54543 15.9092H12.7272C13.1671 15.9092 13.5226 15.5529 13.5226 15.1138C13.5226 14.6747 13.1671 14.3184 12.7272 14.3184Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n              &lt;path d=&quot;M25.4545 17.5H19.8862C19.4464 17.5 19.0908 17.8564 19.0908 18.2954C19.0908 18.7345 19.4464 19.0909 19.8862 19.0909H25.4545C25.8944 19.0909 26.2499 18.7345 26.2499 18.2954C26.2499 17.8564 25.8944 17.5 25.4545 17.5Z&quot; fill=&quot;white&quot;&gt;&lt;/path&gt;\r\n            &lt;/svg&gt;\r\n            Наши реквизиты\r\n          &lt;/button&gt;\r\n        &lt;/div&gt;\r\n      &lt;/div&gt;\r\n', 'Доставка и оплата', '', ''),
(3, 2, 'Политика конфиденциальности', '&lt;p&gt;\r\n	Политика конфиденциальности&lt;/p&gt;\r\n', 'Политика конфиденциальности', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(7, 2, 'О компании', '&lt;p&gt;ООО «Зиптрейд» - первый поставщик и импортер швейной фурнитуры на территории Республики Беларусь. На нашем официальном сайте представлен каталог со швейной фурнитурой, тканями и трикотажем.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;За 2020 год 310 клиентов обратились к нам повторно и стали постоянными клиентами.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;«Свитанак», «Купалинка», «Полесье», «Белль Бимбо», «Калинка», «Формэль», «Стецкевич-спецодежда», «8 марта», «Славянка» и другие предприятия покупают швейную фурнитуру оптом в нашей компании.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Мы начинали только с молний. 1 января 2021г. на складе было в наличии 3840 наименований товаров, а пока вы читали этот текст, товаров стало больше.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Наша компания заботится о репутации клиентов, поэтому продукция имеет сертификат качества, выдерживает срок эксплуатации изделия, не ломается и не «подводит» бренд.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Доставляем заказы по всей Беларуси: Брест, Витебск, Гомель, Гродно, Минск, Могилёв и другие.&lt;/p&gt;&lt;div&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiRkRUOXowQU9VS1RDVVM3dDFJbER0dCIsInBhc3RlSUQiOjk4NjU4NTUyMCwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;span data-buffer=&quot;&lt;!--(figma)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(/figma)--&gt;&quot;&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiRkRUOXowQU9VS1RDVVM3dDFJbER0dCIsInBhc3RlSUQiOjk4NjU4NTUyMCwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;span data-buffer=&quot;&lt;!--(figma)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(/figma)--&gt;&quot;&gt;&lt;/span&gt;&lt;/div&gt;', 'О компании', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(6, 0, 0),
(5, 0, 0),
(3, 0, 0),
(7, 0, 104);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
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
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Русский', 'ru-ru', 'ru_RU.UTF-8,ru_RU,ru-ru,ru_ru,russian', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
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
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
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
(124, 104, 'html.37', 'content_bottom', 3),
(115, 8, 'html.35', 'content_bottom', 0),
(116, 105, 'html.33', 'content_bottom', 0),
(123, 104, 'html.38', 'content_bottom', 2),
(122, 104, 'html.36', 'content_bottom', 1),
(121, 104, 'html.39', 'content_bottom', 0),
(125, 104, 'carousel.34', 'content_bottom', 4),
(126, 13, 'category', 'column_left', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
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
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
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
-- Структура таблицы `oc_location`
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
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
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
-- Структура таблицы `oc_modification`
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
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 1, 'd_opencart_patch', 'd_opencart_patch', 'Dreamvention', '3.1.6', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.1.6</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/extension.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\')){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND path LIKE \'%\".$this->db->escape($extension_name).\"%\' ORDER BY `date_added` ASC\");\n        }else{\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/modification.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\') !== false){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND `name` LIKE \'%\".$this->db->escape($extension_name).\"%\'\");\n\n        }else{\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></search>\n            <add position=\"replace\"><![CDATA[//d_opencart_patch.xml 1 moved down]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_modification->deleteModificationsByExtensionInstallId($extension_install_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                //d_opencart_patch.xml 2\n                $this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/filemanager.php\">\n        <operation>\n            <search><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></search>\n            <add position=\"replace\"><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,svg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'jpg\',]]></search>\n            <add position=\"after\"><![CDATA[\'svg\',]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'image/jpeg\',]]></search>\n            <add position=\"after\"><![CDATA[\'image/svg+xml\',]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/filemanager.twig\">\n        <operation>\n            <search><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" />]]></search>\n            <add position=\"replace\"><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" width=\"100\" height=\"100\" />]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[</header>]]></search>\n            <add position=\"before\"><![CDATA[\n                <style type=\"text/css\">\n                    a.img-thumbnail{\n                        min-width:100px;\n                    }\n                </style>\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_CATALOG;\n                } else {\n                    $server = HTTP_CATALOG;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_SERVER;\n                } else {\n                    $server = HTTP_SERVER;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/localisation/language.php\">\n        <operation error=\"skip\">\n$language_data = $this->cache->get(\'language\');\n            <search ><![CDATA[$language_data = $this->cache->get(\'language\');]]></search>\n            <add position=\"replace\"><![CDATA[\n        $language_data = $this->cache->get(\'catalog.language\');]]></add>\n        </operation>\n    </file>\n    <file path=\"system/config/catalog.php\">\n        <operation error=\"skip\">\n            <search index=\"1\" ><![CDATA[\'view/*/before\' => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                   //    \"view/*/before\" => array(\n                   //        1000  => \'event/debug/before\'\n                   //    ),\n                ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search ><![CDATA[\'controller/*/after\'  => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                    //  \'controller/*/after\'  => array(\n                    //\'event/debug/after\'\n                    //)\n                ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2022-12-26 22:37:50'),
(2, 0, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '2.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2022-12-26 22:39:06'),
(3, 2, 'Hutkigrosh ERIP Gateway Module', 'esas_hutkigrosh', 'esas', '1.17.0', '', '<modification>\n    <name>Hutkigrosh ERIP Gateway Module</name>\n    <version>1.17.0</version>\n    <author>esas</author>\n    <code>esas_hutkigrosh</code>\n</modification>', 1, '2022-12-26 22:57:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Clients', 'carousel', '{\"name\":\"Clients\",\"banner_id\":\"9\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"42\",\"30\",\"49\",\"29\",\"46\",\"44\"],\"limit\":\"8\",\"width\":\"177\",\"height\":\"189\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Main page banner', 'banner', '{\"name\":\"Main page banner\",\"banner_id\":\"6\",\"width\":\"996\",\"height\":\"400\",\"status\":\"1\"}'),
(32, 'Homepage text', 'html', '{\"name\":\"Homepage text\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;p&gt;\\u041e\\u041e\\u041e \\u00ab\\u0417\\u0438\\u043f\\u0442\\u0440\\u0435\\u0439\\u0434\\u00bb - \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a \\u0438 \\u0438\\u043c\\u043f\\u043e\\u0440\\u0442\\u0435\\u0440 \\u0448\\u0432\\u0435\\u0439\\u043d\\u043e\\u0439 \\u0444\\u0443\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u044b \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0438 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u044c. \\u041d\\u0430 \\u043d\\u0430\\u0448\\u0435\\u043c \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0441\\u043e \\u0448\\u0432\\u0435\\u0439\\u043d\\u043e\\u0439 \\u0444\\u0443\\u0440\\u043d\\u0438\\u0442\\u0443\\u0440\\u043e\\u0439, \\u0442\\u043a\\u0430\\u043d\\u044f\\u043c\\u0438 \\u0438 \\u0442\\u0440\\u0438\\u043a\\u043e\\u0442\\u0430\\u0436\\u0435\\u043c. \\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u0437\\u0430\\u0431\\u043e\\u0442\\u0438\\u0442\\u0441\\u044f \\u043e \\u0440\\u0435\\u043f\\u0443\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430, \\u0432\\u044b\\u0434\\u0435\\u0440\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0438\\u0437\\u0434\\u0435\\u043b\\u0438\\u044f, \\u043d\\u0435 \\u043b\\u043e\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0435 \\u00ab\\u043f\\u043e\\u0434\\u0432\\u043e\\u0434\\u0438\\u0442\\u00bb \\u0431\\u0440\\u0435\\u043d\\u0434.&lt;\\/p&gt;\"}},\"status\":\"1\"}'),
(33, 'Homepage why', 'html', '{\"name\":\"Homepage why\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;col-12&quot;&gt;\\r\\n        &lt;div class=&quot;homepage-why d-flex align-items-center justify-content-between&quot;&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/call.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u041f\\u0420\\u0418\\u0415\\u041c \\u0417\\u0412\\u041e\\u041d\\u041a\\u041e\\u0412&lt;br&gt;8.30 : 17.00&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/delivery.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u0411\\u0415\\u0421\\u041f\\u041b\\u0410\\u0422\\u041d\\u0410\\u042f \\u0414\\u041e\\u0421\\u0422\\u0410\\u0412\\u041a\\u0410&lt;br&gt;\\u041f\\u041e \\u0420\\u0411 - \\u041e\\u0422 300 BYN,&lt;br&gt;\\u041f\\u041e \\u0412\\u0418\\u0422\\u0415\\u0411\\u0421\\u041a\\u0423 - \\u041e\\u0422 150 BYN&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/guarantee.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u0413\\u0410\\u0420\\u0410\\u041d\\u0422\\u0418\\u042f \\u041a\\u0410\\u0427\\u0415\\u0421\\u0422\\u0412\\u0410&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;why-block d-flex flex-column align-items-center&quot;&gt;\\r\\n            &lt;div class=&quot;why-icon&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/default\\/image\\/modules\\/return.svg&quot;&gt;&lt;\\/div&gt;\\r\\n            &lt;div class=&quot;why-text&quot;&gt;\\u0412\\u041e\\u0417\\u0412\\u0420\\u0410\\u0422 \\u041f\\u0420\\u0418&lt;br&gt;\\u041d\\u0415\\u0421\\u041e\\u041e\\u0422\\u0412\\u0415\\u0422\\u0421\\u0422\\u0412\\u0418\\u0418&lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(34, 'Сертификаты', 'carousel', '{\"name\":\"\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b\",\"banner_id\":\"10\",\"width\":\"180\",\"height\":\"234\",\"status\":\"1\"}'),
(35, 'Сотрудники', 'html', '{\"name\":\"\\u0421\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0438\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;col-12&quot;&gt;\\r\\n              &lt;div class=&quot;row&quot;&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee1.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u041a\\u043e\\u043d\\u0441\\u0442\\u0430\\u043d\\u0442\\u0438\\u043d \\u0413\\u043e\\u043b\\u0443\\u0431\\u0435\\u0432&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;golubev@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee2.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0411\\u0443\\u0445\\u0433\\u0430\\u043b\\u0442\\u0435\\u0440&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u041a\\u043e\\u043d\\u0441\\u0442\\u0430\\u043d\\u0442\\u0438\\u043d \\u041b\\u0438\\u0442\\u0432\\u0438\\u043d\\u043e\\u0432&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;info@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee3.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u041d\\u0430\\u0447\\u0430\\u043b\\u044c\\u043d\\u0438\\u043a \\u043a\\u043e\\u043c\\u043c\\u0435\\u0440\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u043e\\u0442\\u0434\\u0435\\u043b\\u0430&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u0415\\u043b\\u0435\\u043d\\u0430 \\u0427\\u0435\\u0440\\u043a\\u0430\\u0448\\u0438\\u043d\\u0430&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;snab@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee4.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430\\u043c&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u0421\\u0432\\u0435\\u0442\\u043b\\u0430\\u043d\\u0430 \\u041a\\u0430\\u0447\\u0430\\u043d&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;201@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee5.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430\\u043c&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u0412\\u0438\\u043a\\u0442\\u043e\\u0440\\u0438\\u044f \\u041a\\u0443\\u0434\\u0440\\u0430\\u0448\\u043e\\u0432\\u0430&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;212@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;col-6 col-md-4&quot;&gt;\\r\\n                  &lt;div class=&quot;employee-card&quot;&gt;\\r\\n                    &lt;div class=&quot;employee-image&quot;&gt;\\r\\n                      &lt;img src=&quot;\\/image\\/catalog\\/employee\\/employee6.jpg&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;employee-info&quot;&gt;\\r\\n                      &lt;div class=&quot;employee-position&quot;&gt;\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442 \\u043f\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430\\u043c&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-name&quot;&gt;\\u041e\\u043b\\u044c\\u0433\\u0430 \\u041a\\u0440\\u0443\\u0447\\u0435\\u043d\\u044e\\u043a&lt;\\/div&gt;\\r\\n                      &lt;div class=&quot;employee-contact&quot;&gt;info@ziptrade.by&lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(36, 'Заголовок почему выбируют нас', 'html', '{\"name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u043f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0443\\u044e\\u0442 \\u043d\\u0430\\u0441\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;h2&gt;\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u043d\\u0430\\u0441 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u044e\\u0442&lt;\\/h2&gt;\"}},\"status\":\"1\"}'),
(37, 'Заголовок сертификаты', 'html', '{\"name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;h2&gt;\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b \\u0438 \\u043d\\u0430\\u0433\\u0440\\u0430\\u0434\\u044b&lt;\\/h2&gt;\"}},\"status\":\"1\"}'),
(38, 'Почему выбирают нас', 'html', '{\"name\":\"\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b\\u0431\\u0438\\u0440\\u0430\\u044e\\u0442 \\u043d\\u0430\\u0441\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;about-why&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;10 \\u043b\\u0435\\u0442&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u0423\\u0436\\u0435 10 \\u043b\\u0435\\u0442 \\u043c\\u044b \\u0441 \\u0412\\u0430\\u043c\\u0438! \\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e \\u0412\\u0430\\u043c, \\u0447\\u0442\\u043e \\u0434\\u043e\\u0432\\u0435\\u0440\\u044f\\u0435\\u0442\\u0435 \\u043d\\u0430\\u0448\\u0435\\u0439 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438!\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;38&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u041c\\u044b \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0430\\u0435\\u043c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 38 \\u0444\\u0438\\u0440\\u043c\\u0430\\u043c\\u0438-\\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\\u0430\\u043c\\u0438\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;4500&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u0411\\u043e\\u043b\\u0435\\u0435 4500 \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u0437\\u0430\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043a\\u043e\\u043d\\u0442\\u0440\\u0430\\u043a\\u0442\\u043e\\u0432 \\u0441 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n          &lt;div class=&quot;col-6 col-md-4 col-lg-3&quot;&gt;\\r\\n              &lt;div class=&quot;why-reson&quot;&gt;\\r\\n                &lt;div class=&quot;why-reason-icon&quot;&gt;\\r\\n                  &lt;div class=&quot;icon-ring&quot;&gt;\\r\\n                    &lt;div class=&quot;icon-info&quot;&gt;&lt;span style=&quot;font-size:19px&quot;&gt;\\u0431\\u043e\\u043b\\u0435\\u0435&lt;\\/span&gt;&lt;br&gt;8000&lt;\\/div&gt;\\r\\n                  &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n                &lt;div class=&quot;why-reason-text&quot;&gt;\\r\\n                  \\u0412\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0435 8000 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438, \\u0438 \\u044d\\u0442\\u043e \\u043d\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0435\\u043b!\\r\\n                &lt;\\/div&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(39, 'Галлерея на странице о нас', 'html', '{\"name\":\"\\u0413\\u0430\\u043b\\u043b\\u0435\\u0440\\u0435\\u044f \\u043d\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u043e \\u043d\\u0430\\u0441\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;about-gallery&quot;&gt;\\r\\n        &lt;div class=&quot;gallery-image image1 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image2&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image3 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image4 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;gallery-image image5 centred&quot;&gt;&lt;img src=&quot;\\/image\\/catalog\\/site\\/about\\/image.png&quot; alt=&quot;&quot; title=&quot;&quot; class=&quot;img-fluid&quot;&gt;&lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
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
  `lastname` varchar(32) NOT NULL,
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
-- Дамп данных таблицы `oc_order`
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
(158, 0, 'INV-2022-00', 0, 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 'http://shop.local/', 0, 0, '', '', '', '', '', '[]', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '', '', '', '', '', '', 'Республика Беларусь', 20, '', 0, '', '[]', '', '', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 4, 'BYN', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2023-01-09 23:35:44', '2023-01-09 23:35:44');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
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

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
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
-- Дамп данных таблицы `oc_order_product`
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
(158, 158, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
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
-- Структура таблицы `oc_order_recurring_transaction`
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
-- Структура таблицы `oc_order_shipment`
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
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
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
-- Структура таблицы `oc_order_total`
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
-- Дамп данных таблицы `oc_order_total`
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
(245, 158, 'sub_total', 'К оплате', '100.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
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
-- Структура таблицы `oc_product`
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
  `date_available` date NOT NULL DEFAULT '0000-00-00',
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 35, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 20, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 22, '2009-02-03 21:07:37', '2023-01-04 14:37:39'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 1, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 3, '2009-02-03 21:07:49', '2022-12-30 10:14:53'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(47, 4, 1, '16GB'),
(43, 4, 2, '8gb'),
(47, 2, 1, '4'),
(47, 4, 2, '16GB'),
(43, 2, 2, '1'),
(42, 3, 2, '100mhz'),
(47, 2, 2, '4');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
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
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', ''),
(35, 2, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 2, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 2, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 2, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 2, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 2, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 2, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
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

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(443, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(442, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(441, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(2355, 43, 'catalog/demo/macbook_3.jpg', 0),
(2354, 43, 'catalog/demo/macbook_2.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(2353, 43, 'catalog/demo/macbook_4.jpg', 0),
(2352, 43, 'catalog/demo/macbook_5.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2359, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2358, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2357, 42, 'catalog/demo/hp_1.jpg', 0),
(2356, 42, 'catalog/demo/canon_logo.jpg', 0),
(2360, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(218, 42, 1, '', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(226, 30, 5, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
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

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(547, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(546, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
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

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(43, 0, 0),
(42, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
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
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
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
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
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
-- Структура таблицы `oc_return_history`
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
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
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
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
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
-- Структура таблицы `oc_review`
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
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(836, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(777, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(786, 0, 1, 'category_id=17', 'software'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(802, 0, 1, 'category_id=56', 'test24'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(837, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('040a8834c8a389c73027758383', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:34'),
('06365e998b8495456b45327ea0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"jJzQh6H9nw7xoyizWH7ZUyRi0U2ZPbqc\"}', '2023-01-03 12:06:04'),
('08255fcbfa0d729648c3ba245d', '{\"api_id\":\"2\"}', '2023-01-09 20:43:17'),
('124bbaf4308340eae056d7c98d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"hn8jEpIfYm7X1KQamSDceRsBNimFbZ4M\",\"order_id\":29,\"install\":\"7Q9EKCLvqx\"}', '2022-12-30 12:13:31'),
('1b2b83e3c1cd5e1792ac0a28da', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:21'),
('226dc5387dad8b0843c6747007', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:16'),
('291a6dcd6e8934ce9fd3ca089e', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:11'),
('2cc91c6c5fbcf7f3ff190ac8d1', '{\"api_id\":\"2\"}', '2023-01-09 20:42:22'),
('382cdce20345f34556e2812a94', '{\"api_id\":\"2\"}', '2023-01-09 21:07:05'),
('385ecb06cdec9a1d2236ecdce7', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"order_id\":131,\"user_id\":\"1\",\"user_token\":\"bbpD7vwhA4LHVYoCfXp52j7FMJEE78Ip\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-09 10:17:12'),
('3ab40108bd1d30a0f703ccb8e7', '{\"api_id\":\"2\"}', '2023-01-09 20:25:44'),
('3b5600bcf4322f2013be72b468', '{\"api_id\":\"2\"}', '2023-01-09 21:07:06'),
('3eb0082911c6e1250fe9d06b25', '{\"api_id\":\"2\"}', '2023-01-09 20:26:22'),
('41db407c7ec895bc7b1477e0c2', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"Zosr8viwsWBJJhlPZY5WBaam2KFFzm4u\"}', '2023-01-06 22:14:16'),
('564a9c65ee6a3da9f28a6f41d0', '{\"api_id\":\"2\"}', '2023-01-05 21:40:02'),
('5add1d31c508edb77992b73ee0', '{\"api_id\":\"2\"}', '2023-01-09 21:10:11'),
('61d48411639e92336176d3d2bd', '{\"api_id\":\"2\"}', '2023-01-09 21:01:56'),
('620e72d02a270143aaaefc697a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2023-01-03 06:24:31'),
('6574e6df4d409cb1c0a9804105', '{\"api_id\":\"2\"}', '2023-01-09 21:09:48'),
('69943b7094cfa6d4f4ee35614c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_token\":\"4pBR2ySOlkrpOjhoVdjkDp7zqBHRueHF\"}', '2017-11-11 13:05:28'),
('6d3c2edeb8a118a573c78e92cc', '{\"user_id\":\"1\",\"user_token\":\"6S2kOv7lkaMB58iBTBFgN8ZOj1768IUD\",\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2023-01-02 21:43:18'),
('7514f4c5f49f5b1879969880da', '{\"api_id\":\"2\"}', '2023-01-09 21:12:34'),
('7998fcd17f0449d48c309fab96', '{\"api_id\":\"2\"}', '2023-01-09 10:17:12'),
('7b5b08a122df190def74a49ff6', '{\"api_id\":\"2\"}', '2023-01-09 20:41:30'),
('8fc7435ab13a428840b2711f88', '{\"api_id\":\"2\"}', '2023-01-09 21:09:44'),
('9231d8e543e43c2cddd807b9f6', '{\"api_id\":\"2\"}', '2023-01-09 21:01:54'),
('957809fc785582986f796c2a83', '{\"language\":\"en-gb\",\"currency\":\"RUB\"}', '2017-11-11 13:05:32'),
('a1957d8182091811895c0c779e', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"d_blog_module_debug\":0,\"user_id\":\"1\",\"user_token\":\"QfkUyoE9sClQ4sFE3ArFgwZOiuq1tUsx\",\"order_id\":30}', '2023-01-05 22:05:18'),
('aed62d1aab9dc9777c09501a90', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"RZpUmRLf41PBF9ZWH0hyh66KBlD65DGj\",\"d_blog_module_debug\":0,\"order_id\":45,\"shipping_methods\":{\"flat\":{\"title\":\"\\u0424\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437 \\u0438\\u0437 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-06 07:36:19'),
('b2191bec57cfbee29ce1c0a03f', '{\"language\":\"ru-ru\",\"currency\":\"BYN\",\"user_id\":\"1\",\"user_token\":\"9QX1iVuzqe7YQglLvGvnRjjC1UvuWR43\",\"d_blog_module_debug\":0,\"order_id\":162,\"shipping_methods\":{\"flat\":{\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"description\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u0441\\u043a\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"comment\":\"\\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u0441\\u0440\\u043e\\u043a\\u0430 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u0435\\u0434\\u0435\\u043d \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0432\\u043e\\u043d\\u043a\\u0430 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u0430\",\"cost\":\"150\",\"tax_class_id\":\"9\",\"text\":\"150 BYN\"}},\"sort_order\":\"1\",\"error\":false},\"pickup\":{\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"description\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"quote\":{\"pickup\":{\"code\":\"pickup.pickup\",\"title\":\"\\u0421\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\",\"comment\":\"\\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0441\\u0430\\u043c\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b.\\u0422\\u0438\\u0442\\u043e\\u0432\\u0430 138\",\"cost\":0,\"tax_class_id\":0,\"text\":\"0 BYN\"}},\"sort_order\":\"2\",\"error\":false}},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\"}}', '2023-01-09 21:12:34'),
('b4b660c755cbb2ba12d82d10cb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"DyQSrax7NBtZ8clkMxnLGj8Jprb8DucW\",\"install\":\"ozo9DxDMRk\",\"d_blog_module_debug\":0}', '2022-12-28 22:38:34'),
('c47b3075afd15d9e3a4e453ba1', '{\"api_id\":\"2\"}', '2023-01-09 20:43:09'),
('ccca07aad2a6822229cb41222c', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:24'),
('cd880bd3acda01c5a47a5b62b2', '{\"api_id\":\"2\"}', '2023-01-09 21:10:30'),
('d79dfe521987adeef91e85a0be', '{\"api_id\":\"2\"}', '2023-01-09 20:42:25'),
('e07def6ef12bf815735b1c0c1a', '{\"api_id\":\"2\"}', '2023-01-09 21:10:06'),
('ee08efaca42eca15fca1967709', '{\"user_id\":\"1\",\"user_token\":\"IW21IJLOGVjI7pVmbmBNtAgiHmZxy6BL\",\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-12-19 21:31:25'),
('f83eedbc0cf0b7d20769f2a33e', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:30'),
('fb6c3ed0d9d63f6a2bb94038c3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"b9PrSa64HNYo7yYq2zTheZ7O469xM1Jv\"}', '2017-11-11 12:59:21'),
('fbd9b7409fdda23fb3dcec7c0e', '{\"api_id\":\"2\"}', '2023-01-09 20:41:33'),
('fe1fd2303150092b7380158ab1', '{\"api_id\":\"2\",\"language\":\"ru-ru\",\"currency\":\"BYN\"}', '2023-01-09 21:12:27');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
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
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(2873, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(2876, 0, 'config', 'config_error_filename', 'error.log', 0),
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
(2866, 0, 'config', 'config_compression', '0', 0),
(2867, 0, 'config', 'config_secure', '0', 0),
(2868, 0, 'config', 'config_password', '1', 0),
(2869, 0, 'config', 'config_shared', '0', 0),
(2870, 0, 'config', 'config_encryption', 'hEiLgPirTWBJuHnkPL3oCVaJ8nfA5TwV8dL6c1smbJXQpFZbvyCRbgkskSe7S4Ks6Skwu8xYZMJHiGBcsihkm730JXHn8pfaqBOTHAqUrR65k1DqMxhIj4a51SA2KM3mVEuX74RbkSvYSA40HHeS42oO753iF4L3kf1BFif5IFU7jg1cmNOS37QCJSq7u0eByOpC3bwMGlQeq2ef8RLDcnlY1R2eHeOfutDDn7KdM1llwfMbckbg6vc8U33H6obiD7lgIjbMDqYD0iJOLzhqrQZqqQeRdaGbg7lAf3HJGSvNKduCNW5o3DXKDNfn9t87jEgmBkQTvyLxwbxcDPVo6bRJcyxIoBkzmPozKVR3ForzpwEmW0AjAYvw0vKb89hEkNQtBpObcqM4KaHRe2O9U0BAWXRxX9DgUpwUpjA2n3c0YnDy2fWyNo8ek49fgix5sza2bpQxbT6YazpJ3KuEytf2TOXn37vBRUWesKGrV71oW2nfeHZSjwwxuDW77IuaV2c2ivkqFFRchx5xyGFJOePDMlDUEo1hWxx6vjojhMoPWaYMU4Knd1LB1y5f96vt4WbWsIfO04J2BZeG2AYqmd5czHyp2VLyIsWXe17ohwamkTGG8L03Tabg9YFZr40X56uw4oJDw5lJ0HErznoyctps5jxREjPbV9fG52BLcPdp7yljByp3wzHoy8hPq0EXpN8ckBP6ncuJP9dXAViEfCJjjPjnfffIdQfKgyMJTSFGz9DBSTqRTlmhYw07p3LZ8iHhIjdqHtGCMu9PeqgpjjageuM5h4jHOdV5i8gKvrEfRO1r87JRK7Y8mNYmRrpAHhfgF525D5MafWZ0gDjHMNQBlrvCDGOSaN4qnlQBxq1uDwOEWzDRexVVnWVklRpxeDhP6Qq8zhTVsNYdD8Dw3snql1tntJ6WcmxkJivpHHP8HJGtqHSvIlSC0hWd2zymV7aAUlT0vMYoCek2rIeRU2TOq4i9zgjrhfwE58C7Ds8EgOcVpBm2hzsBjN8td4sQ', 0),
(2875, 0, 'config', 'config_error_log', '1', 0),
(2874, 0, 'config', 'config_error_display', '1', 0),
(2871, 0, 'config', 'config_file_max_size', '300000', 0),
(2872, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(384, 0, 'developer', 'developer_sass', '1', 0),
(2864, 0, 'config', 'config_seo_url', '0', 0),
(2865, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1839, 0, 'module_d_blog_module', 'module_d_blog_module_status', '1', 0),
(1840, 0, 'module_d_blog_module', 'module_d_blog_module_setting', '{\"category\":{\"main_category_id\":\"1\",\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"7\",\"image_display\":\"0\",\"image_width\":\"1200\",\"image_height\":\"750\",\"sub_category_display\":\"0\",\"sub_category_col\":\"6\",\"sub_category_image\":\"0\",\"sub_category_post_count\":\"0\",\"sub_category_image_width\":\"120\",\"sub_category_image_height\":\"75\",\"limited_post_display\":\"0\",\"main_post_display\":\"0\"},\"post\":{\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"750\",\"popup_display\":\"0\",\"popup_width\":\"1400\",\"popup_height\":\"875\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y         \"},\"review_display\":\"0\",\"rating_display\":\"0\",\"tag_display\":\"0\",\"category_label_display\":\"0\",\"short_description_length\":\"150\",\"style_short_description_display\":\"0\",\"nav_display\":\"0\",\"nav_same_category\":\"0\"},\"post_thumb\":{\"image_width\":\"1200\",\"image_height\":\"750\",\"title_length\":\"100\",\"short_description_length\":\"300\",\"description_length\":\"300\",\"category_label_display\":\"0\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y           \"},\"rating_display\":\"0\",\"description_display\":\"1\",\"tag_display\":\"0\",\"views_display\":\"0\",\"review_display\":\"0\",\"read_more_display\":\"1\",\"animate\":\"fadeIn\"},\"review\":{\"guest\":\"0\",\"social_login\":\"0\",\"page_limit\":\"5\",\"rating_display\":\"0\",\"customer_display\":\"0\",\"moderate\":\"0\",\"image_user_display\":\"0\",\"image_limit\":\"5\",\"image_upload_width\":\"500\",\"image_upload_height\":\"500\"},\"review_thumb\":{\"image_width\":\"70\",\"image_height\":\"70\",\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":\"0\",\"image_display\":\"0\",\"rating_display\":\"0\",\"image_user_display\":\"0\",\"image_user_width\":\"70\",\"image_user_height\":\"70\"},\"author\":{\"layout_type\":\"grid\",\"layout\":[\"2\"],\"post_page_limit\":\"7\",\"image_width\":\"400\",\"image_height\":\"400\",\"category_display\":\"1\",\"category_col\":\"6\",\"category_image\":\"1\",\"category_post_count\":\"1\",\"category_image_width\":\"120\",\"category_image_height\":\"75\"},\"theme\":\"default\",\"admin_style\":\"light\",\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(1841, 0, 'd_blog_module', 'd_blog_module_status', '1', 0),
(1842, 0, 'd_blog_module', 'd_blog_module_setting', '{\"category\":{\"main_category_id\":\"1\",\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"7\",\"image_display\":\"0\",\"image_width\":\"1200\",\"image_height\":\"750\",\"sub_category_display\":\"0\",\"sub_category_col\":\"6\",\"sub_category_image\":\"0\",\"sub_category_post_count\":\"0\",\"sub_category_image_width\":\"120\",\"sub_category_image_height\":\"75\",\"limited_post_display\":\"0\",\"main_post_display\":\"0\"},\"post\":{\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"750\",\"popup_display\":\"0\",\"popup_width\":\"1400\",\"popup_height\":\"875\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y         \"},\"review_display\":\"0\",\"rating_display\":\"0\",\"tag_display\":\"0\",\"category_label_display\":\"0\",\"short_description_length\":\"150\",\"style_short_description_display\":\"0\",\"nav_display\":\"0\",\"nav_same_category\":\"0\"},\"post_thumb\":{\"image_width\":\"1200\",\"image_height\":\"750\",\"title_length\":\"100\",\"short_description_length\":\"300\",\"description_length\":\"300\",\"category_label_display\":\"0\",\"author_display\":\"0\",\"date_display\":\"0\",\"date_format\":{\"2\":\"%A %d %B, %Y           \"},\"rating_display\":\"0\",\"description_display\":\"1\",\"tag_display\":\"0\",\"views_display\":\"0\",\"review_display\":\"0\",\"read_more_display\":\"1\",\"animate\":\"fadeIn\"},\"review\":{\"guest\":\"0\",\"social_login\":\"0\",\"page_limit\":\"5\",\"rating_display\":\"0\",\"customer_display\":\"0\",\"moderate\":\"0\",\"image_user_display\":\"0\",\"image_limit\":\"5\",\"image_upload_width\":\"500\",\"image_upload_height\":\"500\"},\"review_thumb\":{\"image_width\":\"70\",\"image_height\":\"70\",\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":\"0\",\"image_display\":\"0\",\"rating_display\":\"0\",\"image_user_display\":\"0\",\"image_user_width\":\"70\",\"image_user_height\":\"70\"},\"author\":{\"layout_type\":\"grid\",\"layout\":[\"2\"],\"post_page_limit\":\"7\",\"image_width\":\"400\",\"image_height\":\"400\",\"category_display\":\"1\",\"category_col\":\"6\",\"category_image\":\"1\",\"category_post_count\":\"1\",\"category_image_width\":\"120\",\"category_image_height\":\"75\"},\"theme\":\"default\",\"admin_style\":\"light\",\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(2863, 0, 'config', 'config_maintenance', '0', 0),
(2861, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(2862, 0, 'config', 'config_mail_alert_email', '', 0),
(2859, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2860, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2906, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(2905, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(2858, 0, 'config', 'config_mail_smtp_password', '', 0),
(2857, 0, 'config', 'config_mail_smtp_username', '', 0),
(2855, 0, 'config', 'config_mail_parameter', '', 0),
(2856, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2854, 0, 'config', 'config_mail_engine', 'mail', 0),
(2852, 0, 'config', 'config_logo', 'catalog/f_91757739ec412508.png', 0),
(2853, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(2851, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(2849, 0, 'config', 'config_return_status_id', '2', 0),
(2850, 0, 'config', 'config_captcha', '', 0),
(2848, 0, 'config', 'config_return_id', '0', 0),
(2847, 0, 'config', 'config_affiliate_id', '5', 0),
(2845, 0, 'config', 'config_affiliate_auto', '0', 0),
(2846, 0, 'config', 'config_affiliate_commission', '0', 0),
(2842, 0, 'config', 'config_stock_checkout', '0', 0),
(2843, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2844, 0, 'config', 'config_affiliate_approval', '0', 0),
(2841, 0, 'config', 'config_stock_warning', '0', 0),
(2840, 0, 'config', 'config_stock_display', '0', 0),
(2838, 0, 'config', 'config_fraud_status_id', '7', 0),
(2839, 0, 'config', 'config_api_id', '2', 0),
(2837, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(2836, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(2834, 0, 'config', 'config_checkout_id', '5', 0),
(2835, 0, 'config', 'config_order_status_id', '1', 0),
(2833, 0, 'config', 'config_checkout_guest', '1', 0),
(2832, 0, 'config', 'config_cart_weight', '0', 0),
(2830, 0, 'config', 'config_account_id', '3', 0),
(2831, 0, 'config', 'config_invoice_prefix', 'INV-2022-00', 0),
(2829, 0, 'config', 'config_login_attempts', '5', 0),
(2825, 0, 'config', 'config_customer_search', '0', 0),
(2826, 0, 'config', 'config_customer_group_id', '1', 0),
(2827, 0, 'config', 'config_customer_group_display', '[\"1\",\"2\"]', 1),
(2828, 0, 'config', 'config_customer_price', '0', 0),
(2824, 0, 'config', 'config_customer_activity', '0', 0),
(2823, 0, 'config', 'config_customer_online', '0', 0),
(2822, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2821, 0, 'config', 'config_tax_default', 'shipping', 0),
(2820, 0, 'config', 'config_tax', '0', 0),
(2819, 0, 'config', 'config_voucher_max', '1000', 0),
(2818, 0, 'config', 'config_voucher_min', '1', 0),
(2806, 0, 'config', 'config_country_id', '20', 0),
(2807, 0, 'config', 'config_zone_id', '', 0),
(2808, 0, 'config', 'config_language', 'ru-ru', 0),
(2809, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(2810, 0, 'config', 'config_currency', 'BYN', 0),
(2811, 0, 'config', 'config_currency_auto', '1', 0),
(2812, 0, 'config', 'config_length_class_id', '1', 0),
(2813, 0, 'config', 'config_weight_class_id', '1', 0),
(2814, 0, 'config', 'config_product_count', '0', 0),
(2815, 0, 'config', 'config_limit_admin', '20', 0),
(2816, 0, 'config', 'config_review_status', '1', 0),
(2817, 0, 'config', 'config_review_guest', '1', 0),
(2803, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(2804, 0, 'config', 'config_open', 'пн-пт с 8.30 до 17.00', 0),
(2805, 0, 'config', 'config_comment', 'Наши реквизиты', 0),
(2792, 0, 'config', 'config_meta_description', 'Продажа швейной фурнитуры от лучших производителей. Ткани, нити, молнии, ремни и многое другое. Для заказа звоните: +375 (29) 5-109-109', 0),
(2793, 0, 'config', 'config_meta_keyword', '', 0),
(2794, 0, 'config', 'config_theme', 'default', 0),
(2795, 0, 'config', 'config_layout_id', '4', 0),
(2796, 0, 'config', 'config_name', 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 0),
(2797, 0, 'config', 'config_owner', 'Зиптрейд', 0),
(2798, 0, 'config', 'config_address', ' г. Витебск,  ул. Титова, д. 138', 0),
(2799, 0, 'config', 'config_geocode', '', 0),
(2800, 0, 'config', 'config_email', 'info@ziptrade.by', 0),
(2801, 0, 'config', 'config_telephone', '+375 (29) 5-109-109', 0),
(2802, 0, 'config', 'config_fax', '+375 (212) 53-85-08 (факс)', 0),
(2791, 0, 'config', 'config_meta_title', 'Купить швейную фурнитуру оптом в Беларуси | Зиптрейд', 0),
(2883, 0, 'shipping_flat', 'shipping_flat_cost', '150', 0),
(2888, 0, 'shipping_flat', 'shipping_flat_comment', 'Расчет срока и доставки будет произведен после звонка менеджера', 0),
(2904, 0, 'shipping_pickup', 'shipping_pickup_comment', 'Вы можете самостоятельно забрать свой заказ по адресу: ул.Титова 138', 0),
(2901, 0, 'shipping_pickup', 'shipping_pickup_geo_zone_id', '0', 0),
(2903, 0, 'shipping_pickup', 'shipping_pickup_sort_order', '2', 0),
(2902, 0, 'shipping_pickup', 'shipping_pickup_status', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
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
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '700.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
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
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_subscribe`
--

CREATE TABLE `oc_subscribe` (
  `subscribe_id` int(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `oc_subscribe`
--

INSERT INTO `oc_subscribe` (`subscribe_id`, `email`, `date_added`) VALUES
(1, 'edgarz@advansys.com', '2022-12-30 13:45:34'),
(2, '21', '2023-01-03 00:16:54'),
(3, 'hello@visorit.com', '2023-01-09 22:55:44');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
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
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
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
-- Структура таблицы `oc_translation`
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
-- Структура таблицы `oc_upload`
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
-- Структура таблицы `oc_user`
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
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '9b82c2df6197eaeb5f38ce33492ab1c4e4b7109d', 'poofhzqsy', 'John', 'Doe', 'admin@shop.local', '', '', '127.0.0.1', 1, '2022-12-19 22:24:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/payment\\/hutkigrosh\",\"extension\\/module\\/html\",\"extension\\/shipping\\/citylink\",\"extension\\/payment\\/cheque\",\"extension\\/shipping\\/pickup\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/total\\/sub_total\",\"extension\\/shipping\\/citylink\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/payment\\/hutkigrosh\",\"extension\\/module\\/html\",\"extension\\/shipping\\/citylink\",\"extension\\/payment\\/cheque\",\"extension\\/shipping\\/pickup\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/total\\/sub_total\",\"extension\\/shipping\\/citylink\"]}'),
(10, 'Demonstration', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
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
-- Структура таблицы `oc_voucher_history`
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
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
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
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
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
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
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
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  ADD PRIMARY KEY (`author_description_id`);

--
-- Индексы таблицы `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  ADD PRIMARY KEY (`author_group_id`);

--
-- Индексы таблицы `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  ADD PRIMARY KEY (`category_description_id`);

--
-- Индексы таблицы `oc_bm_category_path`
--
ALTER TABLE `oc_bm_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_bm_category_to_store`
--
ALTER TABLE `oc_bm_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  ADD PRIMARY KEY (`post_description_id`);

--
-- Индексы таблицы `oc_bm_post_related`
--
ALTER TABLE `oc_bm_post_related`
  ADD PRIMARY KEY (`post_id`,`post_related_id`);

--
-- Индексы таблицы `oc_bm_post_to_category`
--
ALTER TABLE `oc_bm_post_to_category`
  ADD PRIMARY KEY (`category_id`,`post_id`);

--
-- Индексы таблицы `oc_bm_post_to_product`
--
ALTER TABLE `oc_bm_post_to_product`
  ADD PRIMARY KEY (`product_id`,`post_id`);

--
-- Индексы таблицы `oc_bm_post_video`
--
ALTER TABLE `oc_bm_post_video`
  ADD PRIMARY KEY (`post_id`,`video`);

--
-- Индексы таблицы `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Индексы таблицы `oc_bm_review_to_image`
--
ALTER TABLE `oc_bm_review_to_image`
  ADD PRIMARY KEY (`review_id`,`image`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_d_validator`
--
ALTER TABLE `oc_d_validator`
  ADD PRIMARY KEY (`validator_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT для таблицы `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  MODIFY `author_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  MODIFY `author_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  MODIFY `category_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  MODIFY `post_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT для таблицы `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_d_validator`
--
ALTER TABLE `oc_d_validator`
  MODIFY `validator_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1450;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2361;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2910;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  MODIFY `subscribe_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
