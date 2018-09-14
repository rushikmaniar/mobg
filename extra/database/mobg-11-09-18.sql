-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2018 at 10:18 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobg`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '5'),
(2, 2, 'verified', '0'),
(3, 3, 'rating', '4'),
(4, 3, 'verified', '0'),
(5, 4, 'verified', '0'),
(6, 4, '_wxr_import_user', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-06 08:43:39', '2018-07-06 08:43:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 168, 'Brad', 'bradunknown@email.com', '', '27.34.104.120', '2018-05-24 08:54:54', '2018-05-24 08:54:54', 'The Sound is awesome.', 0, 'post-trashed', '', '', 0, 0),
(3, 168, 'June', 'juneemail@why.com', '', '27.34.104.120', '2018-05-24 08:56:59', '2018-05-24 08:56:59', 'Not comfortable for long time use.', 0, 'post-trashed', '', '', 0, 0),
(4, 201, 'John', 'themeauthor@themesaga.com', '', '27.34.104.231', '2018-05-29 13:48:34', '2018-05-29 13:48:34', 'Nice Collection of shades.', 0, 'post-trashed', '', '', 0, 0),
(5, 234, 'WooCommerce', 'woocommerce@demo.themesaga.com', '', '', '2018-06-04 06:19:02', '2018-06-04 06:19:02', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, 'post-trashed', '', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_evf_entries`
--

