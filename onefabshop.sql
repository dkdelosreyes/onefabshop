-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2016 at 08:39 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onefabshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_commentmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_comments`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_2_comments`
--

INSERT INTO `ofs2616_2_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://localhost/onefabshop/', '', '2016-02-07 12:19:04', '2016-02-07 12:19:04', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_links`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_options`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=261 ;

--
-- Dumping data for table `ofs2616_2_options`
--

INSERT INTO `ofs2616_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/onefabshop/ae', 'yes'),
(2, 'home', 'http://localhost/onefabshop/ae', 'yes'),
(3, 'blogname', 'Onefabshop.ae', 'yes'),
(4, 'blogdescription', 'Just another One Fab Shop Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'diannekatherinedelosreyes@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:0:{}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'eightstore-lite', 'yes'),
(40, 'stylesheet', 'eightstore-lite-child', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'ofs2616_2_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:17:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"shop";N;s:31:"eightstore-lite-language-option";N;s:16:"widget-product-1";N;s:14:"widget-promo-1";N;s:17:"widget-category-1";N;s:14:"widget-promo-2";N;s:17:"widget-category-2";N;s:14:"widget-promo-3";N;s:16:"widget-product-2";N;s:14:"widget-promo-4";N;s:12:"sidebar-left";N;s:13:"sidebar-right";N;s:8:"footer-1";N;s:8:"footer-2";N;s:13:"array_version";i:3;}', 'yes'),
(98, 'WPLANG', '', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'hicpo_activation', '1', 'yes'),
(104, 'cron', 'a:8:{i:1454855292;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1454889600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454891218;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454934287;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454934418;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454935185;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1456790400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(106, '_transient_timeout_plugin_slugs', '1454934334', 'no'),
(107, '_transient_plugin_slugs', 'a:5:{i:0;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:1;s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:2;s:27:"woocommerce/woocommerce.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";i:4;s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";}', 'no'),
(108, 'recently_activated', 'a:1:{s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:1454847934;}', 'yes'),
(110, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(111, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(122, 'woocommerce_default_country', 'AE', 'yes'),
(123, 'woocommerce_allowed_countries', 'all', 'yes'),
(124, 'woocommerce_specific_allowed_countries', '', 'yes'),
(125, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(126, 'woocommerce_demo_store', 'no', 'yes'),
(127, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(128, 'woocommerce_currency', 'AED', 'yes'),
(129, 'woocommerce_currency_pos', 'right', 'yes'),
(130, 'woocommerce_price_thousand_sep', ',', 'yes'),
(131, 'woocommerce_price_decimal_sep', '.', 'yes'),
(132, 'woocommerce_price_num_decimals', '2', 'yes'),
(133, 'woocommerce_weight_unit', 'lbs', 'yes'),
(134, 'woocommerce_dimension_unit', 'in', 'yes'),
(135, 'woocommerce_enable_review_rating', 'yes', 'no'),
(136, 'woocommerce_review_rating_required', 'yes', 'no'),
(137, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(138, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(139, 'woocommerce_shop_page_id', '4', 'yes'),
(140, 'woocommerce_shop_page_display', '', 'yes'),
(141, 'woocommerce_category_archive_display', '', 'yes'),
(142, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(143, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(144, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(145, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(146, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(147, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(148, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(149, 'woocommerce_manage_stock', 'yes', 'yes'),
(150, 'woocommerce_hold_stock_minutes', '60', 'no'),
(151, 'woocommerce_notify_low_stock', 'yes', 'no'),
(152, 'woocommerce_notify_no_stock', 'yes', 'no'),
(153, 'woocommerce_stock_email_recipient', 'diannekatherinedelosreyes@gmail.com', 'no'),
(154, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(155, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(156, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(157, 'woocommerce_stock_format', '', 'yes'),
(158, 'woocommerce_file_download_method', 'force', 'no'),
(159, 'woocommerce_downloads_require_login', 'no', 'no'),
(160, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(161, 'woocommerce_calc_taxes', 'no', 'yes'),
(162, 'woocommerce_prices_include_tax', 'no', 'yes'),
(163, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(164, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(165, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(166, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(167, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(168, 'woocommerce_tax_display_cart', 'excl', 'no'),
(169, 'woocommerce_price_display_suffix', '', 'yes'),
(170, 'woocommerce_tax_total_display', 'itemized', 'no'),
(171, 'woocommerce_enable_coupons', 'yes', 'no'),
(172, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(173, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(174, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(175, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(176, 'woocommerce_cart_page_id', '5', 'yes'),
(177, 'woocommerce_checkout_page_id', '6', 'yes'),
(178, 'woocommerce_terms_page_id', '', 'no'),
(179, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(180, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(181, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(182, 'woocommerce_calc_shipping', 'no', 'yes'),
(183, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(184, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(185, 'woocommerce_ship_to_destination', 'billing', 'no'),
(186, 'woocommerce_ship_to_countries', '', 'yes'),
(187, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(188, 'woocommerce_myaccount_page_id', '7', 'yes'),
(189, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(190, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(191, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(192, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(193, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(194, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(195, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(196, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(197, 'woocommerce_registration_generate_username', 'yes', 'no'),
(198, 'woocommerce_registration_generate_password', 'no', 'no'),
(199, 'woocommerce_email_from_name', 'Onefabshop.ae', 'no'),
(200, 'woocommerce_email_from_address', 'diannekatherinedelosreyes@gmail.com', 'no'),
(201, 'woocommerce_email_header_image', '', 'no'),
(202, 'woocommerce_email_footer_text', 'Onefabshop.ae - Powered by WooCommerce', 'no'),
(203, 'woocommerce_email_base_color', '#557da1', 'no'),
(204, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(205, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(206, 'woocommerce_email_text_color', '#505050', 'no'),
(207, 'woocommerce_api_enabled', 'yes', 'yes'),
(209, 'woocommerce_admin_notices', 'a:1:{i:1;s:14:"template_files";}', 'yes'),
(212, 'woocommerce_db_version', '2.5.2', 'yes'),
(213, 'woocommerce_version', '2.5.2', 'yes'),
(214, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(216, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(221, '_transient_timeout_wc_admin_report', '1454934476', 'no'),
(222, '_transient_wc_admin_report', 'a:1:{s:32:"019ebd8129c4c9c1a866f731b6de2f73";a:0:{}}', 'no'),
(223, '_transient_timeout_geoip_::1', '1455452903', 'no'),
(225, '_transient_geoip_::1', '', 'no'),
(227, 'post_count', '1', 'yes'),
(228, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=5";i:1;s:6:"/cart/";i:2;s:3:"p=6";i:3;s:10:"/checkout/";i:4;s:3:"p=7";i:5;s:12:"/my-account/";}', 'yes'),
(229, '_transient_timeout_external_ip_address_::1', '1455452938', 'no'),
(230, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(233, '_transient_timeout_geoip_0.0.0.0', '1455452948', 'no'),
(234, '_transient_geoip_0.0.0.0', '', 'no'),
(235, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(236, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(237, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(238, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(242, 'product_cat_children', 'a:1:{i:7;a:1:{i:0;i:8;}}', 'yes'),
(243, '_transient_product_query-transient-version', '1454848952', 'yes'),
(244, '_transient_product-transient-version', '1454848954', 'yes'),
(245, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454848977;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(246, 'current_theme', 'EightStore Lite Child', 'yes'),
(247, 'theme_mods_eightstore-lite-child', 'a:1:{i:0;b:0;}', 'yes'),
(248, 'theme_switched', '', 'yes'),
(249, 'widget_eightstore_lite_cta_simple', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_eightstore_lite_promo', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_eightstore_lite_product', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_eightstore_lite_cat_product', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_eightstore_lite_cta_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'rewrite_rules', 'a:185:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(255, '_transient_is_multi_author', '0', 'yes'),
(256, '_transient_eightstore_lite_categories', '1', 'yes'),
(257, '_transient_timeout_wc_uf_pid_c4984cd9eb459db50961fdeb9a215b19', '1457441017', 'no'),
(258, '_transient_wc_uf_pid_c4984cd9eb459db50961fdeb9a215b19', 'a:1:{i:0;i:8;}', 'no'),
(259, '_transient_timeout_wc_related_8', '1454935436', 'no'),
(260, '_transient_wc_related_8', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_postmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `ofs2616_2_postmeta`
--

INSERT INTO `ofs2616_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_edit_lock', '1454848957:1'),
(3, 8, '_edit_last', '1'),
(4, 9, '_wp_attached_file', '2016/02/banner-mk.jpg'),
(5, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1279;s:6:"height";i:543;s:4:"file";s:21:"2016/02/banner-mk.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"banner-mk-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"banner-mk-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"banner-mk-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"banner-mk-1024x435.jpg";s:5:"width";i:1024;s:6:"height";i:435;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"banner-mk-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"banner-mk-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"banner-mk-600x543.jpg";s:5:"width";i:600;s:6:"height";i:543;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 8, '_thumbnail_id', '9'),
(7, 8, '_visibility', 'visible'),
(8, 8, '_stock_status', 'instock'),
(9, 8, 'total_sales', '0'),
(10, 8, '_downloadable', 'no'),
(11, 8, '_virtual', 'no'),
(12, 8, '_purchase_note', ''),
(13, 8, '_featured', 'no'),
(14, 8, '_weight', ''),
(15, 8, '_length', ''),
(16, 8, '_width', ''),
(17, 8, '_height', ''),
(18, 8, '_sku', '123'),
(19, 8, '_product_attributes', 'a:0:{}'),
(20, 8, '_regular_price', '123'),
(21, 8, '_sale_price', '12'),
(22, 8, '_sale_price_dates_from', ''),
(23, 8, '_sale_price_dates_to', ''),
(24, 8, '_price', '12'),
(25, 8, '_sold_individually', ''),
(26, 8, '_manage_stock', 'no'),
(27, 8, '_backorders', 'no'),
(28, 8, '_stock', ''),
(29, 8, '_upsell_ids', 'a:0:{}'),
(30, 8, '_crosssell_ids', 'a:0:{}'),
(31, 8, '_product_version', '2.5.2'),
(32, 8, '_product_image_gallery', ''),
(33, 8, '_wc_rating_count', 'a:0:{}'),
(34, 8, '_wc_average_rating', '0'),
(35, 8, '_wc_review_count', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_posts`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ofs2616_2_posts`
--

INSERT INTO `ofs2616_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-07 12:19:04', '2016-02-07 12:19:04', 'Welcome to <a href="http://localhost/onefabshop/">One Fab Shop Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-02-07 12:19:04', '2016-02-07 12:19:04', '', 0, 'http://localhost/onefabshop/ae/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-07 12:19:04', '2016-02-07 12:19:04', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/onefabshop/ae/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-02-07 12:19:04', '2016-02-07 12:19:04', '', 0, 'http://localhost/onefabshop/ae/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-02-07 12:24:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-07 12:24:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/ae/?p=3', 0, 'post', '', 0),
(4, 1, '2016-02-07 12:28:39', '2016-02-07 12:28:39', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-02-07 12:28:39', '2016-02-07 12:28:39', '', 0, 'http://localhost/onefabshop/ae/shop/', 0, 'page', '', 0),
(5, 1, '2016-02-07 12:28:39', '2016-02-07 12:28:39', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-02-07 12:28:39', '2016-02-07 12:28:39', '', 0, 'http://localhost/onefabshop/ae/cart/', 0, 'page', '', 0),
(6, 1, '2016-02-07 12:28:39', '2016-02-07 12:28:39', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-02-07 12:28:39', '2016-02-07 12:28:39', '', 0, 'http://localhost/onefabshop/ae/checkout/', 0, 'page', '', 0),
(7, 1, '2016-02-07 12:28:39', '2016-02-07 12:28:39', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-02-07 12:28:39', '2016-02-07 12:28:39', '', 0, 'http://localhost/onefabshop/ae/my-account/', 0, 'page', '', 0),
(8, 1, '2016-02-07 12:42:31', '2016-02-07 12:42:31', 'sample description', 'Sample Product', '', 'publish', 'open', 'closed', '', 'sample-product', '', '', '2016-02-07 12:42:31', '2016-02-07 12:42:31', '', 0, 'http://localhost/onefabshop/ae/?post_type=product&#038;p=8', 0, 'product', '', 0),
(9, 1, '2016-02-07 12:42:22', '2016-02-07 12:42:22', '', 'banner-mk', '', 'inherit', 'open', 'closed', '', 'banner-mk', '', '', '2016-02-07 12:42:22', '2016-02-07 12:42:22', '', 8, 'http://localhost/onefabshop/ae/wp-content/uploads/sites/2/2016/02/banner-mk.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_terms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ofs2616_2_terms`
--

INSERT INTO `ofs2616_2_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0),
(6, 'Men', 'men', 0, 0),
(7, 'Women', 'women', 0, 0),
(8, 'Shoes', 'shoes', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_2_term_relationships`
--

INSERT INTO `ofs2616_2_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(8, 6, 0),
(8, 7, 0),
(8, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ofs2616_2_term_taxonomy`
--

INSERT INTO `ofs2616_2_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_cat', '', 0, 1),
(7, 7, 'product_cat', '', 0, 1),
(8, 8, 'product_cat', '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_ufbl_entries`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_ufbl_entries` (
  `entry_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(9) DEFAULT NULL,
  `entry_detail` text COLLATE utf8mb4_unicode_ci,
  `entry_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_ufbl_entries`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_ufbl_forms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_ufbl_forms` (
  `form_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_detail` text COLLATE utf8mb4_unicode_ci,
  `form_status` int(11) DEFAULT NULL,
  `form_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_ufbl_forms`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_api_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_attribute_taxonomies`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_downloadable_product_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_order_itemmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_order_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_sessions`
--

INSERT INTO `ofs2616_2_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:19:{s:10:"wc_notices";N;s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1455020094);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_tax_rates`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_tax_rate_locations`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_2_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_2_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ofs2616_2_woocommerce_termmeta`
--

INSERT INTO `ofs2616_2_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'order', '0'),
(2, 7, 'order', '0'),
(3, 8, 'order', '0'),
(4, 7, 'product_count_product_cat', '1'),
(5, 8, 'product_count_product_cat', '1'),
(6, 6, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_blogs`
--

CREATE TABLE IF NOT EXISTS `ofs2616_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ofs2616_blogs`
--

INSERT INTO `ofs2616_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'localhost', '/onefabshop/', '2016-02-07 12:09:58', '2016-02-25 07:29:14', 1, 0, 0, 0, 0, 0),
(2, 1, 'localhost', '/onefabshop/ae/', '2016-02-07 12:18:43', '2016-02-07 12:42:32', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_blog_versions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_id`),
  KEY `db_version` (`db_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_blog_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_commentmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=210 ;

--
-- Dumping data for table `ofs2616_commentmeta`
--

INSERT INTO `ofs2616_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'akismet_error', '1370606225'),
(2, 2, 'akismet_history', 'a:4:{s:4:"time";d:1370606225.6765859127044677734375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(3, 2, 'akismet_as_submitted', ''),
(4, 2, 'rating', '4'),
(5, 2, 'akismet_history', 'a:4:{s:4:"time";d:1370607940.89634990692138671875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(6, 3, 'akismet_error', '1370606029'),
(7, 3, 'akismet_history', 'a:4:{s:4:"time";d:1370606029.1820490360260009765625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(8, 3, 'akismet_as_submitted', ''),
(9, 3, 'rating', '4'),
(10, 3, 'akismet_history', 'a:4:{s:4:"time";d:1370607930.6214559078216552734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(11, 4, 'akismet_error', '1370606265'),
(12, 4, 'akismet_history', 'a:4:{s:4:"time";d:1370606265.92131900787353515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(13, 4, 'akismet_as_submitted', ''),
(14, 4, 'rating', '5'),
(15, 4, 'akismet_history', 'a:4:{s:4:"time";d:1370607942.4681990146636962890625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(16, 5, 'akismet_error', '1370605393'),
(17, 5, 'akismet_history', 'a:4:{s:4:"time";d:1370605393.68045711517333984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(18, 5, 'akismet_as_submitted', ''),
(19, 5, 'rating', '4'),
(20, 5, 'akismet_history', 'a:4:{s:4:"time";d:1370605641.8064620494842529296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(21, 6, 'akismet_error', '1370606115'),
(22, 6, 'akismet_history', 'a:4:{s:4:"time";d:1370606115.2617321014404296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(23, 6, 'akismet_as_submitted', ''),
(24, 6, 'rating', '4'),
(25, 6, 'akismet_history', 'a:4:{s:4:"time";d:1370607935.6320250034332275390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(26, 7, 'akismet_error', '1370610134'),
(27, 7, 'akismet_history', 'a:4:{s:4:"time";d:1370610134.2017900943756103515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(28, 7, 'akismet_as_submitted', ''),
(29, 7, 'rating', '5'),
(30, 7, 'akismet_history', 'a:4:{s:4:"time";d:1370611526.547483921051025390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(31, 8, 'akismet_error', '1370606072'),
(32, 8, 'akismet_history', 'a:4:{s:4:"time";d:1370606072.7117550373077392578125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(33, 8, 'akismet_as_submitted', ''),
(34, 8, 'rating', '5'),
(35, 8, 'akismet_history', 'a:4:{s:4:"time";d:1370607931.63070201873779296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(36, 9, 'akismet_error', '1370610085'),
(37, 9, 'akismet_history', 'a:4:{s:4:"time";d:1370610085.324596881866455078125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(38, 9, 'akismet_as_submitted', ''),
(39, 9, 'rating', '5'),
(40, 9, 'akismet_history', 'a:4:{s:4:"time";d:1370611525.10484409332275390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(41, 10, 'akismet_error', '1370620193'),
(42, 10, 'akismet_history', 'a:4:{s:4:"time";d:1370620193.9864521026611328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(43, 10, 'akismet_as_submitted', ''),
(44, 10, 'rating', '5'),
(45, 10, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9563140869140625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(46, 11, 'akismet_error', '1370610209'),
(47, 11, 'akismet_history', 'a:4:{s:4:"time";d:1370610209.978949069976806640625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(48, 11, 'akismet_as_submitted', ''),
(49, 11, 'rating', '4'),
(50, 11, 'akismet_history', 'a:4:{s:4:"time";d:1370611527.7993829250335693359375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(51, 12, 'akismet_error', '1370611492'),
(52, 12, 'akismet_history', 'a:4:{s:4:"time";d:1370611492.6543419361114501953125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(53, 12, 'akismet_as_submitted', ''),
(54, 12, 'rating', '5'),
(55, 12, 'akismet_history', 'a:4:{s:4:"time";d:1370611529.7720489501953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(56, 13, 'akismet_error', '1370620411'),
(57, 13, 'akismet_history', 'a:4:{s:4:"time";d:1370620411.1445829868316650390625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(58, 13, 'akismet_as_submitted', ''),
(59, 13, 'rating', '3'),
(60, 13, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9381520748138427734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(61, 14, 'akismet_error', '1370606279'),
(62, 14, 'akismet_history', 'a:4:{s:4:"time";d:1370606279.836287975311279296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(63, 14, 'akismet_as_submitted', ''),
(64, 14, 'rating', '5'),
(65, 14, 'akismet_history', 'a:4:{s:4:"time";d:1370607944.7811119556427001953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(66, 15, 'akismet_error', '1370620393'),
(67, 15, 'akismet_history', 'a:4:{s:4:"time";d:1370620393.6741259098052978515625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(68, 15, 'akismet_as_submitted', ''),
(69, 15, 'rating', '4'),
(70, 15, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.94254302978515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(71, 16, 'akismet_error', '1370605612'),
(72, 16, 'akismet_history', 'a:4:{s:4:"time";d:1370605612.873900890350341796875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(73, 16, 'akismet_as_submitted', ''),
(74, 16, 'rating', '4'),
(75, 16, 'akismet_history', 'a:4:{s:4:"time";d:1370605643.71494293212890625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(76, 17, 'akismet_error', '1370605993'),
(77, 17, 'akismet_history', 'a:4:{s:4:"time";d:1370605993.45998096466064453125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(78, 17, 'akismet_as_submitted', ''),
(79, 17, 'rating', '5'),
(80, 17, 'akismet_history', 'a:4:{s:4:"time";d:1370607929.392714977264404296875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(81, 18, 'akismet_error', '1370606643'),
(82, 18, 'akismet_history', 'a:4:{s:4:"time";d:1370606643.435740947723388671875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(83, 18, 'akismet_as_submitted', ''),
(84, 18, 'rating', '5'),
(85, 18, 'akismet_history', 'a:4:{s:4:"time";d:1370607947.308474063873291015625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(86, 19, 'akismet_error', '1370606091'),
(87, 19, 'akismet_history', 'a:4:{s:4:"time";d:1370606091.7579820156097412109375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(88, 19, 'akismet_as_submitted', ''),
(89, 19, 'rating', '1'),
(90, 19, 'akismet_history', 'a:4:{s:4:"time";d:1370607932.6080811023712158203125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(91, 20, 'akismet_error', '1370620222'),
(92, 20, 'akismet_history', 'a:4:{s:4:"time";d:1370620222.19242095947265625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(93, 20, 'akismet_as_submitted', ''),
(94, 20, 'rating', '5'),
(95, 20, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.951541900634765625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(96, 21, 'akismet_error', '1370607293'),
(97, 21, 'akismet_history', 'a:4:{s:4:"time";d:1370607293.9348719120025634765625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:7:"student";}'),
(98, 21, 'akismet_as_submitted', ''),
(99, 21, 'rating', '5'),
(100, 21, 'akismet_history', 'a:4:{s:4:"time";d:1370607950.2842080593109130859375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(101, 22, 'akismet_error', '1370607656'),
(102, 22, 'akismet_history', 'a:4:{s:4:"time";d:1370607656.262073040008544921875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(103, 22, 'akismet_as_submitted', ''),
(104, 22, 'rating', '5'),
(105, 22, 'akismet_history', 'a:4:{s:4:"time";d:1370607953.4172599315643310546875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(106, 23, 'akismet_error', '1370608902'),
(107, 23, 'akismet_history', 'a:4:{s:4:"time";d:1370608902.768413066864013671875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(108, 23, 'akismet_as_submitted', ''),
(109, 23, 'rating', '4'),
(110, 23, 'akismet_history', 'a:4:{s:4:"time";d:1370609037.499927043914794921875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(111, 24, 'akismet_error', '1370611600'),
(112, 24, 'akismet_history', 'a:4:{s:4:"time";d:1370611600.5786969661712646484375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(113, 24, 'akismet_as_submitted', ''),
(114, 24, 'rating', '5'),
(115, 24, 'akismet_history', 'a:4:{s:4:"time";d:1370612306.3991410732269287109375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(116, 25, 'akismet_error', '1370620436'),
(117, 25, 'akismet_history', 'a:4:{s:4:"time";d:1370620436.97305393218994140625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(118, 25, 'akismet_as_submitted', ''),
(119, 25, 'rating', '1'),
(120, 25, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.932437896728515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(121, 26, 'akismet_error', '1370684262'),
(122, 26, 'akismet_history', 'a:4:{s:4:"time";d:1370684262.2404038906097412109375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(123, 26, 'akismet_as_submitted', ''),
(124, 26, 'rating', '5'),
(125, 27, 'akismet_error', '1370606673'),
(126, 27, 'akismet_history', 'a:4:{s:4:"time";d:1370606673.5934140682220458984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(127, 27, 'akismet_as_submitted', ''),
(128, 27, 'rating', '3'),
(129, 27, 'akismet_history', 'a:4:{s:4:"time";d:1370607949.19136905670166015625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(130, 28, 'akismet_error', '1370620465'),
(131, 28, 'akismet_history', 'a:4:{s:4:"time";d:1370620465.89346790313720703125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(132, 28, 'akismet_as_submitted', ''),
(133, 28, 'rating', '5'),
(134, 28, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.92792606353759765625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(135, 29, 'akismet_error', '1370605945'),
(136, 29, 'akismet_history', 'a:4:{s:4:"time";d:1370605945.8927509784698486328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(137, 29, 'akismet_as_submitted', ''),
(138, 29, 'rating', '4'),
(139, 29, 'akismet_history', 'a:4:{s:4:"time";d:1370607928.4240779876708984375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(140, 30, 'akismet_error', '1370606196'),
(141, 30, 'akismet_history', 'a:4:{s:4:"time";d:1370606196.096724987030029296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(142, 30, 'akismet_as_submitted', ''),
(143, 30, 'rating', '3'),
(144, 30, 'akismet_history', 'a:4:{s:4:"time";d:1370607938.78227710723876953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(145, 31, 'akismet_error', '1370607565'),
(146, 31, 'akismet_history', 'a:4:{s:4:"time";d:1370607565.8578360080718994140625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(147, 31, 'akismet_as_submitted', ''),
(148, 31, 'rating', '5'),
(149, 31, 'akismet_history', 'a:4:{s:4:"time";d:1370607952.2542870044708251953125;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(150, 32, 'akismet_error', '1370609989'),
(151, 32, 'akismet_history', 'a:4:{s:4:"time";d:1370609989.9351150989532470703125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(152, 32, 'akismet_as_submitted', ''),
(153, 32, 'rating', '4'),
(154, 32, 'akismet_history', 'a:4:{s:4:"time";d:1370611523.6167409420013427734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(155, 33, 'akismet_error', '1370608744'),
(156, 33, 'akismet_history', 'a:4:{s:4:"time";d:1370608744.324286937713623046875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(157, 33, 'akismet_as_submitted', ''),
(158, 33, 'rating', '3'),
(159, 33, 'akismet_history', 'a:4:{s:4:"time";d:1370609036.19725894927978515625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(160, 34, 'akismet_error', '1370620529'),
(161, 34, 'akismet_history', 'a:4:{s:4:"time";d:1370620529.737782001495361328125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(162, 34, 'akismet_as_submitted', ''),
(163, 34, 'rating', '1'),
(164, 34, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.7349870204925537109375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(165, 35, 'akismet_error', '1370620584'),
(166, 35, 'akismet_history', 'a:4:{s:4:"time";d:1370620584.252111911773681640625;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(167, 35, 'akismet_as_submitted', ''),
(168, 35, 'rating', '4'),
(169, 35, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.352140903472900390625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(170, 36, 'akismet_error', '1370606192'),
(171, 36, 'akismet_history', 'a:4:{s:4:"time";d:1370606192.68978595733642578125;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(172, 36, 'akismet_as_submitted', ''),
(173, 36, 'rating', '4'),
(174, 36, 'akismet_history', 'a:4:{s:4:"time";d:1370607936.7026889324188232421875;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(175, 37, 'akismet_error', '1370607727'),
(176, 37, 'akismet_history', 'a:4:{s:4:"time";d:1370607727.7151229381561279296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(177, 37, 'akismet_as_submitted', ''),
(178, 37, 'rating', '3'),
(179, 37, 'akismet_history', 'a:4:{s:4:"time";d:1370607956.6225149631500244140625;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(180, 38, 'akismet_error', '1370605490'),
(181, 38, 'akismet_history', 'a:4:{s:4:"time";d:1370605490.617733001708984375;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(182, 38, 'akismet_as_submitted', ''),
(183, 38, 'rating', '5'),
(184, 38, 'akismet_history', 'a:4:{s:4:"time";d:1370605642.8089940547943115234375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(185, 39, 'akismet_error', '1370607690'),
(186, 39, 'akismet_history', 'a:4:{s:4:"time";d:1370607690.593863964080810546875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(187, 39, 'akismet_as_submitted', ''),
(188, 39, 'rating', '5'),
(189, 39, 'akismet_history', 'a:4:{s:4:"time";d:1370607954.72317409515380859375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(190, 40, 'akismet_error', '1370606323'),
(191, 40, 'akismet_history', 'a:4:{s:4:"time";d:1370606323.7919909954071044921875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(192, 40, 'akismet_as_submitted', ''),
(193, 40, 'rating', '4'),
(194, 40, 'akismet_history', 'a:4:{s:4:"time";d:1370607945.93982601165771484375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(195, 41, 'akismet_error', '1370620368'),
(196, 41, 'akismet_history', 'a:4:{s:4:"time";d:1370620368.7943160533905029296875;s:7:"message";s:92:"Akismet was unable to check this comment (response: ), will automatically retry again later.";s:5:"event";s:11:"check-error";s:4:"user";s:0:"";}'),
(197, 41, 'akismet_as_submitted', ''),
(198, 41, 'rating', '5'),
(199, 41, 'akismet_history', 'a:4:{s:4:"time";d:1370620633.9469869136810302734375;s:7:"message";s:46:"wooteam changed the comment status to approved";s:5:"event";s:15:"status-approved";s:4:"user";s:7:"wooteam";}'),
(200, 29, 'verified', '0'),
(201, 30, 'verified', '0'),
(202, 31, 'verified', '0'),
(203, 32, 'verified', '0'),
(204, 37, 'verified', '0'),
(205, 35, 'verified', '0'),
(206, 40, 'verified', '0'),
(207, 41, 'verified', '0'),
(208, 19, 'verified', '0'),
(209, 20, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_comments`
--

CREATE TABLE IF NOT EXISTS `ofs2616_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `ofs2616_comments`
--

INSERT INTO `ofs2616_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-02-06 07:33:43', '2016-02-06 07:33:43', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0),
(2, 102, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:57:05', '2013-06-07 11:57:05', 'Simple and effective design. One of my favorites.', 0, '1', '', '', 0, 0),
(3, 103, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:53:49', '2013-06-07 11:53:49', 'Wonderful quality, and an awesome design. WooThemes ftw!', 0, '1', '', '', 0, 0),
(4, 103, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:57:45', '2013-06-07 11:57:45', 'This t-shirt is awesome! Would recommend to everyone!\n\nI''m ordering mine next week', 0, '1', '', '', 0, 0),
(5, 104, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:43:13', '2013-06-07 11:43:13', 'Nice T-shirt, I got one in black. Goes with anything!', 0, '1', '', '', 0, 0),
(6, 104, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:55:15', '2013-06-07 11:55:15', 'Very comfortable shirt, and I love the graphic!', 0, '1', '', '', 0, 0),
(7, 104, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:02:14', '2013-06-07 13:02:14', 'Great T-shirt quality, Great Design and Great Service.', 0, '1', '', '', 0, 0),
(8, 31, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:54:32', '2013-06-07 11:54:32', 'The ninja silhouette is one of my favorite designs. This is a great product.', 0, '1', '', '', 0, 0),
(9, 37, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:01:25', '2013-06-07 13:01:25', 'This will go great with my Hoodie that I ordered a few weeks ago.', 0, '1', '', '', 0, 0),
(10, 37, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:49:53', '2013-06-07 15:49:53', 'Love this shirt! The ninja near and dear to my heart. &lt;3', 0, '1', '', '', 0, 0),
(11, 40, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 13:03:29', '2013-06-07 13:03:29', 'Another great quality product that anyone who see''s me wearing has asked where to purchase one of their own.', 0, '1', '', '', 0, 0),
(12, 40, 'Ryan', 'ryan@woothemes.com', '', '99.153.225.252', '2013-06-07 13:24:52', '2013-06-07 13:24:52', 'This hoodie gets me lots of looks while out in public, I got the blue one and it''s awesome. Not sure if people are looking at my hoodie only, or also at my rocking bod.', 0, '1', '', '', 0, 0),
(13, 40, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:31', '2013-06-07 15:53:31', 'Ship it!', 0, '1', '', '', 0, 0),
(14, 47, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:57:59', '2013-06-07 11:57:59', 'This hoodie is great for those chilly winter days. I love the WooNinja!', 0, '1', '', '', 0, 0),
(15, 47, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:13', '2013-06-07 15:53:13', 'Perfect for the lady Ninja in your life!', 0, '1', '', '', 0, 0),
(16, 50, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:46:52', '2013-06-07 11:46:52', 'Perfect when you''re sat at your computer, waiting for the next batch of Woo Goodies to be released. The Patient Ninja is Patient.', 0, '1', '', '', 0, 0),
(17, 50, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:53:13', '2013-06-07 11:53:13', 'The most comfortable hoodie I have ever owned!', 0, '1', '', '', 0, 0),
(18, 50, 'Magnus', 'magnus@woothemes.com', '', '79.161.106.35', '2013-06-07 12:04:03', '2013-06-07 12:04:03', 'This is my favorite hoodie!\n\nIf only it came in red as well!', 0, '1', '', '', 0, 0),
(19, 53, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:54:51', '2013-06-07 11:54:51', 'I bought this thinking it was a nice green colour, apparently it GREY! I''m colour blind so I don''t care but my girlfriend says grey makes me look fat', 0, '1', '', '', 0, 0),
(20, 53, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:50:22', '2013-06-07 15:50:22', 'I love grey hoodies! This is perfect with my grey Ninja shirt, when I get cold I throw this on and I can still be a Ninja.', 0, '1', '', '', 0, 0),
(21, 56, 'student', 'student@woothemes.com', '', '196.215.9.147', '2013-06-07 12:14:53', '2013-06-07 12:14:53', 'Perfect Hoodie for a Ninja!', 0, '1', '', '', 0, 0),
(22, 56, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:20:56', '2013-06-07 12:20:56', 'I have lots of hoodies, but none is as cool as this one!', 0, '1', '', '', 0, 0),
(23, 56, 'Dan', 'dan@woothemes.com', '', '188.221.1.167', '2013-06-07 12:41:42', '2013-06-07 12:41:42', 'I love hoodies, and ninjas, so what could be better than a ninja hoodie? Not much, if you ask me!', 0, '1', '', '', 0, 0),
(24, 56, 'Ryan', 'ryan@woothemes.com', '', '99.153.225.252', '2013-06-07 13:26:40', '2013-06-07 13:26:40', 'This is the most bombastic hoodie in this shop, it''s soft and has the sly WooThemes ninja on it. Why wouldn''t you buy this?', 0, '1', '', '', 0, 0),
(25, 56, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:53:56', '2013-06-07 15:53:56', 'This only gets 1 star because I don''t have this yet. I want it now!', 0, '1', '', '', 0, 0),
(26, 56, 'Gerhard', 'gerhard@woothemes.com', '', '72.251.244.9', '2013-06-08 09:37:42', '2013-06-08 09:37:42', 'The best hoodie ever!', 0, '0', '', '', 0, 0),
(27, 60, 'Magnus', 'magnus@woothemes.com', '', '79.161.106.35', '2013-06-07 12:04:33', '2013-06-07 12:04:33', 'I like the logo but not the color.', 0, '1', '', '', 0, 0),
(28, 60, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:54:25', '2013-06-07 15:54:25', 'Three letters, one word: WOO!', 0, '1', '', '', 0, 0),
(29, 70, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:52:25', '2013-06-07 11:52:25', 'Really happy with this print. The colors are great, and the paper quality is good too.', 0, '1', '', '', 0, 0),
(30, 70, 'Andrew', 'andrew@chromeorange.co.uk', '', '86.19.152.140', '2013-06-07 11:56:36', '2013-06-07 11:56:36', 'You only get the picture, not the person holding it, something they don''t mention in the description, now I''ve got to find my own person', 0, '1', '', '', 0, 0),
(31, 70, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:19:25', '2013-06-07 12:19:25', 'This is my favorite poster. In fact, I''ve ordered 5 of them!', 0, '1', '', '', 0, 0),
(32, 70, 'Stuart', 'stuart@woothemes.com', '', '82.32.109.140', '2013-06-07 12:59:49', '2013-06-07 12:59:49', 'This is a fantastic quality print and is happily hanging framed on my wall now.', 0, '1', '', '', 0, 0),
(33, 73, 'Dan', 'dan@woothemes.com', '', '188.221.1.167', '2013-06-07 12:39:04', '2013-06-07 12:39:04', 'I thought I was buying a man holding a poster, but when it arrived it was just the poster. Cool poster though, so I''ll give it 3 stars!', 0, '1', '', '', 0, 0),
(34, 73, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:55:29', '2013-06-07 15:55:29', 'I didn''t expect this poster to arrive folded. Now there are lines on the poster and one sad Ninja.', 0, '1', '', '', 0, 0),
(35, 76, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:56:24', '2013-06-07 15:56:24', 'He really is the cutest little man. Swoooon!', 0, '1', '', '', 0, 0),
(36, 87, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:56:32', '2013-06-07 11:56:32', 'Wonderful collection of WooThemes classics! A must buy for all Woo fans.', 0, '1', '', '', 0, 0),
(37, 90, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:22:07', '2013-06-07 12:22:07', 'This album gets a bit boring after you''ve listened to it more than once. Worth that first listen though.', 0, '1', '', '', 0, 0),
(38, 96, 'James Koster', 'james@jameskoster.co.uk', '', '86.146.141.82', '2013-06-07 11:44:50', '2013-06-07 11:44:50', 'The most influential album of the last 25 years? This just might be it.', 0, '1', '', '', 0, 0),
(39, 96, 'Coen Jacobs', 'coen@woothemes.com', '', '84.39.28.254', '2013-06-07 12:21:30', '2013-06-07 12:21:30', 'Some rad tunes on this album!', 0, '1', '', '', 0, 0),
(40, 99, 'Cobus Bester', 'bester.c@gmail.com', '', '196.215.9.147', '2013-06-07 11:58:43', '2013-06-07 11:58:43', 'This album proves why The Woo are the best band ever. Best music ever!', 0, '1', '', '', 0, 0),
(41, 99, 'Maria', 'maria@woothemes.com', '', '24.225.103.32', '2013-06-07 15:52:48', '2013-06-07 15:52:48', 'Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_links`
--

CREATE TABLE IF NOT EXISTS `ofs2616_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_options`
--

CREATE TABLE IF NOT EXISTS `ofs2616_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=732 ;

--
-- Dumping data for table `ofs2616_options`
--

INSERT INTO `ofs2616_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/onefabshop', 'yes'),
(2, 'home', 'http://localhost/onefabshop', 'yes'),
(3, 'blogname', 'One Fab Shop', 'yes'),
(4, 'blogdescription', 'Your No. 1 fabulous shop of authentic and branded fashion products at a price of less.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'diannekatherinedelosreyes@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:39:"custom-permalinks/custom-permalinks.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:25:"redirector/redirector.php";i:4;s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:92:"/Applications/XAMPP/xamppfiles/htdocs/onefabshop/wp-content/themes/eightstore-lite/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'eightstore-lite', 'yes'),
(42, 'stylesheet', 'eightstore-lite-child', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '35700', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:21:"Follow us on Facebook";s:4:"text";s:269:"<div class="fb-page" data-href="https://www.facebook.com/Onefabshopph-215945351924631/?fref=nf" data-tabs="timeline" data-width="100%" data-height="214" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:15:"Payment Options";s:4:"text";s:290:"<div class="menu-custom-footer-menu-container">\r\n	<ul class="menu">\r\n		<li class="menu-item">Bank</li>\r\n		<li class="menu-item">Credit Card</li>\r\n		<li class="menu-item">Cebuana</li>\r\n                <li class="menu-item">M Lhuiller</li>\r\n		<li class="menu-item">Paypal</li>\r\n	</ul>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '111', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'ofs2616_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:17:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"shop";a:4:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:25:"woocommerce_layered_nav-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:33:"woocommerce_layered_nav_filters-2";}s:31:"eightstore-lite-language-option";a:0:{}s:16:"widget-product-1";a:1:{i:0;s:25:"eightstore_lite_product-3";}s:14:"widget-promo-1";a:1:{i:0;s:27:"eightstore_lite_cta_video-2";}s:17:"widget-category-1";a:1:{i:0;s:29:"eightstore_lite_cat_product-2";}s:14:"widget-promo-2";a:1:{i:0;s:23:"eightstore_lite_promo-3";}s:17:"widget-category-2";a:1:{i:0;s:29:"eightstore_lite_cat_product-3";}s:14:"widget-promo-3";a:1:{i:0;s:23:"eightstore_lite_promo-4";}s:16:"widget-product-2";a:0:{}s:14:"widget-promo-4";a:0:{}s:12:"sidebar-left";a:0:{}s:13:"sidebar-right";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:3:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-6";i:2;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:9:{i:1456387895;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1456388152;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1456402344;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1456403174;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1456428828;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1456444800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1456472120;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1456790400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(111, '_transient_random_seed', '4dce6920fda25af8e4b9dad4aaae8233', 'yes'),
(113, '_transient_timeout_plugin_slugs', '1456466894', 'no'),
(114, '_transient_plugin_slugs', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:39:"custom-permalinks/custom-permalinks.php";i:2;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:3;s:25:"redirector/redirector.php";i:4;s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:41:"wordpress-importer/wordpress-importer.php";i:7;s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";}', 'no'),
(119, 'recently_activated', 'a:0:{}', 'yes'),
(124, '_site_transient_timeout_browser_09405e74b30b86007210b586b2ddc252', '1455350134', 'yes'),
(125, '_site_transient_browser_09405e74b30b86007210b586b2ddc252', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(128, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(129, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(130, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(131, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:11:"Quick Links";s:8:"nav_menu";i:16;}s:12:"_multiwidget";i:1;}', 'yes'),
(132, 'site_icon', '19', 'yes'),
(133, 'medium_large_size_w', '768', 'yes'),
(134, 'medium_large_size_h', '0', 'yes'),
(135, 'db_upgraded', '', 'yes'),
(137, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1454830570;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(139, 'can_compress_scripts', '1', 'yes'),
(141, 'woocommerce_default_country', 'PH:00', 'yes'),
(142, 'woocommerce_allowed_countries', 'specific', 'yes'),
(143, 'woocommerce_specific_allowed_countries', 'a:2:{i:0;s:2:"PH";i:1;s:2:"AE";}', 'yes'),
(144, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(145, 'woocommerce_demo_store', 'no', 'yes'),
(146, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(147, 'woocommerce_currency', 'PHP', 'yes'),
(148, 'woocommerce_currency_pos', 'left', 'yes'),
(149, 'woocommerce_price_thousand_sep', ',', 'yes'),
(150, 'woocommerce_price_decimal_sep', '.', 'yes'),
(151, 'woocommerce_price_num_decimals', '2', 'yes'),
(152, 'woocommerce_weight_unit', 'kg', 'yes'),
(153, 'woocommerce_dimension_unit', 'cm', 'yes'),
(154, 'woocommerce_enable_review_rating', 'yes', 'no'),
(155, 'woocommerce_review_rating_required', 'yes', 'no'),
(156, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(157, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(158, 'woocommerce_shop_page_id', '4', 'yes'),
(159, 'woocommerce_shop_page_display', '', 'yes'),
(160, 'woocommerce_category_archive_display', '', 'yes'),
(161, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(162, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(163, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(164, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(165, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(166, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(167, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(168, 'woocommerce_manage_stock', 'yes', 'yes'),
(169, 'woocommerce_hold_stock_minutes', '60', 'no'),
(170, 'woocommerce_notify_low_stock', 'yes', 'no'),
(171, 'woocommerce_notify_no_stock', 'yes', 'no'),
(172, 'woocommerce_stock_email_recipient', 'diannekatherinedelosreyes@gmail.com', 'no'),
(173, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(174, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(175, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(176, 'woocommerce_stock_format', '', 'yes'),
(177, 'woocommerce_file_download_method', 'force', 'no'),
(178, 'woocommerce_downloads_require_login', 'no', 'no'),
(179, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(180, 'woocommerce_calc_taxes', 'no', 'yes'),
(181, 'woocommerce_prices_include_tax', 'no', 'yes'),
(182, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(183, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(184, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(185, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(186, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(187, 'woocommerce_tax_display_cart', 'excl', 'no'),
(188, 'woocommerce_price_display_suffix', '', 'yes'),
(189, 'woocommerce_tax_total_display', 'itemized', 'no'),
(190, 'woocommerce_enable_coupons', 'yes', 'no'),
(191, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(192, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(193, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(194, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(195, 'woocommerce_cart_page_id', '5', 'yes'),
(196, 'woocommerce_checkout_page_id', '6', 'yes'),
(197, 'woocommerce_terms_page_id', '', 'no'),
(198, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(199, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(200, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(201, 'woocommerce_calc_shipping', 'yes', 'yes'),
(202, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(203, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(204, 'woocommerce_ship_to_destination', 'billing', 'no'),
(205, 'woocommerce_ship_to_countries', '', 'yes'),
(206, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(207, 'woocommerce_myaccount_page_id', '7', 'yes'),
(208, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(209, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(210, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(211, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(212, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(213, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(214, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(215, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(216, 'woocommerce_registration_generate_username', 'yes', 'no'),
(217, 'woocommerce_registration_generate_password', 'no', 'no'),
(218, 'woocommerce_email_from_name', 'One Fab Shop', 'no'),
(219, 'woocommerce_email_from_address', 'diannekatherinedelosreyes@gmail.com', 'no'),
(220, 'woocommerce_email_header_image', '', 'no'),
(221, 'woocommerce_email_footer_text', 'One Fab Shop - Powered by WooCommerce', 'no'),
(222, 'woocommerce_email_base_color', '#557da1', 'no'),
(223, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(224, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(225, 'woocommerce_email_text_color', '#505050', 'no'),
(226, 'woocommerce_api_enabled', 'yes', 'yes'),
(235, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(236, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(237, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:"title";s:14:"Active Filters";}s:12:"_multiwidget";i:1;}', 'yes'),
(238, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:"title";s:9:"Filter by";s:9:"attribute";s:5:"color";s:12:"display_type";s:8:"dropdown";s:10:"query_type";s:3:"and";}s:12:"_multiwidget";i:1;}', 'yes'),
(239, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(240, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:7:{s:5:"title";s:18:"Product Categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(241, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(242, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(243, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(244, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(245, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(252, '_transient_timeout_geoip_::1', '1455350804', 'no'),
(253, '_transient_geoip_::1', '', 'no'),
(254, '_transient_timeout_external_ip_address_::1', '1455350829', 'no'),
(255, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(256, '_transient_timeout_geoip_0.0.0.0', '1455350836', 'no'),
(257, '_transient_geoip_0.0.0.0', '', 'no'),
(258, 'woocommerce_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(259, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(260, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(261, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(262, '_transient_product_query-transient-version', '1456385354', 'yes'),
(263, '_transient_product-transient-version', '1456385355', 'yes'),
(266, '_site_transient_timeout_wporg_theme_feature_list', '1454757656', 'yes'),
(267, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(270, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454747443;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(271, 'current_theme', 'EightStore Lite Child', 'yes'),
(272, 'theme_mods_eightstore-lite', 'a:27:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:16;}s:18:"heading_typography";s:27:"Roboto Condensed,sans-serif";s:15:"body_typography";s:27:"Roboto Condensed,sans-serif";s:12:"header_image";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:21:"footer_copyright_text";s:9:"Copyright";s:23:"slider_setting_category";i:27;s:34:"es_category_promo_setting_category";i:30;s:32:"eightstore_blog_setting_category";i:28;s:25:"eightstore_form_shortcode";s:0:"";s:23:"eightstore_blog_section";i:1;s:30:"eightstore_testimonial_section";i:1;s:39:"eightstore_testimonial_setting_category";i:31;s:14:"webpage_layout";s:9:"fullwidth";s:18:"is_mode_responsive";i:0;s:23:"ticker_setting_category";i:29;s:11:"callto_text";s:135:"<a href="#">\n<i class="fa fa-phone"></i>+012-345-6789\n</a> \n| \n<a href="#">\n<i class="fa fa-envelope"></i> info@8degreethemes.com\n</a>	";s:22:"social_icons_in_header";i:1;s:22:"social_icons_in_footer";i:1;s:15:"social_facebook";s:1:"#";s:14:"social_twitter";s:1:"#";s:16:"social_instagram";s:1:"#";s:26:"eightstore_ticker_checkbox";i:1;s:16:"header_textcolor";s:6:"000000";s:16:"background_color";s:6:"ffffff";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:146;s:3:"url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:13:"thumbnail_url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:6:"height";i:250;s:5:"width";i:250;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454819312;s:4:"data";a:16:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:4:"shop";a:2:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:26:"woocommerce_price_filter-2";}s:31:"eightstore-lite-language-option";a:0:{}s:16:"widget-product-1";a:1:{i:0;s:25:"eightstore_lite_product-3";}s:14:"widget-promo-1";a:1:{i:0;s:27:"eightstore_lite_cta_video-2";}s:17:"widget-category-1";a:1:{i:0;s:29:"eightstore_lite_cat_product-2";}s:14:"widget-promo-2";a:1:{i:0;s:23:"eightstore_lite_promo-3";}s:17:"widget-category-2";a:1:{i:0;s:29:"eightstore_lite_cat_product-3";}s:14:"widget-promo-3";a:1:{i:0;s:23:"eightstore_lite_promo-4";}s:16:"widget-product-2";a:1:{i:0;s:25:"eightstore_lite_product-4";}s:14:"widget-promo-4";a:0:{}s:12:"sidebar-left";a:0:{}s:13:"sidebar-right";a:0:{}s:8:"footer-1";a:3:{i:0;s:6:"text-3";i:1;s:6:"text-4";i:2;s:6:"text-5";}s:8:"footer-2";a:2:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-2";}}}}', 'yes'),
(273, 'theme_switched', '', 'yes'),
(274, 'widget_eightstore_lite_cta_simple', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_eightstore_lite_promo', 'a:3:{i:3;a:5:{s:11:"promo_title";s:31:"Get the look over 1000 Products";s:11:"promo_image";s:73:"http://localhost/onefabshop/wp-content/uploads/2016/02/8degree-callto.jpg";s:10:"promo_desc";s:14:"up to\r\n50% Off";s:10:"promo_link";s:27:"http://localhost/onefabshop";s:14:"promo_btn_text";s:8:"Shop Now";}i:4;a:5:{s:11:"promo_title";s:11:"Denim Jeans";s:11:"promo_image";s:69:"http://localhost/onefabshop/wp-content/uploads/2016/02/denin-jens.jpg";s:10:"promo_desc";s:7:"50% Off";s:10:"promo_link";s:0:"";s:14:"promo_btn_text";s:8:"Shop Now";}s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_eightstore_lite_product', 'a:3:{i:3;a:5:{s:13:"product_title";s:12:"New Arrivals";s:17:"product_list_desc";s:22:"Newly arrived products";s:12:"product_type";s:14:"latest_product";s:16:"product_category";s:2:"26";s:14:"number_of_prod";i:0;}i:4;a:5:{s:13:"product_title";s:17:"Featured Products";s:17:"product_list_desc";s:0:"";s:12:"product_type";s:14:"latest_product";s:16:"product_category";s:2:"26";s:14:"number_of_prod";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_eightstore_lite_cat_product', 'a:3:{i:2;a:2:{s:17:"product_alignment";s:11:"right_align";s:16:"product_category";s:1:"7";}i:3;a:2:{s:17:"product_alignment";s:10:"left_align";s:16:"product_category";s:1:"6";}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_eightstore_lite_cta_video', 'a:2:{i:2;a:4:{s:15:"cta_video_title";s:19:"Sample Promo Banner";s:14:"cta_video_desc";s:21:"Read about this promo";s:13:"cta_video_bkg";s:68:"http://localhost/onefabshop/wp-content/uploads/2016/02/video-bkg.jpg";s:16:"cta_video_iframe";s:21:"http://www.google.com";}s:12:"_multiwidget";i:1;}', 'yes'),
(308, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(325, '_site_transient_timeout_popular_importers_en_US', '1454932752', 'yes'),
(326, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(333, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(349, '_transient_orders-transient-version', '1454760401', 'yes'),
(350, '_transient_timeout_wc_cbp_bbb0d7fcb8c0a96e01cc67f6c32ade14', '1457352402', 'no'),
(351, '_transient_wc_cbp_bbb0d7fcb8c0a96e01cc67f6c32ade14', 'a:0:{}', 'no'),
(352, '_transient_timeout_wc_cbp_ad9a04901d7631a9d234cbd7ae55f920', '1457352402', 'no'),
(353, '_transient_wc_cbp_ad9a04901d7631a9d234cbd7ae55f920', 'a:0:{}', 'no'),
(354, '_transient_timeout_wc_cbp_e23e06d97fd277452b787a49bdbe2e36', '1457352402', 'no'),
(355, '_transient_wc_cbp_e23e06d97fd277452b787a49bdbe2e36', 'a:0:{}', 'no'),
(356, '_transient_timeout_wc_cbp_031c22fbd2c932977c1791a24619681f', '1457352402', 'no'),
(357, '_transient_wc_cbp_031c22fbd2c932977c1791a24619681f', 'a:0:{}', 'no'),
(388, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1454773887', 'yes'),
(389, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5663";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3554";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3503";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3011";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2738";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2224";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2168";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2009";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1956";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1949";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1939";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1886";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1791";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1589";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1520";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1502";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1447";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1302";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1262";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1248";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1140";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1066";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1040";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"984";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"946";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"901";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"883";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"883";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"872";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"867";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"854";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"807";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"766";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"747";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"740";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"735";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"729";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"725";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"718";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"706";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"701";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"681";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"675";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"657";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"655";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"648";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"642";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"635";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"629";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"608";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"598";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"595";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"589";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"585";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"578";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"575";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"574";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"569";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"561";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"546";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"538";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"533";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"522";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"521";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"510";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"504";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"504";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"499";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"498";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"476";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"475";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"472";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"462";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"461";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"457";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"432";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"429";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"421";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"418";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"415";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"414";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"408";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"403";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"400";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"400";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"398";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"396";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"389";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"389";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"389";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"382";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"380";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"379";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"379";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"377";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"375";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"375";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"371";}}', 'yes'),
(392, 'hicpo_activation', '1', 'yes'),
(397, 'hicpo_options', 'a:2:{s:7:"objects";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:7:"product";}s:4:"tags";s:0:"";}', 'yes'),
(402, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:4:"shop";s:8:"tag_base";s:3:"tag";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(416, '_transient_timeout_wc_cbp_7eb8ee8a4edd0a69182ba1d2891c9a62', '1457360227', 'no'),
(417, '_transient_wc_cbp_7eb8ee8a4edd0a69182ba1d2891c9a62', 'a:0:{}', 'no'),
(429, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454831011;s:7:"checked";a:2:{s:21:"eightstore-lite-child";s:5:"1.0.0";s:15:"eightstore-lite";s:6:"1.0.53";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(434, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1454846886;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"35583";s:4:"slug";s:27:"intuitive-custom-post-order";s:6:"plugin";s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:58:"https://wordpress.org/plugins/intuitive-custom-post-order/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.0.7.zip";}s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"64085";s:4:"slug";s:26:"ultimate-form-builder-lite";s:6:"plugin";s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:57:"https://wordpress.org/plugins/ultimate-form-builder-lite/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/ultimate-form-builder-lite.1.1.3.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.5.2.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";O:8:"stdClass":7:{s:2:"id";s:5:"18320";s:4:"slug";s:20:"wp-admin-bar-removal";s:6:"plugin";s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";s:11:"new_version";s:14:"2014.0707.0383";s:3:"url";s:51:"https://wordpress.org/plugins/wp-admin-bar-removal/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/wp-admin-bar-removal.2014.0707.0383.zip";s:14:"upgrade_notice";s:252:"Major Update [CERTIFIED] Disable WordPress Admin Bar and Toolbar and Remove Code Completely on WP 3.1+ or later for Minimal Memory Load, and Dashboard Speedup, with new Unified Coding Approach without loosing Logout and Network MultiSite functionality!";}}}', 'yes');
INSERT INTO `ofs2616_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(451, 'theme_mods_eightstore-lite-child', 'a:30:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:33;}s:23:"ticker_setting_category";i:29;s:23:"slider_setting_category";i:27;s:34:"es_category_promo_setting_category";i:30;s:32:"eightstore_blog_setting_category";i:28;s:39:"eightstore_testimonial_setting_category";i:31;s:22:"social_icons_in_header";i:1;s:15:"social_facebook";s:1:"#";s:16:"social_instagram";s:1:"#";s:18:"heading_typography";s:0:"";s:15:"body_typography";s:27:"Roboto Condensed,sans-serif";s:23:"eightstore_blog_section";i:1;s:30:"eightstore_testimonial_section";i:1;s:12:"header_image";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:146;s:3:"url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:13:"thumbnail_url";s:66:"http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png";s:6:"height";i:250;s:5:"width";i:250;}s:20:"typography_format_h1";s:2:"82";s:19:"typography_color_h1";s:7:"#ac0472";s:11:"callto_text";s:125:"<a href="#"><i class="fa fa-phone"></i>+012-345-6789</a>\n\n<a href="#"><i class="fa fa-envelope"></i> onefabshop@gmail.com</a>";s:26:"eightstore_ticker_checkbox";s:0:"";s:14:"display_slider";i:1;s:13:"display_pager";i:1;s:16:"display_controls";i:1;s:22:"enable_auto_transition";i:1;s:15:"transition_type";s:4:"true";s:16:"transition_speed";s:3:"300";s:16:"display_captions";i:1;s:21:"eightstore_blog_title";s:9:"Our Blogs";s:28:"eightstore_testimonial_title";s:16:"Our Testimonials";s:21:"footer_copyright_text";s:98:"© 2016 Onefabshop. All Rights Reserved.\n<br />\n Web design and development by <a href="">D.K</a>.";}', 'yes'),
(468, '_transient_shipping-transient-version', '1454831828', 'yes'),
(481, '_site_transient_timeout_theme_roots', '1454841467', 'yes'),
(482, '_site_transient_theme_roots', 'a:2:{s:21:"eightstore-lite-child";s:7:"/themes";s:15:"eightstore-lite";s:7:"/themes";}', 'yes'),
(484, 'general_options', '', 'yes'),
(485, 'pricing_options', '', 'yes'),
(487, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=5";i:1;s:6:"/cart/";i:2;s:3:"p=6";i:3;s:10:"/checkout/";i:4;s:3:"p=7";i:5;s:12:"/my-account/";}', 'yes'),
(499, 'woocommerce_db_version', '2.5.2', 'yes'),
(500, 'woocommerce_version', '2.5.2', 'yes'),
(502, 'woocommerce_admin_notices', 'a:1:{i:0;s:14:"template_files";}', 'yes'),
(503, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"color";s:15:"attribute_label";s:5:"color";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(506, '_transient_timeout_geoip_127.0.0.1', '1456689376', 'no'),
(507, '_transient_geoip_127.0.0.1', '', 'no'),
(508, '_transient_timeout_external_ip_address_127.0.0.1', '1456692117', 'no'),
(509, '_transient_external_ip_address_127.0.0.1', '112.198.103.240', 'no'),
(510, '_transient_timeout_geoip_112.198.103.240', '1456692160', 'no'),
(511, '_transient_geoip_112.198.103.240', '', 'no'),
(538, 'post_count', '9', 'yes'),
(625, '_transient_timeout_wc_admin_report', '1456384967', 'no'),
(626, '_transient_wc_admin_report', 'a:1:{s:32:"0bd3c12d8c2166971db21c0e4c04be1a";a:0:{}}', 'no'),
(633, 'category_children', 'a:0:{}', 'yes'),
(634, 'custom_permalink_table', 'a:1:{s:6:"blogs/";a:3:{s:2:"id";i:28;s:4:"kind";s:8:"category";s:4:"slug";s:4:"blog";}}', 'yes'),
(639, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1456420298', 'no'),
(640, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div>', 'no'),
(649, 'acf_version', '4.4.5', 'yes'),
(665, 'rewrite_rules', 'a:181:{s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:43:"shop/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:38:"shop/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"shop/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:13:"shop/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:16:".*wp-signup.php$";s:21:"index.php?signup=true";s:18:".*wp-activate.php$";s:23:"index.php?activate=true";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=111&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(677, 'product_cat_children', 'a:2:{i:7;a:4:{i:0;i:8;i:1;i:9;i:2;i:10;i:3;i:11;}i:6;a:4:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;}}', 'yes'),
(687, '_transient_timeout_wc_product_children_40', '1458976645', 'no'),
(688, '_transient_wc_product_children_40', 'a:2:{s:7:"visible";a:2:{i:0;i:41;i:1;i:42;}s:3:"all";a:2:{i:0;i:41;i:1;i:42;}}', 'no'),
(689, '_transient_timeout_wc_var_prices_40', '1458976893', 'no'),
(690, '_transient_wc_var_prices_40', '{"version":"1456384741","e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"42":30,"41":35},"regular_price":{"42":35,"41":35},"sale_price":{"42":30,"41":35}},"f9e544f77b7eac7add281ef28ca5559f":{"price":{"42":"30","41":"35"},"regular_price":{"42":"35","41":"35"},"sale_price":{"42":"30","41":"35"}}}', 'no'),
(691, '_transient_timeout_wc_product_children_104', '1458976471', 'no'),
(692, '_transient_wc_product_children_104', 'a:2:{s:7:"visible";a:2:{i:0;i:105;i:1;i:106;}s:3:"all";a:2:{i:0;i:105;i:1;i:106;}}', 'no'),
(693, '_transient_timeout_wc_var_prices_104', '1458976459', 'no'),
(694, '_transient_wc_var_prices_104', '{"version":"1456384453","e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":{"106":20,"105":20},"regular_price":{"106":20,"105":20},"sale_price":{"106":20,"105":20}},"f9e544f77b7eac7add281ef28ca5559f":{"price":{"106":"20","105":"20"},"regular_price":{"106":"20","105":"20"},"sale_price":{"106":"20","105":"20"}}}', 'no'),
(708, 'pa_color_children', 'a:0:{}', 'yes'),
(716, '_transient_timeout_wc_uf_pid_dc4107a9f994544b20678bc5ab670024', '1458977371', 'no'),
(717, '_transient_wc_uf_pid_dc4107a9f994544b20678bc5ab670024', 'a:14:{i:0;i:8;i:1;i:99;i:2;i:96;i:3;i:93;i:4;i:90;i:5;i:87;i:6;i:83;i:7;i:79;i:8;i:76;i:9;i:73;i:10;i:70;i:11;i:67;i:12;i:60;i:13;i:56;}', 'no'),
(718, '_transient_is_multi_author', '0', 'yes'),
(719, '_transient_timeout_wc_product_children_8', '1458977371', 'no'),
(720, '_transient_wc_product_children_8', 'a:2:{s:7:"visible";a:0:{}s:3:"all";a:2:{i:0;i:181;i:1;i:182;}}', 'no'),
(721, '_transient_timeout_wc_var_prices_8', '1458977372', 'no'),
(722, '_transient_wc_var_prices_8', '{"version":"1456385355","f9e544f77b7eac7add281ef28ca5559f":{"price":[],"regular_price":[],"sale_price":[]},"e1b88e1c9a8573a0fff4a38a491fcd6d":{"price":[],"regular_price":[],"sale_price":[]}}', 'no'),
(723, '_transient_timeout_wc_term_counts', '1458977493', 'no'),
(724, '_transient_wc_term_counts', 'a:14:{i:11;s:1:"3";i:15;s:1:"1";i:10;s:1:"3";i:14;s:1:"3";i:8;s:1:"4";i:13;s:1:"3";i:6;s:2:"10";i:9;s:1:"4";i:12;s:1:"3";i:7;s:2:"14";i:34;s:1:"7";i:35;s:1:"7";i:36;s:1:"6";i:37;s:1:"4";}', 'no'),
(725, '_transient_timeout_wc_related_8', '1456471794', 'no'),
(726, '_transient_wc_related_8', 'a:14:{i:0;s:2:"56";i:1;s:2:"60";i:2;s:2:"67";i:3;s:2:"70";i:4;s:2:"73";i:5;s:2:"76";i:6;s:2:"79";i:7;s:2:"83";i:8;s:2:"87";i:9;s:2:"90";i:10;s:2:"93";i:11;s:2:"96";i:12;s:2:"99";i:13;s:2:"31";}', 'no'),
(730, '_transient_timeout_wc_related_79', '1456472269', 'no'),
(731, '_transient_wc_related_79', 'a:14:{i:0;s:1:"8";i:1;s:2:"56";i:2;s:2:"60";i:3;s:2:"67";i:4;s:2:"70";i:5;s:2:"73";i:6;s:2:"76";i:7;s:2:"83";i:8;s:2:"87";i:9;s:2:"90";i:10;s:2:"93";i:11;s:2:"96";i:12;s:2:"99";i:13;s:2:"47";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_postmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1346 ;

--
-- Dumping data for table `ofs2616_postmeta`
--

INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_edit_last', '1'),
(3, 8, '_edit_lock', '1456385964:1'),
(4, 9, '_wp_attached_file', '2016/02/12644998_572741109573734_5503681196439159547_n.jpg'),
(5, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:960;s:4:"file";s:58:"2016/02/12644998_572741109573734_5503681196439159547_n.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:58:"12644998_572741109573734_5503681196439159547_n-825x510.jpg";s:5:"width";i:825;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 8, '_thumbnail_id', '9'),
(7, 8, '_visibility', 'visible'),
(8, 8, '_stock_status', 'instock'),
(9, 8, 'total_sales', '0'),
(10, 8, '_downloadable', 'no'),
(11, 8, '_virtual', 'no'),
(12, 8, '_purchase_note', ''),
(13, 8, '_featured', 'no'),
(14, 8, '_weight', ''),
(15, 8, '_length', ''),
(16, 8, '_width', ''),
(17, 8, '_height', ''),
(18, 8, '_sku', 'sk1'),
(19, 8, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(20, 8, '_regular_price', ''),
(21, 8, '_sale_price', ''),
(22, 8, '_sale_price_dates_from', ''),
(23, 8, '_sale_price_dates_to', ''),
(24, 8, '_price', NULL),
(25, 8, '_sold_individually', 'yes'),
(26, 8, '_manage_stock', 'yes'),
(27, 8, '_backorders', 'no'),
(28, 8, '_stock', '100.000000'),
(29, 8, '_upsell_ids', 'a:0:{}'),
(30, 8, '_crosssell_ids', 'a:0:{}'),
(31, 8, '_product_version', '2.5.2'),
(32, 8, '_product_image_gallery', ''),
(33, 8, '_wc_rating_count', 'a:0:{}'),
(34, 8, '_wc_review_count', '0'),
(35, 8, '_wc_average_rating', '0'),
(81, 16, '_menu_item_type', 'post_type'),
(82, 16, '_menu_item_menu_item_parent', '0'),
(83, 16, '_menu_item_object_id', '4'),
(84, 16, '_menu_item_object', 'page'),
(85, 16, '_menu_item_target', ''),
(86, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 16, '_menu_item_xfn', ''),
(88, 16, '_menu_item_url', ''),
(90, 17, '_wp_attached_file', '2016/02/12695837_576621765852335_34695656_n.jpg'),
(91, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:320;s:4:"file";s:47:"2016/02/12695837_576621765852335_34695656_n.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"12695837_576621765852335_34695656_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"12695837_576621765852335_34695656_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:47:"12695837_576621765852335_34695656_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:47:"12695837_576621765852335_34695656_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:47:"12695837_576621765852335_34695656_n-320x260.jpg";s:5:"width";i:320;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:47:"12695837_576621765852335_34695656_n-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:45:"12695837_576621765852335_34695656_n-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 18, '_wp_attached_file', '2016/02/ofs_250.jpg'),
(95, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:19:"2016/02/ofs_250.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ofs_250-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"ofs_250-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"ofs_250-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 19, '_wp_attached_file', '2016/02/cropped-ofs_250.jpg'),
(97, 19, '_wp_attachment_context', 'site-icon'),
(98, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:27:"2016/02/cropped-ofs_250.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"cropped-ofs_250-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"cropped-ofs_250-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"cropped-ofs_250-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"cropped-ofs_250-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:27:"cropped-ofs_250-512x260.jpg";s:5:"width";i:512;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:27:"cropped-ofs_250-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:25:"cropped-ofs_250-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:27:"cropped-ofs_250-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:27:"cropped-ofs_250-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:27:"cropped-ofs_250-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:25:"cropped-ofs_250-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 21, '_wp_attached_file', '2013/06/T_1_front.jpg'),
(104, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_1_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_1_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_1_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_1_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_1_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_1_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_1_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_1_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 22, '_wp_attached_file', '2013/06/T_1_back.jpg'),
(106, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_1_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_1_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_1_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_1_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_1_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_1_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_1_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_1_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 23, '_wp_attached_file', '2013/06/T_2_front.jpg'),
(108, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_2_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_2_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_2_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_2_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_2_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_2_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_2_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_2_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 24, '_wp_attached_file', '2013/06/T_2_back.jpg'),
(110, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_2_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_2_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_2_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_2_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_2_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_2_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_2_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_2_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 25, '_wp_attached_file', '2013/06/T_4_front.jpg'),
(112, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_4_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_4_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_4_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_4_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_4_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_4_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_4_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_4_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(113, 26, '_wp_attached_file', '2013/06/T_3_back.jpg'),
(114, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_3_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_3_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_3_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_3_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_3_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_3_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_3_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_3_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 27, '_wp_attached_file', '2013/06/T_3_front.jpg'),
(116, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_3_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_3_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_3_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_3_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_3_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_3_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_3_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_3_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 28, '_wp_attached_file', '2013/06/T_4_back.jpg'),
(118, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_4_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_4_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_4_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_4_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_4_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_4_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_4_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_4_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(119, 29, '_wp_attached_file', '2013/06/T_4_front1.jpg'),
(120, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/T_4_front1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"T_4_front1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"T_4_front1-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"T_4_front1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"T_4_front1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"T_4_front1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"T_4_front1-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"T_4_front1-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"T_4_front1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"T_4_front1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 32, '_wp_attached_file', '2013/06/T_5_front.jpg'),
(122, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_5_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_5_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_5_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_5_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_5_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_5_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_5_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_5_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 33, '_wp_attached_file', '2013/06/T_5_back.jpg'),
(124, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_5_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_5_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_5_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_5_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_5_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_5_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_5_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_5_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(125, 35, '_wp_attached_file', '2013/06/T_6_front.jpg'),
(126, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_6_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_6_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_6_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_6_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_6_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_6_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_6_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_6_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 36, '_wp_attached_file', '2013/06/T_6_back.jpg'),
(128, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_6_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_6_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_6_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_6_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_6_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_6_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_6_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_6_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 38, '_wp_attached_file', '2013/06/T_7_front.jpg'),
(130, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/T_7_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"T_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"T_7_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"T_7_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"T_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"T_7_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"T_7_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"T_7_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"T_7_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"T_7_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 39, '_wp_attached_file', '2013/06/T_7_back.jpg'),
(132, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2013/06/T_7_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"T_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"T_7_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"T_7_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"T_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"T_7_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:20:"T_7_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:20:"T_7_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:20:"T_7_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:18:"T_7_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 43, '_wp_attached_file', '2013/06/hoodie_7_front.jpg'),
(134, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_7_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_7_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_7_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_7_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_7_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_7_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_7_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_7_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_7_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_7_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 44, '_wp_attached_file', '2013/06/hoodie_7_back.jpg'),
(136, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_7_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_7_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_7_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_7_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_7_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_7_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_7_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_7_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_7_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_7_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 45, '_wp_attached_file', '2013/06/hoodie_1_back.jpg'),
(138, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_1_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_1_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_1_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_1_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_1_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_1_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_1_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_1_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_1_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_1_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(139, 46, '_wp_attached_file', '2013/06/hoodie_1_front.jpg'),
(140, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_1_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_1_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_1_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_1_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_1_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_1_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_1_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_1_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_1_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_1_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(141, 48, '_wp_attached_file', '2013/06/hoodie_2_front.jpg'),
(142, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_2_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_2_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_2_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_2_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_2_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_2_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_2_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_2_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_2_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_2_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(143, 49, '_wp_attached_file', '2013/06/hoodie_2_back.jpg'),
(144, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_2_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_2_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_2_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_2_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_2_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_2_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_2_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_2_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_2_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_2_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(145, 51, '_wp_attached_file', '2013/06/hoodie_3_front.jpg');
INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(146, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_3_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_3_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_3_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_3_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_3_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_3_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_3_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_3_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_3_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_3_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(147, 52, '_wp_attached_file', '2013/06/hoodie_3_back.jpg'),
(148, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_3_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_3_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_3_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_3_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_3_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_3_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_3_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_3_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_3_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_3_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(149, 54, '_wp_attached_file', '2013/06/hoodie_4_front.jpg'),
(150, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_4_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_4_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_4_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_4_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_4_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_4_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_4_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_4_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_4_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_4_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(151, 55, '_wp_attached_file', '2013/06/hoodie_4_back.jpg'),
(152, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_4_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_4_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_4_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_4_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_4_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_4_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_4_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_4_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_4_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_4_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(153, 57, '_wp_attached_file', '2013/06/hoodie_5_front.jpg'),
(154, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_5_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_5_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_5_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_5_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_5_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_5_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_5_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_5_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_5_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_5_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 58, '_wp_attached_file', '2013/06/hoodie_5_back.jpg'),
(156, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_5_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_5_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_5_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_5_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_5_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_5_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_5_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_5_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_5_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_5_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 61, '_wp_attached_file', '2013/06/hoodie_6_front.jpg'),
(158, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:26:"2013/06/hoodie_6_front.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"hoodie_6_front-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"hoodie_6_front-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"hoodie_6_front-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"hoodie_6_front-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"hoodie_6_front-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"hoodie_6_front-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"hoodie_6_front-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"hoodie_6_front-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"hoodie_6_front-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(159, 62, '_wp_attached_file', '2013/06/hoodie_6_back.jpg'),
(160, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/hoodie_6_back.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"hoodie_6_back-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hoodie_6_back-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"hoodie_6_back-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"hoodie_6_back-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"hoodie_6_back-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"hoodie_6_back-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"hoodie_6_back-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"hoodie_6_back-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"hoodie_6_back-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(161, 68, '_wp_attached_file', '2013/06/poster_1_up.jpg'),
(162, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_1_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_1_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_1_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_1_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_1_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_1_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:23:"poster_1_up-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:23:"poster_1_up-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:23:"poster_1_up-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:21:"poster_1_up-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 69, '_wp_attached_file', '2013/06/Poster_1_flat.jpg'),
(164, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_1_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_1_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_1_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_1_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"Poster_1_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"Poster_1_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"Poster_1_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"Poster_1_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 71, '_wp_attached_file', '2013/06/poster_2_up.jpg'),
(166, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_2_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_2_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_2_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_2_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_2_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_2_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:23:"poster_2_up-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:23:"poster_2_up-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:23:"poster_2_up-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:21:"poster_2_up-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(167, 72, '_wp_attached_file', '2013/06/Poster_2_flat.jpg'),
(168, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_2_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_2_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_2_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_2_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"Poster_2_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"Poster_2_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"Poster_2_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"Poster_2_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 74, '_wp_attached_file', '2013/06/poster_3_up.jpg'),
(170, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_3_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_3_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_3_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_3_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_3_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_3_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:23:"poster_3_up-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:23:"poster_3_up-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:23:"poster_3_up-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:21:"poster_3_up-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(171, 75, '_wp_attached_file', '2013/06/Poster_3_flat.jpg'),
(172, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_3_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_3_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_3_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_3_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"Poster_3_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"Poster_3_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"Poster_3_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"Poster_3_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 77, '_wp_attached_file', '2013/06/poster_4_up.jpg'),
(174, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_4_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_4_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_4_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_4_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_4_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_4_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:23:"poster_4_up-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:23:"poster_4_up-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:23:"poster_4_up-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:21:"poster_4_up-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 78, '_wp_attached_file', '2013/06/Poster_4_flat.jpg'),
(176, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_4_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_4_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_4_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_4_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"Poster_4_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"Poster_4_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"Poster_4_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"Poster_4_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(177, 80, '_wp_attached_file', '2013/06/poster_5_up.jpg'),
(178, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:23:"2013/06/poster_5_up.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"poster_5_up-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"poster_5_up-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"poster_5_up-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"poster_5_up-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"poster_5_up-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:23:"poster_5_up-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:23:"poster_5_up-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:23:"poster_5_up-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:21:"poster_5_up-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(179, 81, '_wp_attached_file', '2013/06/Poster_5_flat.jpg'),
(180, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:25:"2013/06/Poster_5_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Poster_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Poster_5_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Poster_5_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Poster_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Poster_5_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:25:"Poster_5_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:25:"Poster_5_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:25:"Poster_5_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:23:"Poster_5_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(181, 84, '_wp_attached_file', '2013/06/cd_1_angle.jpg'),
(182, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_1_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_1_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_1_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_1_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_1_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_1_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"cd_1_angle-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"cd_1_angle-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"cd_1_angle-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"cd_1_angle-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(183, 85, '_wp_attached_file', '2013/06/cd_1_flat.jpg'),
(184, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_1_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_1_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_1_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_1_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_1_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_1_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"cd_1_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"cd_1_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"cd_1_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"cd_1_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 88, '_wp_attached_file', '2013/06/cd_2_angle.jpg'),
(186, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_2_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_2_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_2_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_2_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_2_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_2_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"cd_2_angle-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"cd_2_angle-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"cd_2_angle-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"cd_2_angle-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(187, 89, '_wp_attached_file', '2013/06/cd_2_flat.jpg'),
(188, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_2_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_2_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_2_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_2_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_2_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_2_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"cd_2_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"cd_2_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"cd_2_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"cd_2_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(189, 91, '_wp_attached_file', '2013/06/cd_3_angle.jpg'),
(190, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_3_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_3_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_3_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_3_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_3_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_3_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"cd_3_angle-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"cd_3_angle-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"cd_3_angle-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"cd_3_angle-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(191, 92, '_wp_attached_file', '2013/06/cd_3_flat.jpg'),
(192, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_3_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_3_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_3_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_3_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_3_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_3_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"cd_3_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"cd_3_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"cd_3_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"cd_3_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(193, 94, '_wp_attached_file', '2013/06/cd_4_flat.jpg'),
(194, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_4_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_4_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_4_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_4_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_4_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_4_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"cd_4_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"cd_4_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"cd_4_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"cd_4_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 95, '_wp_attached_file', '2013/06/cd_4_angle.jpg');
INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(196, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_4_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_4_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_4_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_4_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_4_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_4_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"cd_4_angle-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"cd_4_angle-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"cd_4_angle-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"cd_4_angle-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(197, 97, '_wp_attached_file', '2013/06/cd_5_angle.jpg'),
(198, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_5_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_5_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_5_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_5_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_5_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_5_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"cd_5_angle-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"cd_5_angle-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"cd_5_angle-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"cd_5_angle-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(199, 98, '_wp_attached_file', '2013/06/cd_5_flat.jpg'),
(200, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_5_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_5_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_5_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_5_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_5_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_5_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"cd_5_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"cd_5_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"cd_5_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"cd_5_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(201, 100, '_wp_attached_file', '2013/06/cd_6_angle.jpg'),
(202, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:22:"2013/06/cd_6_angle.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cd_6_angle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cd_6_angle-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"cd_6_angle-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"cd_6_angle-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"cd_6_angle-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"cd_6_angle-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"cd_6_angle-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"cd_6_angle-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"cd_6_angle-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 101, '_wp_attached_file', '2013/06/cd_6_flat.jpg'),
(204, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:21:"2013/06/cd_6_flat.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cd_6_flat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cd_6_flat-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"cd_6_flat-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"cd_6_flat-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"cd_6_flat-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"cd_6_flat-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"cd_6_flat-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"cd_6_flat-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"cd_6_flat-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 102, '_thumbnail_id', '21'),
(206, 102, '_visibility', 'visible'),
(207, 102, '_stock_status', 'instock'),
(208, 102, 'total_sales', '0'),
(209, 102, '_downloadable', 'no'),
(210, 102, '_virtual', 'no'),
(211, 102, '_product_image_gallery', '17'),
(212, 102, '_regular_price', '20'),
(213, 102, '_sale_price', '18'),
(214, 102, '_tax_status', ''),
(215, 102, '_tax_class', ''),
(216, 102, '_purchase_note', ''),
(217, 102, '_featured', 'no'),
(218, 102, '_weight', ''),
(219, 102, '_length', ''),
(220, 102, '_width', ''),
(221, 102, '_height', ''),
(222, 102, '_sku', ''),
(223, 102, '_product_attributes', 'a:0:{}'),
(224, 102, '_sale_price_dates_from', ''),
(225, 102, '_sale_price_dates_to', ''),
(226, 102, '_price', '18'),
(227, 102, '_sold_individually', ''),
(228, 102, '_stock', '5'),
(229, 102, '_backorders', 'no'),
(230, 102, '_manage_stock', 'yes'),
(231, 102, '_upsell_ids', 'a:1:{i:0;s:2:"60";}'),
(232, 103, '_thumbnail_id', '23'),
(233, 103, '_visibility', 'visible'),
(234, 103, '_stock_status', 'instock'),
(235, 103, 'total_sales', '0'),
(236, 103, '_downloadable', 'no'),
(237, 103, '_virtual', 'no'),
(238, 103, '_product_image_gallery', '21'),
(239, 103, '_regular_price', '20'),
(240, 103, '_sale_price', ''),
(241, 103, '_tax_status', ''),
(242, 103, '_tax_class', ''),
(243, 103, '_purchase_note', ''),
(244, 103, '_featured', 'no'),
(245, 103, '_weight', ''),
(246, 103, '_length', ''),
(247, 103, '_width', ''),
(248, 103, '_height', ''),
(249, 103, '_sku', ''),
(250, 103, '_product_attributes', 'a:0:{}'),
(251, 103, '_sale_price_dates_from', ''),
(252, 103, '_sale_price_dates_to', ''),
(253, 103, '_price', '20'),
(254, 103, '_sold_individually', ''),
(255, 103, '_stock', ''),
(256, 103, '_backorders', 'no'),
(257, 103, '_manage_stock', 'no'),
(258, 104, '_visibility', 'visible'),
(259, 104, '_stock_status', 'instock'),
(260, 104, 'total_sales', '0'),
(261, 104, '_downloadable', 'no'),
(262, 104, '_virtual', 'no'),
(263, 104, '_product_image_gallery', '26,27,28,29'),
(264, 104, '_regular_price', '20'),
(265, 104, '_sale_price', ''),
(266, 104, '_tax_status', ''),
(267, 104, '_tax_class', ''),
(268, 104, '_purchase_note', ''),
(269, 104, '_featured', 'no'),
(270, 104, '_weight', ''),
(271, 104, '_length', ''),
(272, 104, '_width', ''),
(273, 104, '_height', ''),
(274, 104, '_sku', ''),
(275, 104, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(276, 104, '_sale_price_dates_from', ''),
(277, 104, '_sale_price_dates_to', ''),
(278, 104, '_price', '20'),
(279, 104, '_sold_individually', ''),
(280, 104, '_stock', ''),
(281, 104, '_backorders', 'no'),
(282, 104, '_manage_stock', 'no'),
(283, 104, '_thumbnail_id', '25'),
(284, 104, '_min_variation_price', '20'),
(285, 104, '_max_variation_price', '20'),
(286, 104, '_min_variation_regular_price', '20'),
(287, 104, '_max_variation_regular_price', '20'),
(288, 104, '_min_variation_sale_price', ''),
(289, 104, '_max_variation_sale_price', ''),
(290, 104, '_default_attributes', 'a:0:{}'),
(291, 104, '_wp_old_slug', 'share-your-idea'),
(292, 104, '_upsell_ids', 'a:1:{i:0;s:2:"40";}'),
(293, 31, '_thumbnail_id', '32'),
(294, 31, '_visibility', 'visible'),
(295, 31, '_stock_status', 'instock'),
(296, 31, 'total_sales', '0'),
(297, 31, '_downloadable', 'no'),
(298, 31, '_virtual', 'no'),
(299, 31, '_product_image_gallery', '33'),
(300, 31, '_regular_price', '20'),
(301, 31, '_sale_price', ''),
(302, 31, '_tax_status', ''),
(303, 31, '_tax_class', ''),
(304, 31, '_purchase_note', ''),
(305, 31, '_featured', 'no'),
(306, 31, '_weight', ''),
(307, 31, '_length', ''),
(308, 31, '_width', ''),
(309, 31, '_height', ''),
(310, 31, '_sku', ''),
(311, 31, '_product_attributes', 'a:0:{}'),
(312, 31, '_sale_price_dates_from', ''),
(313, 31, '_sale_price_dates_to', ''),
(314, 31, '_price', '20'),
(315, 31, '_sold_individually', ''),
(316, 31, '_stock', ''),
(317, 31, '_backorders', 'no'),
(318, 31, '_manage_stock', 'no'),
(319, 31, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"37";}'),
(320, 31, '_upsell_ids', 'a:1:{i:0;s:2:"56";}'),
(321, 34, '_thumbnail_id', '35'),
(322, 34, '_visibility', 'visible'),
(323, 34, '_stock_status', 'instock'),
(324, 34, 'total_sales', '0'),
(325, 34, '_downloadable', 'no'),
(326, 34, '_virtual', 'no'),
(327, 34, '_product_image_gallery', '36'),
(328, 34, '_regular_price', '20'),
(329, 34, '_sale_price', ''),
(330, 34, '_tax_status', ''),
(331, 34, '_tax_class', ''),
(332, 34, '_purchase_note', ''),
(333, 34, '_featured', 'no'),
(334, 34, '_weight', ''),
(335, 34, '_length', ''),
(336, 34, '_width', ''),
(337, 34, '_height', ''),
(338, 34, '_sku', ''),
(339, 34, '_product_attributes', 'a:0:{}'),
(340, 34, '_sale_price_dates_from', ''),
(341, 34, '_sale_price_dates_to', ''),
(342, 34, '_price', '20'),
(343, 34, '_sold_individually', ''),
(344, 34, '_stock', ''),
(345, 34, '_backorders', 'no'),
(346, 34, '_manage_stock', 'no'),
(347, 34, '_crosssell_ids', 'a:2:{i:0;s:2:"37";i:1;s:2:"31";}'),
(348, 34, '_upsell_ids', 'a:1:{i:0;s:2:"47";}'),
(349, 37, '_visibility', 'visible'),
(350, 37, '_stock_status', 'instock'),
(351, 37, 'total_sales', '0'),
(352, 37, '_downloadable', 'no'),
(353, 37, '_virtual', 'no'),
(354, 37, '_product_image_gallery', '39'),
(355, 37, '_regular_price', '18'),
(356, 37, '_sale_price', ''),
(357, 37, '_tax_status', ''),
(358, 37, '_tax_class', ''),
(359, 37, '_purchase_note', ''),
(360, 37, '_featured', 'no'),
(361, 37, '_weight', ''),
(362, 37, '_length', ''),
(363, 37, '_width', ''),
(364, 37, '_height', ''),
(365, 37, '_sku', ''),
(366, 37, '_product_attributes', 'a:0:{}'),
(367, 37, '_sale_price_dates_from', ''),
(368, 37, '_sale_price_dates_to', ''),
(369, 37, '_price', '18'),
(370, 37, '_sold_individually', ''),
(371, 37, '_stock', ''),
(372, 37, '_backorders', 'no'),
(373, 37, '_manage_stock', 'no'),
(374, 37, '_thumbnail_id', '38'),
(375, 37, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"31";}'),
(376, 37, '_upsell_ids', 'a:1:{i:0;s:2:"53";}'),
(377, 40, '_visibility', 'visible'),
(378, 40, '_stock_status', 'instock'),
(379, 40, 'total_sales', '0'),
(380, 40, '_downloadable', 'no'),
(381, 40, '_virtual', 'no'),
(382, 40, '_product_image_gallery', '44,45,46'),
(383, 40, '_regular_price', '30'),
(384, 40, '_sale_price', ''),
(385, 40, '_tax_status', ''),
(386, 40, '_tax_class', ''),
(387, 40, '_purchase_note', ''),
(388, 40, '_featured', 'no'),
(389, 40, '_weight', ''),
(390, 40, '_length', ''),
(391, 40, '_width', ''),
(392, 40, '_height', ''),
(393, 40, '_sku', ''),
(394, 40, '_product_attributes', 'a:1:{s:8:"pa_color";a:6:{s:4:"name";s:8:"pa_color";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:0;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(395, 40, '_sale_price_dates_from', ''),
(396, 40, '_sale_price_dates_to', ''),
(397, 40, '_price', '30'),
(398, 40, '_sold_individually', ''),
(399, 40, '_stock', ''),
(400, 40, '_backorders', 'no'),
(401, 40, '_manage_stock', 'no'),
(402, 40, '_min_variation_price', '30'),
(403, 40, '_max_variation_price', '35'),
(404, 40, '_min_variation_regular_price', '35'),
(405, 40, '_max_variation_regular_price', '35'),
(406, 40, '_min_variation_sale_price', '30'),
(407, 40, '_max_variation_sale_price', '30'),
(408, 40, '_default_attributes', 'a:1:{s:8:"pa_color";s:5:"black";}'),
(409, 40, '_thumbnail_id', '43'),
(410, 40, '_crosssell_ids', 'a:1:{i:0;s:2:"22";}'),
(411, 47, '_visibility', 'visible'),
(412, 47, '_stock_status', 'instock'),
(413, 47, 'total_sales', '0'),
(414, 47, '_downloadable', 'no'),
(415, 47, '_virtual', 'no'),
(416, 47, '_product_image_gallery', '49'),
(417, 47, '_regular_price', '35'),
(418, 47, '_sale_price', ''),
(419, 47, '_tax_status', ''),
(420, 47, '_tax_class', ''),
(421, 47, '_purchase_note', ''),
(422, 47, '_featured', 'no'),
(423, 47, '_weight', ''),
(424, 47, '_length', ''),
(425, 47, '_width', ''),
(426, 47, '_height', ''),
(427, 47, '_sku', ''),
(428, 47, '_product_attributes', 'a:0:{}'),
(429, 47, '_sale_price_dates_from', ''),
(430, 47, '_sale_price_dates_to', ''),
(431, 47, '_price', '35'),
(432, 47, '_sold_individually', ''),
(433, 47, '_stock', ''),
(434, 47, '_backorders', 'no'),
(435, 47, '_manage_stock', 'no'),
(436, 47, '_thumbnail_id', '48'),
(437, 47, '_crosssell_ids', 'a:1:{i:0;s:2:"34";}'),
(438, 50, '_visibility', 'visible'),
(439, 50, '_stock_status', 'instock'),
(440, 50, 'total_sales', '0'),
(441, 50, '_downloadable', 'no'),
(442, 50, '_virtual', 'no'),
(443, 50, '_product_image_gallery', '52'),
(444, 50, '_regular_price', '35'),
(445, 50, '_sale_price', ''),
(446, 50, '_tax_status', ''),
(447, 50, '_tax_class', ''),
(448, 50, '_purchase_note', ''),
(449, 50, '_featured', 'no'),
(450, 50, '_weight', ''),
(451, 50, '_length', ''),
(452, 50, '_width', ''),
(453, 50, '_height', ''),
(454, 50, '_sku', ''),
(455, 50, '_product_attributes', 'a:0:{}'),
(456, 50, '_sale_price_dates_from', ''),
(457, 50, '_sale_price_dates_to', ''),
(458, 50, '_price', '35'),
(459, 50, '_sold_individually', ''),
(460, 50, '_stock', ''),
(461, 50, '_backorders', 'no'),
(462, 50, '_manage_stock', 'no'),
(463, 50, '_thumbnail_id', '51'),
(464, 50, '_crosssell_ids', 'a:1:{i:0;s:2:"53";}'),
(465, 53, '_thumbnail_id', '54'),
(466, 53, '_visibility', 'visible'),
(467, 53, '_stock_status', 'instock'),
(468, 53, 'total_sales', '0'),
(469, 53, '_downloadable', 'no'),
(470, 53, '_virtual', 'no'),
(471, 53, '_product_image_gallery', '55'),
(472, 53, '_regular_price', '35'),
(473, 53, '_sale_price', ''),
(474, 53, '_tax_status', ''),
(475, 53, '_tax_class', ''),
(476, 53, '_purchase_note', ''),
(477, 53, '_featured', 'no'),
(478, 53, '_weight', ''),
(479, 53, '_length', ''),
(480, 53, '_width', ''),
(481, 53, '_height', ''),
(482, 53, '_sku', ''),
(483, 53, '_product_attributes', 'a:0:{}'),
(484, 53, '_sale_price_dates_from', ''),
(485, 53, '_sale_price_dates_to', ''),
(486, 53, '_price', '35'),
(487, 53, '_sold_individually', ''),
(488, 53, '_stock', ''),
(489, 53, '_backorders', 'no'),
(490, 53, '_manage_stock', 'no'),
(491, 53, '_crosssell_ids', 'a:1:{i:0;i:37;}'),
(492, 56, '_visibility', 'visible'),
(493, 56, '_stock_status', 'instock'),
(494, 56, 'total_sales', '0'),
(495, 56, '_downloadable', 'no'),
(496, 56, '_virtual', 'no'),
(497, 56, '_product_image_gallery', '58'),
(498, 56, '_regular_price', '35'),
(499, 56, '_sale_price', ''),
(500, 56, '_tax_status', ''),
(501, 56, '_tax_class', ''),
(502, 56, '_purchase_note', ''),
(503, 56, '_featured', 'no'),
(504, 56, '_weight', ''),
(505, 56, '_length', ''),
(506, 56, '_width', ''),
(507, 56, '_height', ''),
(508, 56, '_sku', ''),
(509, 56, '_product_attributes', 'a:0:{}'),
(510, 56, '_sale_price_dates_from', ''),
(511, 56, '_sale_price_dates_to', ''),
(512, 56, '_price', '35'),
(513, 56, '_sold_individually', ''),
(514, 56, '_stock', ''),
(515, 56, '_backorders', 'no'),
(516, 56, '_manage_stock', 'no'),
(517, 56, '_thumbnail_id', '57'),
(518, 56, '_crosssell_ids', 'a:1:{i:0;s:2:"31";}'),
(519, 60, '_thumbnail_id', '61'),
(520, 60, '_visibility', 'visible'),
(521, 60, '_stock_status', 'instock'),
(522, 60, 'total_sales', '0'),
(523, 60, '_downloadable', 'no'),
(524, 60, '_virtual', 'no'),
(525, 60, '_product_image_gallery', '62'),
(526, 60, '_regular_price', '35'),
(527, 60, '_sale_price', ''),
(528, 60, '_tax_status', ''),
(529, 60, '_tax_class', ''),
(530, 60, '_purchase_note', ''),
(531, 60, '_featured', 'no'),
(532, 60, '_weight', ''),
(533, 60, '_length', ''),
(534, 60, '_width', ''),
(535, 60, '_height', ''),
(536, 60, '_sku', ''),
(537, 60, '_product_attributes', 'a:0:{}'),
(538, 60, '_sale_price_dates_from', ''),
(539, 60, '_sale_price_dates_to', ''),
(540, 60, '_price', '35'),
(541, 60, '_sold_individually', ''),
(542, 60, '_stock', ''),
(543, 60, '_backorders', 'no'),
(544, 60, '_manage_stock', 'no'),
(545, 60, '_crosssell_ids', 'a:1:{i:0;s:2:"15";}'),
(546, 67, '_visibility', 'visible'),
(547, 67, '_stock_status', 'instock'),
(548, 67, 'total_sales', '0'),
(549, 67, '_downloadable', 'no'),
(550, 67, '_virtual', 'no'),
(551, 67, '_product_image_gallery', '69'),
(552, 67, '_regular_price', '15'),
(553, 67, '_sale_price', ''),
(554, 67, '_tax_status', ''),
(555, 67, '_tax_class', ''),
(556, 67, '_purchase_note', ''),
(557, 67, '_featured', 'no'),
(558, 67, '_weight', ''),
(559, 67, '_length', ''),
(560, 67, '_width', ''),
(561, 67, '_height', ''),
(562, 67, '_sku', ''),
(563, 67, '_product_attributes', 'a:0:{}'),
(564, 67, '_sale_price_dates_from', ''),
(565, 67, '_sale_price_dates_to', ''),
(566, 67, '_price', '15'),
(567, 67, '_sold_individually', ''),
(568, 67, '_stock', ''),
(569, 67, '_backorders', 'no'),
(570, 67, '_manage_stock', 'no'),
(571, 67, '_thumbnail_id', '68'),
(572, 67, '_upsell_ids', 'a:2:{i:0;s:2:"22";i:1;s:2:"40";}'),
(573, 67, '_crosssell_ids', 'a:2:{i:0;s:2:"22";i:1;s:2:"40";}'),
(574, 70, '_visibility', 'visible'),
(575, 70, '_stock_status', 'instock'),
(576, 70, 'total_sales', '0'),
(577, 70, '_downloadable', 'no'),
(578, 70, '_virtual', 'no'),
(579, 70, '_product_image_gallery', '72'),
(580, 70, '_regular_price', '15'),
(581, 70, '_sale_price', '12'),
(582, 70, '_tax_status', ''),
(583, 70, '_tax_class', ''),
(584, 70, '_purchase_note', ''),
(585, 70, '_featured', 'no'),
(586, 70, '_weight', ''),
(587, 70, '_length', ''),
(588, 70, '_width', ''),
(589, 70, '_height', ''),
(590, 70, '_sku', ''),
(591, 70, '_product_attributes', 'a:0:{}'),
(592, 70, '_sale_price_dates_from', ''),
(593, 70, '_sale_price_dates_to', ''),
(594, 70, '_price', '12'),
(595, 70, '_sold_individually', ''),
(596, 70, '_stock', ''),
(597, 70, '_backorders', 'no'),
(598, 70, '_manage_stock', 'no'),
(599, 70, '_thumbnail_id', '71'),
(600, 73, '_visibility', 'visible'),
(601, 73, '_stock_status', 'instock'),
(602, 73, 'total_sales', '0'),
(603, 73, '_downloadable', 'no'),
(604, 73, '_virtual', 'no'),
(605, 73, '_product_image_gallery', '75'),
(606, 73, '_regular_price', '15'),
(607, 73, '_sale_price', '12'),
(608, 73, '_tax_status', ''),
(609, 73, '_tax_class', ''),
(610, 73, '_purchase_note', ''),
(611, 73, '_featured', 'no'),
(612, 73, '_weight', ''),
(613, 73, '_length', ''),
(614, 73, '_width', ''),
(615, 73, '_height', ''),
(616, 73, '_sku', ''),
(617, 73, '_product_attributes', 'a:0:{}'),
(618, 73, '_sale_price_dates_from', ''),
(619, 73, '_sale_price_dates_to', ''),
(620, 73, '_price', '12'),
(621, 73, '_sold_individually', ''),
(622, 73, '_stock', ''),
(623, 73, '_backorders', 'no'),
(624, 73, '_manage_stock', 'no'),
(625, 73, '_upsell_ids', 'a:1:{i:0;s:2:"19";}'),
(626, 73, '_thumbnail_id', '74'),
(627, 76, '_thumbnail_id', '77'),
(628, 76, '_visibility', 'visible'),
(629, 76, '_stock_status', 'instock'),
(630, 76, 'total_sales', '0'),
(631, 76, '_downloadable', 'no'),
(632, 76, '_virtual', 'no'),
(633, 76, '_product_image_gallery', '78'),
(634, 76, '_regular_price', '15'),
(635, 76, '_sale_price', ''),
(636, 76, '_tax_status', ''),
(637, 76, '_tax_class', ''),
(638, 76, '_purchase_note', ''),
(639, 76, '_featured', 'no'),
(640, 76, '_weight', ''),
(641, 76, '_length', ''),
(642, 76, '_width', ''),
(643, 76, '_height', ''),
(644, 76, '_sku', ''),
(645, 76, '_product_attributes', 'a:0:{}'),
(646, 76, '_sale_price_dates_from', ''),
(647, 76, '_sale_price_dates_to', ''),
(648, 76, '_price', '15'),
(649, 76, '_sold_individually', ''),
(650, 76, '_stock', ''),
(651, 76, '_backorders', 'no'),
(652, 76, '_manage_stock', 'no'),
(653, 76, '_crosssell_ids', 'a:2:{i:0;s:2:"34";i:1;s:2:"47";}'),
(654, 105, '_sku', ''),
(655, 105, '_weight', ''),
(656, 105, '_length', ''),
(657, 105, '_width', ''),
(658, 105, '_height', ''),
(659, 105, '_stock', ''),
(660, 105, '_thumbnail_id', '29'),
(661, 105, '_virtual', 'no'),
(662, 105, '_downloadable', 'no'),
(663, 105, '_regular_price', '20'),
(664, 105, '_sale_price', ''),
(665, 105, '_sale_price_dates_from', ''),
(666, 105, '_sale_price_dates_to', ''),
(667, 105, '_price', '20'),
(668, 105, '_tax_class', ''),
(669, 105, '_download_limit', ''),
(670, 105, '_download_expiry', ''),
(671, 105, '_file_paths', ''),
(672, 105, 'attribute_pa_color', 'black'),
(673, 106, '_sku', ''),
(674, 106, '_weight', ''),
(675, 106, '_length', ''),
(676, 106, '_width', ''),
(677, 106, '_height', ''),
(678, 106, '_stock', ''),
(679, 106, '_thumbnail_id', '27'),
(680, 106, '_virtual', 'no'),
(681, 106, '_downloadable', 'no'),
(682, 106, '_regular_price', '20'),
(683, 106, '_sale_price', ''),
(684, 106, '_sale_price_dates_from', ''),
(685, 106, '_sale_price_dates_to', ''),
(686, 106, '_price', '20'),
(687, 106, '_tax_class', ''),
(688, 106, '_download_limit', ''),
(689, 106, '_download_expiry', ''),
(690, 106, '_file_paths', ''),
(691, 106, 'attribute_pa_color', 'green'),
(692, 41, '_sku', ''),
(693, 41, '_weight', ''),
(694, 41, '_length', ''),
(695, 41, '_width', ''),
(696, 41, '_height', ''),
(697, 41, '_stock', ''),
(698, 41, '_thumbnail_id', '43'),
(699, 41, '_virtual', 'no'),
(700, 41, '_downloadable', 'no'),
(701, 41, '_regular_price', '35'),
(702, 41, '_sale_price', ''),
(703, 41, '_sale_price_dates_from', ''),
(704, 41, '_sale_price_dates_to', ''),
(705, 41, '_price', '35'),
(706, 41, '_tax_class', ''),
(707, 41, '_download_limit', ''),
(708, 41, '_download_expiry', ''),
(709, 41, '_file_paths', ''),
(710, 41, 'attribute_pa_color', 'black'),
(711, 42, '_sku', ''),
(712, 42, '_weight', ''),
(713, 42, '_length', ''),
(714, 42, '_width', ''),
(715, 42, '_height', ''),
(716, 42, '_stock', ''),
(717, 42, '_thumbnail_id', '46'),
(718, 42, '_virtual', 'no'),
(719, 42, '_downloadable', 'no'),
(720, 42, '_regular_price', '35'),
(721, 42, '_sale_price', '30'),
(722, 42, '_sale_price_dates_from', ''),
(723, 42, '_sale_price_dates_to', ''),
(724, 42, '_price', '30'),
(725, 42, '_tax_class', ''),
(726, 42, '_download_limit', ''),
(727, 42, '_download_expiry', ''),
(728, 42, '_file_paths', ''),
(729, 42, 'attribute_pa_color', 'blue'),
(730, 79, '_thumbnail_id', '80'),
(731, 79, '_visibility', 'visible'),
(732, 79, '_stock_status', 'instock'),
(733, 79, 'total_sales', '0'),
(734, 79, '_downloadable', 'no'),
(735, 79, '_virtual', 'no'),
(736, 79, '_product_image_gallery', '81'),
(737, 79, '_regular_price', '15'),
(738, 79, '_sale_price', ''),
(739, 79, '_tax_status', ''),
(740, 79, '_tax_class', ''),
(741, 79, '_purchase_note', ''),
(742, 79, '_featured', 'no'),
(743, 79, '_weight', ''),
(744, 79, '_length', ''),
(745, 79, '_width', ''),
(746, 79, '_height', ''),
(747, 79, '_sku', ''),
(748, 79, '_product_attributes', 'a:0:{}'),
(749, 79, '_sale_price_dates_from', ''),
(750, 79, '_sale_price_dates_to', ''),
(751, 79, '_price', '15'),
(752, 79, '_sold_individually', ''),
(753, 79, '_stock', ''),
(754, 79, '_backorders', 'no'),
(755, 79, '_manage_stock', 'no'),
(756, 79, '_crosssell_ids', 'a:2:{i:0;s:2:"15";i:1;s:2:"60";}'),
(757, 83, '_thumbnail_id', '84'),
(758, 83, '_visibility', 'visible'),
(759, 83, '_stock_status', 'instock'),
(760, 83, 'total_sales', '0'),
(761, 83, '_downloadable', 'yes'),
(762, 83, '_virtual', 'no'),
(763, 83, '_product_image_gallery', '85'),
(764, 83, '_regular_price', '9'),
(765, 83, '_sale_price', ''),
(766, 83, '_tax_status', ''),
(767, 83, '_tax_class', ''),
(768, 83, '_purchase_note', ''),
(769, 83, '_featured', 'no'),
(770, 83, '_weight', ''),
(771, 83, '_length', ''),
(772, 83, '_width', ''),
(773, 83, '_height', ''),
(774, 83, '_sku', ''),
(775, 83, '_product_attributes', 'a:0:{}'),
(776, 83, '_sale_price_dates_from', ''),
(777, 83, '_sale_price_dates_to', ''),
(778, 83, '_price', '9'),
(779, 83, '_sold_individually', ''),
(780, 83, '_stock', ''),
(781, 83, '_backorders', 'no'),
(782, 83, '_manage_stock', 'no'),
(783, 83, '_file_paths', 'a:0:{}'),
(784, 83, '_download_limit', ''),
(785, 83, '_download_expiry', ''),
(786, 87, '_thumbnail_id', '88'),
(787, 87, '_visibility', 'visible'),
(788, 87, '_stock_status', 'instock'),
(789, 87, 'total_sales', '0'),
(790, 87, '_downloadable', 'yes'),
(791, 87, '_virtual', 'no'),
(792, 87, '_product_image_gallery', '89'),
(793, 87, '_regular_price', '9'),
(794, 87, '_sale_price', ''),
(795, 87, '_tax_status', ''),
(796, 87, '_tax_class', ''),
(797, 87, '_purchase_note', ''),
(798, 87, '_featured', 'no'),
(799, 87, '_weight', ''),
(800, 87, '_length', ''),
(801, 87, '_width', ''),
(802, 87, '_height', ''),
(803, 87, '_sku', ''),
(804, 87, '_product_attributes', 'a:0:{}'),
(805, 87, '_sale_price_dates_from', ''),
(806, 87, '_sale_price_dates_to', ''),
(807, 87, '_price', '9'),
(808, 87, '_sold_individually', ''),
(809, 87, '_stock', ''),
(810, 87, '_backorders', 'no'),
(811, 87, '_manage_stock', 'no'),
(812, 87, '_file_paths', 'a:0:{}'),
(813, 87, '_download_limit', ''),
(814, 87, '_download_expiry', ''),
(815, 90, '_thumbnail_id', '91'),
(816, 90, '_visibility', 'visible'),
(817, 90, '_stock_status', 'instock'),
(818, 90, 'total_sales', '0'),
(819, 90, '_downloadable', 'yes'),
(820, 90, '_virtual', 'no'),
(821, 90, '_product_image_gallery', '92'),
(822, 90, '_regular_price', '9'),
(823, 90, '_sale_price', ''),
(824, 90, '_tax_status', ''),
(825, 90, '_tax_class', ''),
(826, 90, '_purchase_note', ''),
(827, 90, '_featured', 'no'),
(828, 90, '_weight', ''),
(829, 90, '_length', ''),
(830, 90, '_width', ''),
(831, 90, '_height', ''),
(832, 90, '_sku', ''),
(833, 90, '_product_attributes', 'a:0:{}'),
(834, 90, '_sale_price_dates_from', ''),
(835, 90, '_sale_price_dates_to', ''),
(836, 90, '_price', '9'),
(837, 90, '_sold_individually', ''),
(838, 90, '_stock', ''),
(839, 90, '_backorders', 'no'),
(840, 90, '_manage_stock', 'no'),
(841, 90, '_file_paths', 'a:0:{}'),
(842, 90, '_download_limit', ''),
(843, 90, '_download_expiry', ''),
(844, 93, '_thumbnail_id', '95'),
(845, 93, '_visibility', 'visible'),
(846, 93, '_stock_status', 'instock'),
(847, 93, 'total_sales', '0'),
(848, 93, '_downloadable', 'yes'),
(849, 93, '_virtual', 'no'),
(850, 93, '_product_image_gallery', '94'),
(851, 93, '_regular_price', '3'),
(852, 93, '_sale_price', ''),
(853, 93, '_tax_status', ''),
(854, 93, '_tax_class', ''),
(855, 93, '_purchase_note', ''),
(856, 93, '_featured', 'no'),
(857, 93, '_weight', ''),
(858, 93, '_length', ''),
(859, 93, '_width', ''),
(860, 93, '_height', ''),
(861, 93, '_sku', ''),
(862, 93, '_product_attributes', 'a:0:{}'),
(863, 93, '_sale_price_dates_from', ''),
(864, 93, '_sale_price_dates_to', ''),
(865, 93, '_price', '3'),
(866, 93, '_sold_individually', ''),
(867, 93, '_stock', ''),
(868, 93, '_backorders', 'no'),
(869, 93, '_manage_stock', 'no'),
(870, 93, '_file_paths', 'a:0:{}'),
(871, 93, '_download_limit', ''),
(872, 93, '_download_expiry', ''),
(873, 96, '_thumbnail_id', '97'),
(874, 96, '_visibility', 'visible'),
(875, 96, '_stock_status', 'instock'),
(876, 96, 'total_sales', '0'),
(877, 96, '_downloadable', 'yes'),
(878, 96, '_virtual', 'no'),
(879, 96, '_product_image_gallery', '98'),
(880, 96, '_regular_price', '9'),
(881, 96, '_sale_price', ''),
(882, 96, '_tax_status', ''),
(883, 96, '_tax_class', ''),
(884, 96, '_purchase_note', ''),
(885, 96, '_featured', 'no'),
(886, 96, '_weight', ''),
(887, 96, '_length', ''),
(888, 96, '_width', ''),
(889, 96, '_height', ''),
(890, 96, '_sku', ''),
(891, 96, '_product_attributes', 'a:0:{}'),
(892, 96, '_sale_price_dates_from', ''),
(893, 96, '_sale_price_dates_to', ''),
(894, 96, '_price', '9'),
(895, 96, '_sold_individually', ''),
(896, 96, '_stock', ''),
(897, 96, '_backorders', 'no'),
(898, 96, '_manage_stock', 'no'),
(899, 96, '_file_paths', 'a:0:{}'),
(900, 96, '_download_limit', ''),
(901, 96, '_download_expiry', ''),
(902, 99, '_thumbnail_id', '100'),
(903, 99, '_visibility', 'visible'),
(904, 99, '_stock_status', 'instock'),
(905, 99, 'total_sales', '0'),
(906, 99, '_downloadable', 'no'),
(907, 99, '_virtual', 'no'),
(908, 99, '_product_image_gallery', '101'),
(909, 99, '_regular_price', '3'),
(910, 99, '_sale_price', '2'),
(911, 99, '_tax_status', ''),
(912, 99, '_tax_class', ''),
(913, 99, '_purchase_note', ''),
(914, 99, '_featured', 'no'),
(915, 99, '_weight', ''),
(916, 99, '_length', ''),
(917, 99, '_width', ''),
(918, 99, '_height', ''),
(919, 99, '_sku', ''),
(920, 99, '_product_attributes', 'a:0:{}'),
(921, 99, '_sale_price_dates_from', ''),
(922, 99, '_sale_price_dates_to', ''),
(923, 99, '_price', '2'),
(924, 99, '_sold_individually', ''),
(925, 99, '_stock', ''),
(926, 99, '_backorders', 'no'),
(927, 99, '_manage_stock', 'no'),
(928, 70, '_wc_rating_count', 'a:3:{i:3;s:1:"1";i:4;s:1:"2";i:5;s:1:"1";}'),
(929, 70, '_wc_average_rating', '4.00'),
(930, 70, '_wc_review_count', '4'),
(931, 67, '_wc_rating_count', 'a:0:{}'),
(932, 67, '_wc_average_rating', '0'),
(933, 4, '_edit_lock', '1456293148:1'),
(934, 5, '_edit_lock', '1456293121:1'),
(935, 1, '_wp_trash_meta_status', 'publish'),
(936, 1, '_wp_trash_meta_time', '1454760478'),
(937, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(938, 109, '_edit_last', '1'),
(939, 109, '_edit_lock', '1454833153:1'),
(942, 109, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(946, 111, '_edit_last', '1'),
(947, 111, '_edit_lock', '1456380120:1'),
(948, 111, '_wp_page_template', 'template-home.php'),
(949, 111, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(950, 113, '_menu_item_type', 'post_type'),
(951, 113, '_menu_item_menu_item_parent', '0'),
(952, 113, '_menu_item_object_id', '111'),
(953, 113, '_menu_item_object', 'page'),
(954, 113, '_menu_item_target', ''),
(955, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(956, 113, '_menu_item_xfn', ''),
(957, 113, '_menu_item_url', ''),
(959, 114, '_wp_attached_file', '2016/02/Unknown-5.jpg'),
(960, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:815;s:4:"file";s:21:"2016/02/Unknown-5.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Unknown-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Unknown-5-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Unknown-5-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"Unknown-5-1024x435.jpg";s:5:"width";i:1024;s:6:"height";i:435;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Unknown-5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Unknown-5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"Unknown-5-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"Unknown-5-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"Unknown-5-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"Unknown-5-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"Unknown-5-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(961, 115, '_wp_attached_file', '2016/02/Unknown-6.jpg'),
(962, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:520;s:6:"height";i:520;s:4:"file";s:21:"2016/02/Unknown-6.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Unknown-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Unknown-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Unknown-6-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Unknown-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"Unknown-6-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"Unknown-6-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"Unknown-6-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(963, 116, '_wp_attached_file', '2016/02/Unknown-7.jpg'),
(964, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:520;s:6:"height";i:520;s:4:"file";s:21:"2016/02/Unknown-7.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Unknown-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Unknown-7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Unknown-7-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Unknown-7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"Unknown-7-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"Unknown-7-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"Unknown-7-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(970, 120, '_edit_last', '1'),
(971, 120, '_edit_lock', '1456381147:1'),
(972, 120, '_thumbnail_id', '115'),
(974, 120, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(975, 122, '_edit_last', '1'),
(976, 122, '_edit_lock', '1456381521:1'),
(977, 122, '_thumbnail_id', '116'),
(979, 122, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(980, 124, '_edit_last', '1'),
(981, 124, '_edit_lock', '1456382625:1'),
(982, 125, '_wp_attached_file', '2016/02/Unknown-52.jpg'),
(983, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:520;s:6:"height";i:238;s:4:"file";s:22:"2016/02/Unknown-52.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Unknown-52-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Unknown-52-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Unknown-52-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Unknown-52-300x238.jpg";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"Unknown-52-520x238.jpg";s:5:"width";i:520;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"Unknown-52-520x238.jpg";s:5:"width";i:520;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"Unknown-52-290x238.jpg";s:5:"width";i:290;s:6:"height";i:238;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"Unknown-52-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(984, 126, '_wp_attached_file', '2016/02/Unknown-62.jpg'),
(985, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:378;s:6:"height";i:174;s:4:"file";s:22:"2016/02/Unknown-62.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Unknown-62-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Unknown-62-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Unknown-62-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Unknown-62-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"Unknown-62-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"Unknown-62-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(986, 124, '_thumbnail_id', '125'),
(988, 124, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(989, 128, '_edit_last', '1'),
(990, 128, '_edit_lock', '1456383884:1'),
(991, 128, '_thumbnail_id', '126'),
(993, 128, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(994, 130, '_edit_last', '1'),
(995, 130, '_edit_lock', '1454835276:1'),
(996, 131, '_wp_attached_file', '2016/02/8store-banner1.jpg'),
(997, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1919;s:6:"height";i:814;s:4:"file";s:26:"2016/02/8store-banner1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"8store-banner1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"8store-banner1-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"8store-banner1-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"8store-banner1-1024x434.jpg";s:5:"width";i:1024;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"8store-banner1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"8store-banner1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"8store-banner1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"8store-banner1-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"8store-banner1-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"8store-banner1-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"8store-banner1-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(998, 130, '_thumbnail_id', '131'),
(1000, 130, 'eightstore_lite_sidebar_layout', 'sidebar-no'),
(1002, 133, '_edit_last', '1'),
(1003, 133, '_edit_lock', '1454770971:1'),
(1004, 133, '_thumbnail_id', '116'),
(1006, 133, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1009, 90, '_wc_rating_count', 'a:1:{i:3;s:1:"1";}'),
(1010, 90, '_wc_review_count', '1'),
(1011, 90, '_wc_average_rating', '3.00'),
(1012, 83, '_wc_rating_count', 'a:0:{}'),
(1013, 83, '_wc_average_rating', '0'),
(1014, 137, '_wp_attached_file', '2016/02/video-bkg.jpg'),
(1015, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:174;s:4:"file";s:21:"2016/02/video-bkg.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"video-bkg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"video-bkg-300x37.jpg";s:5:"width";i:300;s:6:"height";i:37;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"video-bkg-768x95.jpg";s:5:"width";i:768;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"video-bkg-1024x127.jpg";s:5:"width";i:1024;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"video-bkg-180x174.jpg";s:5:"width";i:180;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"video-bkg-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"video-bkg-600x174.jpg";s:5:"width";i:600;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"video-bkg-520x174.jpg";s:5:"width";i:520;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"video-bkg-520x174.jpg";s:5:"width";i:520;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"video-bkg-290x174.jpg";s:5:"width";i:290;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"video-bkg-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1016, 138, '_wp_attached_file', '2016/02/8degree-callto.jpg'),
(1017, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1356;s:6:"height";i:747;s:4:"file";s:26:"2016/02/8degree-callto.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"8degree-callto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"8degree-callto-300x165.jpg";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"8degree-callto-768x423.jpg";s:5:"width";i:768;s:6:"height";i:423;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"8degree-callto-1024x564.jpg";s:5:"width";i:1024;s:6:"height";i:564;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"8degree-callto-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"8degree-callto-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"8degree-callto-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:26:"8degree-callto-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:26:"8degree-callto-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:26:"8degree-callto-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:24:"8degree-callto-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1018, 76, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1019, 76, '_wc_review_count', '1'),
(1020, 76, '_wc_average_rating', '4.00'),
(1021, 96, '_wc_rating_count', 'a:1:{i:5;s:1:"2";}'),
(1022, 96, '_wc_average_rating', '5.00'),
(1023, 139, '_wp_attached_file', '2016/02/denin-jens.jpg');
INSERT INTO `ofs2616_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1024, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:899;s:6:"height";i:204;s:4:"file";s:22:"2016/02/denin-jens.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"denin-jens-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"denin-jens-300x68.jpg";s:5:"width";i:300;s:6:"height";i:68;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"denin-jens-768x174.jpg";s:5:"width";i:768;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"denin-jens-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"denin-jens-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"denin-jens-600x204.jpg";s:5:"width";i:600;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:22:"denin-jens-520x204.jpg";s:5:"width";i:520;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:22:"denin-jens-520x204.jpg";s:5:"width";i:520;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:22:"denin-jens-290x204.jpg";s:5:"width";i:290;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:20:"denin-jens-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1025, 140, '_edit_last', '1'),
(1026, 140, '_edit_lock', '1456298635:1'),
(1027, 140, '_thumbnail_id', '115'),
(1029, 140, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1032, 40, '_wc_rating_count', 'a:3:{i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}'),
(1033, 40, '_wc_average_rating', '4.00'),
(1034, 104, '_wc_rating_count', 'a:2:{i:4;s:1:"2";i:5;s:1:"1";}'),
(1035, 104, '_wc_average_rating', '4.33'),
(1037, 144, '_wp_attached_file', '2016/02/ofs.png'),
(1038, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:908;s:6:"height";i:250;s:4:"file";s:15:"2016/02/ofs.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"ofs-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"ofs-300x83.png";s:5:"width";i:300;s:6:"height";i:83;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:15:"ofs-768x211.png";s:5:"width";i:768;s:6:"height";i:211;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"ofs-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"ofs-300x250.png";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:15:"ofs-600x250.png";s:5:"width";i:600;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:15:"ofs-520x250.png";s:5:"width";i:520;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:15:"ofs-520x250.png";s:5:"width";i:520;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:15:"ofs-290x250.png";s:5:"width";i:290;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:13:"ofs-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1039, 144, '_wp_attachment_custom_header_last_used_eightstore-lite', '1454784464'),
(1040, 144, '_wp_attachment_is_custom_header', 'eightstore-lite'),
(1041, 146, '_wp_attached_file', '2016/02/ofslogo.png'),
(1042, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:19:"2016/02/ofslogo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"ofslogo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"ofslogo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"ofslogo-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1043, 146, '_wp_attachment_custom_header_last_used_eightstore-lite', '1454814061'),
(1044, 146, '_wp_attachment_is_custom_header', 'eightstore-lite-child'),
(1045, 146, '_wp_attachment_custom_header_last_used_eightstore-lite-child', '1454821553'),
(1046, 147, '_wp_attached_file', '2016/02/banner-mk.jpg'),
(1047, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1279;s:6:"height";i:543;s:4:"file";s:21:"2016/02/banner-mk.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"banner-mk-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"banner-mk-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"banner-mk-768x326.jpg";s:5:"width";i:768;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"banner-mk-1024x435.jpg";s:5:"width";i:1024;s:6:"height";i:435;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"banner-mk-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"banner-mk-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"banner-mk-600x543.jpg";s:5:"width";i:600;s:6:"height";i:543;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"banner-mk-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"banner-mk-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"banner-mk-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"banner-mk-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1048, 109, '_thumbnail_id', '147'),
(1050, 2, '_edit_lock', '1454834603:1'),
(1051, 2, '_edit_last', '1'),
(1052, 2, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1053, 150, '_menu_item_type', 'post_type'),
(1054, 150, '_menu_item_menu_item_parent', '0'),
(1055, 150, '_menu_item_object_id', '2'),
(1056, 150, '_menu_item_object', 'page'),
(1057, 150, '_menu_item_target', ''),
(1058, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1059, 150, '_menu_item_xfn', ''),
(1060, 150, '_menu_item_url', ''),
(1062, 151, '_menu_item_type', 'custom'),
(1063, 151, '_menu_item_menu_item_parent', '0'),
(1064, 151, '_menu_item_object_id', '151'),
(1065, 151, '_menu_item_object', 'custom'),
(1066, 151, '_menu_item_target', ''),
(1067, 151, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1068, 151, '_menu_item_xfn', ''),
(1069, 151, '_menu_item_url', 'http://localhost/onefabshop/blogs'),
(1072, 6, '_edit_lock', '1454845986:1'),
(1073, 99, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"1";}'),
(1074, 99, '_wc_average_rating', '4.50'),
(1075, 99, '_wc_review_count', '2'),
(1076, 153, '_menu_item_type', 'post_type'),
(1077, 153, '_menu_item_menu_item_parent', '0'),
(1078, 153, '_menu_item_object_id', '111'),
(1079, 153, '_menu_item_object', 'page'),
(1080, 153, '_menu_item_target', ''),
(1081, 153, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1082, 153, '_menu_item_xfn', ''),
(1083, 153, '_menu_item_url', ''),
(1085, 154, '_menu_item_type', 'post_type'),
(1086, 154, '_menu_item_menu_item_parent', '0'),
(1087, 154, '_menu_item_object_id', '2'),
(1088, 154, '_menu_item_object', 'page'),
(1089, 154, '_menu_item_target', ''),
(1090, 154, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1091, 154, '_menu_item_xfn', ''),
(1092, 154, '_menu_item_url', ''),
(1103, 156, '_edit_lock', '1456292866:1'),
(1104, 156, '_edit_last', '1'),
(1106, 156, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1107, 158, '_edit_lock', '1456293609:1'),
(1108, 158, '_edit_last', '1'),
(1109, 158, '_wp_page_template', 'default'),
(1110, 158, 'eightstore_lite_sidebar_layout', 'sidebar-right'),
(1111, 158, '_wp_trash_meta_status', 'publish'),
(1112, 158, '_wp_trash_meta_time', '1456293738'),
(1113, 99, '_edit_lock', '1456295160:1'),
(1114, 99, '_edit_last', '1'),
(1115, 99, '_upsell_ids', 'a:0:{}'),
(1116, 99, '_crosssell_ids', 'a:0:{}'),
(1117, 99, '_product_version', '2.5.2'),
(1118, 96, '_edit_last', '1'),
(1119, 96, '_edit_lock', '1456295339:1'),
(1120, 93, '_edit_last', '1'),
(1121, 93, '_edit_lock', '1456295355:1'),
(1122, 90, '_edit_last', '1'),
(1123, 90, '_edit_lock', '1456295383:1'),
(1124, 83, '_edit_last', '1'),
(1125, 83, '_edit_lock', '1456295406:1'),
(1126, 87, '_edit_last', '1'),
(1127, 87, '_edit_lock', '1456295440:1'),
(1128, 79, '_edit_last', '1'),
(1129, 79, '_edit_lock', '1456295463:1'),
(1130, 76, '_edit_last', '1'),
(1131, 76, '_edit_lock', '1456295484:1'),
(1132, 73, '_edit_last', '1'),
(1133, 73, '_edit_lock', '1456295504:1'),
(1134, 70, '_edit_last', '1'),
(1135, 70, '_edit_lock', '1456295524:1'),
(1136, 67, '_edit_last', '1'),
(1137, 67, '_edit_lock', '1456295585:1'),
(1138, 60, '_edit_last', '1'),
(1139, 60, '_edit_lock', '1456295612:1'),
(1140, 56, '_edit_last', '1'),
(1141, 56, '_edit_lock', '1456295634:1'),
(1142, 53, '_edit_last', '1'),
(1143, 53, '_edit_lock', '1456383687:1'),
(1144, 50, '_edit_last', '1'),
(1145, 50, '_edit_lock', '1456295682:1'),
(1146, 47, '_edit_last', '1'),
(1147, 47, '_edit_lock', '1456295699:1'),
(1148, 40, '_edit_last', '1'),
(1149, 41, '_stock_status', 'instock'),
(1150, 42, '_stock_status', 'instock'),
(1151, 40, '_edit_lock', '1456295714:1'),
(1152, 37, '_edit_last', '1'),
(1153, 37, '_edit_lock', '1456295734:1'),
(1154, 34, '_edit_last', '1'),
(1155, 34, '_edit_lock', '1456295756:1'),
(1156, 31, '_edit_last', '1'),
(1157, 31, '_edit_lock', '1456295810:1'),
(1158, 104, '_edit_last', '1'),
(1159, 105, '_stock_status', 'instock'),
(1160, 106, '_stock_status', 'instock'),
(1161, 104, '_edit_lock', '1456295875:1'),
(1162, 103, '_edit_last', '1'),
(1163, 103, '_edit_lock', '1456295905:1'),
(1164, 102, '_edit_last', '1'),
(1165, 102, '_edit_lock', '1456384155:1'),
(1166, 73, '_wc_rating_count', 'a:2:{i:1;s:1:"1";i:3;s:1:"1";}'),
(1167, 73, '_wc_average_rating', '2.00'),
(1168, 102, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1169, 102, '_wc_average_rating', '4.00'),
(1170, 53, '_wc_rating_count', 'a:2:{i:1;s:1:"1";i:5;s:1:"1";}'),
(1171, 53, '_wc_average_rating', '3.00'),
(1175, 120, '_wp_old_slug', 'productmen'),
(1176, 87, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1177, 87, '_wc_average_rating', '4.00'),
(1178, 160, '_menu_item_type', 'custom'),
(1179, 160, '_menu_item_menu_item_parent', '0'),
(1180, 160, '_menu_item_object_id', '160'),
(1181, 160, '_menu_item_object', 'custom'),
(1182, 160, '_menu_item_target', ''),
(1183, 160, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1184, 160, '_menu_item_xfn', ''),
(1185, 160, '_menu_item_url', 'http://localhost/onefabshop/shop/women/'),
(1187, 161, '_menu_item_type', 'taxonomy'),
(1188, 161, '_menu_item_menu_item_parent', '0'),
(1189, 161, '_menu_item_object_id', '28'),
(1190, 161, '_menu_item_object', 'category'),
(1191, 161, '_menu_item_target', ''),
(1192, 161, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1193, 161, '_menu_item_xfn', ''),
(1194, 161, '_menu_item_url', ''),
(1196, 162, '_menu_item_type', 'custom'),
(1197, 162, '_menu_item_menu_item_parent', '0'),
(1198, 162, '_menu_item_object_id', '162'),
(1199, 162, '_menu_item_object', 'custom'),
(1200, 162, '_menu_item_target', ''),
(1201, 162, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1202, 162, '_menu_item_xfn', ''),
(1203, 162, '_menu_item_url', 'http://localhost/onefabshop/shop/men/'),
(1208, 140, 'custom_permalink', 'sample-blog-2'),
(1209, 163, '_wp_attached_file', '2016/02/man-img.jpg'),
(1210, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:382;s:4:"file";s:19:"2016/02/man-img.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"man-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"man-img-300x294.jpg";s:5:"width";i:300;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"man-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"man-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:19:"man-img-390x260.jpg";s:5:"width";i:390;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:19:"man-img-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:17:"man-img-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1211, 164, '_wp_attached_file', '2016/02/women-img.jpg'),
(1212, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:578;s:6:"height";i:565;s:4:"file";s:21:"2016/02/women-img.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"women-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"women-img-300x293.jpg";s:5:"width";i:300;s:6:"height";i:293;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"women-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"women-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-small";a:4:{s:4:"file";s:21:"women-img-520x260.jpg";s:5:"width";i:520;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:22:"eightstore-promo-large";a:4:{s:4:"file";s:21:"women-img-520x520.jpg";s:5:"width";i:520;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:21:"eightstore-blog-image";a:4:{s:4:"file";s:21:"women-img-290x260.jpg";s:5:"width";i:290;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:28:"eightstore-testimonial-image";a:4:{s:4:"file";s:19:"women-img-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1216, 166, '_edit_lock', '1456381209:1'),
(1217, 166, '_edit_last', '1'),
(1218, 166, 'field_56ce9a87d1024', 'a:14:{s:3:"key";s:19:"field_56ce9a87d1024";s:5:"label";s:12:"Redirect Url";s:4:"name";s:12:"redirect_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1219, 166, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1220, 166, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:2:"30";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(1221, 166, 'position', 'normal'),
(1222, 166, 'layout', 'no_box'),
(1223, 166, 'hide_on_screen', ''),
(1225, 167, 'redirect_url', 'http://localhost/onefabshop/shop/men'),
(1226, 167, '_redirect_url', 'field_56ce9a87d1024'),
(1227, 120, 'redirect_url', 'http://localhost/onefabshop/shop/men'),
(1228, 120, '_redirect_url', 'field_56ce9a87d1024'),
(1230, 168, 'redirect_url', 'http://localhost/onefabshop/shop/women'),
(1231, 168, '_redirect_url', 'field_56ce9a87d1024'),
(1232, 122, 'redirect_url', 'http://localhost/onefabshop/shop/women'),
(1233, 122, '_redirect_url', 'field_56ce9a87d1024'),
(1234, 53, '_upsell_ids', 'a:0:{}'),
(1235, 53, '_product_version', '2.5.2'),
(1236, 53, '_wc_review_count', '2'),
(1237, 50, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"2";}'),
(1238, 50, '_wc_average_rating', '4.67'),
(1239, 103, '_wc_rating_count', 'a:2:{i:4;s:1:"1";i:5;s:1:"1";}'),
(1240, 103, '_wc_average_rating', '4.50'),
(1242, 170, 'redirect_url', 'http://localhost/onefabshop/tag/shoes/'),
(1243, 170, '_redirect_url', 'field_56ce9a87d1024'),
(1244, 124, 'redirect_url', 'http://localhost/onefabshop/tag/shoes/'),
(1245, 124, '_redirect_url', 'field_56ce9a87d1024'),
(1246, 171, '_menu_item_type', 'custom'),
(1247, 171, '_menu_item_menu_item_parent', '162'),
(1248, 171, '_menu_item_object_id', '171'),
(1249, 171, '_menu_item_object', 'custom'),
(1250, 171, '_menu_item_target', ''),
(1251, 171, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1252, 171, '_menu_item_xfn', ''),
(1253, 171, '_menu_item_url', 'http://localhost/onefabshop/shop/men/shoes-men/'),
(1255, 172, '_menu_item_type', 'custom'),
(1256, 172, '_menu_item_menu_item_parent', '162'),
(1257, 172, '_menu_item_object_id', '172'),
(1258, 172, '_menu_item_object', 'custom'),
(1259, 172, '_menu_item_target', ''),
(1260, 172, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1261, 172, '_menu_item_xfn', ''),
(1262, 172, '_menu_item_url', 'http://localhost/onefabshop/shop/men/apparels-men/'),
(1264, 173, '_menu_item_type', 'custom'),
(1265, 173, '_menu_item_menu_item_parent', '162'),
(1266, 173, '_menu_item_object_id', '173'),
(1267, 173, '_menu_item_object', 'custom'),
(1268, 173, '_menu_item_target', ''),
(1269, 173, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1270, 173, '_menu_item_xfn', ''),
(1271, 173, '_menu_item_url', 'http://localhost/onefabshop/shop/men/bags-men/'),
(1273, 174, '_menu_item_type', 'custom'),
(1274, 174, '_menu_item_menu_item_parent', '162'),
(1275, 174, '_menu_item_object_id', '174'),
(1276, 174, '_menu_item_object', 'custom'),
(1277, 174, '_menu_item_target', ''),
(1278, 174, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1279, 174, '_menu_item_xfn', ''),
(1280, 174, '_menu_item_url', 'http://localhost/onefabshop/shop/men/accessories-men/'),
(1282, 175, '_menu_item_type', 'custom'),
(1283, 175, '_menu_item_menu_item_parent', '160'),
(1284, 175, '_menu_item_object_id', '175'),
(1285, 175, '_menu_item_object', 'custom'),
(1286, 175, '_menu_item_target', ''),
(1287, 175, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1288, 175, '_menu_item_xfn', ''),
(1289, 175, '_menu_item_url', 'http://localhost/onefabshop/shop/women/shoes-women/'),
(1291, 176, '_menu_item_type', 'custom'),
(1292, 176, '_menu_item_menu_item_parent', '160'),
(1293, 176, '_menu_item_object_id', '176'),
(1294, 176, '_menu_item_object', 'custom'),
(1295, 176, '_menu_item_target', ''),
(1296, 176, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1297, 176, '_menu_item_xfn', ''),
(1298, 176, '_menu_item_url', 'http://localhost/onefabshop/shop/women/apparels-women/'),
(1300, 177, '_menu_item_type', 'custom'),
(1301, 177, '_menu_item_menu_item_parent', '160'),
(1302, 177, '_menu_item_object_id', '177'),
(1303, 177, '_menu_item_object', 'custom'),
(1304, 177, '_menu_item_target', ''),
(1305, 177, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1306, 177, '_menu_item_xfn', ''),
(1307, 177, '_menu_item_url', 'http://localhost/onefabshop/shop/women/bags-women/'),
(1309, 178, '_menu_item_type', 'custom'),
(1310, 178, '_menu_item_menu_item_parent', '160'),
(1311, 178, '_menu_item_object_id', '178'),
(1312, 178, '_menu_item_object', 'custom'),
(1313, 178, '_menu_item_target', ''),
(1314, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1315, 178, '_menu_item_xfn', ''),
(1316, 178, '_menu_item_url', 'http://localhost/onefabshop/shop/women/accessories-women/'),
(1319, 180, 'redirect_url', 'http://localhost/onefabshop/tag/bags/'),
(1320, 180, '_redirect_url', 'field_56ce9a87d1024'),
(1321, 128, 'redirect_url', 'http://localhost/onefabshop/tag/bags/'),
(1322, 128, '_redirect_url', 'field_56ce9a87d1024'),
(1323, 31, '_wc_rating_count', 'a:1:{i:5;s:1:"1";}'),
(1324, 31, '_wc_average_rating', '5.00'),
(1325, 181, 'attribute_pa_color', 'red'),
(1326, 181, '_stock_status', 'instock'),
(1327, 182, 'attribute_pa_color', 'blue'),
(1328, 182, '_stock_status', 'instock'),
(1329, 8, '_min_variation_price', NULL),
(1330, 8, '_max_variation_price', NULL),
(1331, 8, '_min_price_variation_id', NULL),
(1332, 8, '_max_price_variation_id', NULL),
(1333, 8, '_min_variation_regular_price', NULL),
(1334, 8, '_max_variation_regular_price', NULL),
(1335, 8, '_min_regular_price_variation_id', NULL),
(1336, 8, '_max_regular_price_variation_id', NULL),
(1337, 8, '_min_variation_sale_price', NULL),
(1338, 8, '_max_variation_sale_price', NULL),
(1339, 8, '_min_sale_price_variation_id', NULL),
(1340, 8, '_max_sale_price_variation_id', NULL),
(1341, 79, '_wc_rating_count', 'a:0:{}'),
(1342, 79, '_wc_average_rating', '0'),
(1343, 79, '_wc_review_count', '0'),
(1344, 93, '_wc_rating_count', 'a:0:{}'),
(1345, 93, '_wc_average_rating', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_posts`
--

CREATE TABLE IF NOT EXISTS `ofs2616_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=183 ;

--
-- Dumping data for table `ofs2616_posts`
--

INSERT INTO `ofs2616_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-06 07:33:43', '2016-02-06 07:33:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2016-02-06 12:07:58', '2016-02-06 12:07:58', '', 0, 'http://localhost/onefabshop/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-06 07:33:43', '2016-02-06 07:33:43', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href="http://localhost/onefabshop/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-02-07 08:45:27', '2016-02-07 08:45:27', '', 0, 'http://localhost/onefabshop/?page_id=2', 5, 'page', '', 0),
(4, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/shop/', 6, 'page', '', 0),
(5, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/cart/', 1, 'page', '', 0),
(6, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/checkout/', 2, 'page', '', 0),
(7, 1, '2016-02-06 08:06:34', '2016-02-06 08:06:34', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-02-06 08:06:34', '2016-02-06 08:06:34', '', 0, 'http://localhost/onefabshop/index.php/my-account/', 4, 'page', '', 0),
(8, 1, '2016-02-06 08:20:24', '2016-02-06 08:20:24', 'sample description here', 'MK Bag', 'sample short description here', 'publish', 'open', 'closed', '', 'mk-bag', '', '', '2016-02-25 07:29:14', '2016-02-25 07:29:14', '', 0, 'http://localhost/onefabshop/?post_type=product&#038;p=8', 1, 'product', '', 0),
(9, 1, '2016-02-06 08:20:12', '2016-02-06 08:20:12', '', '12644998_572741109573734_5503681196439159547_n', '', 'inherit', 'open', 'closed', '', '12644998_572741109573734_5503681196439159547_n', '', '', '2016-02-06 08:20:12', '2016-02-06 08:20:12', '', 8, 'http://localhost/onefabshop/wp-content/uploads/2016/02/12644998_572741109573734_5503681196439159547_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2016-02-06 09:26:24', '2016-02-06 09:26:24', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-02-23 06:41:56', '2016-02-23 06:41:56', '', 0, 'http://localhost/onefabshop/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2016-02-06 09:39:17', '2016-02-06 09:39:17', '', '12695837_576621765852335_34695656_n', '', 'inherit', 'open', 'closed', '', '12695837_576621765852335_34695656_n', '', '', '2016-02-06 09:39:17', '2016-02-06 09:39:17', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/12695837_576621765852335_34695656_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2016-02-06 10:19:41', '2016-02-06 10:19:41', '', 'ofs_250', '', 'inherit', 'open', 'closed', '', 'ofs_250', '', '', '2016-02-06 10:19:41', '2016-02-06 10:19:41', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/ofs_250.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-02-06 10:19:53', '2016-02-06 10:19:53', 'http://localhost/onefabshop/wp-content/uploads/2016/02/cropped-ofs_250.jpg', 'cropped-ofs_250.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ofs_250-jpg', '', '', '2016-02-06 10:19:53', '2016-02-06 10:19:53', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/cropped-ofs_250.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 'T_1_front', '', 'inherit', 'open', 'open', '', 't_1_front', '', '', '2013-06-07 10:35:28', '2013-06-07 10:35:28', '', 102, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 'T_1_back', '', 'inherit', 'open', 'open', '', 't_1_back', '', '', '2013-06-07 10:35:39', '2013-06-07 10:35:39', '', 102, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 'T_2_front', '', 'inherit', 'open', 'open', '', 't_2_front', '', '', '2013-06-07 10:41:23', '2013-06-07 10:41:23', '', 103, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 'T_2_back', '', 'inherit', 'open', 'open', '', 't_2_back', '', '', '2013-06-07 10:41:34', '2013-06-07 10:41:34', '', 103, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front', '', '', '2013-06-07 10:45:14', '2013-06-07 10:45:14', '', 104, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 'T_3_back', '', 'inherit', 'open', 'open', '', 't_3_back', '', '', '2013-06-07 10:45:26', '2013-06-07 10:45:26', '', 104, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 'T_3_front', '', 'inherit', 'open', 'open', '', 't_3_front', '', '', '2013-06-07 10:45:27', '2013-06-07 10:45:27', '', 104, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 'T_4_back', '', 'inherit', 'open', 'open', '', 't_4_back', '', '', '2013-06-07 10:45:29', '2013-06-07 10:45:29', '', 104, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 'T_4_front', '', 'inherit', 'open', 'open', '', 't_4_front-2', '', '', '2013-06-07 10:45:30', '2013-06-07 10:45:30', '', 104, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2013-06-07 10:49:51', '2013-06-07 10:49:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette', '', '', '2016-02-25 07:14:12', '2016-02-25 07:14:12', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=31', 21, 'product', '', 1),
(32, 1, '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 'T_5_front', '', 'inherit', 'open', 'open', '', 't_5_front', '', '', '2013-06-07 10:49:13', '2013-06-07 10:49:13', '', 31, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 'T_5_back', '', 'inherit', 'open', 'open', '', 't_5_back', '', '', '2013-06-07 10:49:23', '2013-06-07 10:49:23', '', 31, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2013-06-07 10:52:06', '2013-06-07 10:52:06', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2016-02-25 07:12:34', '2016-02-25 07:12:34', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=34', 20, 'product', '', 0),
(35, 1, '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 'T_6_front', '', 'inherit', 'open', 'open', '', 't_6_front', '', '', '2013-06-07 10:51:51', '2013-06-07 10:51:51', '', 34, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 'T_6_back', '', 'inherit', 'open', 'open', '', 't_6_back', '', '', '2013-06-07 10:52:02', '2013-06-07 10:52:02', '', 34, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2013-06-07 10:53:15', '2013-06-07 10:53:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2016-02-25 07:12:34', '2016-02-25 07:12:34', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=37', 19, 'product', '', 2),
(38, 1, '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 'T_7_front', '', 'inherit', 'open', 'open', '', 't_7_front', '', '', '2013-06-07 10:52:55', '2013-06-07 10:52:55', '', 37, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 'T_7_back', '', 'inherit', 'open', 'open', '', 't_7_back', '', '', '2013-06-07 10:53:29', '2013-06-07 10:53:29', '', 37, 'http://localhost/onefabshop/wp-content/uploads/2013/06/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2013-06-07 11:00:28', '2013-06-07 11:00:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2016-02-25 07:12:33', '2016-02-25 07:12:33', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=40', 18, 'product', '', 3),
(41, 1, '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 'Variation #41 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-40-variation', '', '', '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 40, 'http://demo.woothemes.com/woocommerce/?product_variation=product-40-variation', 0, 'product_variation', '', 0),
(42, 1, '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 'Variation #42 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-40-variation-2', '', '', '2013-06-07 10:59:15', '2013-06-07 10:59:15', '', 40, 'http://demo.woothemes.com/woocommerce/?product_variation=product-40-variation-2', 1, 'product_variation', '', 0),
(43, 1, '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 'hoodie_7_front', '', 'inherit', 'open', 'open', '', 'hoodie_7_front', '', '', '2013-06-07 10:59:40', '2013-06-07 10:59:40', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 'hoodie_7_back', '', 'inherit', 'open', 'open', '', 'hoodie_7_back', '', '', '2013-06-07 10:59:54', '2013-06-07 10:59:54', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 'hoodie_1_back', '', 'inherit', 'open', 'open', '', 'hoodie_1_back', '', '', '2013-06-07 11:00:00', '2013-06-07 11:00:00', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 'hoodie_1_front', '', 'inherit', 'open', 'open', '', 'hoodie_1_front', '', '', '2013-06-07 11:00:01', '2013-06-07 11:00:01', '', 40, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2013-06-07 11:02:31', '2013-06-07 11:02:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2016-02-25 07:15:35', '2016-02-25 07:15:35', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=47', 17, 'product', '', 2),
(48, 1, '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 'hoodie_2_front', '', 'inherit', 'open', 'open', '', 'hoodie_2_front', '', '', '2013-06-07 11:01:23', '2013-06-07 11:01:23', '', 47, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 'hoodie_2_back', '', 'inherit', 'open', 'open', '', 'hoodie_2_back', '', '', '2013-06-07 11:02:26', '2013-06-07 11:02:26', '', 47, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2013-06-07 11:03:56', '2013-06-07 11:03:56', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2016-02-25 07:15:35', '2016-02-25 07:15:35', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=50', 16, 'product', '', 3),
(51, 1, '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 'hoodie_3_front', '', 'inherit', 'open', 'open', '', 'hoodie_3_front', '', '', '2013-06-07 11:03:16', '2013-06-07 11:03:16', '', 50, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 'hoodie_3_back', '', 'inherit', 'open', 'open', '', 'hoodie_3_back', '', '', '2013-06-07 11:03:50', '2013-06-07 11:03:50', '', 50, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2013-06-07 11:05:37', '2013-06-07 11:05:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2016-02-25 07:15:34', '2016-02-25 07:15:34', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=53', 15, 'product', '', 2),
(54, 1, '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 'hoodie_4_front', '', 'inherit', 'open', 'open', '', 'hoodie_4_front', '', '', '2013-06-07 11:05:03', '2013-06-07 11:05:03', '', 53, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 'hoodie_4_back', '', 'inherit', 'open', 'open', '', 'hoodie_4_back', '', '', '2013-06-07 11:05:13', '2013-06-07 11:05:13', '', 53, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2013-06-07 11:07:19', '2013-06-07 11:07:19', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2016-02-25 07:16:36', '2016-02-25 07:16:36', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=56', 14, 'product', '', 5),
(57, 1, '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 'hoodie_5_front', '', 'inherit', 'open', 'open', '', 'hoodie_5_front', '', '', '2013-06-07 11:06:32', '2013-06-07 11:06:32', '', 56, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 'hoodie_5_back', '', 'inherit', 'open', 'open', '', 'hoodie_5_back', '', '', '2013-06-07 11:07:10', '2013-06-07 11:07:10', '', 56, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2013-06-07 11:12:55', '2013-06-07 11:12:55', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2016-02-25 07:16:36', '2016-02-25 07:16:36', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=60', 13, 'product', '', 2),
(61, 1, '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 'hoodie_6_front', '', 'inherit', 'open', 'open', '', 'hoodie_6_front', '', '', '2013-06-07 11:12:02', '2013-06-07 11:12:02', '', 60, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 'hoodie_6_back', '', 'inherit', 'open', 'open', '', 'hoodie_6_back', '', '', '2013-06-07 11:12:16', '2013-06-07 11:12:16', '', 60, 'http://localhost/onefabshop/wp-content/uploads/2013/06/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2013-06-07 11:22:50', '2013-06-07 11:22:50', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2016-02-25 07:16:35', '2016-02-25 07:16:35', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=67', 12, 'product', '', 0),
(68, 1, '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 'poster_1_up', '', 'inherit', 'open', 'open', '', 'poster_1_up', '', '', '2013-06-07 11:21:34', '2013-06-07 11:21:34', '', 67, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 'Poster_1_flat', '', 'inherit', 'open', 'open', '', 'poster_1_flat', '', '', '2013-06-07 11:22:05', '2013-06-07 11:22:05', '', 67, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2013-06-07 11:25:01', '2013-06-07 11:25:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2016-02-25 07:17:12', '2016-02-25 07:17:12', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=70', 11, 'product', '', 4),
(71, 1, '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 'poster_2_up', '', 'inherit', 'open', 'open', '', 'poster_2_up', '', '', '2013-06-07 11:24:19', '2013-06-07 11:24:19', '', 70, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 'Poster_2_flat', '', 'inherit', 'open', 'open', '', 'poster_2_flat', '', '', '2013-06-07 11:24:47', '2013-06-07 11:24:47', '', 70, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2013-06-07 11:27:38', '2013-06-07 11:27:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2016-02-25 07:17:11', '2016-02-25 07:17:11', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=73', 10, 'product', '', 2),
(74, 1, '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 'poster_3_up', '', 'inherit', 'open', 'open', '', 'poster_3_up', '', '', '2013-06-07 11:26:47', '2013-06-07 11:26:47', '', 73, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 'Poster_3_flat', '', 'inherit', 'open', 'open', '', 'poster_3_flat', '', '', '2013-06-07 11:27:31', '2013-06-07 11:27:31', '', 73, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2013-06-07 11:28:45', '2013-06-07 11:28:45', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2016-02-25 07:17:10', '2016-02-25 07:17:10', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=76', 9, 'product', '', 1),
(77, 1, '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 'poster_4_up', '', 'inherit', 'open', 'open', '', 'poster_4_up', '', '', '2013-06-07 11:28:07', '2013-06-07 11:28:07', '', 76, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 'Poster_4_flat', '', 'inherit', 'open', 'open', '', 'poster_4_flat', '', '', '2013-06-07 11:28:20', '2013-06-07 11:28:20', '', 76, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2013-06-07 11:29:44', '2013-06-07 11:29:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2016-02-25 07:19:00', '2016-02-25 07:19:00', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=79', 8, 'product', '', 0),
(80, 1, '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 'poster_5_up', '', 'inherit', 'open', 'open', '', 'poster_5_up', '', '', '2013-06-07 11:29:26', '2013-06-07 11:29:26', '', 79, 'http://localhost/onefabshop/wp-content/uploads/2013/06/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 'Poster_5_flat', '', 'inherit', 'open', 'open', '', 'poster_5_flat', '', '', '2013-06-07 11:29:37', '2013-06-07 11:29:37', '', 79, 'http://localhost/onefabshop/wp-content/uploads/2013/06/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-06-07 11:33:05', '2013-06-07 11:33:05', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2016-02-25 07:19:00', '2016-02-25 07:19:00', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=83', 7, 'product', '', 0),
(84, 1, '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 'cd_1_angle', '', 'inherit', 'open', 'open', '', 'cd_1_angle', '', '', '2013-06-07 11:32:44', '2013-06-07 11:32:44', '', 83, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 'cd_1_flat', '', 'inherit', 'open', 'open', '', 'cd_1_flat', '', '', '2013-06-07 11:32:57', '2013-06-07 11:32:57', '', 83, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2013-06-07 11:34:14', '2013-06-07 11:34:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2016-02-25 07:18:59', '2016-02-25 07:18:59', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=87', 6, 'product', '', 1),
(88, 1, '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 'cd_2_angle', '', 'inherit', 'open', 'open', '', 'cd_2_angle', '', '', '2013-06-07 11:33:53', '2013-06-07 11:33:53', '', 87, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 'cd_2_flat', '', 'inherit', 'open', 'open', '', 'cd_2_flat', '', '', '2013-06-07 11:34:07', '2013-06-07 11:34:07', '', 87, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2013-06-07 11:35:18', '2013-06-07 11:35:18', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2016-02-25 07:18:17', '2016-02-25 07:18:17', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=90', 5, 'product', '', 1),
(91, 1, '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 'cd_3_angle', '', 'inherit', 'open', 'open', '', 'cd_3_angle', '', '', '2013-06-07 11:34:58', '2013-06-07 11:34:58', '', 90, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 'cd_3_flat', '', 'inherit', 'open', 'open', '', 'cd_3_flat', '', '', '2013-06-07 11:35:10', '2013-06-07 11:35:10', '', 90, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2013-06-07 11:36:34', '2013-06-07 11:36:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2016-02-25 07:18:59', '2016-02-25 07:18:59', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=93', 4, 'product', '', 0),
(94, 1, '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 'cd_4_flat', '', 'inherit', 'open', 'open', '', 'cd_4_flat', '', '', '2013-06-07 11:36:10', '2013-06-07 11:36:10', '', 93, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 'cd_4_angle', '', 'inherit', 'open', 'open', '', 'cd_4_angle', '', '', '2013-06-07 11:36:22', '2013-06-07 11:36:22', '', 93, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2013-06-07 11:37:23', '2013-06-07 11:37:23', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2016-02-25 07:18:17', '2016-02-25 07:18:17', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=96', 3, 'product', '', 2),
(97, 1, '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 'cd_5_angle', '', 'inherit', 'open', 'open', '', 'cd_5_angle', '', '', '2013-06-07 11:37:04', '2013-06-07 11:37:04', '', 96, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 'cd_5_flat', '', 'inherit', 'open', 'open', '', 'cd_5_flat', '', '', '2013-06-07 11:37:17', '2013-06-07 11:37:17', '', 96, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2013-06-07 11:38:12', '2013-06-07 11:38:12', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2016-02-25 07:18:17', '2016-02-25 07:18:17', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=99', 2, 'product', '', 2),
(100, 1, '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 'cd_6_angle', '', 'inherit', 'open', 'open', '', 'cd_6_angle', '', '', '2013-06-07 11:37:51', '2013-06-07 11:37:51', '', 99, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 'cd_6_flat', '', 'inherit', 'open', 'open', '', 'cd_6_flat', '', '', '2013-06-07 11:38:03', '2013-06-07 11:38:03', '', 99, 'http://localhost/onefabshop/wp-content/uploads/2013/06/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2013-06-07 10:35:51', '2013-06-07 10:35:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2016-02-25 07:09:14', '2016-02-25 07:09:14', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=15', 24, 'product', '', 1),
(103, 1, '2013-06-07 10:41:52', '2013-06-07 10:41:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2016-02-25 07:14:13', '2016-02-25 07:14:13', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=19', 23, 'product', '', 2),
(104, 1, '2013-06-07 10:46:01', '2013-06-07 10:46:01', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2016-02-25 07:14:12', '2016-02-25 07:14:12', '', 0, 'http://demo.woothemes.com/woocommerce/?post_type=product&#038;p=22', 22, 'product', '', 3),
(105, 1, '2013-06-07 10:44:57', '2013-06-07 10:44:57', '', 'Variation #23 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-22-variation', '', '', '2013-06-07 10:44:57', '2013-06-07 10:44:57', '', 104, 'http://demo.woothemes.com/woocommerce/?product_variation=product-22-variation', 0, 'product_variation', '', 0),
(106, 1, '2013-06-07 10:44:58', '2013-06-07 10:44:58', '', 'Variation #24 of Ship Your Idea', '', 'publish', 'open', 'open', '', 'product-22-variation-2', '', '', '2013-06-07 10:44:58', '2013-06-07 10:44:58', '', 104, 'http://demo.woothemes.com/woocommerce/?product_variation=product-22-variation-2', 1, 'product_variation', '', 0),
(107, 1, '2016-02-06 12:07:58', '2016-02-06 12:07:58', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-02-06 12:07:58', '2016-02-06 12:07:58', '', 1, 'http://localhost/onefabshop/index.php/2016/02/06/1-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-02-06 12:17:16', '2016-02-06 12:17:16', 'Sample description here. Sample description here. <span style="line-height: 1.5;">Sample description here. Sample description here. </span>', 'POINTED CLOSED SHOES AVAILABLE NOW!', '', 'publish', 'open', 'open', '', 'title', '', '', '2016-02-07 08:16:09', '2016-02-07 08:16:09', '', 0, 'http://localhost/onefabshop/?p=109', 9, 'post', '', 0),
(110, 1, '2016-02-06 12:17:16', '2016-02-06 12:17:16', 'description', 'Title', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-06 12:17:16', '2016-02-06 12:17:16', '', 109, 'http://localhost/onefabshop/index.php/2016/02/06/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 0, 'http://localhost/onefabshop/?page_id=111', 3, 'page', '', 0),
(112, 1, '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2016-02-06 12:31:29', '2016-02-06 12:31:29', '', 111, 'http://localhost/onefabshop/index.php/2016/02/06/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-02-06 12:33:21', '2016-02-06 12:33:21', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2016-02-23 06:41:56', '2016-02-23 06:41:56', '', 0, 'http://localhost/onefabshop/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2016-02-06 12:39:29', '2016-02-06 12:39:29', '', 'Unknown-5', '', 'inherit', 'open', 'closed', '', 'unknown-5', '', '', '2016-02-06 12:39:29', '2016-02-06 12:39:29', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 'Unknown-6', '', 'inherit', 'open', 'closed', '', 'unknown-6', '', '', '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 'Unknown-7', '', 'inherit', 'open', 'closed', '', 'unknown-7', '', '', '2016-02-06 12:39:31', '2016-02-06 12:39:31', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2016-02-06 12:40:32', '2016-02-06 12:40:32', 'description', 'POINTED CLOSED SHOES', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-06 12:40:32', '2016-02-06 12:40:32', '', 109, 'http://localhost/onefabshop/index.php/2016/02/06/109-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2016-02-06 12:41:59', '2016-02-06 12:41:59', 'Sample description here. Sample description here. <span style="line-height: 1.5;">Sample description here. Sample description here. </span>', 'POINTED CLOSED SHOES AVAILABLE NOW!', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-02-06 12:41:59', '2016-02-06 12:41:59', '', 109, 'http://localhost/onefabshop/index.php/2016/02/06/109-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2016-02-06 12:43:26', '2016-02-06 12:43:26', '', 'Men', '', 'publish', 'open', 'open', '', 'men', '', '', '2016-02-25 06:11:52', '2016-02-25 06:11:52', '', 0, 'http://localhost/onefabshop/?p=120', 5, 'post', '', 0),
(121, 1, '2016-02-06 12:43:26', '2016-02-06 12:43:26', '', 'Men', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2016-02-06 12:43:26', '2016-02-06 12:43:26', '', 120, 'http://localhost/onefabshop/index.php/2016/02/06/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2016-02-06 12:44:14', '2016-02-06 12:44:14', '', 'Women', '', 'publish', 'open', 'open', '', 'women', '', '', '2016-02-25 06:26:57', '2016-02-25 06:26:57', '', 0, 'http://localhost/onefabshop/?p=122', 8, 'post', '', 0),
(123, 1, '2016-02-06 12:44:14', '2016-02-06 12:44:14', '', 'Women', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2016-02-06 12:44:14', '2016-02-06 12:44:14', '', 122, 'http://localhost/onefabshop/index.php/2016/02/06/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2016-02-06 12:47:10', '2016-02-06 12:47:10', '', 'Shoes 20% Off', '', 'publish', 'open', 'open', '', 'shoes-20-off', '', '', '2016-02-25 06:42:21', '2016-02-25 06:42:21', '', 0, 'http://localhost/onefabshop/?p=124', 6, 'post', '', 0),
(125, 1, '2016-02-06 12:47:01', '2016-02-06 12:47:01', '', 'Unknown-52', '', 'inherit', 'open', 'closed', '', 'unknown-52', '', '', '2016-02-06 12:47:01', '2016-02-06 12:47:01', '', 124, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-52.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-02-06 12:47:03', '2016-02-06 12:47:03', '', 'Unknown-62', '', 'inherit', 'open', 'closed', '', 'unknown-62', '', '', '2016-02-06 12:47:03', '2016-02-06 12:47:03', '', 124, 'http://localhost/onefabshop/wp-content/uploads/2016/02/Unknown-62.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2016-02-06 12:47:10', '2016-02-06 12:47:10', '', 'Shoes 20% Off', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2016-02-06 12:47:10', '2016-02-06 12:47:10', '', 124, 'http://localhost/onefabshop/index.php/2016/02/06/124-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2016-02-06 12:47:37', '2016-02-06 12:47:37', '', 'Watches 5% Off', '', 'publish', 'open', 'open', '', 'watches-5-off', '', '', '2016-02-25 07:06:16', '2016-02-25 07:06:16', '', 0, 'http://localhost/onefabshop/?p=128', 7, 'post', '', 0),
(129, 1, '2016-02-06 12:47:37', '2016-02-06 12:47:37', '', 'Watches 5% Off', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2016-02-06 12:47:37', '2016-02-06 12:47:37', '', 128, 'http://localhost/onefabshop/index.php/2016/02/06/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2016-02-06 13:39:06', '2016-02-06 13:39:06', '', 'Our Special Offer 50% Off', '', 'publish', 'open', 'open', '', 'our-special-offer-50-off', '', '', '2016-02-07 08:54:30', '2016-02-07 08:54:30', '', 0, 'http://localhost/onefabshop/?p=130', 4, 'post', '', 0),
(131, 1, '2016-02-06 13:33:50', '2016-02-06 13:33:50', '', '8store-banner1', '', 'inherit', 'open', 'closed', '', '8store-banner1', '', '', '2016-02-06 13:33:50', '2016-02-06 13:33:50', '', 130, 'http://localhost/onefabshop/wp-content/uploads/2016/02/8store-banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2016-02-06 13:39:06', '2016-02-06 13:39:06', '', 'Our Special Offer 50% Off', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2016-02-06 13:39:06', '2016-02-06 13:39:06', '', 130, 'http://localhost/onefabshop/index.php/2016/02/06/130-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-02-06 13:56:21', '2016-02-06 13:56:21', 'sample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample text', 'Sample Blog', '', 'publish', 'open', 'open', '', 'sample-blog', '', '', '2016-02-06 15:05:02', '2016-02-06 15:05:02', '', 0, 'http://localhost/onefabshop/?p=133', 3, 'post', '', 0),
(134, 1, '2016-02-06 13:56:21', '2016-02-06 13:56:21', 'sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span>sample text sample text <span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text </span><span style="line-height: 1.5;">sample text sample text sample text sample text sample text sample text sample text sample text sample text </span></span>', 'Sample Blog', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-06 13:56:21', '2016-02-06 13:56:21', '', 133, 'http://localhost/onefabshop/133-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `ofs2616_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(137, 1, '2016-02-06 14:08:22', '2016-02-06 14:08:22', '', 'video-bkg', '', 'inherit', 'open', 'closed', '', 'video-bkg', '', '', '2016-02-06 14:08:22', '2016-02-06 14:08:22', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/video-bkg.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2016-02-06 14:12:51', '2016-02-06 14:12:51', '', '8degree-callto', '', 'inherit', 'open', 'closed', '', '8degree-callto', '', '', '2016-02-06 14:12:51', '2016-02-06 14:12:51', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/8degree-callto.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2016-02-06 14:26:21', '2016-02-06 14:26:21', '', 'denin-jens', '', 'inherit', 'open', 'closed', '', 'denin-jens', '', '', '2016-02-06 14:26:21', '2016-02-06 14:26:21', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/denin-jens.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2016-02-06 14:59:38', '2016-02-06 14:59:38', 'sample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample text', 'Sample Blog 2', '', 'publish', 'open', 'open', '', 'sample-blog-2', '', '', '2016-02-24 07:26:01', '2016-02-24 07:26:01', '', 0, 'http://localhost/onefabshop/?p=140', 2, 'post', '', 0),
(141, 1, '2016-02-06 14:59:38', '2016-02-06 14:59:38', 'sample text here', 'Sample Blog 2', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2016-02-06 14:59:38', '2016-02-06 14:59:38', '', 140, 'http://localhost/onefabshop/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2016-02-06 15:05:02', '2016-02-06 15:05:02', 'sample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample text', 'Sample Blog', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-06 15:05:02', '2016-02-06 15:05:02', '', 133, 'http://localhost/onefabshop/133-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2016-02-06 15:05:25', '2016-02-06 15:05:25', 'sample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample textsample text', 'Sample Blog 2', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2016-02-06 15:05:25', '2016-02-06 15:05:25', '', 140, 'http://localhost/onefabshop/140-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2016-02-06 18:46:02', '2016-02-06 18:46:02', '', 'ofs', '', 'inherit', 'open', 'closed', '', 'ofs', '', '', '2016-02-06 18:46:02', '2016-02-06 18:46:02', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/ofs.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2016-02-07 03:00:32', '2016-02-07 03:00:32', '', 'ofslogo', '', 'inherit', 'open', 'closed', '', 'ofslogo', '', '', '2016-02-07 03:00:32', '2016-02-07 03:00:32', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/ofslogo.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2016-02-07 08:13:34', '2016-02-07 08:13:34', '', 'banner-mk', '', 'inherit', 'open', 'closed', '', 'banner-mk', '', '', '2016-02-07 08:13:34', '2016-02-07 08:13:34', '', 109, 'http://localhost/onefabshop/wp-content/uploads/2016/02/banner-mk.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2016-02-07 08:45:27', '2016-02-07 08:45:27', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\r\n\r\n...or something like this:\r\n\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\n\r\nAs a new WordPress user, you should go to <a href="http://localhost/onefabshop/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-02-07 08:45:27', '2016-02-07 08:45:27', '', 2, 'http://localhost/onefabshop/2-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2016-02-07 08:46:37', '2016-02-07 08:46:37', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2016-02-23 06:41:56', '2016-02-23 06:41:56', '', 0, 'http://localhost/onefabshop/?p=150', 4, 'nav_menu_item', '', 0),
(151, 1, '2016-02-07 08:46:37', '2016-02-07 08:46:37', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2016-02-23 06:41:56', '2016-02-23 06:41:56', '', 0, 'http://localhost/onefabshop/?p=151', 3, 'nav_menu_item', '', 0),
(152, 1, '2016-02-23 05:59:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-23 05:59:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/onefabshop/?p=152', 0, 'post', '', 0),
(153, 1, '2016-02-24 05:45:56', '2016-02-24 05:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2016-02-25 06:59:07', '2016-02-25 06:59:07', '', 0, 'http://localhost/onefabshop/?p=153', 1, 'nav_menu_item', '', 0),
(154, 1, '2016-02-24 05:45:57', '2016-02-24 05:45:57', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=154', 13, 'nav_menu_item', '', 0),
(156, 1, '2016-02-24 05:49:28', '2016-02-24 05:49:28', 'asdasdadada', 'asd', '', 'publish', 'open', 'open', '', 'asd', '', '', '2016-02-24 05:49:28', '2016-02-24 05:49:28', '', 0, 'http://localhost/onefabshop/?p=156', 1, 'post', '', 0),
(157, 1, '2016-02-24 05:49:28', '2016-02-24 05:49:28', 'asdasdadada', 'asd', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2016-02-24 05:49:28', '2016-02-24 05:49:28', '', 156, 'http://localhost/onefabshop/blog/2016/02/24/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2016-02-24 05:55:13', '2016-02-24 05:55:13', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog', '', '', '2016-02-24 06:02:18', '2016-02-24 06:02:18', '', 0, 'http://localhost/onefabshop/?page_id=158', 0, 'page', '', 0),
(159, 1, '2016-02-24 05:55:13', '2016-02-24 05:55:13', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2016-02-24 05:55:13', '2016-02-24 05:55:13', '', 158, 'http://localhost/onefabshop/blog/158-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2016-02-24 07:18:56', '2016-02-24 07:18:56', '', 'Women', '', 'publish', 'closed', 'closed', '', 'women', '', '', '2016-02-25 06:59:07', '2016-02-25 06:59:07', '', 0, 'http://localhost/onefabshop/?p=160', 2, 'nav_menu_item', '', 0),
(161, 1, '2016-02-24 07:18:57', '2016-02-24 07:18:57', ' ', '', '', 'publish', 'closed', 'closed', '', '161', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=161', 12, 'nav_menu_item', '', 0),
(162, 1, '2016-02-24 07:18:56', '2016-02-24 07:18:56', '', 'Men', '', 'publish', 'closed', 'closed', '', 'men', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=162', 7, 'nav_menu_item', '', 0),
(163, 1, '2016-02-25 05:39:43', '2016-02-25 05:39:43', '', 'man-img', '', 'inherit', 'open', 'closed', '', 'man-img', '', '', '2016-02-25 05:39:43', '2016-02-25 05:39:43', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/man-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2016-02-25 05:39:49', '2016-02-25 05:39:49', '', 'women-img', '', 'inherit', 'open', 'closed', '', 'women-img', '', '', '2016-02-25 05:39:49', '2016-02-25 05:39:49', '', 0, 'http://localhost/onefabshop/wp-content/uploads/2016/02/women-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2016-02-25 05:48:16', '2016-02-25 05:48:16', '', 'Men', '', 'inherit', 'closed', 'closed', '', '120-autosave-v1', '', '', '2016-02-25 05:48:16', '2016-02-25 05:48:16', '', 120, 'http://localhost/onefabshop/120-autosave-v1/', 0, 'revision', '', 0),
(166, 1, '2016-02-25 06:10:37', '2016-02-25 06:10:37', '', 'Promotional Post Redirects', '', 'publish', 'closed', 'closed', '', 'acf_promotional-post-redirects', '', '', '2016-02-25 06:10:37', '2016-02-25 06:10:37', '', 0, 'http://localhost/onefabshop/?post_type=acf&#038;p=166', 0, 'acf', '', 0),
(167, 1, '2016-02-25 06:11:52', '2016-02-25 06:11:52', '', 'Men', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2016-02-25 06:11:52', '2016-02-25 06:11:52', '', 120, 'http://localhost/onefabshop/120-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2016-02-25 06:26:57', '2016-02-25 06:26:57', '', 'Women', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2016-02-25 06:26:57', '2016-02-25 06:26:57', '', 122, 'http://localhost/onefabshop/122-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2016-02-25 06:42:21', '2016-02-25 06:42:21', '', 'Shoes 20% Off', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2016-02-25 06:42:21', '2016-02-25 06:42:21', '', 124, 'http://localhost/onefabshop/124-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2016-02-25 06:54:56', '2016-02-25 06:54:56', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes-2', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=171', 8, 'nav_menu_item', '', 0),
(172, 1, '2016-02-25 06:54:57', '2016-02-25 06:54:57', '', 'Apparels', '', 'publish', 'closed', 'closed', '', 'apparels-2', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=172', 9, 'nav_menu_item', '', 0),
(173, 1, '2016-02-25 06:54:57', '2016-02-25 06:54:57', '', 'Bags', '', 'publish', 'closed', 'closed', '', 'bags-2', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=173', 10, 'nav_menu_item', '', 0),
(174, 1, '2016-02-25 06:54:57', '2016-02-25 06:54:57', '', 'Accessories', '', 'publish', 'closed', 'closed', '', 'accessories-2', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=174', 11, 'nav_menu_item', '', 0),
(175, 1, '2016-02-25 06:54:56', '2016-02-25 06:54:56', '', 'Shoes', '', 'publish', 'closed', 'closed', '', 'shoes', '', '', '2016-02-25 06:59:07', '2016-02-25 06:59:07', '', 0, 'http://localhost/onefabshop/?p=175', 3, 'nav_menu_item', '', 0),
(176, 1, '2016-02-25 06:54:56', '2016-02-25 06:54:56', '', 'Apparels', '', 'publish', 'closed', 'closed', '', 'apparels', '', '', '2016-02-25 06:59:07', '2016-02-25 06:59:07', '', 0, 'http://localhost/onefabshop/?p=176', 4, 'nav_menu_item', '', 0),
(177, 1, '2016-02-25 06:54:56', '2016-02-25 06:54:56', '', 'Bags', '', 'publish', 'closed', 'closed', '', 'bags', '', '', '2016-02-25 06:59:07', '2016-02-25 06:59:07', '', 0, 'http://localhost/onefabshop/?p=177', 5, 'nav_menu_item', '', 0),
(178, 1, '2016-02-25 06:54:56', '2016-02-25 06:54:56', '', 'Accessories', '', 'publish', 'closed', 'closed', '', 'accessories', '', '', '2016-02-25 06:59:08', '2016-02-25 06:59:08', '', 0, 'http://localhost/onefabshop/?p=178', 6, 'nav_menu_item', '', 0),
(179, 1, '2016-02-25 07:04:43', '2016-02-25 07:04:43', '', 'Watches 5% Off', '', 'inherit', 'closed', 'closed', '', '128-autosave-v1', '', '', '2016-02-25 07:04:43', '2016-02-25 07:04:43', '', 128, 'http://localhost/onefabshop/128-autosave-v1/', 0, 'revision', '', 0),
(180, 1, '2016-02-25 07:06:16', '2016-02-25 07:06:16', '', 'Watches 5% Off', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2016-02-25 07:06:16', '2016-02-25 07:06:16', '', 128, 'http://localhost/onefabshop/128-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2016-02-25 07:28:53', '2016-02-25 07:28:53', '', 'Product #8 Variation', '', 'publish', 'closed', 'closed', '', 'product-8-variation', '', '', '2016-02-25 07:28:53', '2016-02-25 07:28:53', '', 8, 'http://localhost/onefabshop/product_variation/product-8-variation/', 0, 'product_variation', '', 0),
(182, 1, '2016-02-25 07:28:53', '2016-02-25 07:28:53', '', 'Product #8 Variation', '', 'publish', 'closed', 'closed', '', 'product-8-variation-2', '', '', '2016-02-25 07:28:53', '2016-02-25 07:28:53', '', 8, 'http://localhost/onefabshop/product_variation/product-8-variation-2/', 0, 'product_variation', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_registration_log`
--

CREATE TABLE IF NOT EXISTS `ofs2616_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_registration_log`
--

INSERT INTO `ofs2616_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'diannekatherinedelosreyes@gmail.com', '1', 2, '2016-02-07 12:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_signups`
--

CREATE TABLE IF NOT EXISTS `ofs2616_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_signups`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_site`
--

CREATE TABLE IF NOT EXISTS `ofs2616_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(140),`path`(51))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_site`
--

INSERT INTO `ofs2616_site` (`id`, `domain`, `path`) VALUES
(1, 'localhost', '/onefabshop/');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_sitemeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=71 ;

--
-- Dumping data for table `ofs2616_sitemeta`
--

INSERT INTO `ofs2616_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'One Fab Shop Sites'),
(2, 1, 'admin_email', 'diannekatherinedelosreyes@gmail.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg wma m4a wav mp4 m4v webm ogv wmv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:16:"onefabshop_admin";}'),
(9, 1, 'allowedthemes', 'a:3:{s:21:"eightstore-lite-child";b:1;s:13:"twentysixteen";b:1;s:15:"eightstore-lite";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:5:"files";i:8;s:4:"blog";}'),
(11, 1, 'wpmu_upgrade_site', '35700'),
(12, 1, 'welcome_email', 'Howdy USERNAME,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to %s. This is your first post. Edit or delete it, then start blogging!'),
(14, 1, 'siteurl', 'http://localhost/onefabshop/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '33056'),
(21, 1, 'active_sitewide_plugins', 'a:4:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:1454847864;s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";i:1454847973;s:27:"woocommerce/woocommerce.php";i:1454847974;s:41:"wordpress-importer/wordpress-importer.php";i:1454847974;}'),
(22, 1, 'WPLANG', 'en_US'),
(23, 1, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1456385649;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}'),
(28, 1, '_site_transient_timeout_browser_09405e74b30b86007210b586b2ddc252', '1455451980'),
(29, 1, '_site_transient_browser_09405e74b30b86007210b586b2ddc252', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(30, 1, 'can_compress_scripts', '1'),
(31, 1, 'blog_count', '2'),
(32, 1, 'user_count', '1'),
(33, 1, 'recently_activated', 'a:0:{}'),
(53, 1, '_site_transient_timeout_browser_dee24e1cb8ffa5ebe8021356c173956d', '1456903234'),
(54, 1, '_site_transient_browser_dee24e1cb8ffa5ebe8021356c173956d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(55, 1, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1456309247'),
(56, 1, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5703";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3563";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3517";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3018";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2749";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2246";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2172";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2019";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1970";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1955";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1952";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1904";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1805";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1608";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1521";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1504";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1477";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1318";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1267";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1256";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1158";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1075";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1053";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"984";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"948";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"904";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"900";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"888";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"881";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"872";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"864";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"814";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"767";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"766";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"752";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"735";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"730";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"729";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"726";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"710";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"709";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"680";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"678";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"662";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"657";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"656";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"645";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"640";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"631";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"617";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"610";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"599";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"593";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"591";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"583";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"577";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"576";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"570";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"560";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"549";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"541";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"541";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"526";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"526";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"515";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"507";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"503";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"502";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"500";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"483";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"483";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"477";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"468";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"458";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"457";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"432";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"432";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"426";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"426";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"425";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"418";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"413";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"411";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"409";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"406";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"401";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"400";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"398";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"393";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"391";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"389";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"388";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"384";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"381";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"381";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"378";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"376";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"375";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"374";}}'),
(67, 1, '_site_transient_timeout_theme_roots', '1456387450'),
(68, 1, '_site_transient_theme_roots', 'a:2:{s:21:"eightstore-lite-child";s:7:"/themes";s:15:"eightstore-lite";s:7:"/themes";}'),
(69, 1, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1456385655;s:7:"checked";a:2:{s:21:"eightstore-lite-child";s:5:"1.0.0";s:15:"eightstore-lite";s:6:"1.0.53";}s:8:"response";a:1:{s:15:"eightstore-lite";a:4:{s:5:"theme";s:15:"eightstore-lite";s:11:"new_version";s:6:"1.0.56";s:3:"url";s:45:"https://wordpress.org/themes/eightstore-lite/";s:7:"package";s:63:"http://downloads.wordpress.org/theme/eightstore-lite.1.0.56.zip";}}s:12:"translations";a:0:{}}'),
(70, 1, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1456385653;s:8:"response";a:1:{s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"64085";s:4:"slug";s:26:"ultimate-form-builder-lite";s:6:"plugin";s:57:"ultimate-form-builder-lite/ultimate-form-builder-lite.php";s:11:"new_version";s:5:"1.1.5";s:3:"url";s:57:"https://wordpress.org/plugins/ultimate-form-builder-lite/";s:7:"package";s:74:"http://downloads.wordpress.org/plugin/ultimate-form-builder-lite.1.1.5.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.5";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:70:"http://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.5.zip";}s:39:"custom-permalinks/custom-permalinks.php";O:8:"stdClass":6:{s:2:"id";s:4:"5158";s:4:"slug";s:17:"custom-permalinks";s:6:"plugin";s:39:"custom-permalinks/custom-permalinks.php";s:11:"new_version";s:6:"0.7.21";s:3:"url";s:48:"https://wordpress.org/plugins/custom-permalinks/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/custom-permalinks.0.7.21.zip";}s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"35583";s:4:"slug";s:27:"intuitive-custom-post-order";s:6:"plugin";s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:11:"new_version";s:5:"3.0.7";s:3:"url";s:58:"https://wordpress.org/plugins/intuitive-custom-post-order/";s:7:"package";s:75:"http://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.0.7.zip";}s:25:"redirector/redirector.php";O:8:"stdClass":6:{s:2:"id";s:4:"5185";s:4:"slug";s:10:"redirector";s:6:"plugin";s:25:"redirector/redirector.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:41:"https://wordpress.org/plugins/redirector/";s:7:"package";s:58:"http://downloads.wordpress.org/plugin/redirector.3.0.1.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/woocommerce.2.5.2.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";O:8:"stdClass":7:{s:2:"id";s:5:"18320";s:4:"slug";s:20:"wp-admin-bar-removal";s:6:"plugin";s:45:"wp-admin-bar-removal/wp-admin-bar-removal.php";s:11:"new_version";s:14:"2014.0707.0383";s:3:"url";s:51:"https://wordpress.org/plugins/wp-admin-bar-removal/";s:7:"package";s:77:"http://downloads.wordpress.org/plugin/wp-admin-bar-removal.2014.0707.0383.zip";s:14:"upgrade_notice";s:252:"Major Update [CERTIFIED] Disable WordPress Admin Bar and Toolbar and Remove Code Completely on WP 3.1+ or later for Minimal Memory Load, and Dashboard Speedup, with new Unified Coding Approach without loosing Logout and Network MultiSite functionality!";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_terms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ofs2616_terms`
--

INSERT INTO `ofs2616_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0),
(6, 'Men', 'men', 0, 0),
(7, 'Women', 'women', 0, 0),
(8, 'Bags', 'bags-women', 0, 0),
(9, 'Shoes', 'shoes-women', 0, 0),
(10, 'Apparels', 'apparels-women', 0, 0),
(11, 'Accessories', 'accessories-women', 0, 0),
(12, 'Shoes', 'shoes-men', 0, 0),
(13, 'Bags', 'bags-men', 0, 0),
(14, 'Apparels', 'apparels-men', 0, 0),
(15, 'Accessories', 'accessories-men', 0, 0),
(16, 'Custom Footer Menu', 'custom-footer-menu', 0, 0),
(17, 'Black', 'black', 0, 0),
(18, 'Blue', 'blue', 0, 0),
(19, 'Green', 'green', 0, 0),
(27, 'Slider', 'slider', 0, 0),
(28, 'Blog', 'blog', 0, 0),
(29, 'Ticker', 'ticker', 0, 0),
(30, 'Promotional', 'promotional', 0, 0),
(31, 'Testimonial', 'testimonial', 0, 0),
(32, 'post-format-image', 'post-format-image', 0, 0),
(33, 'Main Menu', 'main-menu', 0, 0),
(34, 'Shoes', 'shoes', 0, 0),
(35, 'Bags', 'bags', 0, 0),
(36, 'Apparels', 'apparels', 0, 0),
(37, 'Accessories', 'accessories', 0, 0),
(38, 'Red', 'red', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ofs2616_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ofs2616_term_relationships`
--

INSERT INTO `ofs2616_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 4, 0),
(8, 7, 0),
(8, 8, 0),
(8, 18, 0),
(8, 35, 0),
(8, 38, 0),
(16, 16, 0),
(31, 2, 0),
(31, 6, 0),
(31, 13, 0),
(31, 35, 0),
(34, 2, 0),
(34, 6, 0),
(34, 14, 0),
(34, 36, 0),
(37, 2, 0),
(37, 6, 0),
(37, 14, 0),
(37, 36, 0),
(40, 4, 0),
(40, 6, 0),
(40, 14, 0),
(40, 17, 0),
(40, 18, 0),
(40, 36, 0),
(47, 2, 0),
(47, 6, 0),
(47, 12, 0),
(47, 34, 0),
(50, 2, 0),
(50, 6, 0),
(50, 12, 0),
(50, 34, 0),
(53, 2, 0),
(53, 6, 0),
(53, 12, 0),
(53, 34, 0),
(56, 2, 0),
(56, 7, 0),
(56, 11, 0),
(56, 37, 0),
(60, 2, 0),
(60, 7, 0),
(60, 11, 0),
(60, 37, 0),
(67, 2, 0),
(67, 7, 0),
(67, 11, 0),
(67, 37, 0),
(70, 2, 0),
(70, 7, 0),
(70, 10, 0),
(70, 36, 0),
(73, 2, 0),
(73, 7, 0),
(73, 10, 0),
(73, 36, 0),
(76, 2, 0),
(76, 7, 0),
(76, 10, 0),
(76, 36, 0),
(79, 2, 0),
(79, 7, 0),
(79, 9, 0),
(79, 34, 0),
(83, 2, 0),
(83, 7, 0),
(83, 9, 0),
(83, 34, 0),
(87, 2, 0),
(87, 7, 0),
(87, 9, 0),
(87, 34, 0),
(90, 2, 0),
(90, 7, 0),
(90, 8, 0),
(90, 35, 0),
(93, 2, 0),
(93, 7, 0),
(93, 9, 0),
(93, 34, 0),
(96, 2, 0),
(96, 7, 0),
(96, 8, 0),
(96, 35, 0),
(99, 2, 0),
(99, 7, 0),
(99, 8, 0),
(99, 35, 0),
(102, 2, 0),
(102, 6, 0),
(102, 15, 0),
(102, 37, 0),
(103, 2, 0),
(103, 6, 0),
(103, 13, 0),
(103, 35, 0),
(104, 4, 0),
(104, 6, 0),
(104, 13, 0),
(104, 17, 0),
(104, 19, 0),
(104, 35, 0),
(109, 27, 0),
(109, 32, 0),
(113, 16, 0),
(120, 30, 0),
(120, 32, 0),
(122, 30, 0),
(122, 32, 0),
(124, 30, 0),
(124, 32, 0),
(128, 30, 0),
(128, 32, 0),
(130, 27, 0),
(130, 32, 0),
(133, 28, 0),
(133, 31, 0),
(140, 28, 0),
(140, 31, 0),
(150, 16, 0),
(151, 16, 0),
(153, 33, 0),
(154, 33, 0),
(156, 28, 0),
(160, 33, 0),
(161, 33, 0),
(162, 33, 0),
(171, 33, 0),
(172, 33, 0),
(173, 33, 0),
(174, 33, 0),
(175, 33, 0),
(176, 33, 0),
(177, 33, 0),
(178, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ofs2616_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ofs2616_term_taxonomy`
--

INSERT INTO `ofs2616_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 21),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 3),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_cat', '', 0, 10),
(7, 7, 'product_cat', '', 0, 14),
(8, 8, 'product_cat', '', 7, 4),
(9, 9, 'product_cat', '', 7, 4),
(10, 10, 'product_cat', '', 7, 3),
(11, 11, 'product_cat', '', 7, 3),
(12, 12, 'product_cat', '', 6, 3),
(13, 13, 'product_cat', '', 6, 3),
(14, 14, 'product_cat', '', 6, 3),
(15, 15, 'product_cat', '', 6, 1),
(16, 16, 'nav_menu', '', 0, 4),
(17, 17, 'pa_color', '', 0, 2),
(18, 18, 'pa_color', '', 0, 2),
(19, 19, 'pa_color', '', 0, 1),
(27, 27, 'category', '', 0, 2),
(28, 28, 'category', '', 0, 3),
(29, 29, 'category', '', 0, 0),
(30, 30, 'category', '', 0, 4),
(31, 31, 'category', '', 0, 2),
(32, 32, 'post_format', '', 0, 6),
(33, 33, 'nav_menu', '', 0, 13),
(34, 34, 'product_tag', '', 0, 7),
(35, 35, 'product_tag', '', 0, 7),
(36, 36, 'product_tag', '', 0, 6),
(37, 37, 'product_tag', '', 0, 4),
(38, 38, 'pa_color', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_ufbl_entries`
--

CREATE TABLE IF NOT EXISTS `ofs2616_ufbl_entries` (
  `entry_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(9) DEFAULT NULL,
  `entry_detail` text COLLATE utf8mb4_unicode_ci,
  `entry_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_ufbl_entries`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_ufbl_forms`
--

CREATE TABLE IF NOT EXISTS `ofs2616_ufbl_forms` (
  `form_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_detail` text COLLATE utf8mb4_unicode_ci,
  `form_status` int(11) DEFAULT NULL,
  `form_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `form_id` (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_ufbl_forms`
--

INSERT INTO `ofs2616_ufbl_forms` (`form_id`, `form_title`, `form_detail`, `form_status`, `form_created`, `form_modified`) VALUES
(1, 'Newsletter', 'a:4:{s:10:"field_data";a:2:{s:12:"ufbl_field_3";a:9:{s:11:"field_label";s:0:"";s:9:"max_chars";s:0:"";s:9:"min_chars";s:0:"";s:13:"error_message";s:0:"";s:11:"placeholder";s:5:"Email";s:16:"pre_filled_value";s:0:"";s:8:"field_id";s:0:"";s:11:"field_class";s:0:"";s:10:"field_type";s:9:"textfield";}s:12:"ufbl_field_2";a:5:{s:12:"button_label";s:7:"Sign Up";s:11:"reset_label";s:0:"";s:8:"field_id";s:0:"";s:11:"field_class";s:0:"";s:10:"field_type";s:6:"submit";}}s:11:"form_design";a:4:{s:10:"form_width";s:0:"";s:23:"form_submission_message";s:0:"";s:18:"form_error_message";s:0:"";s:13:"form_template";s:21:"ufbl-default-template";}s:14:"email_settings";a:4:{s:14:"email_reciever";a:1:{i:0;s:35:"diannekatherinedelosreyes@gmail.com";}s:10:"from_email";s:0:"";s:9:"from_name";s:0:"";s:12:"from_subject";s:0:"";}s:14:"form_key_count";s:1:"3";}', 1, '2016-02-06 14:35:58', '2016-02-06 14:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_usermeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `ofs2616_usermeta`
--

INSERT INTO `ofs2616_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'onefabshop_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'ofs2616_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'ofs2616_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'ofs2616_dashboard_quick_press_last_post_id', '152'),
(16, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(17, 1, 'ofs2616_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'ofs2616_user-settings-time', '1454771098'),
(19, 1, 'wporg_favorites', ''),
(20, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:15:"add-product_cat";i:5;s:15:"add-product_tag";}'),
(23, 1, 'nav_menu_recently_edited', '33'),
(24, 1, 'closedpostboxes_post', 'a:2:{i:0;s:35:"eightstore_lite_post_sidebar_layout";i:1;s:12:"revisionsdiv";}'),
(25, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(26, 1, 'source_domain', 'localhost'),
(27, 1, 'primary_blog', '1'),
(28, 1, 'ofs2616_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(29, 1, 'ofs2616_2_user_level', '10'),
(30, 1, 'ofs2616_2_user-settings', 'libraryContent=browse&editor=html'),
(31, 1, 'ofs2616_2_user-settings-time', '1454847882'),
(32, 1, 'ofs2616_2_dashboard_quick_press_last_post_id', '3'),
(33, 1, 'session_tokens', 'a:1:{s:64:"fc7948d96c03d715c7fcc6ce09f7c257d7182ffc26d33e9512e0e51e9b4221df";a:4:{s:10:"expiration";i:1457501647;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1456292047;}}'),
(34, 1, 'closedpostboxes_product', 'a:0:{}'),
(35, 1, 'metaboxhidden_product', 'a:3:{i:0;s:7:"acf_166";i:1;s:10:"postcustom";i:2;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_users`
--

CREATE TABLE IF NOT EXISTS `ofs2616_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_users`
--

INSERT INTO `ofs2616_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'onefabshop_admin', '$P$BZ2gGK9Zo64xQWdNsU3/9cZ4QhbCyx0', 'onefabshop_admin', 'diannekatherinedelosreyes@gmail.com', '', '2016-02-06 07:33:43', '', 0, 'onefabshop_admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_woocommerce_api_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ofs2616_woocommerce_attribute_taxonomies`
--

INSERT INTO `ofs2616_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'color', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_woocommerce_downloadable_product_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_woocommerce_order_itemmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_woocommerce_order_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ofs2616_woocommerce_sessions`
--

INSERT INTO `ofs2616_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:18:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1456464880);

-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_woocommerce_tax_rates`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ofs2616_woocommerce_tax_rate_locations`
--


-- --------------------------------------------------------

--
-- Table structure for table `ofs2616_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `ofs2616_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `ofs2616_woocommerce_termmeta`
--

INSERT INTO `ofs2616_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'order', '1'),
(2, 7, 'order', '6'),
(3, 8, 'order', '9'),
(4, 7, 'product_count_product_cat', '14'),
(5, 8, 'product_count_product_cat', '4'),
(6, 9, 'order', '7'),
(7, 9, 'display_type', ''),
(8, 9, 'thumbnail_id', '0'),
(9, 10, 'order', '8'),
(10, 10, 'display_type', ''),
(11, 10, 'thumbnail_id', '0'),
(12, 11, 'order', '10'),
(13, 11, 'display_type', ''),
(14, 11, 'thumbnail_id', '0'),
(15, 12, 'order', '2'),
(16, 12, 'display_type', ''),
(17, 12, 'thumbnail_id', '0'),
(18, 13, 'order', '4'),
(19, 13, 'display_type', ''),
(20, 13, 'thumbnail_id', '0'),
(21, 14, 'order', '3'),
(22, 14, 'display_type', ''),
(23, 14, 'thumbnail_id', '0'),
(24, 15, 'order', '5'),
(25, 15, 'display_type', ''),
(26, 15, 'thumbnail_id', '0'),
(44, 9, 'product_count_product_cat', '4'),
(45, 10, 'product_count_product_cat', '3'),
(46, 11, 'product_count_product_cat', '3'),
(47, 6, 'product_count_product_cat', '10'),
(48, 12, 'product_count_product_cat', '3'),
(49, 14, 'product_count_product_cat', '3'),
(50, 13, 'product_count_product_cat', '3'),
(51, 15, 'product_count_product_cat', '1'),
(52, 6, 'display_type', ''),
(53, 6, 'thumbnail_id', '163'),
(54, 7, 'display_type', ''),
(55, 7, 'thumbnail_id', '164'),
(56, 34, 'product_count_product_tag', '7'),
(57, 37, 'product_count_product_tag', '4'),
(58, 36, 'product_count_product_tag', '6'),
(59, 35, 'product_count_product_tag', '7'),
(60, 38, 'order_pa_color', '0'),
(61, 17, 'product_ids', 'a:2:{i:0;s:2:"40";i:1;s:3:"104";}'),
(62, 18, 'product_ids', 'a:2:{i:0;s:1:"8";i:1;s:2:"40";}'),
(63, 19, 'product_ids', 'a:1:{i:0;s:3:"104";}'),
(64, 38, 'product_ids', 'a:1:{i:0;s:1:"8";}');
