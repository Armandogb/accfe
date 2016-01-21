-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2016 at 04:26 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accomplus_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-01-21 00:32:34', '2016-01-21 00:32:34', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://acc.dev', 'yes'),
(2, 'home', 'http://acc.dev', 'yes'),
(3, 'blogname', 'Accomplus_dev', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abulnes@cliquestudios.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:6:{i:0;s:45:"acf-flexible-content/acf-flexible-content.php";i:1;s:27:"acf-gallery/acf-gallery.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:19:"agb_api/agb_api.php";i:5;s:29:"wp-dbmanager/wp-dbmanager.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'accomplus', 'yes'),
(40, 'stylesheet', 'accomplus', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '33056', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '5', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"manage_database";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1453422755;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1453423050;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1453423153;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1453393528;s:7:"checked";a:1:{s:9:"accomplus";s:5:"8.4.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(118, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"abulnes@cliquestudios.com";s:7:"version";s:5:"4.4.1";s:9:"timestamp";i:1453336476;}', 'yes'),
(120, '_site_transient_timeout_browser_1ca0c81399539bee633b35457c713961', '1453941276', 'yes'),
(121, '_site_transient_browser_1ca0c81399539bee633b35457c713961', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.0.2526.111";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(135, '_transient_timeout_plugin_slugs', '1453423084', 'no'),
(136, '_transient_plugin_slugs', 'a:10:{i:0;s:45:"acf-flexible-content/acf-flexible-content.php";i:1;s:27:"acf-gallery/acf-gallery.php";i:2;s:37:"acf-options-page/acf-options-page.php";i:3;s:29:"acf-repeater/acf-repeater.php";i:4;s:34:"advanced-custom-fields-pro/acf.php";i:5;s:19:"agb_api/agb_api.php";i:6;s:25:"duplicator/duplicator.php";i:7;s:29:"gravityforms/gravityforms.php";i:8;s:9:"hello.php";i:9;s:29:"wp-dbmanager/wp-dbmanager.php";}', 'no'),
(140, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1453336665;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(141, 'current_theme', 'Sage Starter Theme', 'yes'),
(142, 'theme_mods_accomplus', 'a:1:{i:0;b:0;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'dbmanager_options', 'a:16:{s:13:"mysqldumppath";s:0:"";s:9:"mysqlpath";s:0:"";s:4:"path";s:52:"/Applications/AMPPS/www/acc.dev/wp-content/backup-db";s:10:"max_backup";i:10;s:6:"backup";i:1;s:11:"backup_gzip";i:0;s:13:"backup_period";i:604800;s:12:"backup_email";s:25:"abulnes@cliquestudios.com";s:17:"backup_email_from";s:25:"abulnes@cliquestudios.com";s:22:"backup_email_from_name";s:27:"Accomplus_dev Administrator";s:20:"backup_email_subject";s:62:"%SITE_NAME% Database Backup File For %POST_DATE% @ %POST_TIME%";s:8:"optimize";i:3;s:15:"optimize_period";i:86400;s:6:"repair";i:2;s:13:"repair_period";i:604800;s:18:"hide_admin_notices";i:0;}', 'yes'),
(147, 'acf_version', '5.3.1', 'yes'),
(159, '_transient_timeout_acf_pro_get_remote_info', '1453436726', 'no'),
(160, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields Pro";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:36:"http://www.advancedcustomfields.com/";s:7:"version";s:7:"5.3.3.2";s:6:"author";s:13:"elliot condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.4.0";s:4:"tags";a:33:{i:0;s:5:"5.3.2";i:1;s:5:"5.3.1";i:2;s:5:"5.3.0";i:3;s:5:"5.2.9";i:4;s:5:"5.2.8";i:5;s:5:"5.2.7";i:6;s:5:"5.2.6";i:7;s:5:"5.2.5";i:8;s:5:"5.2.4";i:9;s:5:"5.2.3";i:10;s:5:"5.2.2";i:11;s:5:"5.2.1";i:12;s:5:"5.2.0";i:13;s:5:"5.1.9";i:14;s:5:"5.1.8";i:15;s:5:"5.1.7";i:16;s:5:"5.1.6";i:17;s:5:"5.1.5";i:18;s:5:"5.1.4";i:19;s:5:"5.1.3";i:20;s:5:"5.1.2";i:21;s:5:"5.1.1";i:22;s:5:"5.1.0";i:23;s:5:"5.0.9";i:24;s:5:"5.0.8";i:25;s:5:"5.0.7";i:26;s:5:"5.0.6";i:27;s:5:"5.0.5";i:28;s:5:"5.0.4";i:29;s:5:"5.0.3";i:30;s:5:"5.0.2";i:31;s:5:"5.0.1";i:32;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4328:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="http://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="http://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="http://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="http://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="http://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="http://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="http://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="http://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group''s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:6906:"<h4> 5.3.3.2 </h4>\n<ul><li>Core: Fixed bug preventing new translation settings <code>l10n_field</code> and <code>l10n_field_group</code></li><li>Core: Fixed bug preventing plugin updates when included within theme</li><li>Core: Added `esc_html()` to field label</li></ul>\n<h4> 5.3.3.1 </h4>\n<ul><li>Tab field: Fixed bug causing issues with conditional logic</li><li>WYSIWYG field: Fixed PHP error on front end form</li></ul>\n<h4> 5.3.3 </h4>\n<ul><li>Google Maps field: Fixed bug where pasting value did not trigger auto complete</li><li>Select field: Improved Select2 search matching for special characters</li><li>Select field: Improved asset loading to allow other Select2 libraries to load first</li><li>Select field: Added compatibility for both Select2 v3 and v4</li><li>WYSIWYG field: Added new responsive images filter to the <code>acf_the_content</code> filter</li><li>oEmbed field: Added compatibility for custom oEmbed handlers</li><li>Flexible Content field: Fixed bug causing sub fields to move when duplicating layouts</li><li>Core: Added new translation settings <code>l10n</code>, <code>l10n_textdomain</code>, <code>l10n_field</code> and <code>l10n_field_group</code></li><li>Core: Improved Export to PHP feature which now uses the above translation settings</li><li>Core: Fixed PHP error preventing new field groups from loading when editing a post</li><li>Core: Added hierarchy to taxonomy terms shown in drop down elements</li><li>Core: Improved update logic to ignore plugin when included within a theme / plugin</li><li>API: Improved `acf_form()` loading efficiency when using <code>new_post</code> setting</li><li>API: Improved `add_row()` function to work when no value exists</li><li>API: Added new function `get_row_index()` to use within the `have_rows()` loop</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li><li>Language: Updated Persian translation - thanks to Kamel</li><li>Language: Updated Spanish translation - thanks to Federico Schäfer</li><li>Language: Updated Norwegian translation - thanks to Havard Grimelid</li><li>Language: Updated Swedish translation - thanks to Björn Göransson</li></ul>\n<h4> 5.3.2.2 </h4>\n<ul><li>Core: Fixed PHP error when registering a local field missing one of more settings</li><li>Core: Fixed incorrect json load_path setting when WPML is active</li><li>Language: Updated Polish translation - thanks to Michal Lepiarz</li></ul>\n<h4> 5.3.2.1 </h4>\n<ul><li>Core: Fixed bug causing issues when loading values from an options page, widget or taxonomy term</li></ul>\n<h4> 5.3.2 </h4>\n<ul><li>Repeater field: Added new setting and icon to collapse row</li><li>Google Maps: Improved google API loading for better theme compatibility</li><li>Taxonomy field: Fixed bug where <code>Add new term</code> popup only showed 20 parent terms</li><li>Core: Added new setting <code>export_translate</code> to customise which field settings should be wrapped in __()</li><li>Core: Improved efficiency of AJAX call when finding new field groups when editing a post</li><li>API: Added new functions add_row(), update_row() and delete_row()</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Updated Dutch translation - thanks to Derk Oosterveld</li><li>Language: Updated Portuguese translation - thanks to Augusto Simão</li></ul>\n<h4> 5.3.1 </h4>\n<ul><li>Flexible Content field: added toggle icons to show layout open/close state</li><li>Gallery field: Fixed bug where images could not save a blank title value</li><li>Taxonomy field: Added pagination when rendered as a Select2 element</li><li>Relationship field: Changed validation to better edit values when a minimum is set</li><li>Google map field: Fixed minor autocomplete bugs and added search icon</li><li>Message field: Added new_lines setting</li><li>Core: Added <code>*</code> to required fields when editing a field group</li><li>Core: Prevented updates to .json file when syncing</li><li>Core: Fields now render as div (instead of table) when labels are left aligned</li><li>Core: Minor fixes and improvements</li><li>Language: Updated .po headers - thanks to Ralf Koller</li></ul>\n<h4> 5.3.0 </h4>\n<ul><li>WYSIWYG field: Fixed <code>Visual/Text</code> toggle bug with WP 4.3</li><li>Select field: Fixed Select2 bug hiding selected choices</li></ul>\n<h4> 5.2.9 </h4>\n<ul><li>Field group: Added new <code>status</code> setting to enable/disable</li><li>Field group: Added new <code>description</code> setting shown to developers when viewing the field group list</li><li>Field group: Moved <code>Show field keys</code> Screen Option within existing <code>Show on Screen</code> checkboxes</li><li>Tab field: Fixed missing min-height to left aligned tab wrapper</li><li>Relationship field: Added timeout to reduce AJAX requests whilst typing in search</li><li>Flexible Content field: Fixed minor JS bug where removing a layout would not update the order numbers</li><li>Core: Fixed bug validating uppercase file extensions</li><li>Core: Renamed menu items</li><li>Core: Replace sprite icons with font</li><li>Core: Added new setting <code>export_textdomain</code> to add __() to generated export code</li><li>Core: Fixed conflict with Post Type Order plugin causing issues when querying posts</li><li>Core: Fixed conflict with WPML causing issues when querying posts</li><li>Core: Added compatibility for WP 4.3</li><li>Core: Minor fixes and improvements</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li></ul>\n<h4> 5.2.8 </h4>\n<ul><li>Image field: Added selection restrictions in media popup (width, height, size, type)</li><li>File field: Same as above</li><li>Gallery field: Same as above</li><li>Tab field: Added new <code>endpoint</code> setting - allows multiple tab groups</li><li>Tab field: Improved CSS/JS to allow individual tab groups to use different alignments (left/top)</li><li>Repeater field: Added logic to delete nested sub field values (grand children)</li><li>Options page: Added new <code>autoload</code> setting</li><li>Core: Added new filter <code>acf/prepare_field</code></li><li>Core: Added upload validation logic to ignore filetype case sensitivity</li><li>Core: Fixed upload issue when filesize restriction contained a decimal place</li><li>Core: Improved validation/save JS compatibility with 3rd party plugins</li><li>Core: Updated Select2 library to v3.5.2</li><li>Core: Fixed bug hiding Select2 choices when multiple found with the same label</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Italian translation - thanks to Davide Pantè & Francesco Mazzola</li><li>Language: Updated German translation - thanks to Ralf Koller</li><li>Language: Updating Finnish translation - thanks to Sauli Rajala</li></ul>\n";s:14:"upgrade_notice";s:550:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="http://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(161, '_site_transient_timeout_theme_roots', '1453395326', 'yes'),
(162, '_site_transient_theme_roots', 'a:1:{s:9:"accomplus";s:7:"/themes";}', 'yes'),
(163, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1453393527;s:8:"response";a:2:{s:25:"duplicator/duplicator.php";O:8:"stdClass":6:{s:2:"id";s:5:"22600";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/duplicator.1.1.0.zip";}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:7:"5.3.3.2";s:3:"url";s:36:"http://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:29:"wp-dbmanager/wp-dbmanager.php";O:8:"stdClass":6:{s:2:"id";s:3:"340";s:4:"slug";s:12:"wp-dbmanager";s:6:"plugin";s:29:"wp-dbmanager/wp-dbmanager.php";s:11:"new_version";s:4:"2.78";s:3:"url";s:43:"https://wordpress.org/plugins/wp-dbmanager/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wp-dbmanager.2.78.zip";}}}', 'yes'),
(164, 'gzipcompression', '0', 'yes'),
(165, 'advanced_edit', '0', 'yes'),
(166, 'db_upgraded', '', 'yes'),
(167, 'rewrite_rules', 'a:89:{s:11:"api_page/?$";s:28:"index.php?post_type=api_page";s:41:"api_page/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=api_page&feed=$matches[1]";s:36:"api_page/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=api_page&feed=$matches[1]";s:28:"api_page/page/([0-9]{1,})/?$";s:46:"index.php?post_type=api_page&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"api_page/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"api_page/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"api_page/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"api_page/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"api_page/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"api_page/([^/]+)/trackback/?$";s:35:"index.php?api_page=$matches[1]&tb=1";s:49:"api_page/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?api_page=$matches[1]&feed=$matches[2]";s:44:"api_page/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?api_page=$matches[1]&feed=$matches[2]";s:37:"api_page/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?api_page=$matches[1]&paged=$matches[2]";s:44:"api_page/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?api_page=$matches[1]&cpage=$matches[2]";s:29:"api_page/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?api_page=$matches[1]&page=$matches[2]";s:25:"api_page/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"api_page/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"api_page/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"api_page/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"api_page/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(168, '_transient_random_seed', '87aa575b5aee4338456803d1c41c8f8b', 'yes'),
(169, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.1";s:7:"version";s:5:"4.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.1";s:7:"version";s:5:"4.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1453393534;s:15:"version_checked";s:5:"4.3.2";s:12:"translations";a:0:{}}', 'yes'),
(170, 'can_compress_scripts', '0', 'yes'),
(171, 'agb_api_endpoint', 'https://il.leagueinfosight.com/client/infosight/il/list.php', 'yes'),
(172, '_transient_timeout_settings_errors', '1453393592', 'no'),
(173, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:"setting";s:7:"general";s:4:"code";s:16:"settings_updated";s:7:"message";s:15:"Settings saved.";s:4:"type";s:7:"updated";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1453336746'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1453336640:1'),
(6, 5, '_wp_page_template', 'templates/template-home.php'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1453337151:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1453348868:1'),
(11, 9, '_wp_page_template', 'templates/template-services.php'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1453348927:1'),
(14, 11, '_wp_page_template', 'templates/template-compliance.php'),
(15, 13, '_edit_last', '1'),
(16, 13, '_wp_page_template', 'templates/template-about-us.php'),
(17, 13, '_edit_lock', '1453348981:1'),
(18, 15, '_edit_last', '1'),
(19, 15, '_edit_lock', '1453349198:1'),
(20, 15, '_wp_page_template', 'template-custom.php'),
(21, 16, 'origin_id', ''),
(22, 16, '_origin_id', 'field_56a02a3519c25'),
(23, 15, 'origin_id', ''),
(24, 15, '_origin_id', 'field_56a02a3519c25');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-01-21 00:32:34', '2016-01-21 00:32:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-01-21 00:32:34', '2016-01-21 00:32:34', '', 0, 'http://acc.dev/?p=1', 0, 'post', '', 1),
(2, 1, '2016-01-21 00:32:34', '2016-01-21 00:32:34', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://acc.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page', '', '', '2016-01-21 00:39:06', '2016-01-21 00:39:06', '', 0, 'http://acc.dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-01-21 00:34:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-21 00:34:36', '0000-00-00 00:00:00', '', 0, 'http://acc.dev/?p=3', 0, 'post', '', 0),
(4, 1, '2016-01-21 00:39:06', '2016-01-21 00:39:06', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://acc.dev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-01-21 00:39:06', '2016-01-21 00:39:06', '', 2, 'http://acc.dev/2016/01/21/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-01-21 00:39:39', '2016-01-21 00:39:39', '', 'Home-page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2016-01-21 00:39:39', '2016-01-21 00:39:39', '', 0, 'http://acc.dev/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-01-21 00:39:39', '2016-01-21 00:39:39', '', 'Home-page', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-01-21 00:39:39', '2016-01-21 00:39:39', '', 5, 'http://acc.dev/2016/01/21/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-01-21 00:45:09', '2016-01-21 00:45:09', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:33:"templates/template-api-object.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Origin ID', 'origin-id', 'publish', 'closed', 'closed', '', 'group_56a02a10adf36', '', '', '2016-01-21 00:45:50', '2016-01-21 00:45:50', '', 0, 'http://acc.dev/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2016-01-21 00:45:50', '2016-01-21 00:45:50', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'ORIGIN ID', 'origin_id', 'publish', 'closed', 'closed', '', 'field_56a02a3519c25', '', '', '2016-01-21 00:45:50', '2016-01-21 00:45:50', '', 7, 'http://acc.dev/?post_type=acf-field&p=8', 0, 'acf-field', '', 0),
(9, 1, '2016-01-21 04:03:17', '2016-01-21 04:03:17', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-01-21 04:03:17', '2016-01-21 04:03:17', '', 0, 'http://acc.dev/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-01-21 04:03:17', '2016-01-21 04:03:17', '', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-01-21 04:03:17', '2016-01-21 04:03:17', '', 9, 'http://acc.dev/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-01-21 04:03:55', '2016-01-21 04:03:55', '', 'Compliance', '', 'publish', 'closed', 'closed', '', 'compliance', '', '', '2016-01-21 04:04:18', '2016-01-21 04:04:18', '', 0, 'http://acc.dev/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-01-21 04:03:55', '2016-01-21 04:03:55', '', 'Compliance', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-01-21 04:03:55', '2016-01-21 04:03:55', '', 11, 'http://acc.dev/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-01-21 04:04:58', '2016-01-21 04:04:58', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-01-21 04:04:58', '2016-01-21 04:04:58', '', 0, 'http://acc.dev/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-01-21 04:04:58', '2016-01-21 04:04:58', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-01-21 04:04:58', '2016-01-21 04:04:58', '', 13, 'http://acc.dev/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-01-21 04:06:06', '2016-01-21 04:06:06', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2016-01-21 04:06:35', '2016-01-21 04:06:35', '', 0, 'http://acc.dev/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-01-21 04:06:06', '2016-01-21 04:06:06', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-01-21 04:06:06', '2016-01-21 04:06:06', '', 15, 'http://acc.dev/15-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"44184c23d992f09a8b09c3aefbd1eeba3d4827572e729822b83017328cb64243";a:4:{s:10:"expiration";i:1453509274;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36";s:5:"login";i:1453336474;}s:64:"e035307a0e64528b40dc919f3de954e6d51a54407757c4d7f8efd80fb78d1f46";a:4:{s:10:"expiration";i:1453566333;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36";s:5:"login";i:1453393533;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BILcEEvi3iSBjj7TvVEFlJMKVN3LDk1', 'admin', 'abulnes@cliquestudios.com', '', '2016-01-21 00:32:34', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