CREATE TABLE IF NOT EXISTS `wp_evf_entries` (
  `entry_id` bigint(20) unsigned NOT NULL,
  `form_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_device` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `referer` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_evf_entrymeta`
--

CREATE TABLE IF NOT EXISTS `wp_evf_entrymeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `entry_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_evf_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_evf_sessions` (
  `session_id` bigint(20) unsigned NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_failed_jobs`
--

CREATE TABLE IF NOT EXISTS `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE IF NOT EXISTS `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1743 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:90/MobG', 'yes'),
(2, 'home', 'http://localhost:90/MobG', 'yes'),
(3, 'blogname', 'MobG', 'yes'),
(4, 'blogdescription', 'THE NEXT PHONE STORE', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'rushighoda183@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=161&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:19:"akismet/akismet.php";i:1;s:31:"everest-forms/everest-forms.php";i:3;s:9:"hello.php";i:4;s:19:"jetpack/jetpack.php";i:5;s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";i:6;s:47:"one-click-demo-import/one-click-demo-import.php";i:7;s:39:"siteorigin-panels/siteorigin-panels.php";i:9;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:10;s:45:"woocommerce-services/woocommerce-services.php";i:11;s:41:"woocommerce-square/woocommerce-square.php";i:12;s:27:"woocommerce/woocommerce.php";i:13;s:34:"yith-woocommerce-wishlist/init.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '5.5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shop-elite', 'yes'),
(41, 'stylesheet', 'shop-elite', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '163', 'yes'),
(84, 'page_on_front', '161', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '278', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:151:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:20:"manage_flash_toolkit";b:1;s:14:"edit_portfolio";b:1;s:14:"read_portfolio";b:1;s:16:"delete_portfolio";b:1;s:15:"edit_portfolios";b:1;s:22:"edit_others_portfolios";b:1;s:18:"publish_portfolios";b:1;s:23:"read_private_portfolios";b:1;s:17:"delete_portfolios";b:1;s:25:"delete_private_portfolios";b:1;s:27:"delete_published_portfolios";b:1;s:24:"delete_others_portfolios";b:1;s:23:"edit_private_portfolios";b:1;s:25:"edit_published_portfolios";b:1;s:22:"manage_portfolio_terms";b:1;s:20:"edit_portfolio_terms";b:1;s:22:"delete_portfolio_terms";b:1;s:22:"assign_portfolio_terms";b:1;s:20:"manage_everest_forms";b:1;s:17:"edit_everest_form";b:1;s:22:"duplicate_everest_form";b:1;s:17:"read_everest_form";b:1;s:19:"delete_everest_form";b:1;s:18:"edit_everest_forms";b:1;s:25:"edit_others_everest_forms";b:1;s:21:"publish_everest_forms";b:1;s:26:"read_private_everest_forms";b:1;s:20:"delete_everest_forms";b:1;s:28:"delete_private_everest_forms";b:1;s:30:"delete_published_everest_forms";b:1;s:27:"delete_others_everest_forms";b:1;s:26:"edit_private_everest_forms";b:1;s:28:"edit_published_everest_forms";b:1;s:25:"manage_everest_form_terms";b:1;s:23:"edit_everest_form_terms";b:1;s:25:"delete_everest_form_terms";b:1;s:25:"assign_everest_form_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:5:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:6:"Search";}i:4;a:1:{s:5:"title";s:6:"Search";}i:5;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:4:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:4;a:3:{s:5:"title";s:12:"Stay Updated";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:14:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:9:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";i:3;s:8:"search-5";i:4;s:14:"recent-posts-3";i:5;s:17:"recent-comments-3";i:6;s:10:"archives-3";i:7;s:12:"categories-3";i:8;s:6:"meta-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}s:11:"social-icon";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;s:24:"home-page-full-width-col";a:5:{i:0;s:31:"shop_elite_product_categories-1";i:1;s:30:"shop_elite_products_listings-1";i:2;s:27:"shop_elite_call_to_action-1";i:3;s:27:"shop_elite_posts_listings-1";i:4;s:27:"shop_elite_call_to_action-2";}s:14:"footer-col-one";a:1:{i:0;s:24:"shop_elite_social_menu-1";}s:14:"footer-col-two";a:1:{i:0;s:14:"recent-posts-4";}s:16:"footer-col-three";a:1:{i:0;s:22:"woocommerce_products-1";}}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:14:{i:1536654569;a:1:{s:33:"woocommerce_square_inventory_poll";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1536654614;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1536654782;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1536655422;a:4:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1536656771;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536667571;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1536688937;a:1:{s:30:"everest_forms_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1536692400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536724434;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536725854;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536732371;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536732381;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1538438400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:10:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:3;}s:7:"panel_1";i:12;s:7:"panel_2";i:9;s:7:"panel_3";i:11;s:7:"panel_4";i:10;s:11:"colorscheme";s:4:"dark";s:15:"colorscheme_hue";i:341;s:16:"header_textcolor";s:6:"ffffff";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530936963;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(132, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(139, 'current_theme', 'Shop Elite', 'yes'),
(140, 'theme_mods_ultimate-ecommerce-shop', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1531122553;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}s:11:"social-icon";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'widget_wpb_social_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(149, 'recently_activated', 'a:2:{s:53:"themegrill-demo-importer/themegrill-demo-importer.php";i:1536214072;s:31:"flash-toolkit/flash-toolkit.php";i:1536214059;}', 'yes'),
(157, 'woocommerce_store_address', 'abc mobg', 'yes'),
(158, 'woocommerce_store_address_2', '', 'yes'),
(159, 'woocommerce_store_city', 'rajkot', 'yes'),
(160, 'woocommerce_default_country', 'IN:GJ', 'yes'),
(161, 'woocommerce_store_postcode', '360007', 'yes'),
(162, 'woocommerce_allowed_countries', 'specific', 'yes'),
(163, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"IN";}', 'yes'),
(165, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(166, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:"IN";}', 'yes'),
(167, 'woocommerce_default_customer_address', '', 'yes'),
(168, 'woocommerce_calc_taxes', 'yes', 'yes'),
(169, 'woocommerce_enable_coupons', 'yes', 'yes'),
(170, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(171, 'woocommerce_currency', 'INR', 'yes'),
(172, 'woocommerce_currency_pos', 'left', 'yes'),
(173, 'woocommerce_price_thousand_sep', ',', 'yes'),
(174, 'woocommerce_price_decimal_sep', '.', 'yes'),
(175, 'woocommerce_price_num_decimals', '2', 'yes'),
(176, 'woocommerce_shop_page_id', '31', 'yes'),
(177, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(178, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(179, 'woocommerce_weight_unit', 'kg', 'yes'),
(180, 'woocommerce_dimension_unit', 'cm', 'yes'),
(181, 'woocommerce_enable_reviews', 'yes', 'yes'),
(182, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(183, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(184, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(185, 'woocommerce_review_rating_required', 'yes', 'no'),
(186, 'woocommerce_manage_stock', 'yes', 'yes'),
(187, 'woocommerce_hold_stock_minutes', '60', 'no'),
(188, 'woocommerce_notify_low_stock', 'yes', 'no'),
(189, 'woocommerce_notify_no_stock', 'yes', 'no'),
(190, 'woocommerce_stock_email_recipient', 'rushighoda183@gmail.com', 'no'),
(191, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(192, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(193, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(194, 'woocommerce_stock_format', '', 'yes'),
(195, 'woocommerce_file_download_method', 'force', 'no'),
(196, 'woocommerce_downloads_require_login', 'no', 'no'),
(197, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(198, 'woocommerce_prices_include_tax', 'no', 'yes'),
(199, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(200, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(201, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(202, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(203, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(204, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(205, 'woocommerce_price_display_suffix', '', 'yes'),
(206, 'woocommerce_tax_total_display', 'itemized', 'no'),
(207, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(208, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(209, 'woocommerce_ship_to_destination', 'billing', 'no'),
(210, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(211, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(212, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(213, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(214, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(215, 'woocommerce_registration_generate_username', 'yes', 'no'),
(216, 'woocommerce_registration_generate_password', 'yes', 'no'),
(217, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(218, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(222, 'woocommerce_trash_pending_orders', '', 'no'),
(223, 'woocommerce_trash_failed_orders', '', 'no'),
(224, 'woocommerce_trash_cancelled_orders', '', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(226, 'woocommerce_email_from_name', 'MobG', 'no'),
(227, 'woocommerce_email_from_address', 'rushighoda183@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(230, 'woocommerce_email_base_color', '#96588a', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '32', 'yes'),
(235, 'woocommerce_checkout_page_id', '33', 'yes'),
(236, 'woocommerce_myaccount_page_id', '34', 'yes'),
(237, 'woocommerce_terms_page_id', '', 'no'),
(238, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(241, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(242, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(243, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(244, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_api_enabled', 'no', 'yes'),
(254, 'woocommerce_single_image_width', '600', 'yes'),
(255, 'woocommerce_thumbnail_image_width', '500', 'yes'),
(256, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(257, 'woocommerce_demo_store', 'no', 'no'),
(258, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(259, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(260, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(263, 'default_product_cat', '17', 'yes'),
(268, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
(275, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(276, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_products', 'a:2:{i:1;a:7:{s:5:"title";s:16:"On Sale Products";s:6:"number";i:3;s:4:"show";s:6:"onsale";s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(299, 'woocommerce_product_type', 'virtual', 'yes'),
(300, 'woocommerce_sell_in_person', '1', 'yes'),
(301, 'woocommerce_allow_tracking', 'yes', 'yes'),
(303, 'woocommerce_tracker_last_send', '1536212039', 'yes'),
(306, 'woocommerce_square_settings', 'a:6:{s:7:"enabled";s:2:"no";s:5:"title";s:20:"Credit card (Square)";s:11:"description";s:37:"Pay with your credit card via Square.";s:7:"capture";s:2:"no";s:15:"create_customer";s:2:"no";s:7:"logging";s:2:"no";}', 'yes'),
(308, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:"reroute_requests";b:0;s:5:"email";s:23:"rushighoda183@gmail.com";}', 'yes'),
(309, 'woocommerce_stripe_settings', 'a:3:{s:7:"enabled";s:2:"no";s:14:"create_account";b:0;s:5:"email";b:0;}', 'yes'),
(310, 'woocommerce_cheque_settings', 'a:4:{s:7:"enabled";s:3:"yes";s:5:"title";s:14:"Check payments";s:11:"description";s:98:"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.";s:12:"instructions";s:0:"";}', 'yes'),
(311, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(312, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:16:"Cash on delivery";s:11:"description";s:28:"Pay with cash upon delivery.";s:12:"instructions";s:28:"Pay with cash upon delivery.";s:18:"enable_for_methods";a:0:{}s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(316, 'wc_ppec_version', '1.6.3', 'yes'),
(322, 'woocommerce_setup_automated_taxes', '1', 'yes'),
(331, 'jetpack_activated', '1', 'yes'),
(334, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(335, 'jetpack_sync_settings_disable', '0', 'yes'),
(338, 'jetpack_available_modules', 'a:1:{s:5:"6.3.2";a:43:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:3:"pwa";s:5:"5.6.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(339, 'jetpack_options', 'a:4:{s:7:"version";s:16:"6.3.2:1530937820";s:11:"old_version";s:16:"6.3.2:1530937820";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:-496;}', 'yes'),
(340, 'jetpack_testimonial', '0', 'yes'),
(341, 'do_activate', '0', 'yes'),
(342, 'mailchimp_woocommerce_version', '2.1.6', 'no'),
(345, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(349, 'mailchimp-woocommerce-store_id', '5b4041eb859cd', 'yes'),
(351, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(355, 'jetpack_tos_agreed', '1', 'yes'),
(356, 'jetpack_secrets', 'a:1:{s:18:"jetpack_register_1";a:3:{s:8:"secret_1";s:32:"976Rh15Zk76MJPpzyhPy04IMk3cLauiJ";s:8:"secret_2";s:32:"uILIfUWSHbDkv6kaQdlmWJg7qmI5ECVf";s:3:"exp";i:1530938443;}}', 'no'),
(357, 'wc_connect_options', 'a:1:{s:12:"tos_accepted";b:1;}', 'yes'),
(359, '_transient_product_query-transient-version', '1536652119', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(375, 'woocommerce_tracker_ua', 'a:3:{i:0;s:101:"mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36";i:1;s:101:"mozilla/5.0 (windows nt 6.3) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36";i:2;s:102:"mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36";}', 'yes'),
(402, 'WPLANG', '', 'yes'),
(403, 'new_admin_email', 'rushighoda183@gmail.com', 'yes'),
(408, 'sharing-options', 'a:1:{s:6:"global";a:5:{s:12:"button_style";s:9:"icon-text";s:13:"sharing_label";s:11:"Share this:";s:10:"open_links";s:4:"same";s:4:"show";a:0:{}s:6:"custom";a:0:{}}}', 'yes'),
(409, 'stats_options', 'a:7:{s:9:"admin_bar";b:1;s:5:"roles";a:1:{i:0;s:13:"administrator";}s:11:"count_roles";a:0:{}s:7:"blog_id";b:0;s:12:"do_not_track";b:1;s:10:"hide_smile";b:1;s:7:"version";s:1:"9";}', 'yes'),
(426, 'theme_mods_flash', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1531225639;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:8:"search-3";i:2;s:6:"text-3";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-5";i:1;s:8:"search-4";}s:11:"social-icon";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(429, 'theme_switch_menu_locations', '', 'yes'),
(430, 'theme_switched_via_customizer', '', 'yes'),
(431, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(432, 'woocommerce_maybe_regenerate_images_hash', '2ca710996a9c041290da2a91a850ef6c', 'yes'),
(454, '_transient_shipping-transient-version', '1536214353', 'yes'),
(458, 'woocommerce_shop_page_display', '', 'yes'),
(469, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(470, 'siteorigin_panels_initial_version', '2.7.2', 'no'),
(473, 'flash_toolkit_admin_notices', 'a:0:{}', 'yes'),
(474, 'siteorigin_panels_active_version', '2.8.2', 'yes'),
(475, 'widget_themegrill_flash_logo', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(476, 'widget_themegrill_flash_heading', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(477, 'widget_themegrill_flash_counter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(478, 'widget_themegrill_flash_service', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(479, 'widget_themegrill_flash_about', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(480, 'widget_themegrill_flash_team', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(481, 'widget_themegrill_flash_blog', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(482, 'widget_themegrill_flash_testimonial', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(483, 'widget_themegrill_flash_slider', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(484, 'widget_themegrill_flash_portfolio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(485, 'widget_themegrill_flash_cta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(486, 'widget_themegrill_flash_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(487, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(488, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(489, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(490, 'flash_toolkit_meta_box_errors', 'a:0:{}', 'yes'),
(502, 'everest_forms_disable_user_details', 'no', 'yes'),
(503, 'evf_recaptcha_site_key', '', 'yes'),
(504, 'evf_recaptcha_site_secret', '', 'yes'),
(515, 'everest_forms_admin_notices', 'a:0:{}', 'yes'),
(569, 'widget_shop_elite_products_listings', 'a:2:{i:1;a:9:{s:5:"title";s:17:"Featured Products";s:4:"desc";s:82:"Get the best buy for your money by using most popular products among our customers";s:6:"number";i:4;s:4:"show";s:8:"featured";s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;s:13:"enable_slider";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(570, 'widget_shop_elite_category_products', 'a:3:{i:1;a:11:{s:5:"title";s:16:"Women''s Clothing";s:4:"desc";s:59:"Discover your style with our new sets of summer collections";s:8:"category";i:42;s:6:"number";i:4;s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:18:"show_category_desc";i:0;s:17:"category_desc_msg";s:0:"";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;s:13:"enable_slider";i:0;}i:2;a:11:{s:5:"title";s:15:"Latest Products";s:4:"desc";s:0:"";s:8:"category";i:0;s:6:"number";i:4;s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:18:"show_category_desc";i:1;s:17:"category_desc_msg";s:0:"";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;s:13:"enable_slider";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(571, 'widget_shop_elite_product_categories', 'a:2:{i:1;a:6:{s:5:"title";s:0:"";s:4:"desc";s:0:"";s:10:"categories";a:2:{i:0;s:2:"37";i:1;s:2:"50";}s:15:"enable_cat_desc";i:0;s:13:"enable_slider";i:0;s:15:"cat_desc_length";i:20;}s:12:"_multiwidget";i:1;}', 'yes'),
(572, 'widget_shop_elite_posts_listings', 'a:2:{i:1;a:14:{s:5:"title";s:15:"What''s Trending";s:4:"desc";s:59:"Stay updated with our tips and tricks to improve your style";s:6:"number";i:3;s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:8:"category";i:20;s:18:"show_category_desc";i:0;s:17:"category_desc_msg";s:0:"";s:14:"excerpt_length";i:10;s:17:"center_align_text";i:0;s:9:"show_date";i:1;s:11:"show_author";i:1;s:9:"show_cats";i:1;s:13:"enable_slider";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(573, 'widget_shop_elite_call_to_action', 'a:3:{i:1;a:9:{s:5:"title";s:13:"Up to 70% Off";s:4:"desc";s:49:"Get ready to enter the biggest sale of the summer";s:8:"bg_image";i:304;s:15:"bg_image_height";i:400;s:8:"btn_text";s:8:"Book Now";s:8:"btn_link";s:42:"https://themesaga.com/theme/shop-elite-pro";s:11:"link_target";i:1;s:14:"text_alignment";s:4:"left";s:15:"enable_fixed_bg";i:1;}i:2;a:9:{s:5:"title";s:0:"";s:4:"desc";s:0:"";s:8:"bg_image";i:45;s:15:"bg_image_height";i:250;s:15:"enable_fixed_bg";i:1;s:8:"btn_text";s:12:"Find Us Here";s:8:"btn_link";s:41:"https://demo.themesaga.com/shop-elite-pro";s:11:"link_target";i:1;s:14:"text_alignment";s:6:"center";}s:12:"_multiwidget";i:1;}', 'yes'),
(574, 'widget_shop_elite_social_menu', 'a:2:{i:1;a:1:{s:5:"title";s:7:"Find Us";}s:12:"_multiwidget";i:1;}', 'yes'),
(576, 'theme_mods_shop-elite', 'a:4:{s:18:"custom_css_post_id";i:-1;i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:45;s:10:"social-nav";i:46;s:11:"topbar-menu";i:47;}s:13:"theme_options";a:17:{s:16:"home_page_layout";s:10:"no-sidebar";s:16:"slider_post_type";s:4:"post";s:14:"show_preloader";b:1;s:14:"show_ad_banner";b:1;s:12:"address_info";s:26:"Address 123, City, Country";s:13:"email_address";s:21:"someaddress@email.com";s:10:"contact_no";s:19:"+123 (444) 678 4589";s:13:"global_layout";s:13:"right-sidebar";s:15:"breadcrumb_type";s:2:"wc";s:18:"slider_product_cat";i:16;s:22:"slider_static_btn_text";s:8:"Shop Now";s:22:"slider_static_btn_link";s:42:"https://demo.themesaga.com/shop-elite/shop";s:15:"slider_post_cat";i:18;s:18:"slider_desc_length";i:25;s:15:"ad_banner_image";s:85:"https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/top-pro-banner-1.jpg";s:14:"ad_banner_link";s:42:"https://themesaga.com/theme/shop-elite-pro";s:15:"pagination_type";s:7:"numeric";}}', 'yes'),
(582, 'everest_forms_recaptcha_site_key', '', 'yes'),
(583, 'everest_forms_recaptcha_site_secret', '', 'yes'),
(584, 'everest_forms_email_template', 'default', 'yes'),
(585, 'everest_forms_required_validation', 'This field is required.', 'yes'),
(586, 'everest_forms_url_validation', 'Please enter a valid URL.', 'yes'),
(587, 'everest_forms_email_validation', 'Please enter a valid email address.', 'yes'),
(588, 'everest_forms_number_validation', 'Please enter a valid number.', 'yes'),
(589, 'everest_forms_recaptcha_validation', 'Invalid reCaptcha Code.', 'yes'),
(600, 'everest_forms_default_form_page_id', '51', 'yes'),
(603, 'everest_forms_queue_flush_rewrite_rules', 'no', 'yes'),
(604, 'yit_recently_activated', 'a:0:{}', 'yes'),
(605, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(606, 'yith_wcwl_wishlist_title', 'My wishlist on MobG', 'yes'),
(607, 'yith_wcwl_version', '2.2.2', 'yes'),
(608, 'yith_wcwl_db_version', '2.2.0', 'yes'),
(609, 'yith_wcwl_general_videobox', 'a:7:{s:11:"plugin_name";s:25:"YITH WooCommerce Wishlist";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:89:"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118797844";s:15:"video_image_url";s:97:"http://localhost:90/MobG/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg";s:17:"video_description";s:0:"";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:78:"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(610, 'yith_wcwl_enabled', 'yes', 'yes'),
(611, 'yith_wcwl_wishlist_page_id', '', 'yes'),
(612, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(613, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(614, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(615, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(616, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(617, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(618, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(619, 'yith_wcwl_price_show', 'yes', 'yes'),
(620, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(621, 'yith_wcwl_stock_show', 'yes', 'yes'),
(622, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(623, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(624, 'yith_wcwl_share_fb', 'yes', 'yes'),
(625, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(626, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(627, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(628, 'yith_wcwl_share_email', 'yes', 'yes'),
(629, 'yith_wcwl_socials_title', 'My wishlist on MobG', 'yes'),
(630, 'yith_wcwl_socials_text', '', 'yes'),
(631, 'yith_wcwl_socials_image_url', '', 'yes'),
(632, 'yith_wfbt_enable_integration', 'no', 'yes'),
(633, 'yith_wcwl_use_button', 'no', 'yes'),
(634, 'yith_wcwl_custom_css', '', 'yes'),
(635, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(636, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(637, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(638, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(639, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:"yith_wcwl_panel";b:1;}', 'yes'),
(640, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(645, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:5:"color";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:4:"size";s:15:"attribute_label";s:4:"size";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(646, 'category_children', 'a:1:{i:18;a:2:{i:0;i:19;i:1;i:23;}}', 'yes'),
(651, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'yes'),
(652, 'woocommerce_category_archive_display', '', 'yes'),
(653, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(654, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(655, 'woocommerce_thumbnail_cropping_custom_width', '4', 'yes'),
(656, 'woocommerce_thumbnail_cropping_custom_height', '3', 'yes'),
(657, 'woocommerce_checkout_company_field', 'optional', 'yes'),
(658, 'woocommerce_checkout_address_2_field', 'optional', 'yes'),
(659, 'woocommerce_checkout_phone_field', 'required', 'yes'),
(660, 'woocommerce_checkout_terms_and_conditions_checkbox_text', 'I have read and agree to the website [terms]', 'yes'),
(661, 'nav_menus_created_posts', 'a:0:{}', 'yes'),
(665, '_transient_product-transient-version', '1536651856', 'yes'),
(668, '_transient_timeout_wc_var_prices_188', '1538804104', 'no'),
(669, '_transient_wc_var_prices_188', '{"version":"1535345852","aaef89feb4bd5694f68928674b3a07e3":{"price":{"189":"85.00","190":"95.00"},"regular_price":{"189":"85.00","190":"95.00"},"sale_price":{"189":"85.00","190":"95.00"}},"2d9da5e3da1b804eea2d8f371c7c348a":{"price":{"189":"85.00","190":"95.00"},"regular_price":{"189":"85.00","190":"95.00"},"sale_price":{"189":"85.00","190":"95.00"}}}', 'no'),
(1371, '_transient_timeout_external_ip_address_::1', '1536816837', 'no'),
(1372, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(1408, '_site_transient_timeout_browser_63893990e157947196a708118f825d06', '1536817867', 'no'),
(1409, '_site_transient_browser_63893990e157947196a708118f825d06', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"68.0.3440.106";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(1440, 'everest_forms_version', '1.2.4', 'yes'),
(1441, 'everest_forms_db_version', '1.2.4', 'yes'),
(1448, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1536651309;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:14:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:31:"everest-forms/everest-forms.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/everest-forms";s:4:"slug";s:13:"everest-forms";s:6:"plugin";s:31:"everest-forms/everest-forms.php";s:11:"new_version";s:5:"1.2.4";s:3:"url";s:44:"https://wordpress.org/plugins/everest-forms/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/everest-forms.1.2.4.zip";s:5:"icons";a:1:{s:2:"1x";s:66:"https://ps.w.org/everest-forms/assets/icon-128x128.png?rev=1814073";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/everest-forms/assets/banner-772x250.png?rev=1814073";}s:11:"banners_rtl";a:0:{}}s:31:"flash-toolkit/flash-toolkit.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/flash-toolkit";s:4:"slug";s:13:"flash-toolkit";s:6:"plugin";s:31:"flash-toolkit/flash-toolkit.php";s:11:"new_version";s:5:"1.1.7";s:3:"url";s:44:"https://wordpress.org/plugins/flash-toolkit/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/flash-toolkit.1.1.7.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/flash-toolkit/assets/icon-256x256.jpg?rev=1533665";s:2:"1x";s:66:"https://ps.w.org/flash-toolkit/assets/icon-128x128.jpg?rev=1533665";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/flash-toolkit/assets/banner-772x250.jpg?rev=1533665";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:19:"jetpack/jetpack.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/jetpack";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"6.5";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.6.5.zip";s:5:"icons";a:3:{s:2:"2x";s:60:"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404";s:2:"1x";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";s:3:"svg";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404";s:2:"1x";s:62:"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404";}s:11:"banners_rtl";a:0:{}}s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:39:"w.org/plugins/mailchimp-for-woocommerce";s:4:"slug";s:25:"mailchimp-for-woocommerce";s:6:"plugin";s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";s:11:"new_version";s:5:"2.1.9";s:3:"url";s:56:"https://wordpress.org/plugins/mailchimp-for-woocommerce/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:78:"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501";s:2:"1x";s:78:"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501";}s:7:"banners";a:2:{s:2:"2x";s:81:"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1557817";s:2:"1x";s:80:"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1557817";}s:11:"banners_rtl";a:0:{}}s:47:"one-click-demo-import/one-click-demo-import.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/one-click-demo-import";s:4:"slug";s:21:"one-click-demo-import";s:6:"plugin";s:47:"one-click-demo-import/one-click-demo-import.php";s:11:"new_version";s:5:"2.5.0";s:3:"url";s:52:"https://wordpress.org/plugins/one-click-demo-import/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/one-click-demo-import.2.5.0.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/one-click-demo-import/assets/icon-256x256.png?rev=1694310";s:2:"1x";s:74:"https://ps.w.org/one-click-demo-import/assets/icon-128x128.png?rev=1694310";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/one-click-demo-import/assets/banner-1544x500.png?rev=1694310";s:2:"1x";s:76:"https://ps.w.org/one-click-demo-import/assets/banner-772x250.png?rev=1694310";}s:11:"banners_rtl";a:0:{}}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/siteorigin-panels";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:5:"2.8.2";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.8.2.zip";s:5:"icons";a:2:{s:2:"2x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755";s:2:"1x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755";}s:11:"banners_rtl";a:0:{}}s:53:"themegrill-demo-importer/themegrill-demo-importer.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/themegrill-demo-importer";s:4:"slug";s:24:"themegrill-demo-importer";s:6:"plugin";s:53:"themegrill-demo-importer/themegrill-demo-importer.php";s:11:"new_version";s:5:"1.5.1";s:3:"url";s:55:"https://wordpress.org/plugins/themegrill-demo-importer/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/themegrill-demo-importer.1.5.1.zip";s:5:"icons";a:2:{s:2:"2x";s:77:"https://ps.w.org/themegrill-demo-importer/assets/icon-256x256.png?rev=1928438";s:2:"1x";s:77:"https://ps.w.org/themegrill-demo-importer/assets/icon-128x128.png?rev=1928438";}s:7:"banners";a:2:{s:2:"2x";s:80:"https://ps.w.org/themegrill-demo-importer/assets/banner-1544x500.png?rev=1928438";s:2:"1x";s:79:"https://ps.w.org/themegrill-demo-importer/assets/banner-772x250.png?rev=1928438";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.4.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.4.5.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";}s:11:"banners_rtl";a:0:{}}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":9:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.6.3";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.3.zip";s:5:"icons";a:2:{s:2:"2x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204";s:2:"1x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204";}s:7:"banners";a:2:{s:2:"2x";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204";s:2:"1x";s:98:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204";}s:11:"banners_rtl";a:0:{}}s:45:"woocommerce-services/woocommerce-services.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/woocommerce-services";s:4:"slug";s:20:"woocommerce-services";s:6:"plugin";s:45:"woocommerce-services/woocommerce-services.php";s:11:"new_version";s:6:"1.16.0";s:3:"url";s:51:"https://wordpress.org/plugins/woocommerce-services/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-services.1.16.0.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075";s:2:"1x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1910075";s:2:"1x";s:75:"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1910075";}s:11:"banners_rtl";a:0:{}}s:41:"woocommerce-square/woocommerce-square.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/woocommerce-square";s:4:"slug";s:18:"woocommerce-square";s:6:"plugin";s:41:"woocommerce-square/woocommerce-square.php";s:11:"new_version";s:6:"1.0.32";s:3:"url";s:49:"https://wordpress.org/plugins/woocommerce-square/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/woocommerce-square.1.0.32.zip";s:5:"icons";a:2:{s:2:"2x";s:71:"https://ps.w.org/woocommerce-square/assets/icon-256x256.png?rev=1909974";s:2:"1x";s:71:"https://ps.w.org/woocommerce-square/assets/icon-128x128.png?rev=1909974";}s:7:"banners";a:2:{s:2:"2x";s:74:"https://ps.w.org/woocommerce-square/assets/banner-1544x500.png?rev=1909974";s:2:"1x";s:73:"https://ps.w.org/woocommerce-square/assets/banner-772x250.png?rev=1909974";}s:11:"banners_rtl";a:0:{}}s:34:"yith-woocommerce-wishlist/init.php";O:8:"stdClass":9:{s:2:"id";s:39:"w.org/plugins/yith-woocommerce-wishlist";s:4:"slug";s:25:"yith-woocommerce-wishlist";s:6:"plugin";s:34:"yith-woocommerce-wishlist/init.php";s:11:"new_version";s:5:"2.2.3";s:3:"url";s:56:"https://wordpress.org/plugins/yith-woocommerce-wishlist/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.2.3.zip";s:5:"icons";a:1:{s:2:"1x";s:78:"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336";}s:7:"banners";a:2:{s:2:"2x";s:81:"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336";s:2:"1x";s:80:"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(1451, 'flash_toolkit_db_version', '1.1.7', 'yes'),
(1452, 'flash_toolkit_version', '1.1.7', 'yes'),
(1457, 'woocommerce_version', '3.4.5', 'yes'),
(1458, 'woocommerce_db_version', '3.4.5', 'yes'),
(1459, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1462, 'wc_square_version', '1.0.32', 'yes'),
(1466, 'woocommerce_paypal_settings', 'a:23:{s:7:"enabled";s:3:"yes";s:5:"title";s:6:"PayPal";s:11:"description";s:85:"Pay via PayPal; you can pay with your credit card if you don''t have a PayPal account.";s:5:"email";s:23:"rushighoda183@gmail.com";s:8:"advanced";s:0:"";s:8:"testmode";s:2:"no";s:5:"debug";s:2:"no";s:16:"ipn_notification";s:3:"yes";s:14:"receiver_email";s:23:"rushighoda183@gmail.com";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:3:"yes";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:10:"page_style";s:0:"";s:9:"image_url";s:0:"";s:11:"api_details";s:0:"";s:12:"api_username";s:0:"";s:12:"api_password";s:0:"";s:13:"api_signature";s:0:"";s:20:"sandbox_api_username";s:0:"";s:20:"sandbox_api_password";s:0:"";s:21:"sandbox_api_signature";s:0:"";}', 'yes'),
(1467, 'woocommerce_gateway_order', 'a:6:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;s:6:"square";i:4;s:11:"ppec_paypal";i:5;}', 'yes'),
(1468, '_transient_timeout_wc_shipping_method_count_0_1531123426', '1538806262', 'no'),
(1469, '_transient_wc_shipping_method_count_0_1531123426', '0', 'no'),
(1477, '_transient_orders-transient-version', '1536214395', 'yes'),
(1484, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1536651313;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(1583, '_transient_timeout_wc_shipping_method_count_1_1536214353', '1538806775', 'no'),
(1585, '_transient_wc_shipping_method_count_1_1536214353', '2', 'no'),
(1694, 'product_cat_children', 'a:1:{i:37;a:2:{i:0;i:39;i:1;i:44;}}', 'yes'),
(1700, '_transient_timeout_yith_wcwl_user_total_count_1', '1536998298', 'no'),
(1701, '_transient_yith_wcwl_user_total_count_1', '1', 'no'),
(1707, '_site_transient_timeout_theme_roots', '1536652982', 'no'),
(1708, '_site_transient_theme_roots', 'a:9:{s:9:"easy-shop";s:7:"/themes";s:10:"easy-store";s:7:"/themes";s:5:"flash";s:7:"/themes";s:13:"leadsurf-lite";s:7:"/themes";s:10:"shop-elite";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:23:"ultimate-ecommerce-shop";s:7:"/themes";}', 'no'),
(1710, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1536651312;s:7:"checked";a:9:{s:9:"easy-shop";s:5:"1.0.1";s:10:"easy-store";s:6:"1.0.10";s:5:"flash";s:5:"1.2.2";s:13:"leadsurf-lite";s:6:"1.0.12";s:10:"shop-elite";s:5:"1.0.2";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";s:23:"ultimate-ecommerce-shop";s:5:"0.3.1";}s:8:"response";a:3:{s:5:"flash";a:4:{s:5:"theme";s:5:"flash";s:11:"new_version";s:5:"1.2.3";s:3:"url";s:35:"https://wordpress.org/themes/flash/";s:7:"package";s:53:"https://downloads.wordpress.org/theme/flash.1.2.3.zip";}s:10:"shop-elite";a:4:{s:5:"theme";s:10:"shop-elite";s:11:"new_version";s:5:"1.0.3";s:3:"url";s:40:"https://wordpress.org/themes/shop-elite/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/shop-elite.1.0.3.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}}s:12:"translations";a:0:{}}', 'no'),
(1717, '_transient_timeout_jetpack_https_test', '1536737709', 'no'),
(1718, '_transient_jetpack_https_test', '1', 'no'),
(1719, '_transient_timeout_jetpack_https_test_message', '1536737709', 'no'),
(1720, '_transient_jetpack_https_test_message', '', 'no'),
(1723, '_transient_timeout__woocommerce_helper_updates', '1536694509', 'no'),
(1724, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1536651309;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(1725, '_transient_timeout_jetpack_idc_allowed', '1536655155', 'no'),
(1726, '_transient_jetpack_idc_allowed', '1', 'no'),
(1729, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:12:"post-trashed";s:1:"3";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;}', 'yes'),
(1730, '_transient_timeout_wc_term_counts', '1539243865', 'no'),
(1731, '_transient_wc_term_counts', 'a:3:{i:44;s:1:"1";i:37;s:1:"4";i:50;s:1:"1";}', 'no'),
(1732, '_transient_timeout_wc_related_295', '1536738473', 'no'),
(1733, '_transient_wc_related_295', 'a:1:{s:51:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=295";a:0:{}}', 'no'),
(1734, '_transient_timeout_wc_products_onsale', '1539243866', 'no'),
(1735, '_transient_wc_products_onsale', 'a:5:{i:0;i:126;i:1;i:192;i:2;i:236;i:3;i:267;i:4;i:295;}', 'no'),
(1739, '_transient_timeout_wc_related_126', '1536738685', 'no'),
(1740, '_transient_wc_related_126', 'a:1:{s:51:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=126";a:3:{i:0;s:3:"192";i:1;s:3:"236";i:2;s:3:"267";}}', 'no'),
(1741, '_transient_timeout_wc_related_236', '1536738731', 'no'),
(1742, '_transient_wc_related_236', 'a:1:{s:51:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=236";a:3:{i:0;s:3:"126";i:1;s:3:"192";i:2;s:3:"267";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=1285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2018/07/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/07/espresso.jpg";s:5:"sizes";a:8:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"espresso-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"espresso-600x360.jpg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(7, 6, '_wp_attached_file', '2018/07/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/07/sandwich.jpg";s:5:"sizes";a:8:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"sandwich-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"sandwich-600x360.jpg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(11, 7, '_wp_attached_file', '2018/07/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2018/07/coffee.jpg";s:5:"sizes";a:8:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"coffee-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"coffee-600x360.jpg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(16, 8, '_customize_changeset_uuid', '742cc6ca-4cce-44d6-b614-9724707161cc'),
(17, 9, '_thumbnail_id', '6'),
(19, 9, '_customize_changeset_uuid', '742cc6ca-4cce-44d6-b614-9724707161cc'),
(20, 10, '_thumbnail_id', '5'),
(22, 10, '_customize_changeset_uuid', '742cc6ca-4cce-44d6-b614-9724707161cc'),
(23, 11, '_thumbnail_id', '7'),
(25, 11, '_customize_changeset_uuid', '742cc6ca-4cce-44d6-b614-9724707161cc'),
(26, 12, '_thumbnail_id', '5'),
(28, 12, '_customize_changeset_uuid', '742cc6ca-4cce-44d6-b614-9724707161cc'),
(30, 19, '_menu_item_type', 'custom'),
(31, 19, '_menu_item_menu_item_parent', '0'),
(32, 19, '_menu_item_object_id', '19'),
(33, 19, '_menu_item_object', 'custom'),
(34, 19, '_menu_item_target', ''),
(35, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 19, '_menu_item_xfn', ''),
(37, 19, '_menu_item_url', 'http://localhost:90/MobG/'),
(38, 20, '_menu_item_type', 'post_type'),
(39, 20, '_menu_item_menu_item_parent', '0'),
(40, 20, '_menu_item_object_id', '9'),
(41, 20, '_menu_item_object', 'page'),
(42, 20, '_menu_item_target', ''),
(43, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 20, '_menu_item_xfn', ''),
(45, 20, '_menu_item_url', ''),
(46, 21, '_menu_item_type', 'post_type'),
(47, 21, '_menu_item_menu_item_parent', '0'),
(48, 21, '_menu_item_object_id', '11'),
(49, 21, '_menu_item_object', 'page'),
(50, 21, '_menu_item_target', ''),
(51, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 21, '_menu_item_xfn', ''),
(53, 21, '_menu_item_url', ''),
(54, 22, '_menu_item_type', 'post_type'),
(55, 22, '_menu_item_menu_item_parent', '0'),
(56, 22, '_menu_item_object_id', '10'),
(57, 22, '_menu_item_object', 'page'),
(58, 22, '_menu_item_target', ''),
(59, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 22, '_menu_item_xfn', ''),
(61, 22, '_menu_item_url', ''),
(62, 23, '_menu_item_type', 'custom'),
(63, 23, '_menu_item_menu_item_parent', '0'),
(64, 23, '_menu_item_object_id', '23'),
(65, 23, '_menu_item_object', 'custom'),
(66, 23, '_menu_item_target', ''),
(67, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 23, '_menu_item_xfn', ''),
(69, 23, '_menu_item_url', 'https://www.yelp.com'),
(70, 24, '_menu_item_type', 'custom'),
(71, 24, '_menu_item_menu_item_parent', '0'),
(72, 24, '_menu_item_object_id', '24'),
(73, 24, '_menu_item_object', 'custom'),
(74, 24, '_menu_item_target', ''),
(75, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 24, '_menu_item_xfn', ''),
(77, 24, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(78, 25, '_menu_item_type', 'custom'),
(79, 25, '_menu_item_menu_item_parent', '0'),
(80, 25, '_menu_item_object_id', '25'),
(81, 25, '_menu_item_object', 'custom'),
(82, 25, '_menu_item_target', ''),
(83, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 25, '_menu_item_xfn', ''),
(85, 25, '_menu_item_url', 'https://twitter.com/wordpress'),
(86, 26, '_menu_item_type', 'custom'),
(87, 26, '_menu_item_menu_item_parent', '0'),
(88, 26, '_menu_item_object_id', '26'),
(89, 26, '_menu_item_object', 'custom'),
(90, 26, '_menu_item_target', ''),
(91, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 26, '_menu_item_xfn', ''),
(93, 26, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(94, 27, '_menu_item_type', 'custom'),
(95, 27, '_menu_item_menu_item_parent', '0'),
(96, 27, '_menu_item_object_id', '27'),
(97, 27, '_menu_item_object', 'custom'),
(98, 27, '_menu_item_target', ''),
(99, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 27, '_menu_item_xfn', ''),
(101, 27, '_menu_item_url', 'mailto:wordpress@example.com'),
(110, 30, '_edit_last', '1'),
(111, 30, '_edit_lock', '1530937137:1'),
(119, 37, '_wp_attached_file', '2018/07/logo.jpg'),
(120, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:16:"2018/07/logo.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"logo-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:38:"ultimate-ecommerce-shop-homepage-thumb";a:4:{s:4:"file";s:16:"logo-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"logo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"logo-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:16:"logo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"logo-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 37, '_wp_attachment_image_alt', 'logo'),
(122, 38, '_wp_attached_file', '2018/07/cropped-logo.jpg'),
(123, 38, '_wp_attachment_context', 'custom-logo'),
(124, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:24:"2018/07/cropped-logo.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cropped-logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"flash-grid";a:4:{s:4:"file";s:24:"cropped-logo-300x270.jpg";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"cropped-logo-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"cropped-logo-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 40, '_wp_attached_file', '2018/07/logo-mini.jpg'),
(127, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:109;s:6:"height";i:101;s:4:"file";s:21:"2018/07/logo-mini.jpg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"logo-mini-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"logo-mini-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 41, '_wp_attached_file', '2018/07/cropped-logo-mini.jpg'),
(129, 41, '_wp_attachment_context', 'custom-logo'),
(130, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:101;s:6:"height";i:101;s:4:"file";s:29:"2018/07/cropped-logo-mini.jpg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"cropped-logo-mini-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"cropped-logo-mini-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 42, '_wp_attached_file', '2018/07/cropped-logo-mini-1.jpg'),
(132, 42, '_wp_attachment_context', 'site-icon'),
(133, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:31:"2018/07/cropped-logo-mini-1.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"flash-square";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"flash-big";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-512x400.jpg";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:10:"flash-grid";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-370x270.jpg";s:5:"width";i:370;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"cropped-logo-mini-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:31:"cropped-logo-mini-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:29:"cropped-logo-mini-1-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 43, '_wp_attached_file', '2018/07/mobile-header.jpg'),
(137, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:8;s:4:"file";s:25:"2018/07/mobile-header.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 43, '_wp_attachment_custom_header_last_used_flash', '1531122671'),
(139, 43, '_wp_attachment_is_custom_header', 'flash'),
(141, 45, '_wp_attached_file', '2018/07/f5270b-1.jpg'),
(142, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3376;s:6:"height";i:560;s:4:"file";s:20:"2018/07/f5270b-1.jpg";s:5:"sizes";a:13:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"f5270b-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:20:"f5270b-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"f5270b-1-300x50.jpg";s:5:"width";i:300;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"f5270b-1-768x127.jpg";s:5:"width";i:768;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"f5270b-1-1024x170.jpg";s:5:"width";i:1024;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:12:"flash-square";a:4:{s:4:"file";s:20:"f5270b-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"flash-big";a:4:{s:4:"file";s:20:"f5270b-1-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:10:"flash-grid";a:4:{s:4:"file";s:20:"f5270b-1-370x270.jpg";s:5:"width";i:370;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"f5270b-1-600x100.jpg";s:5:"width";i:600;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"f5270b-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:20:"f5270b-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:20:"f5270b-1-600x100.jpg";s:5:"width";i:600;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"f5270b-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(143, 46, '_wp_attached_file', '2018/07/cropped-f5270b-1.jpg'),
(144, 46, '_wp_attachment_context', 'custom-header'),
(145, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:326;s:4:"file";s:28:"2018/07/cropped-f5270b-1.jpg";s:5:"sizes";a:13:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"cropped-f5270b-1-500x326.jpg";s:5:"width";i:500;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-f5270b-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-f5270b-1-300x65.jpg";s:5:"width";i:300;s:6:"height";i:65;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"cropped-f5270b-1-768x167.jpg";s:5:"width";i:768;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"cropped-f5270b-1-1024x223.jpg";s:5:"width";i:1024;s:6:"height";i:223;s:9:"mime-type";s:10:"image/jpeg";}s:12:"flash-square";a:4:{s:4:"file";s:28:"cropped-f5270b-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"flash-big";a:4:{s:4:"file";s:28:"cropped-f5270b-1-800x326.jpg";s:5:"width";i:800;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:10:"flash-grid";a:4:{s:4:"file";s:28:"cropped-f5270b-1-370x270.jpg";s:5:"width";i:370;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:28:"cropped-f5270b-1-600x130.jpg";s:5:"width";i:600;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"cropped-f5270b-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:28:"cropped-f5270b-1-500x326.jpg";s:5:"width";i:500;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:28:"cropped-f5270b-1-600x130.jpg";s:5:"width";i:600;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"cropped-f5270b-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(146, 46, '_wp_attachment_custom_header_last_used_flash', '1531123320'),
(147, 46, '_wp_attachment_is_custom_header', 'flash'),
(150, 5, '_wp_attachment_is_custom_background', 'flash'),
(161, 53, '_wp_attached_file', '2018/07/log_file_2018-07-10__12-43-50.txt'),
(162, 54, '_wp_attached_file', '2018/05/woman-3377839_1280-1.jpg'),
(163, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:32:"2018/05/woman-3377839_1280-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"woman-3377839_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"woman-3377839_1280-1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"woman-3377839_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"woman-3377839_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS-1D X";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"100";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(164, 61, '_wp_attached_file', '2018/05/top-pro-banner-1.jpg'),
(165, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:130;s:4:"file";s:28:"2018/05/top-pro-banner-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"top-pro-banner-1-500x130.jpg";s:5:"width";i:500;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:28:"top-pro-banner-1-150x130.jpg";s:5:"width";i:150;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"top-pro-banner-1-300x20.jpg";s:5:"width";i:300;s:6:"height";i:20;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"top-pro-banner-1-768x52.jpg";s:5:"width";i:768;s:6:"height";i:52;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"top-pro-banner-1-1024x69.jpg";s:5:"width";i:1024;s:6:"height";i:69;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:28:"top-pro-banner-1-800x130.jpg";s:5:"width";i:800;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:27:"top-pro-banner-1-600x41.jpg";s:5:"width";i:600;s:6:"height";i:41;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"top-pro-banner-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:28:"top-pro-banner-1-500x130.jpg";s:5:"width";i:500;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:27:"top-pro-banner-1-600x41.jpg";s:5:"width";i:600;s:6:"height";i:41;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"top-pro-banner-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 64, '_wp_attached_file', '2018/05/slide-3-banner-1.jpg'),
(167, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:750;s:4:"file";s:28:"2018/05/slide-3-banner-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"slide-3-banner-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:28:"slide-3-banner-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"slide-3-banner-1-300x117.jpg";s:5:"width";i:300;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"slide-3-banner-1-768x300.jpg";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"slide-3-banner-1-1024x400.jpg";s:5:"width";i:1024;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:28:"slide-3-banner-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:28:"slide-3-banner-1-600x234.jpg";s:5:"width";i:600;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"slide-3-banner-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:28:"slide-3-banner-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:28:"slide-3-banner-1-600x234.jpg";s:5:"width";i:600;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"slide-3-banner-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(168, 64, '_wxr_import_parent', '49'),
(169, 75, '_wp_attached_file', '2018/05/slide-3-banner-sale-1.jpg'),
(170, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:750;s:4:"file";s:33:"2018/05/slide-3-banner-sale-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"slide-3-banner-sale-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-300x117.jpg";s:5:"width";i:300;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-768x300.jpg";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"slide-3-banner-sale-1-1024x400.jpg";s:5:"width";i:1024;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-600x234.jpg";s:5:"width";i:600;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:33:"slide-3-banner-sale-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-600x234.jpg";s:5:"width";i:600;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"slide-3-banner-sale-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(171, 75, '_wxr_import_parent', '49'),
(172, 76, '_wp_attached_file', '2018/05/briefcase-1578138_1280-1.jpg'),
(173, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:36:"2018/05/briefcase-1578138_1280-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:36:"briefcase-1578138_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"briefcase-1578138_1280-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:36:"briefcase-1578138_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"briefcase-1578138_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D5300";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"320";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 77, '_wp_attached_file', '2018/05/fashion-918446_1920-1.jpg'),
(175, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1280;s:4:"file";s:33:"2018/05/fashion-918446_1920-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"fashion-918446_1920-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"fashion-918446_1920-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:33:"fashion-918446_1920-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"fashion-918446_1920-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 78, '_wp_attached_file', '2018/05/woman-3373637_1920-1.jpg'),
(177, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1314;s:4:"file";s:32:"2018/05/woman-3373637_1920-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"woman-3373637_1920-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-768x526.jpg";s:5:"width";i:768;s:6:"height";i:526;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"woman-3373637_1920-1-1024x701.jpg";s:5:"width";i:1024;s:6:"height";i:701;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-600x411.jpg";s:5:"width";i:600;s:6:"height";i:411;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"woman-3373637_1920-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-600x411.jpg";s:5:"width";i:600;s:6:"height";i:411;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"woman-3373637_1920-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 80, '_wp_attached_file', '2018/05/gran-canaria-2782172_960_720-1.jpg'),
(179, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:42:"2018/05/gran-canaria-2782172_960_720-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:42:"gran-canaria-2782172_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(180, 80, '_wxr_import_parent', '79'),
(181, 81, '_wp_attached_file', '2018/05/gran-canaria-2787988_960_720-1.jpg'),
(182, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:640;s:4:"file";s:42:"2018/05/gran-canaria-2787988_960_720-1.jpg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2787988_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(183, 81, '_wxr_import_parent', '79'),
(184, 82, '_wp_attached_file', '2018/05/gran-canaria-2897237_960_720-1.jpg'),
(185, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:42:"2018/05/gran-canaria-2897237_960_720-1.jpg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"gran-canaria-2897237_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(186, 82, '_wxr_import_parent', '79'),
(187, 90, '_wp_attached_file', '2018/05/specs-3296472_1280-1.png'),
(188, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:32:"2018/05/specs-3296472_1280-1.png";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"specs-3296472_1280-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:33:"specs-3296472_1280-1-1024x682.png";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:9:"image/png";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-800x560.png";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"specs-3296472_1280-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"specs-3296472_1280-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(189, 98, '_wp_attached_file', '2018/05/couple-3237860_1280-1.png'),
(190, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:33:"2018/05/couple-3237860_1280-1.png";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"couple-3237860_1280-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:34:"couple-3237860_1280-1-1024x682.png";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:9:"image/png";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-800x560.png";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:5:{s:4:"file";s:33:"couple-3237860_1280-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:33:"couple-3237860_1280-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(191, 101, '_wp_attached_file', '2018/05/model-2911330_1280-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(192, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:854;s:4:"file";s:32:"2018/05/model-2911330_1280-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"model-2911330_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:32:"model-2911330_1280-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"model-2911330_1280-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"model-2911330_1280-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"model-2911330_1280-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:32:"model-2911330_1280-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"model-2911330_1280-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"model-2911330_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"model-2911330_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:32:"model-2911330_1280-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"model-2911330_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"13";s:6:"credit";s:0:"";s:6:"camera";s:9:"ILCE-7SM2";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(193, 108, '_wp_attached_file', '2018/05/fashion-3221102_1280-1.jpg'),
(194, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:852;s:4:"file";s:34:"2018/05/fashion-3221102_1280-1.jpg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"fashion-3221102_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"fashion-3221102_1280-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-600x399.jpg";s:5:"width";i:600;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"fashion-3221102_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-600x399.jpg";s:5:"width";i:600;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"fashion-3221102_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:7:"SLT-A58";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"45";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.04";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 117, '_wp_attached_file', '2018/05/girl-from-behind-1741699_1280-1.jpg'),
(196, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:43:"2018/05/girl-from-behind-1741699_1280-1.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"girl-from-behind-1741699_1280-1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"girl-from-behind-1741699_1280-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"9";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 60D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(197, 117, '_wxr_import_parent', '116'),
(198, 134, '_wp_attached_file', '2018/05/style-3270259_960_720-1.png'),
(199, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:640;s:4:"file";s:35:"2018/05/style-3270259_960_720-1.png";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"style-3270259_960_720-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-800x560.png";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:5:{s:4:"file";s:35:"style-3270259_960_720-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:35:"style-3270259_960_720-1-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 134, '_wxr_import_parent', '133'),
(201, 140, '_wp_attached_file', '2018/05/pexels-photo-234599-1.jpeg'),
(202, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1280;s:4:"file";s:34:"2018/05/pexels-photo-234599-1.jpeg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-234599-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-768x768.jpeg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"pexels-photo-234599-1-1024x1024.jpeg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-600x600.jpeg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-234599-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-600x600.jpeg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-234599-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 140, '_wxr_import_parent', '139'),
(204, 142, '_wp_attached_file', '2018/05/pexels-photo-432655-1.jpeg'),
(205, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:34:"2018/05/pexels-photo-432655-1.jpeg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-432655-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-432655-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-432655-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-432655-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(206, 142, '_wxr_import_parent', '126'),
(207, 145, '_wp_attached_file', '2018/05/pexels-photo-845434-1.jpeg'),
(208, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:34:"2018/05/pexels-photo-845434-1.jpeg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-845434-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-845434-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-845434-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-845434-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(209, 145, '_wxr_import_parent', '113'),
(210, 147, '_wp_attached_file', '2018/05/pexels-photo-1036623-1.jpeg'),
(211, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:854;s:4:"file";s:35:"2018/05/pexels-photo-1036623-1.jpeg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"pexels-photo-1036623-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"pexels-photo-1036623-1-1024x683.jpeg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:35:"pexels-photo-1036623-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"pexels-photo-1036623-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(212, 147, '_wxr_import_parent', '143'),
(221, 149, '_menu_item_type', 'post_type'),
(222, 149, '_menu_item_menu_item_parent', '0'),
(223, 149, '_menu_item_object_id', '248'),
(224, 149, '_menu_item_object', 'page'),
(225, 149, '_menu_item_target', ''),
(226, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(227, 149, '_menu_item_xfn', ''),
(228, 149, '_menu_item_url', ''),
(240, 151, '_menu_item_type', 'custom'),
(241, 151, '_menu_item_menu_item_parent', '0'),
(242, 151, '_menu_item_object_id', '151'),
(243, 151, '_menu_item_object', 'custom'),
(244, 151, '_menu_item_target', '_blank'),
(245, 151, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(246, 151, '_menu_item_xfn', ''),
(247, 151, '_menu_item_url', 'http://facebook.com'),
(248, 152, '_menu_item_type', 'custom'),
(249, 152, '_menu_item_menu_item_parent', '0'),
(250, 152, '_menu_item_object_id', '152'),
(251, 152, '_menu_item_object', 'custom'),
(252, 152, '_menu_item_target', '_blank'),
(253, 152, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 152, '_menu_item_xfn', ''),
(255, 152, '_menu_item_url', 'http://twitter.com'),
(256, 152, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(257, 153, '_wp_attached_file', '2018/05/girl-cold-freeze-woman-47738-1.jpeg'),
(258, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:43:"2018/05/girl-cold-freeze-woman-47738-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"girl-cold-freeze-woman-47738-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:43:"girl-cold-freeze-woman-47738-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(259, 153, '_wxr_import_parent', '143'),
(260, 157, '_wp_attached_file', '2018/05/pexels-photo-277459-1.jpeg'),
(261, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:851;s:4:"file";s:34:"2018/05/pexels-photo-277459-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-277459-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-300x199.jpeg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-768x511.jpeg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-277459-1-1024x681.jpeg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-600x399.jpeg";s:5:"width";i:600;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-277459-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-600x399.jpeg";s:5:"width";i:600;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"pexels-photo-277459-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(262, 157, '_wxr_import_parent', '156'),
(263, 160, '_wp_attached_file', '2018/05/photo-camera-subject-photographer-51383-1.jpeg'),
(264, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:54:"2018/05/photo-camera-subject-photographer-51383-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"photo-camera-subject-photographer-51383-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:54:"photo-camera-subject-photographer-51383-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(265, 160, '_wxr_import_parent', '158'),
(266, 173, '_wp_attached_file', '2018/05/pexels-photo-45055-2.jpeg'),
(267, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:33:"2018/05/pexels-photo-45055-2.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"pexels-photo-45055-2-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"pexels-photo-45055-2-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:33:"pexels-photo-45055-2-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:33:"pexels-photo-45055-2-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(269, 177, '_wp_attached_file', '2018/05/pexels-photo-815494-1.jpeg'),
(270, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:34:"2018/05/pexels-photo-815494-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-815494-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-815494-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-815494-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"pexels-photo-815494-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(272, 197, '_wp_attached_file', '2018/05/shopping-mall-1316787_960_720-1.jpg'),
(273, 197, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:640;s:4:"file";s:43:"2018/05/shopping-mall-1316787_960_720-1.jpg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"shopping-mall-1316787_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"44";s:3:"iso";s:3:"720";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(274, 197, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(275, 198, '_wp_attached_file', '2018/05/wrist-watch-2159785_960_720-1.jpg'),
(276, 198, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:671;s:4:"file";s:41:"2018/05/wrist-watch-2159785_960_720-1.jpg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-300x210.jpg";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-768x537.jpg";s:5:"width";i:768;s:6:"height";i:537;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-600x419.jpg";s:5:"width";i:600;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-600x419.jpg";s:5:"width";i:600;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:41:"wrist-watch-2159785_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:9:"DMC-FZ300";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"16.4";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(277, 198, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(278, 199, '_wp_attached_file', '2018/05/fashion-2208045_960_720-1.jpg'),
(279, 199, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:640;s:4:"file";s:37:"2018/05/fashion-2208045_960_720-1.jpg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:37:"fashion-2208045_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:37:"fashion-2208045_960_720-1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"fashion-2208045_960_720-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D5300";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"24";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(280, 199, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(281, 202, '_wp_attached_file', '2018/05/pexels-photo-46710-1.jpeg'),
(282, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:33:"2018/05/pexels-photo-46710-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"pexels-photo-46710-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"pexels-photo-46710-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:33:"pexels-photo-46710-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:33:"pexels-photo-46710-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(284, 203, '_wp_attached_file', '2018/05/pexels-photo-249210-1.jpeg'),
(285, 203, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:34:"2018/05/pexels-photo-249210-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-249210-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-249210-1-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-249210-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-600x400.jpeg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"pexels-photo-249210-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(287, 204, '_wp_attached_file', '2018/05/pexels-photo-735273-1.jpeg'),
(288, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1706;s:4:"file";s:34:"2018/05/pexels-photo-735273-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-735273-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-225x300.jpeg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"pexels-photo-735273-1-768x1024.jpeg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-735273-1-768x1024.jpeg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-600x800.jpeg";s:5:"width";i:600;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-735273-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-600x800.jpeg";s:5:"width";i:600;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"pexels-photo-735273-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(290, 205, '_wp_attached_file', '2018/05/pexels-photo-902981-1.jpeg'),
(291, 205, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:851;s:4:"file";s:34:"2018/05/pexels-photo-902981-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"pexels-photo-902981-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-300x199.jpeg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-768x511.jpeg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"pexels-photo-902981-1-1024x681.jpeg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-600x399.jpeg";s:5:"width";i:600;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"pexels-photo-902981-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-600x399.jpeg";s:5:"width";i:600;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"pexels-photo-902981-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(293, 206, '_wp_attached_file', '2018/05/sunglasses-glasses-fashion-40902-1.jpeg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(294, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:1025;s:4:"file";s:47:"2018/05/sunglasses-glasses-fashion-40902-1.jpeg";s:5:"sizes";a:12:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-300x240.jpeg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-768x615.jpeg";s:5:"width";i:768;s:6:"height";i:615;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:48:"sunglasses-glasses-fashion-40902-1-1024x820.jpeg";s:5:"width";i:1024;s:6:"height";i:820;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-600x480.jpeg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-600x480.jpeg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:47:"sunglasses-glasses-fashion-40902-1-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(296, 237, '_wp_attached_file', '2018/06/guitar-2925274_960_720.jpg'),
(297, 237, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:567;s:4:"file";s:34:"2018/06/guitar-2925274_960_720.jpg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"guitar-2925274_960_720-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-768x454.jpg";s:5:"width";i:768;s:6:"height";i:454;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-800x560.jpg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-600x354.jpg";s:5:"width";i:600;s:6:"height";i:354;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"guitar-2925274_960_720-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-600x354.jpg";s:5:"width";i:600;s:6:"height";i:354;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_thumbnail_preview";a:4:{s:4:"file";s:34:"guitar-2925274_960_720-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 246, '_wp_attached_file', '2018/06/pexels-photo-297755.jpeg'),
(300, 246, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:835;s:4:"file";s:32:"2018/06/pexels-photo-297755.jpeg";s:5:"sizes";a:11:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"pexels-photo-297755-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:9:"thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-297755-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"pexels-photo-297755-300x196.jpeg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"pexels-photo-297755-768x501.jpeg";s:5:"width";i:768;s:6:"height";i:501;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"pexels-photo-297755-1024x668.jpeg";s:5:"width";i:1024;s:6:"height";i:668;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:32:"pexels-photo-297755-800x560.jpeg";s:5:"width";i:800;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"pexels-photo-297755-600x391.jpeg";s:5:"width";i:600;s:6:"height";i:391;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-297755-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"pexels-photo-297755-500x500.jpeg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:32:"pexels-photo-297755-600x391.jpeg";s:5:"width";i:600;s:6:"height";i:391;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-297755-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(301, 247, '_wp_page_template', 'default'),
(302, 249, '_menu_item_type', 'custom'),
(303, 249, '_menu_item_menu_item_parent', '0'),
(304, 249, '_menu_item_object_id', '249'),
(305, 249, '_menu_item_object', 'custom'),
(306, 249, '_menu_item_target', '_blank'),
(307, 249, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(308, 249, '_menu_item_xfn', ''),
(309, 249, '_menu_item_url', 'http://linkedin.com'),
(310, 249, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(311, 250, '_menu_item_type', 'custom'),
(312, 250, '_menu_item_menu_item_parent', '0'),
(313, 250, '_menu_item_object_id', '250'),
(314, 250, '_menu_item_object', 'custom'),
(315, 250, '_menu_item_target', '_blank'),
(316, 250, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(317, 250, '_menu_item_xfn', ''),
(318, 250, '_menu_item_url', 'http://instagram.com'),
(319, 250, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(320, 251, '_menu_item_type', 'custom'),
(321, 251, '_menu_item_menu_item_parent', '0'),
(322, 251, '_menu_item_object_id', '251'),
(323, 251, '_menu_item_object', 'custom'),
(324, 251, '_menu_item_target', '_blank'),
(325, 251, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(326, 251, '_menu_item_xfn', ''),
(327, 251, '_menu_item_url', 'http://plus.google.com'),
(328, 251, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(387, 74, '_menu_item_type', 'post_type'),
(388, 74, '_menu_item_menu_item_parent', '0'),
(389, 74, '_menu_item_object_id', '207'),
(390, 74, '_menu_item_object', 'page'),
(391, 74, '_menu_item_target', ''),
(392, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(393, 74, '_menu_item_xfn', ''),
(394, 74, '_menu_item_url', ''),
(395, 74, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(397, 161, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(398, 163, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(399, 207, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(400, 223, '_menu_item_type', 'post_type'),
(401, 223, '_menu_item_menu_item_parent', '0'),
(402, 223, '_menu_item_object_id', '207'),
(403, 223, '_menu_item_object', 'page'),
(404, 223, '_menu_item_target', ''),
(405, 223, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(406, 223, '_menu_item_xfn', ''),
(407, 223, '_menu_item_url', ''),
(408, 224, '_menu_item_type', 'post_type'),
(409, 224, '_menu_item_menu_item_parent', '0'),
(410, 224, '_menu_item_object_id', '254'),
(411, 224, '_menu_item_object', 'page'),
(412, 224, '_menu_item_target', ''),
(413, 224, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(414, 224, '_menu_item_xfn', ''),
(415, 224, '_menu_item_url', ''),
(443, 49, '_thumbnail_id', '64'),
(444, 49, '_wp_old_date', '2018-05-22'),
(445, 49, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(448, 113, '_thumbnail_id', '145'),
(449, 113, '_wp_old_slug', 'asdasd'),
(450, 113, '_wp_old_slug', 'summer-look-2'),
(451, 113, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(454, 116, '_thumbnail_id', '117'),
(455, 116, '_wp_old_slug', 'qewqewqewq'),
(456, 116, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(457, 126, '_wc_review_count', '0'),
(458, 126, '_wc_rating_count', 'a:0:{}'),
(459, 126, '_wc_average_rating', '0'),
(461, 126, '_sku', ''),
(462, 126, '_regular_price', '75000'),
(463, 126, '_sale_price', '74300'),
(464, 126, '_sale_price_dates_from', ''),
(465, 126, '_sale_price_dates_to', ''),
(466, 126, 'total_sales', '0'),
(467, 126, '_tax_status', 'taxable'),
(468, 126, '_tax_class', ''),
(469, 126, '_manage_stock', 'no'),
(470, 126, '_backorders', 'no'),
(471, 126, '_sold_individually', 'no'),
(472, 126, '_weight', ''),
(473, 126, '_length', ''),
(474, 126, '_width', ''),
(475, 126, '_height', ''),
(476, 126, '_upsell_ids', 'a:0:{}'),
(477, 126, '_crosssell_ids', 'a:0:{}'),
(478, 126, '_purchase_note', ''),
(479, 126, '_default_attributes', 'a:0:{}'),
(480, 126, '_virtual', 'no'),
(481, 126, '_downloadable', 'no'),
(482, 126, '_product_image_gallery', ''),
(483, 126, '_download_limit', '-1'),
(484, 126, '_download_expiry', '-1'),
(485, 126, '_stock', NULL),
(486, 126, '_stock_status', 'instock'),
(487, 126, '_product_version', '3.4.3'),
(488, 126, '_price', '74300'),
(489, 126, '_wp_old_slug', 'sadasd'),
(490, 126, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(630, 158, '_wc_review_count', '0'),
(631, 158, '_wc_rating_count', 'a:0:{}'),
(632, 158, '_wc_average_rating', '0'),
(633, 158, '_thumbnail_id', '160'),
(634, 158, '_sku', ''),
(635, 158, '_regular_price', '2000'),
(636, 158, '_sale_price', '1500'),
(637, 158, '_sale_price_dates_from', ''),
(638, 158, '_sale_price_dates_to', ''),
(639, 158, 'total_sales', '0'),
(640, 158, '_tax_status', 'taxable'),
(641, 158, '_tax_class', ''),
(642, 158, '_manage_stock', 'no'),
(643, 158, '_backorders', 'no'),
(644, 158, '_sold_individually', 'no'),
(645, 158, '_weight', ''),
(646, 158, '_length', ''),
(647, 158, '_width', ''),
(648, 158, '_height', ''),
(649, 158, '_upsell_ids', 'a:0:{}'),
(650, 158, '_crosssell_ids', 'a:0:{}'),
(651, 158, '_purchase_note', ''),
(652, 158, '_default_attributes', 'a:0:{}'),
(653, 158, '_virtual', 'no'),
(654, 158, '_downloadable', 'no'),
(655, 158, '_product_image_gallery', ''),
(656, 158, '_download_limit', '-1'),
(657, 158, '_download_expiry', '-1'),
(658, 158, '_stock', ''),
(659, 158, '_stock_status', 'instock'),
(660, 158, '_product_version', '3.4.3'),
(661, 158, '_price', '1500'),
(662, 158, '_wp_old_slug', 'black-camera'),
(663, 158, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(664, 166, '_wc_review_count', '0'),
(665, 166, '_wc_rating_count', 'a:0:{}'),
(666, 166, '_wc_average_rating', '0'),
(667, 166, '_thumbnail_id', '173'),
(668, 166, '_sku', ''),
(669, 166, '_regular_price', '150'),
(670, 166, '_sale_price', ''),
(671, 166, '_sale_price_dates_from', ''),
(672, 166, '_sale_price_dates_to', ''),
(673, 166, 'total_sales', '1'),
(674, 166, '_tax_status', 'taxable'),
(675, 166, '_tax_class', ''),
(676, 166, '_manage_stock', 'no'),
(677, 166, '_backorders', 'no'),
(678, 166, '_sold_individually', 'no'),
(679, 166, '_weight', ''),
(680, 166, '_length', ''),
(681, 166, '_width', ''),
(682, 166, '_height', ''),
(683, 166, '_upsell_ids', 'a:0:{}'),
(684, 166, '_crosssell_ids', 'a:0:{}'),
(685, 166, '_purchase_note', ''),
(686, 166, '_default_attributes', 'a:0:{}'),
(687, 166, '_virtual', 'no'),
(688, 166, '_downloadable', 'no'),
(689, 166, '_product_image_gallery', ''),
(690, 166, '_download_limit', '-1'),
(691, 166, '_download_expiry', '-1'),
(692, 166, '_stock', ''),
(693, 166, '_stock_status', 'instock'),
(694, 166, '_product_version', '3.4.3'),
(695, 166, '_price', '150'),
(696, 166, '_wp_old_slug', 'asdasda'),
(697, 166, '_wp_old_slug', 'leather-jacket'),
(698, 166, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(699, 168, '_wc_review_count', '2'),
(700, 168, '_wc_rating_count', 'a:2:{i:4;i:1;i:5;i:1;}'),
(701, 168, '_wc_average_rating', '4.50'),
(702, 168, '_sku', '56I33xQe'),
(703, 168, '_regular_price', '200'),
(704, 168, '_sale_price', ''),
(705, 168, '_sale_price_dates_from', ''),
(706, 168, '_sale_price_dates_to', ''),
(707, 168, 'total_sales', '2'),
(708, 168, '_tax_status', 'taxable'),
(709, 168, '_tax_class', ''),
(710, 168, '_manage_stock', 'no'),
(711, 168, '_backorders', 'no'),
(712, 168, '_sold_individually', 'no'),
(713, 168, '_weight', ''),
(714, 168, '_length', ''),
(715, 168, '_width', ''),
(716, 168, '_height', ''),
(717, 168, '_upsell_ids', 'a:0:{}'),
(718, 168, '_crosssell_ids', 'a:0:{}'),
(719, 168, '_purchase_note', ''),
(720, 168, '_default_attributes', 'a:0:{}'),
(721, 168, '_virtual', 'no'),
(722, 168, '_downloadable', 'no'),
(723, 168, '_product_image_gallery', ''),
(724, 168, '_download_limit', '-1'),
(725, 168, '_download_expiry', '-1'),
(726, 168, '_stock', ''),
(727, 168, '_stock_status', 'instock'),
(728, 168, '_product_version', '3.4.3'),
(729, 168, '_price', '200'),
(730, 168, '_thumbnail_id', '177'),
(731, 168, '_wp_old_slug', 'sadasdasd'),
(732, 168, '_wp_old_slug', 'silver-macbook'),
(733, 168, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(736, 178, '_thumbnail_id', '147'),
(737, 178, '_wp_old_slug', 'asdasdas'),
(738, 178, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(741, 182, '_thumbnail_id', '54'),
(742, 182, '_wp_old_slug', 'rock-casual'),
(743, 182, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(746, 185, '_thumbnail_id', '101'),
(747, 185, '_wp_old_slug', 'asdsa'),
(748, 185, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(761, 188, '_wc_review_count', '0'),
(762, 188, '_wc_rating_count', 'a:0:{}'),
(763, 188, '_wc_average_rating', '0'),
(764, 188, '_sku', ''),
(765, 188, '_regular_price', ''),
(766, 188, '_sale_price', ''),
(767, 188, '_sale_price_dates_from', ''),
(768, 188, '_sale_price_dates_to', ''),
(769, 188, 'total_sales', '0'),
(770, 188, '_tax_status', 'taxable'),
(771, 188, '_tax_class', ''),
(772, 188, '_manage_stock', 'no'),
(773, 188, '_backorders', 'no'),
(774, 188, '_sold_individually', 'no'),
(775, 188, '_weight', ''),
(776, 188, '_length', ''),
(777, 188, '_width', ''),
(778, 188, '_height', ''),
(779, 188, '_upsell_ids', 'a:0:{}'),
(780, 188, '_crosssell_ids', 'a:0:{}'),
(781, 188, '_purchase_note', ''),
(782, 188, '_default_attributes', 'a:1:{s:8:"pa_color";s:3:"red";}'),
(783, 188, '_virtual', 'no'),
(784, 188, '_downloadable', 'no'),
(785, 188, '_product_image_gallery', '82,81'),
(786, 188, '_download_limit', '-1'),
(787, 188, '_download_expiry', '-1'),
(788, 188, '_stock', ''),
(789, 188, '_stock_status', 'instock'),
(790, 188, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(791, 188, '_product_version', '3.4.1'),
(792, 188, '_thumbnail_id', '80'),
(793, 188, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(794, 188, '_price', '85'),
(795, 188, '_price', '95'),
(796, 189, '_variation_description', ''),
(797, 189, '_sku', ''),
(798, 189, '_regular_price', '85'),
(799, 189, '_sale_price', ''),
(800, 189, '_sale_price_dates_from', ''),
(801, 189, '_sale_price_dates_to', ''),
(802, 189, 'total_sales', '0'),
(803, 189, '_tax_status', 'taxable'),
(804, 189, '_tax_class', 'parent'),
(805, 189, '_manage_stock', 'no'),
(806, 189, '_backorders', 'no'),
(807, 189, '_sold_individually', 'no'),
(808, 189, '_weight', ''),
(809, 189, '_length', ''),
(810, 189, '_width', ''),
(811, 189, '_height', ''),
(812, 189, '_upsell_ids', 'a:0:{}'),
(813, 189, '_crosssell_ids', 'a:0:{}'),
(814, 189, '_purchase_note', ''),
(815, 189, '_default_attributes', 'a:0:{}'),
(816, 189, '_virtual', 'no'),
(817, 189, '_downloadable', 'no'),
(818, 189, '_product_image_gallery', ''),
(819, 189, '_download_limit', '-1'),
(820, 189, '_download_expiry', '-1'),
(821, 189, '_stock', ''),
(822, 189, '_stock_status', 'instock'),
(823, 189, '_wc_average_rating', '0'),
(824, 189, '_wc_rating_count', 'a:0:{}'),
(825, 189, '_wc_review_count', '0'),
(826, 189, '_downloadable_files', 'a:0:{}'),
(827, 189, 'attribute_pa_color', 'blue'),
(828, 189, '_price', '85'),
(829, 189, '_product_version', '3.4.1'),
(830, 189, '_thumbnail_id', '81'),
(831, 189, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(832, 190, '_variation_description', ''),
(833, 190, '_sku', ''),
(834, 190, '_regular_price', '95'),
(835, 190, '_sale_price', ''),
(836, 190, '_sale_price_dates_from', ''),
(837, 190, '_sale_price_dates_to', ''),
(838, 190, 'total_sales', '0'),
(839, 190, '_tax_status', 'taxable'),
(840, 190, '_tax_class', 'parent'),
(841, 190, '_manage_stock', 'no'),
(842, 190, '_backorders', 'no'),
(843, 190, '_sold_individually', 'no'),
(844, 190, '_weight', ''),
(845, 190, '_length', ''),
(846, 190, '_width', ''),
(847, 190, '_height', ''),
(848, 190, '_upsell_ids', 'a:0:{}'),
(849, 190, '_crosssell_ids', 'a:0:{}'),
(850, 190, '_purchase_note', ''),
(851, 190, '_default_attributes', 'a:0:{}'),
(852, 190, '_virtual', 'no'),
(853, 190, '_downloadable', 'no'),
(854, 190, '_product_image_gallery', ''),
(855, 190, '_download_limit', '-1'),
(856, 190, '_download_expiry', '-1'),
(857, 190, '_stock', ''),
(858, 190, '_stock_status', 'instock'),
(859, 190, '_wc_average_rating', '0'),
(860, 190, '_wc_rating_count', 'a:0:{}'),
(861, 190, '_wc_review_count', '0'),
(862, 190, '_downloadable_files', 'a:0:{}'),
(863, 190, 'attribute_pa_color', 'red'),
(864, 190, '_price', '95'),
(865, 190, '_product_version', '3.4.1'),
(866, 190, '_thumbnail_id', '80'),
(867, 190, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(868, 191, '_wc_review_count', '0'),
(869, 191, '_wc_rating_count', 'a:0:{}'),
(870, 191, '_wc_average_rating', '0'),
(871, 191, '_children', 'a:3:{i:0;i:158;i:1;i:168;i:2;i:156;}'),
(872, 191, '_sku', ''),
(873, 191, '_regular_price', ''),
(874, 191, '_sale_price', ''),
(875, 191, '_sale_price_dates_from', ''),
(876, 191, '_sale_price_dates_to', ''),
(877, 191, 'total_sales', '0'),
(878, 191, '_tax_status', 'taxable'),
(879, 191, '_tax_class', ''),
(880, 191, '_manage_stock', 'no'),
(881, 191, '_backorders', 'no'),
(882, 191, '_sold_individually', 'no'),
(883, 191, '_weight', ''),
(884, 191, '_length', ''),
(885, 191, '_width', ''),
(886, 191, '_height', ''),
(887, 191, '_upsell_ids', 'a:0:{}'),
(888, 191, '_crosssell_ids', 'a:0:{}'),
(889, 191, '_purchase_note', ''),
(890, 191, '_default_attributes', 'a:0:{}'),
(891, 191, '_virtual', 'no'),
(892, 191, '_downloadable', 'no'),
(893, 191, '_product_image_gallery', ''),
(894, 191, '_download_limit', '-1'),
(895, 191, '_download_expiry', '-1'),
(896, 191, '_stock', ''),
(897, 191, '_stock_status', 'instock'),
(898, 191, '_product_version', '3.4.1'),
(899, 191, '_price', ''),
(900, 191, '_price', ''),
(901, 191, '_thumbnail_id', '108'),
(902, 191, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(903, 192, '_wc_review_count', '0'),
(904, 192, '_wc_rating_count', 'a:0:{}'),
(905, 192, '_wc_average_rating', '0'),
(906, 192, '_thumbnail_id', '269'),
(907, 192, '_sku', ''),
(908, 192, '_regular_price', '58000'),
(909, 192, '_sale_price', '57200'),
(910, 192, '_sale_price_dates_from', ''),
(911, 192, '_sale_price_dates_to', ''),
(912, 192, 'total_sales', '0'),
(913, 192, '_tax_status', 'shipping'),
(914, 192, '_tax_class', ''),
(915, 192, '_manage_stock', 'no'),
(916, 192, '_backorders', 'no'),
(917, 192, '_sold_individually', 'no'),
(918, 192, '_weight', ''),
(919, 192, '_length', ''),
(920, 192, '_width', ''),
(921, 192, '_height', ''),
(922, 192, '_upsell_ids', 'a:0:{}'),
(923, 192, '_crosssell_ids', 'a:0:{}'),
(924, 192, '_purchase_note', ''),
(925, 192, '_default_attributes', 'a:0:{}'),
(926, 192, '_virtual', 'no'),
(927, 192, '_downloadable', 'no'),
(928, 192, '_product_image_gallery', ''),
(929, 192, '_download_limit', '-1'),
(930, 192, '_download_expiry', '-1'),
(931, 192, '_stock', NULL),
(932, 192, '_stock_status', 'instock'),
(933, 192, '_product_url', 'https://demo.themesaga.com/shop-elite/product/combo-set/'),
(934, 192, '_button_text', 'Buy from Here'),
(935, 192, '_product_version', '3.4.3'),
(936, 192, '_price', '57200'),
(937, 192, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(938, 201, '_wc_review_count', '0'),
(939, 201, '_wc_rating_count', 'a:0:{}'),
(940, 201, '_wc_average_rating', '0'),
(941, 201, '_thumbnail_id', '264'),
(942, 201, '_sku', ''),
(943, 201, '_regular_price', '12000'),
(944, 201, '_sale_price', '11500'),
(945, 201, '_sale_price_dates_from', ''),
(946, 201, '_sale_price_dates_to', ''),
(947, 201, 'total_sales', '3'),
(948, 201, '_tax_status', 'taxable'),
(949, 201, '_tax_class', ''),
(950, 201, '_manage_stock', 'no'),
(951, 201, '_backorders', 'no'),
(952, 201, '_sold_individually', 'no'),
(953, 201, '_weight', ''),
(954, 201, '_length', ''),
(955, 201, '_width', ''),
(956, 201, '_height', ''),
(957, 201, '_upsell_ids', 'a:2:{i:0;i:133;i:1;i:143;}'),
(958, 201, '_crosssell_ids', 'a:3:{i:0;i:158;i:1;i:168;i:2;i:126;}'),
(959, 201, '_purchase_note', ''),
(960, 201, '_default_attributes', 'a:0:{}'),
(961, 201, '_virtual', 'no'),
(962, 201, '_downloadable', 'no'),
(963, 201, '_product_image_gallery', '204,205,206,202'),
(964, 201, '_download_limit', '-1'),
(965, 201, '_download_expiry', '-1'),
(966, 201, '_stock', NULL),
(967, 201, '_stock_status', 'instock'),
(968, 201, '_product_version', '3.4.3'),
(969, 201, '_price', '11500'),
(970, 201, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(971, 201, '_wxr_import_user_slug', 'themeauthor@themesaga.com'),
(972, 234, '_order_key', 'wc_order_5b14d9d5de521'),
(973, 234, '_customer_user', '4'),
(974, 234, '_payment_method', 'cod'),
(975, 234, '_payment_method_title', 'Cash on delivery'),
(976, 234, '_transaction_id', ''),
(977, 234, '_customer_ip_address', '27.34.104.166'),
(978, 234, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(979, 234, '_created_via', 'checkout'),
(980, 234, '_date_completed', ''),
(981, 234, '_completed_date', ''),
(982, 234, '_date_paid', ''),
(983, 234, '_paid_date', ''),
(984, 234, '_cart_hash', '6861f53e711ce348b480cc885caab2b9'),
(985, 234, '_billing_first_name', 'ram'),
(986, 234, '_billing_last_name', 'prasad'),
(987, 234, '_billing_company', 'company name'),
(988, 234, '_billing_address_1', '123'),
(989, 234, '_billing_address_2', ''),
(990, 234, '_billing_city', 'ktm'),
(991, 234, '_billing_state', 'BAG'),
(992, 234, '_billing_postcode', '44'),
(993, 234, '_billing_country', 'NP'),
(994, 234, '_billing_email', 'rubal.crest@gmail.com'),
(995, 234, '_billing_phone', '12312312312312'),
(996, 234, '_shipping_first_name', 'ram'),
(997, 234, '_shipping_last_name', 'prasad'),
(998, 234, '_shipping_company', 'company name'),
(999, 234, '_shipping_address_1', '123'),
(1000, 234, '_shipping_address_2', ''),
(1001, 234, '_shipping_city', 'ktm'),
(1002, 234, '_shipping_state', 'BAG'),
(1003, 234, '_shipping_postcode', '44'),
(1004, 234, '_shipping_country', 'NP'),
(1005, 234, '_order_currency', 'GBP'),
(1006, 234, '_cart_discount', '0'),
(1007, 234, '_cart_discount_tax', '0'),
(1008, 234, '_order_shipping', '55.00'),
(1009, 234, '_order_shipping_tax', '0'),
(1010, 234, '_order_tax', '0'),
(1011, 234, '_order_total', '3190.00'),
(1012, 234, '_order_version', '3.4.1'),
(1013, 234, '_prices_include_tax', 'no'),
(1014, 234, '_billing_address_index', 'ram prasad company name 123  ktm BAG 44 NP rubal.crest@gmail.com 12312312312312'),
(1015, 234, '_shipping_address_index', 'ram prasad company name 123  ktm BAG 44 NP'),
(1016, 234, '_download_permissions_granted', 'yes'),
(1017, 234, '_recorded_sales', 'yes'),
(1018, 234, '_recorded_coupon_usage_counts', 'yes'),
(1019, 234, '_order_stock_reduced', 'yes'),
(1020, 236, '_wc_review_count', '0'),
(1021, 236, '_wc_rating_count', 'a:0:{}'),
(1022, 236, '_wc_average_rating', '0'),
(1023, 236, '_thumbnail_id', '258'),
(1024, 236, '_sku', ''),
(1025, 236, '_regular_price', '110000'),
(1026, 236, '_sale_price', '108000'),
(1027, 236, '_sale_price_dates_from', ''),
(1028, 236, '_sale_price_dates_to', ''),
(1029, 236, 'total_sales', '0'),
(1030, 236, '_tax_status', 'taxable'),
(1031, 236, '_tax_class', ''),
(1032, 236, '_manage_stock', 'no'),
(1033, 236, '_backorders', 'no'),
(1034, 236, '_sold_individually', 'no'),
(1035, 236, '_weight', ''),
(1036, 236, '_length', ''),
(1037, 236, '_width', ''),
(1038, 236, '_height', ''),
(1039, 236, '_upsell_ids', 'a:0:{}'),
(1040, 236, '_crosssell_ids', 'a:0:{}'),
(1041, 236, '_purchase_note', ''),
(1042, 236, '_default_attributes', 'a:0:{}'),
(1043, 236, '_virtual', 'no'),
(1044, 236, '_downloadable', 'no'),
(1045, 236, '_product_image_gallery', ''),
(1046, 236, '_download_limit', '-1'),
(1047, 236, '_download_expiry', '-1'),
(1048, 236, '_stock', NULL),
(1049, 236, '_stock_status', 'instock'),
(1050, 236, '_product_version', '3.4.3'),
(1051, 236, '_price', '108000'),
(1052, 12, '_edit_lock', '1531227285:1'),
(1053, 31, '_edit_lock', '1531227379:1'),
(1054, 158, '_edit_lock', '1531230110:1'),
(1058, 161, '_edit_lock', '1536393206:1'),
(1059, 236, '_edit_lock', '1534136771:1'),
(1060, 256, '_wp_attached_file', '2018/06/peg.8b6673ce3a.999x165x220.jpg'),
(1061, 256, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:220;s:4:"file";s:38:"2018/06/peg.8b6673ce3a.999x165x220.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"peg.8b6673ce3a.999x165x220-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:38:"peg.8b6673ce3a.999x165x220-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"peg.8b6673ce3a.999x165x220-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1062, 258, '_wp_attached_file', '2018/06/apple.jpg'),
(1063, 258, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:210;s:4:"file";s:17:"2018/06/apple.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"apple-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"apple-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"apple-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1064, 236, '_edit_last', '1'),
(1065, 236, '_wcsquare_disable_sync', 'no'),
(1070, 192, '_edit_lock', '1534136377:1'),
(1071, 201, '_edit_lock', '1533960903:1'),
(1077, 264, '_wp_attached_file', '2018/05/peg.0904ca59c9.999x165x220.jpg'),
(1078, 264, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:220;s:4:"file";s:38:"2018/05/peg.0904ca59c9.999x165x220.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"peg.0904ca59c9.999x165x220-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:38:"peg.0904ca59c9.999x165x220-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:38:"peg.0904ca59c9.999x165x220-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1079, 201, '_edit_last', '1'),
(1080, 201, '_wcsquare_disable_sync', 'no'),
(1081, 265, '_wp_attached_file', '2018/08/wallpaper.jpg'),
(1082, 265, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:194;s:4:"file";s:21:"2018/08/wallpaper.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"wallpaper-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"wallpaper-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1083, 266, '_wp_attached_file', '2018/08/iphone-7.jpg'),
(1084, 266, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:183;s:6:"height";i:275;s:4:"file";s:20:"2018/08/iphone-7.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"iphone-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"iphone-7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"iphone-7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1085, 267, '_wc_review_count', '0'),
(1086, 267, '_wc_rating_count', 'a:0:{}'),
(1087, 267, '_wc_average_rating', '0'),
(1088, 267, '_edit_last', '1'),
(1089, 267, '_edit_lock', '1533961923:1'),
(1090, 268, '_wp_attached_file', '2018/08/puls.jpg'),
(1091, 268, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:170;s:6:"height";i:297;s:4:"file";s:16:"2018/08/puls.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"puls-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"puls-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"puls-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1092, 267, '_thumbnail_id', '268'),
(1093, 267, '_sku', ''),
(1094, 267, '_regular_price', '65000'),
(1095, 267, '_sale_price', '63000'),
(1096, 267, '_sale_price_dates_from', ''),
(1097, 267, '_sale_price_dates_to', ''),
(1098, 267, 'total_sales', '0'),
(1099, 267, '_tax_status', 'taxable'),
(1100, 267, '_tax_class', ''),
(1101, 267, '_manage_stock', 'no'),
(1102, 267, '_backorders', 'no'),
(1103, 267, '_sold_individually', 'no'),
(1104, 267, '_weight', ''),
(1105, 267, '_length', ''),
(1106, 267, '_width', ''),
(1107, 267, '_height', ''),
(1108, 267, '_upsell_ids', 'a:0:{}'),
(1109, 267, '_crosssell_ids', 'a:0:{}'),
(1110, 267, '_purchase_note', ''),
(1111, 267, '_default_attributes', 'a:0:{}'),
(1112, 267, '_virtual', 'no'),
(1113, 267, '_downloadable', 'no'),
(1114, 267, '_product_image_gallery', ''),
(1115, 267, '_download_limit', '-1'),
(1116, 267, '_download_expiry', '-1'),
(1117, 267, '_stock', NULL),
(1118, 267, '_stock_status', 'instock'),
(1119, 267, '_product_version', '3.4.3'),
(1120, 267, '_price', '63000'),
(1121, 267, '_wcsquare_disable_sync', 'no'),
(1122, 269, '_wp_attached_file', '2018/05/iphone-7.jpg'),
(1123, 269, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:183;s:6:"height";i:275;s:4:"file";s:20:"2018/05/iphone-7.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"iphone-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"iphone-7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"iphone-7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1124, 192, '_edit_last', '1'),
(1125, 192, '_wp_old_slug', 'affiliate-product'),
(1126, 201, '_wp_trash_meta_status', 'publish'),
(1127, 201, '_wp_trash_meta_time', '1534136545'),
(1128, 201, '_wp_desired_post_slug', 'gallery-product'),
(1129, 201, '_wp_trash_meta_comments_status', 'a:1:{i:4;s:5:"trash";}'),
(1130, 236, '_wp_old_slug', 'guitar'),
(1132, 272, '_wp_attached_file', '2018/08/ipad.jpg'),
(1133, 272, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:284;s:6:"height";i:284;s:4:"file";s:16:"2018/08/ipad.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"ipad-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"ipad-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"ipad-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1134, 126, '_edit_lock', '1534736051:1'),
(1135, 126, '_edit_last', '1'),
(1136, 126, '_wp_old_slug', 'white-top'),
(1137, 126, '_wcsquare_disable_sync', 'no'),
(1138, 274, '_wp_attached_file', '2018/05/ipad-air-2.png'),
(1139, 274, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:773;s:6:"height";i:505;s:4:"file";s:22:"2018/05/ipad-air-2.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"ipad-air-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"ipad-air-2-300x196.png";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"ipad-air-2-768x502.png";s:5:"width";i:768;s:6:"height";i:502;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"ipad-air-2-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"ipad-air-2-600x392.png";s:5:"width";i:600;s:6:"height";i:392;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"ipad-air-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"ipad-air-2-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:22:"ipad-air-2-600x392.png";s:5:"width";i:600;s:6:"height";i:392;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"ipad-air-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1140, 126, '_thumbnail_id', '274'),
(1141, 166, '_edit_lock', '1535345360:1'),
(1142, 191, '_edit_lock', '1536212342:1'),
(1143, 191, '_wp_trash_meta_status', 'publish'),
(1144, 191, '_wp_trash_meta_time', '1536213209'),
(1145, 191, '_wp_desired_post_slug', 'grouped-product'),
(1146, 189, '_wp_trash_meta_status', 'publish'),
(1147, 189, '_wp_trash_meta_time', '1536213210'),
(1148, 189, '_wp_desired_post_slug', 'variable-product-blue'),
(1149, 190, '_wp_trash_meta_status', 'publish'),
(1150, 190, '_wp_trash_meta_time', '1536213211'),
(1151, 190, '_wp_desired_post_slug', 'variable-product-red'),
(1152, 188, '_wp_trash_meta_status', 'publish'),
(1153, 188, '_wp_trash_meta_time', '1536213211'),
(1154, 188, '_wp_desired_post_slug', 'variable-product'),
(1155, 168, '_wp_trash_meta_status', 'publish'),
(1156, 168, '_wp_trash_meta_time', '1536213213'),
(1157, 168, '_wp_desired_post_slug', 'black-wireless-headphone'),
(1158, 168, '_wp_trash_meta_comments_status', 'a:2:{i:2;s:1:"1";i:3;s:1:"1";}'),
(1159, 158, '_wp_trash_meta_status', 'publish'),
(1160, 158, '_wp_trash_meta_time', '1536213213'),
(1161, 158, '_wp_desired_post_slug', 'black-dslr-camera'),
(1162, 166, '_wp_trash_meta_status', 'publish'),
(1163, 166, '_wp_trash_meta_time', '1536213214'),
(1164, 166, '_wp_desired_post_slug', 'neck-tie'),
(1165, 234, '_wp_trash_meta_status', 'wc-processing'),
(1166, 234, '_wp_trash_meta_time', '1536214396'),
(1167, 234, '_wp_desired_post_slug', 'order-jun-04-2018-0619-am'),
(1168, 234, '_wp_trash_meta_comments_status', 'a:1:{i:5;s:1:"1";}'),
(1169, 277, '_wp_attached_file', '2018/09/SEO-24-512.png'),
(1170, 277, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:22:"2018/09/SEO-24-512.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"SEO-24-512-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"SEO-24-512-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"SEO-24-512-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"SEO-24-512-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"SEO-24-512-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"SEO-24-512-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1171, 278, '_wp_attached_file', '2018/09/cropped-SEO-24-512.png'),
(1172, 278, '_wp_attachment_context', 'site-icon'),
(1173, 278, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:30:"2018/09/cropped-SEO-24-512.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"cropped-SEO-24-512-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:30:"cropped-SEO-24-512-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:28:"cropped-SEO-24-512-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1174, 279, '_edit_lock', '1536214677:1'),
(1175, 279, '_wp_trash_meta_status', 'publish'),
(1176, 279, '_wp_trash_meta_time', '1536214682'),
(1177, 282, '_wc_review_count', '0'),
(1178, 282, '_wc_rating_count', 'a:0:{}'),
(1179, 282, '_wc_average_rating', '0'),
(1180, 283, '_wp_attached_file', '2018/09/wallpaper1.jpg'),
(1181, 283, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:751;s:6:"height";i:450;s:4:"file";s:22:"2018/09/wallpaper1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"wallpaper1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"wallpaper1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"wallpaper1-500x450.jpg";s:5:"width";i:500;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"wallpaper1-600x360.jpg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"wallpaper1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"wallpaper1-500x450.jpg";s:5:"width";i:500;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"wallpaper1-600x360.jpg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"wallpaper1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1183, 284, '_customize_changeset_uuid', '78176a5a-a86e-4a55-9239-f02477effea9'),
(1184, 280, '_customize_restore_dismissed', '1'),
(1185, 285, '_edit_lock', '1536380514:1'),
(1187, 286, '_customize_changeset_uuid', '78176a5a-a86e-4a55-9239-f02477effea9'),
(1189, 287, '_customize_changeset_uuid', '78176a5a-a86e-4a55-9239-f02477effea9'),
(1190, 291, '_menu_item_type', 'post_type'),
(1191, 291, '_menu_item_menu_item_parent', '0'),
(1192, 291, '_menu_item_object_id', '284'),
(1193, 291, '_menu_item_object', 'page'),
(1194, 291, '_menu_item_target', ''),
(1195, 291, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1196, 291, '_menu_item_xfn', ''),
(1197, 291, '_menu_item_url', ''),
(1198, 292, '_menu_item_type', 'post_type'),
(1199, 292, '_menu_item_menu_item_parent', '0'),
(1200, 292, '_menu_item_object_id', '286'),
(1201, 292, '_menu_item_object', 'page'),
(1202, 292, '_menu_item_target', ''),
(1203, 292, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1204, 292, '_menu_item_xfn', ''),
(1205, 292, '_menu_item_url', ''),
(1206, 293, '_menu_item_type', 'post_type'),
(1207, 293, '_menu_item_menu_item_parent', '0'),
(1208, 293, '_menu_item_object_id', '287'),
(1209, 293, '_menu_item_object', 'page'),
(1210, 293, '_menu_item_target', ''),
(1211, 293, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1212, 293, '_menu_item_xfn', ''),
(1213, 293, '_menu_item_url', ''),
(1214, 285, '_wp_trash_meta_status', 'publish'),
(1215, 285, '_wp_trash_meta_time', '1536380533'),
(1216, 294, '_wc_review_count', '0'),
(1217, 294, '_wc_rating_count', 'a:0:{}'),
(1218, 294, '_wc_average_rating', '0'),
(1219, 295, '_wc_review_count', '0'),
(1220, 295, '_wc_rating_count', 'a:0:{}'),
(1221, 295, '_wc_average_rating', '0'),
(1222, 295, '_edit_last', '1'),
(1223, 295, '_edit_lock', '1536651989:1'),
(1224, 296, '_wp_attached_file', '2018/09/sam1.jpg'),
(1225, 296, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:656;s:4:"file";s:16:"2018/09/sam1.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"sam1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"sam1-300x281.jpg";s:5:"width";i:300;s:6:"height";i:281;s:9:"mime-type";s:10:"image/jpeg";}s:17:"shop-elite-medium";a:4:{s:4:"file";s:16:"sam1-700x560.jpg";s:5:"width";i:700;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"sam1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:16:"sam1-600x562.jpg";s:5:"width";i:600;s:6:"height";i:562;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"sam1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"sam1-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"sam1-600x562.jpg";s:5:"width";i:600;s:6:"height";i:562;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"sam1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1226, 295, '_thumbnail_id', '296'),
(1227, 295, '_sku', ''),
(1228, 295, '_regular_price', '84000'),
(1229, 295, '_sale_price', '83200'),
(1230, 295, '_sale_price_dates_from', ''),
(1231, 295, '_sale_price_dates_to', ''),
(1232, 295, 'total_sales', '0'),
(1233, 295, '_tax_status', 'taxable'),
(1234, 295, '_tax_class', ''),
(1235, 295, '_manage_stock', 'no'),
(1236, 295, '_backorders', 'no'),
(1237, 295, '_sold_individually', 'no'),
(1238, 295, '_weight', ''),
(1239, 295, '_length', ''),
(1240, 295, '_width', ''),
(1241, 295, '_height', ''),
(1242, 295, '_upsell_ids', 'a:0:{}'),
(1243, 295, '_crosssell_ids', 'a:0:{}'),
(1244, 295, '_purchase_note', ''),
(1245, 295, '_default_attributes', 'a:0:{}'),
(1246, 295, '_virtual', 'no'),
(1247, 295, '_downloadable', 'no'),
(1248, 295, '_product_image_gallery', ''),
(1249, 295, '_download_limit', '-1'),
(1250, 295, '_download_expiry', '-1'),
(1251, 295, '_stock', NULL),
(1252, 295, '_stock_status', 'instock'),
(1253, 295, '_product_version', '3.4.5'),
(1254, 295, '_price', '83200'),
(1255, 295, '_wcsquare_disable_sync', 'no'),
(1256, 286, '_edit_lock', '1536651759:1'),
(1257, 297, '_edit_lock', '1536652031:1'),
(1266, 297, '_wp_trash_meta_status', 'publish'),
(1267, 297, '_wp_trash_meta_time', '1536652043'),
(1268, 299, '_wc_review_count', '0'),
(1269, 299, '_wc_rating_count', 'a:0:{}'),
(1270, 299, '_wc_average_rating', '0'),
(1271, 300, '_wc_review_count', '0'),
(1272, 300, '_wc_rating_count', 'a:0:{}'),
(1273, 300, '_wc_average_rating', '0'),
(1274, 301, '_edit_lock', '1536652418:1'),
(1275, 301, '_customize_restore_dismissed', '1'),
(1276, 302, '_edit_lock', '1536652850:1'),
(1277, 302, '_wp_trash_meta_status', 'publish'),
(1278, 302, '_wp_trash_meta_time', '1536652877'),
(1279, 303, '_edit_lock', '1536653233:1'),
(1280, 304, '_wp_attached_file', '2018/09/redone.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1281, 304, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:732;s:6:"height";i:317;s:4:"file";s:18:"2018/09/redone.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"redone-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"redone-300x130.png";s:5:"width";i:300;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"redone-500x317.png";s:5:"width";i:500;s:6:"height";i:317;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"redone-600x260.png";s:5:"width";i:600;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"redone-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"redone-500x317.png";s:5:"width";i:500;s:6:"height";i:317;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"redone-600x260.png";s:5:"width";i:600;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"redone-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1282, 303, '_wp_trash_meta_status', 'publish'),
(1283, 303, '_wp_trash_meta_time', '1536653267'),
(1284, 305, '_edit_lock', '1536653886:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-06 08:43:39', '2018-07-06 08:43:39', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-06 08:43:39', '2018-07-06 08:43:39', '', 0, 'http://localhost:90/MobG/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-06 08:43:39', '2018-07-06 08:43:39', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:90/MobG/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-07-06 08:43:39', '2018-07-06 08:43:39', '', 0, 'http://localhost:90/MobG/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-06 08:43:39', '2018-07-06 08:43:39', '<h2>Who we are</h2><p>Our website address is: http://localhost:90/MobG.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-06 08:43:39', '2018-07-06 08:43:39', '', 0, 'http://localhost:90/MobG/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-07 03:57:16', '2018-07-07 03:57:16', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2018-07-07 03:57:16', '2018-07-07 03:57:16', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-07-07 03:57:16', '2018-07-07 03:57:16', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2018-07-07 03:57:16', '2018-07-07 03:57:16', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 0, 'http://localhost:90/MobG/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 0, 'http://localhost:90/MobG/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 0, 'http://localhost:90/MobG/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 0, 'http://localhost:90/MobG/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-07-07 03:57:18', '2018-07-07 03:57:18', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'publish', 'closed', 'closed', '', 'a-homepage-section', '', '', '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 0, 'http://localhost:90/MobG/?page_id=12', 0, 'page', '', 0),
(14, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 8, 'http://localhost:90/MobG/2018/07/07/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 9, 'http://localhost:90/MobG/2018/07/07/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-07-07 03:57:17', '2018-07-07 03:57:17', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-07-07 03:57:17', '2018-07-07 03:57:17', '', 10, 'http://localhost:90/MobG/2018/07/07/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 11, 'http://localhost:90/MobG/2018/07/07/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-07-07 03:57:18', '2018-07-07 03:57:18', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 12, 'http://localhost:90/MobG/2018/07/07/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 0, 'http://localhost:90/MobG/2018/07/07/home/', 0, 'nav_menu_item', '', 0),
(20, 1, '2018-07-07 03:57:18', '2018-07-07 03:57:18', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-07-07 03:57:18', '2018-07-07 03:57:18', '', 0, 'http://localhost:90/MobG/2018/07/07/20/', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-07-07 03:57:19', '2018-07-07 03:57:19', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-07-07 03:57:19', '2018-07-07 03:57:19', '', 0, 'http://localhost:90/MobG/2018/07/07/21/', 2, 'nav_menu_item', '', 0),
(22, 1, '2018-07-07 03:57:19', '2018-07-07 03:57:19', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-07-07 03:57:19', '2018-07-07 03:57:19', '', 0, 'http://localhost:90/MobG/2018/07/07/22/', 3, 'nav_menu_item', '', 0),
(23, 1, '2018-07-07 03:57:20', '2018-07-07 03:57:20', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-07-07 03:57:20', '2018-07-07 03:57:20', '', 0, 'http://localhost:90/MobG/2018/07/07/yelp/', 0, 'nav_menu_item', '', 0),
(24, 1, '2018-07-07 03:57:20', '2018-07-07 03:57:20', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-07-07 03:57:20', '2018-07-07 03:57:20', '', 0, 'http://localhost:90/MobG/2018/07/07/facebook/', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-07-07 03:57:21', '2018-07-07 03:57:21', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-07-07 03:57:21', '2018-07-07 03:57:21', '', 0, 'http://localhost:90/MobG/2018/07/07/twitter/', 2, 'nav_menu_item', '', 0),
(26, 1, '2018-07-07 03:57:22', '2018-07-07 03:57:22', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-07-07 03:57:22', '2018-07-07 03:57:22', '', 0, 'http://localhost:90/MobG/2018/07/07/instagram/', 3, 'nav_menu_item', '', 0),
(27, 1, '2018-07-07 03:57:22', '2018-07-07 03:57:22', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2018-07-07 03:57:22', '2018-07-07 03:57:22', '', 0, 'http://localhost:90/MobG/2018/07/07/email/', 4, 'nav_menu_item', '', 0),
(30, 1, '2018-07-07 04:18:57', '0000-00-00 00:00:00', '', 'Smartphones', '', 'draft', 'open', 'open', '', '', '', '', '2018-07-07 04:18:57', '2018-07-07 04:18:57', '', 0, 'http://localhost:90/MobG/?p=30', 0, 'post', '', 0),
(31, 1, '2018-07-07 04:29:06', '2018-07-07 04:29:06', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-07-07 04:29:06', '2018-07-07 04:29:06', '', 0, 'http://localhost:90/MobG/shop/', 0, 'page', '', 0),
(32, 1, '2018-07-07 04:29:06', '2018-07-07 04:29:06', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-07-07 04:29:06', '2018-07-07 04:29:06', '', 0, 'http://localhost:90/MobG/cart/', 0, 'page', '', 0),
(33, 1, '2018-07-07 04:29:06', '2018-07-07 04:29:06', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-07-07 04:29:06', '2018-07-07 04:29:06', '', 0, 'http://localhost:90/MobG/checkout/', 0, 'page', '', 0),
(34, 1, '2018-07-07 04:29:06', '2018-07-07 04:29:06', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-07-07 04:29:06', '2018-07-07 04:29:06', '', 0, 'http://localhost:90/MobG/my-account/', 0, 'page', '', 0),
(37, 1, '2018-07-09 13:15:23', '2018-07-09 07:45:23', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-07-09 13:15:39', '2018-07-09 07:45:39', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-07-09 13:15:55', '2018-07-09 07:45:55', 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-logo.jpg', 'cropped-logo.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-jpg', '', '', '2018-07-09 13:15:55', '2018-07-09 07:45:55', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-07-09 13:18:13', '2018-07-09 07:48:13', '', 'logo-mini', '', 'inherit', 'open', 'closed', '', 'logo-mini', '', '', '2018-07-09 13:18:13', '2018-07-09 07:48:13', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/logo-mini.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-07-09 13:18:21', '2018-07-09 07:48:21', 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-logo-mini.jpg', 'cropped-logo-mini.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-mini-jpg', '', '', '2018-07-09 13:18:21', '2018-07-09 07:48:21', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-logo-mini.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-07-09 13:18:50', '2018-07-09 07:48:50', 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-logo-mini-1.jpg', 'cropped-logo-mini-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-mini-1-jpg', '', '', '2018-07-09 13:18:50', '2018-07-09 07:48:50', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-logo-mini-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-07-09 13:20:59', '2018-07-09 07:50:59', '', 'mobile-header', '', 'inherit', 'open', 'closed', '', 'mobile-header', '', '', '2018-07-09 13:20:59', '2018-07-09 07:50:59', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/mobile-header.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-07-09 13:31:24', '2018-07-09 08:01:24', '', 'f5270b - 1', '', 'inherit', 'open', 'closed', '', 'f5270b-1', '', '', '2018-07-09 13:31:24', '2018-07-09 08:01:24', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/f5270b-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-07-09 13:31:38', '2018-07-09 08:01:38', '', 'cropped-f5270b-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-f5270b-1-jpg', '', '', '2018-07-09 13:31:38', '2018-07-09 08:01:38', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/cropped-f5270b-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-05-23 08:14:51', '2018-05-23 08:14:51', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'Stay casual this summer', '', 'publish', 'open', 'open', '', 'stay-casual-this-summer', '', '', '2018-05-23 08:14:51', '2018-05-23 08:14:51', '', 0, 'https://demo.themesaga.com/shop-elite/?p=49', 0, 'post', '', 0),
(51, 1, '2018-07-09 13:43:55', '2018-07-09 08:13:55', '{"id":51,"form_field_id":"1","form_fields":{"name":{"id":"name","type":"text","label":"Name","meta-key":"name","description":"","required":"1","placeholder":"","css":""},"email":{"id":"email","type":"email","label":"Email","meta-key":"email","description":"","required":"1","placeholder":"","default_value":"","css":""},"subject":{"id":"subject","type":"text","label":"Subject","meta-key":"subject","description":"","required":"1","placeholder":"","css":""},"message":{"id":"message","type":"textarea","label":"Message","meta-key":"message","description":"","placeholder":"","css":""}},"settings":{"form_title":"Contact Form","form_desc":"","successful_form_submission_message":"Thanks for contacting us! We will be in touch with you shortly.","redirect_to":"0","custom_page":"2","external_url":"","layout_class":"default","form_class":"","submit_button_text":"Submit","email":{"evf_to_email":"rushighoda183@gmail.com","evf_from_name":"MobG","evf_from_email":"rushighoda183@gmail.com","evf_email_subject":"New Form Entry","evf_email_message":"{all_fields}"}},"structure":{"row_1":{"grid_1":["name","email","subject","message"]}}}', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2018-07-09 13:43:55', '2018-07-09 08:13:55', '', 0, 'http://localhost:90/MobG/?post_type=everest_form&#038;p=51', 0, 'everest_form', '', 0),
(53, 1, '2018-07-10 18:13:50', '2018-07-10 12:43:50', '', 'One Click Demo Import - log_file_2018-07-10__12-43-50', '', 'inherit', 'open', 'closed', '', 'one-click-demo-import-log_file_2018-07-10__12-43-50', '', '', '2018-07-10 18:13:50', '2018-07-10 12:43:50', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/07/log_file_2018-07-10__12-43-50.txt', 0, 'attachment', 'text/plain', 0),
(54, 1, '2018-05-22 09:16:54', '2018-05-22 09:16:54', '', 'woman-3377839_1280', '', 'inherit', 'open', 'closed', '', 'woman-3377839_1280', '', '', '2018-05-22 09:16:54', '2018-05-22 09:16:54', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/woman-3377839_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-05-22 17:02:46', '2018-05-22 17:02:46', '', 'top-pro-banner', '', 'inherit', 'open', 'closed', '', 'top-pro-banner', '', '', '2018-05-22 17:02:46', '2018-05-22 17:02:46', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/top-pro-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-05-22 17:35:06', '2018-05-22 17:35:06', '', 'slide-3-banner', '', 'inherit', 'open', 'closed', '', 'slide-3-banner', '', '', '2018-05-22 17:35:06', '2018-05-22 17:35:06', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/slide-3-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-05-22 18:36:17', '2018-05-22 18:36:17', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-09-06 12:07:11', '2018-09-06 06:37:11', '', 0, 'https://demo.themesaga.com/shop-elite/?p=74', 2, 'nav_menu_item', '', 0),
(75, 1, '2018-05-22 18:43:57', '2018-05-22 18:43:57', '', 'slide-3-banner-sale', '', 'inherit', 'open', 'closed', '', 'slide-3-banner-sale', '', '', '2018-05-22 18:43:57', '2018-05-22 18:43:57', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/slide-3-banner-sale.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-05-22 18:46:26', '2018-05-22 18:46:26', '', 'briefcase-1578138_1280', '', 'inherit', 'open', 'closed', '', 'briefcase-1578138_1280', '', '', '2018-05-22 18:46:26', '2018-05-22 18:46:26', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/briefcase-1578138_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-05-22 19:11:52', '2018-05-22 19:11:52', '', 'fashion-918446_1920', '', 'inherit', 'open', 'closed', '', 'fashion-918446_1920', '', '', '2018-05-22 19:11:52', '2018-05-22 19:11:52', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/fashion-918446_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-05-22 19:15:20', '2018-05-22 19:15:20', '', 'woman-3373637_1920', '', 'inherit', 'open', 'closed', '', 'woman-3373637_1920', '', '', '2018-05-22 19:15:20', '2018-05-22 19:15:20', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/woman-3373637_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-05-23 06:02:48', '2018-05-23 06:02:48', '', 'gran-canaria-2782172_960_720', '', 'inherit', 'open', 'closed', '', 'gran-canaria-2782172_960_720', '', '', '2018-05-23 06:02:48', '2018-05-23 06:02:48', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/gran-canaria-2782172_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-05-23 06:03:10', '2018-05-23 06:03:10', '', 'gran-canaria-2787988_960_720', '', 'inherit', 'open', 'closed', '', 'gran-canaria-2787988_960_720', '', '', '2018-05-23 06:03:10', '2018-05-23 06:03:10', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/gran-canaria-2787988_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-05-23 06:03:11', '2018-05-23 06:03:11', '', 'gran-canaria-2897237_960_720', '', 'inherit', 'open', 'closed', '', 'gran-canaria-2897237_960_720', '', '', '2018-05-23 06:03:11', '2018-05-23 06:03:11', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/gran-canaria-2897237_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-05-23 06:36:44', '2018-05-23 06:36:44', '', 'specs-3296472_1280', '', 'inherit', 'open', 'closed', '', 'specs-3296472_1280', '', '', '2018-05-23 06:36:44', '2018-05-23 06:36:44', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/specs-3296472_1280.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-05-23 06:55:48', '2018-05-23 06:55:48', '', 'couple-3237860_1280', '', 'inherit', 'open', 'closed', '', 'couple-3237860_1280', '', '', '2018-05-23 06:55:48', '2018-05-23 06:55:48', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/couple-3237860_1280.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2018-05-23 07:00:37', '2018-05-23 07:00:37', '', 'model-2911330_1280', '', 'inherit', 'open', 'closed', '', 'model-2911330_1280', '', '', '2018-05-23 07:00:37', '2018-05-23 07:00:37', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/model-2911330_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-05-23 07:54:58', '2018-05-23 07:54:58', '', 'fashion-3221102_1280', '', 'inherit', 'open', 'closed', '', 'fashion-3221102_1280', '', '', '2018-05-23 07:54:58', '2018-05-23 07:54:58', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/fashion-3221102_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-05-23 08:13:24', '2018-05-23 08:13:24', 'Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.\r\n\r\nQuisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.', 'Shop for men', '', 'publish', 'open', 'open', '', 'shop-for-men', '', '', '2018-05-23 08:13:24', '2018-05-23 08:13:24', '', 0, 'https://demo.themesaga.com/shop-elite/?p=113', 0, 'post', '', 0),
(116, 1, '2018-05-23 08:13:43', '2018-05-23 08:13:43', 'Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.\r\n\r\nQuisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.', 'Classy Zipper Style', '', 'publish', 'open', 'open', '', 'classy-zipper-style', '', '', '2018-05-23 08:13:43', '2018-05-23 08:13:43', '', 0, 'https://demo.themesaga.com/shop-elite/?p=116', 0, 'post', '', 0),
(117, 1, '2018-05-23 08:13:39', '2018-05-23 08:13:39', '', 'girl-from-behind-1741699_1280', '', 'inherit', 'open', 'closed', '', 'girl-from-behind-1741699_1280', '', '', '2018-05-23 08:13:39', '2018-05-23 08:13:39', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/girl-from-behind-1741699_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-05-24 04:10:58', '2018-05-24 04:10:58', '', 'ipad air2', '', 'publish', 'open', 'closed', '', 'ipad-air2', '', '', '2018-08-20 09:06:21', '2018-08-20 03:36:21', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=126', 0, 'product', '', 0),
(134, 1, '2018-05-23 09:07:29', '2018-05-23 09:07:29', '', 'style-3270259_960_720', '', 'inherit', 'open', 'closed', '', 'style-3270259_960_720', '', '', '2018-05-23 09:07:29', '2018-05-23 09:07:29', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/style-3270259_960_720.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2018-05-24 03:38:24', '2018-05-24 03:38:24', '', 'pexels-photo-234599', '', 'inherit', 'open', 'closed', '', 'pexels-photo-234599', '', '', '2018-05-24 03:38:24', '2018-05-24 03:38:24', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-234599.jpeg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-05-24 03:46:43', '2018-05-24 03:46:43', '', 'pexels-photo-432655', '', 'inherit', 'open', 'closed', '', 'pexels-photo-432655', '', '', '2018-05-24 03:46:43', '2018-05-24 03:46:43', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-432655.jpeg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-05-24 03:52:07', '2018-05-24 03:52:07', '', 'pexels-photo-845434', '', 'inherit', 'open', 'closed', '', 'pexels-photo-845434', '', '', '2018-05-24 03:52:07', '2018-05-24 03:52:07', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-845434.jpeg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-05-24 03:57:22', '2018-05-24 03:57:22', '', 'pexels-photo-1036623', '', 'inherit', 'open', 'closed', '', 'pexels-photo-1036623', '', '', '2018-05-24 03:57:22', '2018-05-24 03:57:22', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-1036623.jpeg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-05-22 08:37:23', '2018-05-22 08:37:23', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-09-06 12:07:10', '2018-09-06 06:37:10', '', 0, 'https://demo.themesaga.com/shop-elite/?p=15', 1, 'nav_menu_item', '', 0),
(151, 1, '2018-05-22 08:39:51', '2018-05-22 08:39:51', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook-2', '', '', '2018-05-22 08:39:51', '2018-05-22 08:39:51', '', 0, 'https://demo.themesaga.com/shop-elite/?p=19', 1, 'nav_menu_item', '', 0),
(152, 1, '2018-05-22 08:39:51', '2018-05-22 08:39:51', '', 'twitter', '', 'publish', 'closed', 'closed', '', 'twitter-2', '', '', '2018-05-22 08:39:51', '2018-05-22 08:39:51', '', 0, 'https://demo.themesaga.com/shop-elite/?p=20', 2, 'nav_menu_item', '', 0),
(153, 1, '2018-05-24 04:10:24', '2018-05-24 04:10:24', '', 'girl-cold-freeze-woman-47738', '', 'inherit', 'open', 'closed', '', 'girl-cold-freeze-woman-47738', '', '', '2018-05-24 04:10:24', '2018-05-24 04:10:24', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/girl-cold-freeze-woman-47738.jpeg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2018-05-24 06:03:37', '2018-05-24 06:03:37', '', 'pexels-photo-277459', '', 'inherit', 'open', 'closed', '', 'pexels-photo-277459', '', '', '2018-05-24 06:03:37', '2018-05-24 06:03:37', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-277459.jpeg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2018-05-24 07:24:00', '2018-05-24 07:24:00', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Black DSLR Camera', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'trash', 'open', 'closed', '', 'black-dslr-camera__trashed', '', '', '2018-09-06 11:23:33', '2018-09-06 05:53:33', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=158', 0, 'product', '', 0),
(160, 1, '2018-05-24 06:25:10', '2018-05-24 06:25:10', '', 'photo-camera-subject-photographer-51383', '', 'inherit', 'open', 'closed', '', 'photo-camera-subject-photographer-51383', '', '', '2018-05-24 06:25:10', '2018-05-24 06:25:10', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/photo-camera-subject-photographer-51383.jpeg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2018-05-24 06:31:43', '2018-05-24 06:31:43', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2018-05-24 06:31:43', '2018-05-24 06:31:43', '', 0, 'https://demo.themesaga.com/shop-elite/?page_id=161', 0, 'page', '', 0),
(163, 1, '2018-05-24 06:31:50', '2018-05-24 06:31:50', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2018-05-24 06:31:50', '2018-05-24 06:31:50', '', 0, 'https://demo.themesaga.com/shop-elite/?page_id=163', 0, 'page', '', 0),
(166, 1, '2018-05-24 07:18:40', '2018-05-24 07:18:40', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Neck Tie', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'trash', 'open', 'closed', '', 'neck-tie__trashed', '', '', '2018-09-06 11:23:34', '2018-09-06 05:53:34', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=166', 0, 'product', '', 0),
(168, 1, '2018-05-24 07:29:36', '2018-05-24 07:29:36', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Black Wireless Headphone', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\r\n', 'trash', 'open', 'closed', '', 'black-wireless-headphone__trashed', '', '', '2018-09-06 11:23:33', '2018-09-06 05:53:33', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=168', 0, 'product', '', 2),
(173, 1, '2018-05-24 07:52:30', '2018-05-24 07:52:30', '', 'pexels-photo-45055', '', 'inherit', 'open', 'closed', '', 'pexels-photo-45055', '', '', '2018-07-10 18:17:00', '2018-07-10 12:47:00', '', 166, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-45055.jpeg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2018-05-24 08:06:35', '2018-05-24 08:06:35', '', 'pexels-photo-815494', '', 'inherit', 'open', 'closed', '', 'pexels-photo-815494', '', '', '2018-07-10 18:17:00', '2018-07-10 12:47:00', '', 168, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-815494.jpeg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2018-05-24 08:24:52', '2018-05-24 08:24:52', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'Look classy this summer', '', 'publish', 'open', 'open', '', 'look-classy-this-summer', '', '', '2018-05-24 08:24:52', '2018-05-24 08:24:52', '', 0, 'https://demo.themesaga.com/shop-elite/?p=178', 0, 'post', '', 0),
(182, 1, '2018-05-24 08:18:55', '2018-05-24 08:18:55', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'Rock Casual This Summer', '', 'publish', 'open', 'open', '', 'rock-casual-this-summer', '', '', '2018-05-24 08:18:55', '2018-05-24 08:18:55', '', 0, 'https://demo.themesaga.com/shop-elite/?p=182', 0, 'post', '', 0),
(185, 1, '2018-05-24 08:27:05', '2018-05-24 08:27:05', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'Style Guide for Men', '', 'publish', 'open', 'open', '', 'style-guide-for-men', '', '', '2018-05-24 08:27:05', '2018-05-24 08:27:05', '', 0, 'https://demo.themesaga.com/shop-elite/?p=185', 0, 'post', '', 0),
(188, 1, '2018-05-24 10:20:20', '2018-05-24 10:20:20', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'Variable Product', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'trash', 'open', 'closed', '', 'variable-product__trashed', '', '', '2018-09-06 11:23:31', '2018-09-06 05:53:31', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=188', 0, 'product', '', 0),
(189, 1, '2018-05-24 10:19:29', '2018-05-24 10:19:29', '', 'Variable Product - Blue', '', 'trash', 'closed', 'closed', '', 'variable-product-blue__trashed', '', '', '2018-09-06 11:23:30', '2018-09-06 05:53:30', '', 188, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=188', 1, 'product_variation', '', 0),
(190, 1, '2018-05-24 10:19:29', '2018-05-24 10:19:29', '', 'Variable Product - Red', '', 'trash', 'closed', 'closed', '', 'variable-product-red__trashed', '', '', '2018-09-06 11:23:31', '2018-09-06 05:53:31', '', 188, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=188', 2, 'product_variation', '', 0),
(191, 1, '2018-05-24 10:27:44', '2018-05-24 10:27:44', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.\r\n\r\nDonec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'Grouped Product', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'trash', 'open', 'closed', '', 'grouped-product__trashed', '', '', '2018-09-06 11:23:29', '2018-09-06 05:53:29', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=191', 0, 'product', '', 0),
(192, 1, '2018-05-24 10:37:23', '2018-05-24 10:37:23', '', 'iphone 7', '', 'publish', 'open', 'closed', '', 'iphone-7', '', '', '2018-08-13 10:28:37', '2018-08-13 04:58:37', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=192', 0, 'product', '', 0),
(197, 1, '2018-05-29 13:21:18', '2018-05-29 13:21:18', '', 'shopping-mall-1316787_960_720', '', 'inherit', 'open', 'closed', '', 'shopping-mall-1316787_960_720', '', '', '2018-05-29 13:21:18', '2018-05-29 13:21:18', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/shopping-mall-1316787_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2018-05-29 13:25:37', '2018-05-29 13:25:37', '', 'wrist-watch-2159785_960_720', '', 'inherit', 'open', 'closed', '', 'wrist-watch-2159785_960_720', '', '', '2018-05-29 13:25:37', '2018-05-29 13:25:37', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/wrist-watch-2159785_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2018-05-29 13:31:02', '2018-05-29 13:31:02', '', 'fashion-2208045_960_720', '', 'inherit', 'open', 'closed', '', 'fashion-2208045_960_720', '', '', '2018-05-29 13:31:02', '2018-05-29 13:31:02', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/fashion-2208045_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2018-05-29 13:45:41', '2018-05-29 13:45:41', '', 'Lenovo K8 note', '', 'trash', 'open', 'closed', '', 'gallery-product__trashed', '', '', '2018-08-13 10:32:25', '2018-08-13 05:02:25', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=201', 0, 'product', '', 0),
(202, 1, '2018-05-29 13:45:35', '2018-05-29 13:45:35', '', 'pexels-photo-46710', '', 'inherit', 'open', 'closed', '', 'pexels-photo-46710', '', '', '2018-07-10 18:17:00', '2018-07-10 12:47:00', '', 201, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-46710.jpeg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2018-05-29 13:45:55', '2018-05-29 13:45:55', '', 'pexels-photo-249210', '', 'inherit', 'open', 'closed', '', 'pexels-photo-249210', '', '', '2018-07-10 18:17:00', '2018-07-10 12:47:00', '', 201, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-249210.jpeg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2018-05-29 13:46:29', '2018-05-29 13:46:29', '', 'pexels-photo-735273', '', 'inherit', 'open', 'closed', '', 'pexels-photo-735273', '', '', '2018-07-10 18:17:00', '2018-07-10 12:47:00', '', 201, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-735273.jpeg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2018-05-29 13:46:32', '2018-05-29 13:46:32', '', 'pexels-photo-902981', '', 'inherit', 'open', 'closed', '', 'pexels-photo-902981', '', '', '2018-07-10 18:17:00', '2018-07-10 12:47:00', '', 201, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/pexels-photo-902981.jpeg', 0, 'attachment', 'image/jpeg', 0),
(206, 1, '2018-05-29 13:46:33', '2018-05-29 13:46:33', '', 'sunglasses-glasses-fashion-40902', '', 'inherit', 'open', 'closed', '', 'sunglasses-glasses-fashion-40902', '', '', '2018-07-10 18:17:01', '2018-07-10 12:47:01', '', 201, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/05/sunglasses-glasses-fashion-40902.jpeg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2018-05-22 08:26:10', '2018-05-22 08:26:10', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2018-05-22 08:26:10', '2018-05-22 08:26:10', '', 0, 'https://demo.themesaga.com/shop-elite/wishlist/', 0, 'page', '', 0),
(223, 1, '2018-05-30 06:38:18', '2018-05-30 06:38:18', ' ', '', '', 'publish', 'closed', 'closed', '', '223', '', '', '2018-05-30 06:38:18', '2018-05-30 06:38:18', '', 0, 'https://demo.themesaga.com/shop-elite/?p=223', 2, 'nav_menu_item', '', 0),
(224, 1, '2018-05-30 06:38:35', '2018-05-30 06:38:35', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2018-05-30 06:38:35', '2018-05-30 06:38:35', '', 0, 'https://demo.themesaga.com/shop-elite/?p=224', 1, 'nav_menu_item', '', 0),
(234, 1, '2018-06-04 06:19:01', '2018-06-04 06:19:01', '', 'Order &ndash; June 4, 2018 @ 06:19 AM', '', 'trash', 'open', 'closed', 'order_5b14d9d5de661', 'order-jun-04-2018-0619-am__trashed', '', '', '2018-09-06 11:43:16', '2018-09-06 06:13:16', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=shop_order&#038;p=234', 0, 'shop_order', '', 1),
(236, 1, '2018-06-04 06:30:50', '2018-06-04 06:30:50', '', 'Iphone X', '', 'publish', 'open', 'closed', '', 'iphone-x', '', '', '2018-08-13 10:35:31', '2018-08-13 05:05:31', '', 0, 'https://demo.themesaga.com/shop-elite/?post_type=product&#038;p=236', 0, 'product', '', 0),
(237, 1, '2018-06-04 06:30:20', '2018-06-04 06:30:20', '', 'guitar-2925274_960_720', '', 'inherit', 'open', 'closed', '', 'guitar-2925274_960_720', '', '', '2018-07-10 18:17:01', '2018-07-10 12:47:01', '', 236, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/06/guitar-2925274_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2018-06-05 08:06:12', '2018-06-05 08:06:12', '', 'pexels-photo-297755', '', 'inherit', 'open', 'closed', '', 'pexels-photo-297755', '', '', '2018-06-05 08:06:12', '2018-06-05 08:06:12', '', 0, 'https://demo.themesaga.com/shop-elite/wp-content/uploads/2018/06/pexels-photo-297755.jpeg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(247, 1, '2018-05-30 06:18:39', '2018-05-30 06:18:39', '<h2>Who we are</h2><p>Our website address is: https://demo.themesaga.com/shop-elite.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-05-30 06:18:39', '2018-05-30 06:18:39', '', 0, 'https://demo.themesaga.com/shop-elite/?page_id=3', 0, 'page', '', 0),
(248, 1, '2018-05-30 06:25:19', '2018-05-30 06:25:19', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop-2', '', '', '2018-05-30 06:25:19', '2018-05-30 06:25:19', '', 0, 'https://demo.themesaga.com/shop-elite/shop/', 0, 'page', '', 0),
(249, 1, '2018-05-22 08:39:51', '2018-05-22 08:39:51', '', 'linkedin', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2018-05-22 08:39:51', '2018-05-22 08:39:51', '', 0, 'https://demo.themesaga.com/shop-elite/?p=23', 3, 'nav_menu_item', '', 0),
(250, 1, '2018-05-22 08:40:16', '2018-05-22 08:40:16', '', 'instagram', '', 'publish', 'closed', 'closed', '', 'instagram-2', '', '', '2018-05-22 08:40:16', '2018-05-22 08:40:16', '', 0, 'https://demo.themesaga.com/shop-elite/?p=24', 4, 'nav_menu_item', '', 0),
(251, 1, '2018-05-22 08:41:26', '2018-05-22 08:41:26', '', 'googleplus', '', 'publish', 'closed', 'closed', '', 'googleplus', '', '', '2018-05-22 08:41:26', '2018-05-22 08:41:26', '', 0, 'https://demo.themesaga.com/shop-elite/?p=25', 5, 'nav_menu_item', '', 0),
(252, 1, '2018-05-30 06:25:19', '2018-05-30 06:25:19', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart-2', '', '', '2018-05-30 06:25:19', '2018-05-30 06:25:19', '', 0, 'https://demo.themesaga.com/shop-elite/cart/', 0, 'page', '', 0),
(253, 1, '2018-05-30 06:25:19', '2018-05-30 06:25:19', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout-2', '', '', '2018-05-30 06:25:19', '2018-05-30 06:25:19', '', 0, 'https://demo.themesaga.com/shop-elite/checkout/', 0, 'page', '', 0),
(254, 1, '2018-05-30 06:25:19', '2018-05-30 06:25:19', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account-2', '', '', '2018-05-30 06:25:19', '2018-05-30 06:25:19', '', 0, 'https://demo.themesaga.com/shop-elite/my-account/', 0, 'page', '', 0),
(256, 1, '2018-08-07 09:46:53', '2018-08-07 04:16:53', '', 'peg.8b6673ce3a.999x165x220', '', 'inherit', 'open', 'closed', '', 'peg-8b6673ce3a-999x165x220', '', '', '2018-08-07 09:46:53', '2018-08-07 04:16:53', '', 236, 'http://localhost:90/MobG/wp-content/uploads/2018/06/peg.8b6673ce3a.999x165x220.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2018-08-07 09:49:33', '2018-08-07 04:19:33', '', 'apple', '', 'inherit', 'open', 'closed', '', 'apple', '', '', '2018-08-07 09:49:33', '2018-08-07 04:19:33', '', 236, 'http://localhost:90/MobG/wp-content/uploads/2018/06/apple.jpg', 0, 'attachment', 'image/jpeg', 0),
(261, 1, '2018-08-10 09:57:08', '2018-08-10 04:27:08', '', 'Mobile', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', 'inherit', 'closed', 'closed', '', '201-autosave-v1', '', '', '2018-08-10 09:57:08', '2018-08-10 04:27:08', '', 201, 'http://localhost:90/MobG/2018/08/07/201-autosave-v1/', 0, 'revision', '', 0),
(264, 1, '2018-08-10 09:51:19', '2018-08-10 04:21:19', '', 'peg.0904ca59c9.999x165x220', '', 'inherit', 'open', 'closed', '', 'peg-0904ca59c9-999x165x220', '', '', '2018-08-10 09:51:19', '2018-08-10 04:21:19', '', 201, 'http://localhost:90/MobG/wp-content/uploads/2018/05/peg.0904ca59c9.999x165x220.jpg', 0, 'attachment', 'image/jpeg', 0),
(265, 1, '2018-08-10 13:33:58', '2018-08-10 08:03:58', '', 'wallpaper', '', 'inherit', 'open', 'closed', '', 'wallpaper', '', '', '2018-08-10 13:33:58', '2018-08-10 08:03:58', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/08/wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2018-08-11 09:55:02', '2018-08-11 04:25:02', '', 'iphone 7', '', 'inherit', 'open', 'closed', '', 'iphone-7', '', '', '2018-08-11 09:55:02', '2018-08-11 04:25:02', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/08/iphone-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(267, 1, '2018-08-11 09:59:40', '2018-08-11 04:29:40', '', 'iphone 7 plus', '', 'publish', 'open', 'closed', '', 'iphone-7-plus', '', '', '2018-08-11 10:03:08', '2018-08-11 04:33:08', '', 0, 'http://localhost:90/MobG/?post_type=product&#038;p=267', 0, 'product', '', 0),
(268, 1, '2018-08-11 09:57:04', '2018-08-11 04:27:04', '', 'puls', '', 'inherit', 'open', 'closed', '', 'puls', '', '', '2018-08-11 09:57:04', '2018-08-11 04:27:04', '', 267, 'http://localhost:90/MobG/wp-content/uploads/2018/08/puls.jpg', 0, 'attachment', 'image/jpeg', 0),
(269, 1, '2018-08-13 10:27:13', '2018-08-13 04:57:13', '', 'iphone 7', '', 'inherit', 'open', 'closed', '', 'iphone-7-2', '', '', '2018-08-13 10:27:13', '2018-08-13 04:57:13', '', 192, 'http://localhost:90/MobG/wp-content/uploads/2018/05/iphone-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(272, 1, '2018-08-20 08:59:24', '2018-08-20 03:29:24', '', 'ipad', '', 'inherit', 'open', 'closed', '', 'ipad', '', '', '2018-08-20 08:59:24', '2018-08-20 03:29:24', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/08/ipad.jpg', 0, 'attachment', 'image/jpeg', 0),
(273, 1, '2018-08-20 09:04:38', '2018-08-20 03:34:38', '', 'ipad air2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'inherit', 'closed', 'closed', '', '126-autosave-v1', '', '', '2018-08-20 09:04:38', '2018-08-20 03:34:38', '', 126, 'http://localhost:90/MobG/2018/08/20/126-autosave-v1/', 0, 'revision', '', 0),
(274, 1, '2018-08-20 09:06:05', '2018-08-20 03:36:05', '', 'ipad air 2', '', 'inherit', 'open', 'closed', '', 'ipad-air-2', '', '', '2018-08-20 09:06:05', '2018-08-20 03:36:05', '', 126, 'http://localhost:90/MobG/wp-content/uploads/2018/05/ipad-air-2.png', 0, 'attachment', 'image/png', 0),
(275, 1, '2018-08-27 10:21:17', '2018-08-27 04:51:17', '', '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'inherit', 'closed', 'closed', '', '166-autosave-v1', '', '', '2018-08-27 10:21:17', '2018-08-27 04:51:17', '', 166, 'http://localhost:90/MobG/2018/08/27/166-autosave-v1/', 0, 'revision', '', 0),
(276, 1, '2018-09-06 11:04:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-06 11:04:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?p=276', 0, 'post', '', 0),
(277, 1, '2018-09-06 11:47:34', '2018-09-06 06:17:34', '', 'SEO-24-512', '', 'inherit', 'open', 'closed', '', 'seo-24-512', '', '', '2018-09-06 11:47:34', '2018-09-06 06:17:34', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/09/SEO-24-512.png', 0, 'attachment', 'image/png', 0),
(278, 1, '2018-09-06 11:47:38', '2018-09-06 06:17:38', 'http://localhost:90/MobG/wp-content/uploads/2018/09/cropped-SEO-24-512.png', 'cropped-SEO-24-512.png', '', 'inherit', 'open', 'closed', '', 'cropped-seo-24-512-png', '', '', '2018-09-06 11:47:38', '2018-09-06 06:17:38', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/09/cropped-SEO-24-512.png', 0, 'attachment', 'image/png', 0),
(279, 1, '2018-09-06 11:48:01', '2018-09-06 06:18:01', '{\n    "site_icon": {\n        "value": 278,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:17:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f7ce6efa-5a1d-425a-9c9e-b07238387d71', '', '', '2018-09-06 11:48:01', '2018-09-06 06:18:01', '', 0, 'http://localhost:90/MobG/?p=279', 0, 'customize_changeset', '', 0),
(280, 1, '2018-09-06 11:50:52', '0000-00-00 00:00:00', '{\n    "shop-elite::nav_menu_locations[primary]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu[45]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[148]": {\n        "value": {\n            "menu_item_parent": 74,\n            "object_id": 148,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "Custom Link",\n            "title": "Home Page Styles",\n            "url": "https://demo.themesaga.com/shop-elite/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 5,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[225]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[226]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[227]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[149]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 248,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Page",\n            "url": "http://localhost:90/MobG/shop-2/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 3,\n            "status": "publish",\n            "original_title": "Shop",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[66]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 35,\n            "object": "product_cat",\n            "type": "taxonomy",\n            "type_label": "Category",\n            "url": "http://localhost:90/MobG/product-category/lenovo/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 1,\n            "status": "publish",\n            "original_title": "Lenovo",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[70]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 37,\n            "object": "product_cat",\n            "type": "taxonomy",\n            "type_label": "Category",\n            "url": "http://localhost:90/MobG/product-category/iphone-store/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 2,\n            "status": "publish",\n            "original_title": "IPHONE STORE",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[67]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[68]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    },\n    "nav_menu_item[74]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 207,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Page",\n            "url": "http://localhost:90/MobG/wishlist/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 4,\n            "status": "publish",\n            "original_title": "Wishlist",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-06 06:20:52"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '7e372045-7970-49f9-b64c-e2c113c9b4cb', '', '', '2018-09-06 11:50:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?p=280', 0, 'customize_changeset', '', 0),
(281, 1, '2018-09-08 09:38:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-08 09:38:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?p=281', 0, 'post', '', 0),
(282, 1, '2018-09-08 09:38:10', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-08 09:38:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?post_type=product&p=282', 0, 'product', '', 0),
(283, 1, '2018-09-08 09:40:14', '2018-09-08 04:10:14', '', 'wallpaper1', '', 'inherit', 'open', 'closed', '', 'wallpaper1', '', '', '2018-09-08 09:40:14', '2018-09-08 04:10:14', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/09/wallpaper1.jpg', 0, 'attachment', 'image/jpeg', 0),
(284, 1, '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 'IPHONE', '', 'publish', 'closed', 'closed', '', 'iphone', '', '', '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 0, 'http://localhost:90/MobG/?page_id=284', 0, 'page', '', 0),
(285, 1, '2018-09-08 09:52:08', '2018-09-08 04:22:08', '{\n    "nav_menus_created_posts": {\n        "value": [\n            284,\n            286,\n            287\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:22:08"\n    },\n    "nav_menu_item[-2131507368]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:20:18"\n    },\n    "nav_menu_item[-1171444118]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:20:18"\n    },\n    "nav_menu_item[-761241615]": {\n        "value": {\n            "object_id": 284,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 5,\n            "type": "post_type",\n            "title": "IPHONE STORE",\n            "url": "http://localhost:90/MobG/?page_id=284",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "IPHONE",\n            "nav_menu_term_id": 45,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:20:18"\n    },\n    "nav_menu_item[-1669791999]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:20:18"\n    },\n    "nav_menu_item[-367275218]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:20:18"\n    },\n    "nav_menu_item[-1962238344]": {\n        "value": {\n            "object_id": 286,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 6,\n            "type": "post_type",\n            "title": "SAMSUNG STORE",\n            "url": "http://localhost:90/MobG/?page_id=286",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "SAMSUNG STORE",\n            "nav_menu_term_id": 45,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:21:18"\n    },\n    "nav_menu_item[-1191180155]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:21:18"\n    },\n    "nav_menu_item[-695419698]": {\n        "value": {\n            "object_id": 287,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 7,\n            "type": "post_type",\n            "title": "ONE PLUS",\n            "url": "http://localhost:90/MobG/?page_id=287",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "ONE PLUS",\n            "nav_menu_term_id": 45,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:22:08"\n    },\n    "nav_menu_item[-234995049]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-08 04:22:08"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '78176a5a-a86e-4a55-9239-f02477effea9', '', '', '2018-09-08 09:52:08', '2018-09-08 04:22:08', '', 0, 'http://localhost:90/MobG/?p=285', 0, 'customize_changeset', '', 0),
(286, 1, '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 'SAMSUNG STORE', '', 'publish', 'closed', 'closed', '', 'samsung-store', '', '', '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 0, 'http://localhost:90/MobG/?page_id=286', 0, 'page', '', 0),
(287, 1, '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 'ONE PLUS', '', 'publish', 'closed', 'closed', '', 'one-plus', '', '', '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 0, 'http://localhost:90/MobG/?page_id=287', 0, 'page', '', 0),
(288, 1, '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 'IPHONE', '', 'inherit', 'closed', 'closed', '', '284-revision-v1', '', '', '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 284, 'http://localhost:90/MobG/2018/09/08/284-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 'SAMSUNG STORE', '', 'inherit', 'closed', 'closed', '', '286-revision-v1', '', '', '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 286, 'http://localhost:90/MobG/2018/09/08/286-revision-v1/', 0, 'revision', '', 0),
(290, 1, '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 'ONE PLUS', '', 'inherit', 'closed', 'closed', '', '287-revision-v1', '', '', '2018-09-08 09:52:10', '2018-09-08 04:22:10', '', 287, 'http://localhost:90/MobG/2018/09/08/287-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2018-09-08 09:52:11', '2018-09-08 04:22:11', '', 'IPHONE STORE', '', 'publish', 'closed', 'closed', '', 'iphone-store', '', '', '2018-09-08 09:52:11', '2018-09-08 04:22:11', '', 0, 'http://localhost:90/MobG/2018/09/08/iphone-store/', 5, 'nav_menu_item', '', 0),
(292, 1, '2018-09-08 09:52:12', '2018-09-08 04:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '292', '', '', '2018-09-11 13:31:16', '2018-09-11 08:01:16', '', 0, 'http://localhost:90/MobG/2018/09/08/292/', 5, 'nav_menu_item', '', 0),
(293, 1, '2018-09-08 09:52:13', '2018-09-08 04:22:13', ' ', '', '', 'publish', 'closed', 'closed', '', '293', '', '', '2018-09-11 13:31:17', '2018-09-11 08:01:17', '', 0, 'http://localhost:90/MobG/2018/09/08/293/', 4, 'nav_menu_item', '', 0),
(294, 1, '2018-09-08 10:00:16', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-08 10:00:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?post_type=product&p=294', 0, 'product', '', 0),
(295, 1, '2018-09-11 13:14:15', '2018-09-11 07:44:15', '', 'samsung note 8', '', 'publish', 'open', 'closed', '', 'samsung-note-8', '', '', '2018-09-11 13:14:16', '2018-09-11 07:44:16', '', 0, 'http://localhost:90/MobG/?post_type=product&#038;p=295', 0, 'product', '', 0),
(296, 1, '2018-09-11 13:13:50', '2018-09-11 07:43:50', '', 'sam1', '', 'inherit', 'open', 'closed', '', 'sam1', '', '', '2018-09-11 13:13:50', '2018-09-11 07:43:50', '', 295, 'http://localhost:90/MobG/wp-content/uploads/2018/09/sam1.jpg', 0, 'attachment', 'image/jpeg', 0),
(297, 1, '2018-09-11 13:17:21', '2018-09-11 07:47:21', '{\n    "nav_menu_item[-1724946146]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:47:21"\n    },\n    "nav_menu_item[-86669168]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:47:21"\n    },\n    "nav_menu_item[-378778934]": {\n        "value": {\n            "object_id": 295,\n            "object": "product",\n            "menu_item_parent": 0,\n            "position": 6,\n            "type": "post_type",\n            "title": "samsung note 8",\n            "url": "http://localhost:90/MobG/product/samsung-note-8/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "samsung note 8",\n            "nav_menu_term_id": 45,\n            "_invalid": false,\n            "type_label": "Product"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:47:21"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '002b836d-4e0e-44fc-ab5b-17dc5848ed3d', '', '', '2018-09-11 13:17:21', '2018-09-11 07:47:21', '', 0, 'http://localhost:90/MobG/?p=297', 0, 'customize_changeset', '', 0),
(299, 1, '2018-09-11 13:18:34', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-11 13:18:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?post_type=product&p=299', 0, 'product', '', 0),
(300, 1, '2018-09-11 13:18:37', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-11 13:18:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?post_type=product&p=300', 0, 'product', '', 0),
(301, 1, '2018-09-11 13:20:05', '0000-00-00 00:00:00', '{\n    "nav_menu_item[298]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:50:05"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '019e89e1-a7f2-403b-a71e-8bc5ba49ebef', '', '', '2018-09-11 13:20:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?p=301', 0, 'customize_changeset', '', 0),
(302, 1, '2018-09-11 13:31:16', '2018-09-11 08:01:16', '{\n    "nav_menu_item[292]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 286,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Page",\n            "url": "http://localhost:90/MobG/samsung-store/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 5,\n            "status": "publish",\n            "original_title": "SAMSUNG STORE",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:55:46"\n    },\n    "nav_menu_item[298]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:55:46"\n    },\n    "nav_menu_item[293]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 287,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Page",\n            "url": "http://localhost:90/MobG/one-plus/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 45,\n            "position": 4,\n            "status": "publish",\n            "original_title": "ONE PLUS",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:55:46"\n    },\n    "nav_menu_item[-422890377]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:55:46"\n    },\n    "nav_menu_item[-628727752]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:56:46"\n    },\n    "widget_shop_elite_product_categories[1]": {\n        "value": {\n            "encoded_serialized_instance": "YTo2OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjA6IiI7czoxMDoiY2F0ZWdvcmllcyI7YToyOntpOjA7czoyOiIzNyI7aToxO3M6MjoiNTAiO31zOjE1OiJlbmFibGVfY2F0X2Rlc2MiO2k6MDtzOjEzOiJlbmFibGVfc2xpZGVyIjtpOjA7czoxNToiY2F0X2Rlc2NfbGVuZ3RoIjtpOjIwO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "170346b48d37bdf8aaf1aa1cd77c0eef"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:59:49"\n    },\n    "widget_shop_elite_category_products[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToxMTp7czo1OiJ0aXRsZSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjQ6ImRlc2MiO3M6MDoiIjtzOjg6ImNhdGVnb3J5IjtpOjA7czo2OiJudW1iZXIiO2k6NDtzOjc6Im9yZGVyYnkiO3M6NDoiZGF0ZSI7czo1OiJvcmRlciI7czo0OiJkZXNjIjtzOjE4OiJzaG93X2NhdGVnb3J5X2Rlc2MiO2k6MTtzOjE3OiJjYXRlZ29yeV9kZXNjX21zZyI7czowOiIiO3M6OToiaGlkZV9mcmVlIjtpOjA7czoxMToic2hvd19oaWRkZW4iO2k6MDtzOjEzOiJlbmFibGVfc2xpZGVyIjtpOjA7fQ==",\n            "title": "Latest Products",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "299807ad90620f0bec3b9f4e33d3a07c"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 08:00:50"\n    },\n    "widget_shop_elite_call_to_action[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo5OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjA6IiI7czo4OiJiZ19pbWFnZSI7aTo0NTtzOjE1OiJiZ19pbWFnZV9oZWlnaHQiO2k6MjUwO3M6MTU6ImVuYWJsZV9maXhlZF9iZyI7aToxO3M6ODoiYnRuX3RleHQiO3M6MTI6IkZpbmQgVXMgSGVyZSI7czo4OiJidG5fbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lc2FnYS5jb20vc2hvcC1lbGl0ZS1wcm8iO3M6MTE6ImxpbmtfdGFyZ2V0IjtpOjE7czoxNDoidGV4dF9hbGlnbm1lbnQiO3M6NjoiY2VudGVyIjt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "4d9f7b245a7dc2bd698b2fb47b65362e"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 08:01:16"\n    },\n    "sidebars_widgets[home-page-full-width-col]": {\n        "value": [\n            "shop_elite_product_categories-1",\n            "shop_elite_products_listings-1",\n            "shop_elite_call_to_action-1",\n            "shop_elite_posts_listings-1",\n            "shop_elite_call_to_action-2"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 08:00:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1526443c-7e47-4411-91b8-4f20e25025ae', '', '', '2018-09-11 13:31:16', '2018-09-11 08:01:16', '', 0, 'http://localhost:90/MobG/?p=302', 0, 'customize_changeset', '', 0),
(303, 1, '2018-09-11 13:37:47', '2018-09-11 08:07:47', '{\n    "widget_shop_elite_call_to_action[1]": {\n        "value": {\n            "encoded_serialized_instance": "YTo5OntzOjU6InRpdGxlIjtzOjEzOiJVcCB0byA3MCUgT2ZmIjtzOjQ6ImRlc2MiO3M6NDk6IkdldCByZWFkeSB0byBlbnRlciB0aGUgYmlnZ2VzdCBzYWxlIG9mIHRoZSBzdW1tZXIiO3M6ODoiYmdfaW1hZ2UiO2k6MzA0O3M6MTU6ImJnX2ltYWdlX2hlaWdodCI7aTo0MDA7czo4OiJidG5fdGV4dCI7czo4OiJCb29rIE5vdyI7czo4OiJidG5fbGluayI7czo0MjoiaHR0cHM6Ly90aGVtZXNhZ2EuY29tL3RoZW1lL3Nob3AtZWxpdGUtcHJvIjtzOjExOiJsaW5rX3RhcmdldCI7aToxO3M6MTQ6InRleHRfYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6MTU6ImVuYWJsZV9maXhlZF9iZyI7aToxO30=",\n            "title": "Up to 70% Off",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "60eff623e2b5d0af3fdcf921089c35ca"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 08:07:47"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '669c1bb1-01d8-4ffe-9ebf-dc1ec91ddced', '', '', '2018-09-11 13:37:47', '2018-09-11 08:07:47', '', 0, 'http://localhost:90/MobG/?p=303', 0, 'customize_changeset', '', 0),
(304, 1, '2018-09-11 13:37:26', '2018-09-11 08:07:26', '', 'redone+', '', 'inherit', 'open', 'closed', '', 'redone', '', '', '2018-09-11 13:37:26', '2018-09-11 08:07:26', '', 0, 'http://localhost:90/MobG/wp-content/uploads/2018/09/redone.png', 0, 'attachment', 'image/png', 0),
(305, 1, '2018-09-11 13:44:51', '0000-00-00 00:00:00', '{\n    "shop-elite::theme_options[ad_banner_image]": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 08:14:51"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '64efd129-f387-4411-a5e3-a1b4bed6d91f', '', '', '2018-09-11 13:44:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:90/MobG/?p=305', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_queue`
--

CREATE TABLE IF NOT EXISTS `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 26, 'order_pa_color', '0'),
(2, 27, 'order_pa_color', '0'),
(3, 28, 'product_count_product_tag', '0'),
(4, 29, 'product_count_product_tag', '0'),
(5, 30, 'order_pa_size', '0'),
(6, 31, 'order_pa_size', '0'),
(7, 32, 'order_pa_color', '0'),
(8, 33, 'order_pa_size', '0'),
(9, 34, 'order_pa_color', '0'),
(24, 37, 'order', '0'),
(25, 37, 'order', '0'),
(26, 37, 'order', '0'),
(27, 37, 'order', '0'),
(28, 37, 'display_type', ''),
(29, 37, 'thumbnail_id', '265'),
(30, 37, 'product_count_product_cat', '4'),
(37, 39, 'order', '0'),
(38, 39, 'order', '0'),
(39, 39, 'order', '0'),
(40, 39, 'order', '0'),
(41, 39, 'display_type', ''),
(42, 39, 'thumbnail_id', '266'),
(43, 39, 'product_count_product_cat', '0'),
(72, 44, 'order', '0'),
(73, 44, 'order', '0'),
(74, 44, 'order', '0'),
(75, 44, 'order', '0'),
(76, 44, 'display_type', ''),
(77, 44, 'thumbnail_id', '272'),
(78, 44, 'product_count_product_cat', '1'),
(79, 48, 'order', '0'),
(80, 48, 'product_count_product_cat', '0'),
(84, 17, 'product_count_product_cat', '0'),
(85, 50, 'order', '0'),
(86, 50, 'display_type', ''),
(87, 50, 'thumbnail_id', '283'),
(88, 50, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Uncategorized', 'uncategorized', 0),
(18, 'Fashion', 'fashion', 0),
(19, 'Men', 'men', 0),
(20, 'Shop', 'shop', 0),
(21, 'Summer', 'summer', 0),
(22, 'Trending', 'trending', 0),
(23, 'Women', 'women', 0),
(24, 'beauty', 'beauty', 0),
(25, 'fashion', 'fashion', 0),
(26, 'Black', 'black', 0),
(27, 'Blue', 'blue', 0),
(28, 'Budget', 'budget', 0),
(29, 'Fashion', 'fashion', 0),
(30, 'Large', 'large', 0),
(31, 'Medium', 'medium', 0),
(32, 'Red', 'red', 0),
(33, 'Small', 'small', 0),
(34, 'White', 'white', 0),
(37, 'IPHONE STORE', 'iphone-store', 0),
(39, 'IPHONE', 'iphones', 0),
(44, 'IPAD', 'ipad', 0),
(45, 'Primary Menu', 'primary-menu', 0),
(46, 'Social Navigation', 'social-navigation', 0),
(47, 'Top Navigation', 'top-navigation', 0),
(48, 'iphone X', 'iphone-x', 0),
(50, 'SAMSUNG STORE', 'samsung-store', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(30, 1, 0),
(49, 20, 0),
(74, 45, 0),
(113, 20, 0),
(116, 20, 0),
(126, 4, 0),
(126, 37, 0),
(126, 44, 0),
(149, 45, 0),
(151, 46, 0),
(152, 46, 0),
(158, 4, 0),
(158, 17, 0),
(166, 4, 0),
(166, 37, 0),
(166, 39, 0),
(168, 4, 0),
(168, 16, 0),
(168, 17, 0),
(168, 28, 0),
(178, 18, 0),
(178, 22, 0),
(178, 23, 0),
(178, 24, 0),
(178, 25, 0),
(182, 21, 0),
(182, 22, 0),
(182, 24, 0),
(182, 25, 0),
(185, 18, 0),
(185, 19, 0),
(185, 22, 0),
(188, 6, 0),
(188, 27, 0),
(188, 28, 0),
(188, 29, 0),
(188, 32, 0),
(188, 37, 0),
(191, 5, 0),
(191, 17, 0),
(192, 7, 0),
(192, 37, 0),
(201, 4, 0),
(201, 17, 0),
(201, 27, 0),
(201, 32, 0),
(201, 34, 0),
(223, 47, 0),
(224, 47, 0),
(236, 4, 0),
(236, 37, 0),
(249, 46, 0),
(250, 46, 0),
(251, 46, 0),
(267, 4, 0),
(267, 37, 0),
(291, 45, 0),
(292, 45, 0),
(293, 45, 0),
(295, 4, 0),
(295, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'product_type', '', 0, 4),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'category', '', 0, 2),
(19, 19, 'category', '', 18, 1),
(20, 20, 'category', '', 0, 3),
(21, 21, 'category', '', 0, 1),
(22, 22, 'category', '', 0, 3),
(23, 23, 'category', '', 18, 1),
(24, 24, 'post_tag', '', 0, 2),
(25, 25, 'post_tag', '', 0, 2),
(26, 26, 'pa_color', '', 0, 0),
(27, 27, 'pa_color', '', 0, 0),
(28, 28, 'product_tag', '', 0, 0),
(29, 29, 'product_tag', '', 0, 0),
(30, 30, 'pa_size', '', 0, 0),
(31, 31, 'pa_size', '', 0, 0),
(32, 32, 'pa_color', '', 0, 0),
(33, 33, 'pa_size', '', 0, 0),
(34, 34, 'pa_color', '', 0, 0),
(37, 37, 'product_cat', '', 0, 4),
(39, 39, 'product_cat', '', 37, 0),
(44, 44, 'product_cat', '', 37, 1),
(45, 45, 'nav_menu', '', 0, 5),
(46, 46, 'nav_menu', '', 0, 5),
(47, 47, 'nav_menu', '', 0, 2),
(48, 48, 'product_cat', '', 0, 0),
(50, 50, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"6a3ec12b1a680ebbe0e28178efd15b3f208280f048af3351c7260ddda7c3af97";a:4:{s:10:"expiration";i:1536824102;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";s:5:"login";i:1536651302;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '276'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(19, 1, 'wp_user-settings-time', '1534735789'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(21, 1, 'jetpack_tracks_anon_id', 'jetpack:B+klCkNC0YvtUO097ivjXGpg'),
(22, 1, 'wc_last_active', '1536624000'),
(23, 1, 'dismissed_no_secure_connection_notice', '1'),
(24, 1, 'closedpostboxes_product', 'a:1:{i:0;s:19:"tagsdiv-product_tag";}'),
(25, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(26, 1, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:67:"woocommerce-product-data,postexcerpt,postcustom,slugdiv,commentsdiv";s:8:"advanced";s:19:"shop-elite-meta-box";}'),
(27, 1, 'screen_layout_product', '2'),
(28, 1, 'nav_menu_recently_edited', '45'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BZ3uUNhixNB6jbGLlTg9PCqQeVFC1m/', 'admin', 'rushighoda183@gmail.com', '', '2018-07-06 08:43:37', '', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE IF NOT EXISTS `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE IF NOT EXISTS `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'color', 'select', 'menu_order', 0),
(2, 'size', 'size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(21, '1', 'a:8:{s:22:"mailchimp_landing_site";s:53:"http://localhost:90/MobG/MobG/wp-admin/admin-ajax.php";s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:707:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:0:"";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:0:"";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:23:"rushighoda183@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1536824196);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Rajkot Zone', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 1, 'IN:GJ', 'state'),
(3, 1, 'IN:MH', 'state');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(1, 2, 'local_pickup', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE IF NOT EXISTS `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(1, 236, 1, 1, 1, '2018-09-08 02:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE IF NOT EXISTS `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`) VALUES
(1, 1, '', '', '2Q0BRKSXC0YI', 0, 1, '2018-07-10 12:49:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10)), ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_evf_entries`
--
ALTER TABLE `wp_evf_entries`
  ADD PRIMARY KEY (`entry_id`), ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_evf_entrymeta`
--
ALTER TABLE `wp_evf_entrymeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `entry_id` (`entry_id`), ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_evf_sessions`
--
ALTER TABLE `wp_evf_sessions`
  ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`), ADD KEY `permission_id` (`permission_id`), ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`), ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `payment_token_id` (`payment_token_id`), ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`), ADD KEY `location_id` (`location_id`), ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`), ADD KEY `tax_rate_state` (`tax_rate_state`(2)), ADD KEY `tax_rate_class` (`tax_rate_class`(10)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`), ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `wishlist_token` (`wishlist_token`), ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_evf_entries`
--
ALTER TABLE `wp_evf_entries`
  MODIFY `entry_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_evf_entrymeta`
--
ALTER TABLE `wp_evf_entrymeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_evf_sessions`
--
ALTER TABLE `wp_evf_sessions`
  MODIFY `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1743;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1285;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=306;
--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
